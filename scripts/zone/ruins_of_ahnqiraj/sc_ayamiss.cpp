/*
To do:
make him fly from 70-100%
*/

#include "../../sc_defines.h"

// **** This script is still under Developement ****

#define SPELL_STINGERSPRAY 25749
#define SPELL_POISONSTINGER 25748 //only used in phase1
#define SPELL_SUMMONSWARMER 25844 //might be 25708
// #define SPELL_PARALYZE 23414 doesnt work correct (core)


struct MANGOS_DLL_DECL boss_ayamissAI : public ScriptedAI
{
    boss_ayamissAI(Creature *c) : ScriptedAI(c) {Reset();}

    Unit *pTarget;
	uint32 STINGERSPRAY_Timer;
    uint32 POISONSTINGER_Timer;
	uint32 SUMMONSWARMER_Timer;
	uint32 phase;



    void Reset()
    {
	    pTarget = NULL;
		STINGERSPRAY_Timer = 30000;
		POISONSTINGER_Timer = 30000;
		SUMMONSWARMER_Timer = 60000;
		phase=1;

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

			//If he is 70% start phase 2
            if (phase==1 && m_creature->GetHealth()*100 / m_creature->GetMaxHealth() <= 70 && !m_creature->m_currentSpell)
            {
				phase=2;
				
            }



            //STINGERSPRAY_Timer (only in phase2)
            if (phase==2 && STINGERSPRAY_Timer < diff)
            {
				DoCast(m_creature->getVictim(),SPELL_STINGERSPRAY);
                STINGERSPRAY_Timer = 30000;
            }else STINGERSPRAY_Timer -= diff;

            //POISONSTINGER_Timer (only in phase1)
            if (phase==1 && POISONSTINGER_Timer < diff)
            {
                DoCast(m_creature->getVictim(),SPELL_POISONSTINGER);
                POISONSTINGER_Timer = 30000;
            }else POISONSTINGER_Timer -= diff;

			 //SUMMONSWARMER_Timer (only in phase1)
            if (SUMMONSWARMER_Timer < diff)
            {
                DoCast(m_creature->getVictim(),SPELL_SUMMONSWARMER);
                SUMMONSWARMER_Timer = 60000;
            }else SUMMONSWARMER_Timer -= diff;


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
CreatureAI* GetAI_boss_ayamiss(Creature *_Creature)
{
    return new boss_ayamissAI (_Creature);
}


void AddSC_boss_ayamiss()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name="boss_ayamiss";
    newscript->GetAI = GetAI_boss_ayamiss;
    m_scripts[nrscripts++] = newscript;
}