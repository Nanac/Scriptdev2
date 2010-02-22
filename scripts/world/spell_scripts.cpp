/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
SDName: Spell_Scripts
SD%Complete: 100
SDComment: Spell scripts for dummy effects (if script need access/interaction with parts of other AI or instance, add it in related source files)
SDCategory: Spell
EndScriptData */

/* ContentData
spell 34665
spell 8913
spell 29528
spell 46770
spell 46023
spell 47575
EndContentData */

#include "precompiled.h"

/* When you make a spell effect:
- always check spell id and effect index
- always return true when the spell is handled by script
*/

enum
{
    // target hulking helboar
    SPELL_ADMINISTER_ANTIDOTE           = 34665,
    NPC_HELBOAR                         = 16880,
    NPC_DREADTUSK                       = 16992,

    // target morbent fel
    SPELL_SACRED_CLEANSING              = 8913,
    NPC_MORBENT                         = 1200,
    NPC_WEAKENED_MORBENT                = 24782,

    // target nestlewood owlkin
    SPELL_INOCULATE_OWLKIN              = 29528,
    NPC_OWLKIN                          = 16518,
    NPC_OWLKIN_INOC                     = 16534,

    // target for quest 12166)
    SPELL_LIQUID_FIRE                   = 46770,
    SPELL_LIQUID_FIRE_AURA              = 47972,

    NPC_ELK                             = 26616,
    NPC_GRIZZLY                         = 26643,

    NPC_ELK_BUNNY                       = 27111,
    NPC_GRIZZLY_BUNNY                   = 27112,

    // for quest 11730
    SPELL_ULTRASONIC_SCREWDRIVER        = 46023,
    SPELL_REPROGRAM_KILL_CREDIT         = 46027,

    NPC_COLLECT_A_TRON                  = 25793,
    SPELL_SUMMON_COLLECT_A_TRON         = 46034,

    NPC_DEFENDO_TANK                    = 25758,
    SPELL_SUMMON_DEFENDO_TANK           = 46058,

    NPC_SCAVENGE_A8                     = 25752,
    SPELL_SUMMON_SCAVENGE_A8            = 46063,

    NPC_SCAVENGE_B6                     = 25792,
    SPELL_SUMMON_SCAVENGE_B6            = 46066,

    NPC_SENTRY_BOT                      = 25753,
    SPELL_SUMMON_SENTRY_BOT             = 46068,

    // target woodlands walker
    SPELL_STRENGTH_ANCIENTS             = 47575,
    SPELL_CREATE_BARK_WALKERS           = 47550,
    FACTION_HOSTILE                     = 16,

    EMOTE_AGGRO                         = -1000551,
    EMOTE_CREATE                        = -1000552
};

bool EffectDummyCreature_spell_dummy_npc(Unit* pCaster, uint32 uiSpellId, SpellEffectIndex uiEffIndex, Creature* pCreatureTarget)
{
    switch(uiSpellId)
    {
        case SPELL_ADMINISTER_ANTIDOTE:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCreatureTarget->GetEntry() != NPC_HELBOAR)
                    return true;

                // possible needs check for quest state, to not have any effect when quest really complete

                pCreatureTarget->UpdateEntry(NPC_DREADTUSK);
                return true;
            }
            return true;
        }
        case SPELL_SACRED_CLEANSING:
        {
            if (uiEffIndex == EFFECT_INDEX_1)
            {
                if (pCreatureTarget->GetEntry() != NPC_MORBENT)
                    return true;

                pCreatureTarget->UpdateEntry(NPC_WEAKENED_MORBENT);
                return true;
            }
            return true;
        }
        case SPELL_INOCULATE_OWLKIN:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCreatureTarget->GetEntry() != NPC_OWLKIN)
                    return true;

                pCreatureTarget->UpdateEntry(NPC_OWLKIN_INOC);

                //set despawn timer, since we want to remove creature after a short time
                pCreatureTarget->ForcedDespawn(15000);

                return true;
            }
            return true;
        }
        case SPELL_LIQUID_FIRE:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCaster->GetTypeId() == TYPEID_PLAYER)
                {
                    if (pCreatureTarget->HasAura(SPELL_LIQUID_FIRE_AURA))
                        return true;

                    if (pCreatureTarget->GetEntry() == NPC_ELK)
                    {
                        pCreatureTarget->CastSpell(pCreatureTarget, SPELL_LIQUID_FIRE_AURA, true);
                        ((Player*)pCaster)->KilledMonsterCredit(NPC_ELK_BUNNY, 0);
                    }
                    else if (pCreatureTarget->GetEntry() == NPC_GRIZZLY)
                    {
                        pCreatureTarget->CastSpell(pCreatureTarget, SPELL_LIQUID_FIRE_AURA, true);
                        ((Player*)pCaster)->KilledMonsterCredit(NPC_GRIZZLY_BUNNY, 0);
                    }
                }
                return true;
            }
            return true;
        }
        case SPELL_ULTRASONIC_SCREWDRIVER:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCreatureTarget->isDead())
                {
                    uiSpellId = 0;

                    switch(pCreatureTarget->GetEntry())
                    {
                        case NPC_COLLECT_A_TRON:    uiSpellId = SPELL_SUMMON_COLLECT_A_TRON; break;
                        case NPC_DEFENDO_TANK:      uiSpellId = SPELL_SUMMON_DEFENDO_TANK; break;
                        case NPC_SCAVENGE_A8:       uiSpellId = SPELL_SUMMON_SCAVENGE_A8; break;
                        case NPC_SCAVENGE_B6:       uiSpellId = SPELL_SUMMON_SCAVENGE_B6; break;
                        case NPC_SENTRY_BOT:        uiSpellId = SPELL_SUMMON_SENTRY_BOT; break;
                    }

                    if (const SpellEntry* pSpell = GetSpellStore()->LookupEntry(uiSpellId))
                    {
                        pCaster->CastSpell(pCreatureTarget, pSpell->Id, true);

                        if (Pet* pPet = pCaster->FindGuardianWithEntry(pSpell->EffectMiscValue[uiEffIndex]))
                            pPet->CastSpell(pCaster, SPELL_REPROGRAM_KILL_CREDIT, true);

                        pCreatureTarget->ForcedDespawn();
                    }
                }
                return true;
            }
            return true;
        }
        case SPELL_STRENGTH_ANCIENTS:
        {
            if (uiEffIndex == EFFECT_INDEX_0)
            {
                if (pCaster->GetTypeId() == TYPEID_PLAYER)
                {
                    if (urand(0, 1))
                    {
                        DoScriptText(EMOTE_AGGRO, pCreatureTarget);
                        pCreatureTarget->setFaction(FACTION_HOSTILE);
                        pCreatureTarget->AI()->AttackStart(pCaster);
                    }
                    else
                    {
                        DoScriptText(EMOTE_CREATE, pCreatureTarget);
                        pCaster->CastSpell(pCaster, SPELL_CREATE_BARK_WALKERS, true);
                        pCreatureTarget->ForcedDespawn(5000);
                    }
                }
                return true;
            }
            return true;
        }
    }

    return false;
}

void AddSC_spell_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "spell_dummy_npc";
    newscript->pEffectDummyCreature = &EffectDummyCreature_spell_dummy_npc;
    newscript->RegisterSelf();
}
