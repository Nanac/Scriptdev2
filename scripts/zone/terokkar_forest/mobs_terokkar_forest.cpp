/* Copyright (C) 2006 - 2008 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

/* ScriptData
SDName: Mobs_Terokkar_Forest
SD%Complete: 100
SDComment: Quest support: 10873, 10896, 11096.
SDCategory: Terokkar Forest
EndScriptData */

#include "sc_creature.h"
#include "sc_gossip.h"

/*######
## mob_unkor_the_ruthless
######*/

#define FACTION_BOULDERFIST            45
#define FACTION_BOULDERFIST_UNKOR_NICE 35  // be nice for quest complete
#define QUEST_DONTKILLTHEFATONE        9889

#define UNKOR_SPELL_PULVERIZE          2676
#define UNKOR_SPELL_PULVERIZE_COOLDOWN 6000

struct MANGOS_DLL_DECL mob_unkor_the_ruthlessAI : public ScriptedAI
{
  mob_unkor_the_ruthlessAI(Creature* c) : ScriptedAI(c) 
  {
      Reset(); 
      unkorFriendlyTimer = 0;
  }

  uint32 unkorFriendlyTimer;
  uint32 spellCastTimer;

  void Reset()
  {
    spellCastTimer = ( UNKOR_SPELL_PULVERIZE_COOLDOWN / 2 ); // for first time usage half of default cooldown timer
  }

  void Aggro(Unit *who) {}

  void UpdateAI(const uint32 diff)
  {
      if(!m_creature->SelectHostilTarget() || !m_creature->getVictim())
          return;

      if(spellCastTimer < diff)
      {
          // set new timer with cooldown + rand 1/2 cooldown
          spellCastTimer = UNKOR_SPELL_PULVERIZE_COOLDOWN + rand()%(UNKOR_SPELL_PULVERIZE_COOLDOWN/2); // Why?
          DoCast(m_creature->getVictim(),UNKOR_SPELL_PULVERIZE);
      }else spellCastTimer -= diff;

      if(unkorFriendlyTimer)
          if(unkorFriendlyTimer <= diff)
          {
              unkorFriendlyTimer = 0;
              // Reset faction and evade.
              m_creature->setFaction(FACTION_BOULDERFIST);
              EnterEvadeMode();
              
              m_creature->SetUInt32Value(UNIT_FIELD_BYTES_1, PLAYER_STATE_NONE);
          }else unkorFriendlyTimer -= diff;

      if((m_creature->GetHealth()*100 / m_creature->GetMaxHealth()) > 30)
      {
          // iterate through threatlist, check if any player has quest. If so, and 10 ogres are killed, complete the quest
          std::list<HostilReference*>::iterator itr;
          for(itr = m_creature->getThreatManager().getThreatList().begin(); itr != m_creature->getThreatManager().getThreatList().end(); ++itr)
          {
              if(Unit* pUnit = Unit::GetUnit(*m_creature, (*itr)->getUnitGuid()))
              {
                  if(pUnit->GetTypeId() == TYPEID_PLAYER)
                  {
                      Player* plr = ((Player*)pUnit);
                      if(plr->GetQuestStatus(QUEST_DONTKILLTHEFATONE) == QUEST_STATUS_INCOMPLETE && plr->GetReqKillOrCastCurrentCount(QUEST_DONTKILLTHEFATONE, 18260) == 10)
                          plr->CompleteQuest(QUEST_DONTKILLTHEFATONE);

                      unkorFriendlyTimer = 30000;
                      m_creature->setFaction(FACTION_BOULDERFIST_UNKOR_NICE); // Friendly now
                      m_creature->SetUInt32Value(UNIT_FIELD_BYTES_1, PLAYER_STATE_SIT); // Sit down

                      // Evade so that we stop attacking.
                      EnterEvadeMode();
                  }
              }
          }
      }

      DoMeleeAttackIfReady();
  }
  
  
};

CreatureAI* GetAI_mob_unkor_the_ruthless(Creature *_Creature)
{
    return new mob_unkor_the_ruthlessAI (_Creature);
}

/*######
## mob_infested_root_walker
######*/

struct MANGOS_DLL_DECL mob_infested_root_walkerAI : public ScriptedAI
{
    mob_infested_root_walkerAI(Creature *c) : ScriptedAI(c) {Reset();}

    void Reset()
    {
        //m_creature->RemoveAllAuras();
        //m_creature->DeleteThreatList();
        //m_creature->CombatStop();
        //DoGoHome();

        //m_creature->CastSpell(m_creature,7941,true);//Immunity: Nature
    }

