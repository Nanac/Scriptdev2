/*
To do:
Change to random attack for 5seconds
*/

#include "../../sc_defines.h"

// **** This script is still under Developement ****

#define SPELL_WHIRLWIND 37641
#define SPELL_ENRAGE 28798



struct MANGOS_DLL_DECL boss_sarturaAI : public ScriptedAI
{
    boss_sarturaAI(Creature *c) : ScriptedAI(c) {Reset();}

    Unit *pTarget;
	uint32 WHIRLWIND_Timer;
    



    void Reset()
    {
	    pTarget = NULL;
		WHIRLWIND_Timer = 30000;


        if (m_creature)
        {
            EnterEvadeMode();
        }
    }

    void AttackStart(Unit *who)
    {
        if (!who)
            return;

        if (m_creature->getVictim() == NULL && who->isTargetableForAttack() && who!= m_creature)
        {
            //Begin melee attack if we are within range
            if (m_creature->IsWithinDist(who, ATTACK_DIST))
				DoStartMeleeAttack(who);
            else DoStartRangedAttack(who);
			
			pTarget = who;
        }
    }

    void MoveInLineOfSight(Unit *who)
    {
        if (!who || m_creature->getVictim())
            return;

        if (who->isTargetableForAttack() && IsVisible(who) && who->isInAccessablePlaceFor(m_creature) && m_creature->IsHostileTo(who))
        {
            float attackRadius = m_creature->GetAttackDistance(who);
            if (m_creature->IsWithinDist(who, attackRadius) && m_creature->GetDistanceZ(who) <= CREATURE_Z_ATTACK_RANGE)
            {
                if(who->HasStealthAura())
                    who->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
                //Begin melee attack if we are within range
                DoStartMeleeAttack(who);

                pTarget = who;
            }
        }
    }

    void UpdateAI(const uint32 diff)
    {
        //If we had a target and it wasn't cleared then it means the target died from some unknown soruce
        //But we still need to reset
        if ((!m_creature->SelectHostilTarget() || !m_creature->getVictim()) && pTarget)
        {
            Reset();
            return;
        }

        //Check if we have a current target
        if( m_creature->getVictim() && m_creature->isAlive())
        {
            //Check if we should stop attacking because our victim is no longer attackable
            if (needToStop())
            {
                Reset();
                return;
            }

			//If he is 20% enrage
            if (m_creature->GetHealth()*100 / m_creature->GetMaxHealth() <= 20 && !m_creature->m_currentSpell)
            {
		DoCast(m_creature->getVictim(),SPELL_ENRAGE);
				
            }



            //WHIRLWIND_Timer (only in phase2)
            if (WHIRLWIND_Timer < diff)
            {
		DoCast(m_creature->getVictim(),SPELL_WHIRLWIND);
                WHIRLWIND_Timer = 30000;
            }else WHIRLWIND_Timer -= diff;


            //If we are within range melee the target
            if( m_creature->IsWithinDist(m_creature->getVictim(), ATTACK_DIST))
            {
                //Make sure our attack is ready and we arn't currently casting
                if( m_creature->isAttackReady() && !m_creature->m_currentSpell)
                {
                    m_creature->AttackerStateUpdate(m_creature->getVictim());
                    m_creature->resetAttackTimer();
                }
            }
        }
    }
}; 
CreatureAI* GetAI_boss_sartura(Creature *_Creature)
{
    return new boss_sarturaAI (_Creature);
}


void AddSC_boss_sartura()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name="boss_sartura";
    newscript->GetAI = GetAI_boss_sartura;
    m_scripts[nrscripts++] = newscript;
}