/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
SDName: Wetlands
SD%Complete: 80
SDComment: Quest support: 1249
SDCategory: Wetlands
EndScriptData */

/* ContentData
npc_mikhail
npc_tapoke_slim_jahn
EndContentData */

#include "precompiled.h"
#include "escort_ai.h"

/*######
## npc_tapoke_slim_jahn
######*/

enum
{
    QUEST_MISSING_DIPLO_PT11    = 1249,
    FACTION_ENEMY               = 168,
    SPELL_STEALTH               = 1785,
    NPC_SLIMS_FRIEND            = 4971,
    NPC_TAPOKE_SLIM_JAHN        = 4962
};

struct MANGOS_DLL_DECL npc_tapoke_slim_jahnAI : public npc_escortAI
{
    npc_tapoke_slim_jahnAI(Creature* pCreature) : npc_escortAI(pCreature) { Reset(); }

    bool m_bFriendSummoned;

    void Reset()
    {
        m_bFriendSummoned = false;
    }

    void WaypointReached(uint32 uiPointId)
    {
        Unit* pPlayer = Unit::GetUnit((*m_creature), PlayerGUID);

        if (!pPlayer)
            return;

        switch(uiPointId)
        {
            case 2:
                if (m_creature->HasStealthAura())
                    m_creature->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);

                SetRun(true);
                m_creature->setFaction(FACTION_ENEMY);
                break;
            case 6:
                ((Player*)pPlayer)->FailQuest(QUEST_MISSING_DIPLO_PT11);
                m_creature->setFaction(m_creature->GetCreatureInfo()->faction_A);
                EnterEvadeMode();
                break;
        }
    }

    void Aggro(Unit* pWho)
    {
        Unit* pPlayer = Unit::GetUnit(*m_creature, PlayerGUID);

        if (pPlayer && !m_bFriendSummoned && pWho == pPlayer)
        {
            m_creature->SummonCreature(NPC_SLIMS_FRIEND, 0.0f, 0.0f, 0.0f, 3.10f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30000);
            m_creature->SummonCreature(NPC_SLIMS_FRIEND, 0.0f, 0.0f, 0.0f, 2.35f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30000);
            m_creature->SummonCreature(NPC_SLIMS_FRIEND, 0.0f, 0.0f, 0.0f, 2.02f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30000);
            m_bFriendSummoned = true;
        }
    }

    void JustSummoned(Creature* pSummoned)
    {
        if (Unit* pPlayer = Unit::GetUnit(*m_creature, PlayerGUID))
            pSummoned->AI()->AttackStart(pPlayer);
    }

    void AttackedBy(Unit* pAttacker)
    {
        Unit* pPlayer = Unit::GetUnit(*m_creature, PlayerGUID);
        if (pPlayer && pPlayer->IsFriendlyTo(pAttacker) && pAttacker != pPlayer)
        {
            pAttacker->CombatStop(true);
            return;
        }

        if (m_creature->getVictim())
            return;

        AttackStart(pAttacker);
    }

    void UpdateEscortAI(const uint32 uiDiff)
    {
        if ((m_creature->GetHealth()*100 / m_creature->GetMaxHealth()) < 20)
        {
            if (Unit* pPlayer = Unit::GetUnit(*m_creature, PlayerGUID))
            {
                if (pPlayer->GetTypeId() == TYPEID_PLAYER)
                    ((Player*)pPlayer)->AreaExploredOrEventHappens(QUEST_MISSING_DIPLO_PT11);

                IsBeingEscorted = false;
                EnterEvadeMode();
                return;
            }
        }

        if (!m_creature->SelectHostilTarget() || !m_creature->getVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_tapoke_slim_jahn(Creature* pCreature)
{
    return new npc_tapoke_slim_jahnAI(pCreature);
}

/*######
## npc_mikhail
######*/

bool QuestAccept_npc_mikhail(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_MISSING_DIPLO_PT11)
    {
        Creature* pSlim = GetClosestCreatureWithEntry(pCreature, NPC_TAPOKE_SLIM_JAHN, 25.0f);

        if (!pSlim)
            return false;

        if (!pSlim->HasStealthAura())
            pSlim->CastSpell(pSlim, SPELL_STEALTH, true);

        if (npc_tapoke_slim_jahnAI* pEscortAI = dynamic_cast<npc_tapoke_slim_jahnAI*>(pSlim->AI()))
            pEscortAI->Start(false, false, pPlayer->GetGUID(), pQuest);
    }
    return false;
}

/*######
## AddSC
######*/

void AddSC_wetlands()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_tapoke_slim_jahn";
    newscript->GetAI = &GetAI_npc_tapoke_slim_jahn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_mikhail";
    newscript->pQuestAccept = &QuestAccept_npc_mikhail;
    newscript->RegisterSelf();
}