    void DamageTaken(Unit *done_by, uint32 &damage) 
    {
        if (done_by && done_by->GetTypeId() == TYPEID_PLAYER)
        {
            if (m_creature->GetHealth() <= damage)
            {
                if (rand()%100 < 75)
                    m_creature->CastSpell(m_creature,39130,true);//Summon Wood Mites
            }
        }
    }

    void Aggro(Unit *who) {}

};
CreatureAI* GetAI_mob_infested_root_walker(Creature *_Creature)
{
    return new mob_infested_root_walkerAI (_Creature);
}

/*######
## mob_rotting_forest_rager
######*/

struct MANGOS_DLL_DECL mob_rotting_forest_ragerAI : public ScriptedAI
{
    mob_rotting_forest_ragerAI(Creature *c) : ScriptedAI(c) {Reset();}

    void Reset()
    {
        //m_creature->RemoveAllAuras();
        //m_creature->DeleteThreatList();
        //m_creature->CombatStop();
        //DoGoHome();

        //m_creature->CastSpell(m_creature,7941,true);//Immunity: Nature
    }

    void DamageTaken(Unit *done_by, uint32 &damage) 
    {
        if (done_by->GetTypeId() == TYPEID_PLAYER)
        {
            if (m_creature->GetHealth() <= damage)
            {
                if (rand()%100 < 75)
                    m_creature->CastSpell(m_creature,39134,true);//Summon Lots of Wood Mights
            }
        }
    }

    void Aggro(Unit *who)
    {
    }
};
CreatureAI* GetAI_mob_rotting_forest_rager(Creature *_Creature)
{
    return new mob_rotting_forest_ragerAI (_Creature);
}
/*######
## mob_netherweb_victim
######*/

//various mobs to summon: Bonelasher, Broken Skeleton, Auchenai Death-Speaker, Skithian Dreadhawk, Mature Bone Sifter, Auchenai Doomsayer
const uint32 netherwebVictims[6] = 
{
    18470,
    16805,
    21242,
    18452,
    22482,
    21285
};
struct MANGOS_DLL_DECL mob_netherweb_victimAI : public ScriptedAI
{
    mob_netherweb_victimAI(Creature *c) : ScriptedAI(c) {Reset();}

    void Reset()
    {
        //m_creature->RemoveAllAuras();
        //m_creature->DeleteThreatList();
        //m_creature->CombatStop();
        //DoGoHome();
    }

    void SummonVictims(Unit* victim)
    {
        int Rand;
        int RandX;
        int RandY;

        Rand = rand()%5;
        switch (rand()%2)
        {
            case 0: RandX = 0 - Rand; break;
            case 1: RandX = 0 + Rand; break;
        }
        Rand = 0;
        Rand = rand()%5;

        switch (rand()%2)
        {
            case 0: RandY = 0 - Rand; break;
            case 1: RandY = 0 + Rand; break;
        }
        Rand = 0;
        DoSpawnCreature(netherwebVictims[rand()%6], RandX, RandY, 0, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60000);
    }

    void JustDied(Unit* Killer)
    {
        if (Killer->GetTypeId() == TYPEID_PLAYER)
        {
            //check quest status
            if( ((Player*)Killer)->GetQuestStatus(10873) == QUEST_STATUS_INCOMPLETE && !((Player*)Killer)->GetReqKillOrCastCurrentCount(10873, m_creature->GetEntry()) )
            {
                if (rand()%100 < 25)
                {
                    DoSpawnCreature(22459, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60000);
                    ((Player*)Killer)->KilledMonster(22459, m_creature->GetGUID());
                }
                SummonVictims(m_creature->getVictim());
                SummonVictims(m_creature->getVictim());
                if (rand()%100 < 75)
                    SummonVictims(m_creature->getVictim());

            }
        }
    }
    void Aggro(Unit *who) {}

    void MoveInLineOfSight(Unit *who) {}
};
CreatureAI* GetAI_mob_netherweb_victim(Creature *_Creature)
{
    return new mob_netherweb_victimAI (_Creature);
}

/*######
## AddSC
######*/

void AddSC_mobs_terokkar_forest()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name="mob_unkor_the_ruthless";
    newscript->GetAI = GetAI_mob_unkor_the_ruthless;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name="mob_infested_root_walker";
    newscript->GetAI = GetAI_mob_infested_root_walker;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name="mob_rotting_forest_rager";
    newscript->GetAI = GetAI_mob_rotting_forest_rager;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name="mob_netherweb_victim";
    newscript->GetAI = GetAI_mob_netherweb_victim;
    m_scripts[nrscripts++] = newscript;
}
