/* Copyright (C) 2006,2007 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
SDName: Npcs_Nagrand
SD%Complete: 85
SDComment: Nagrand NPCs, Altruis gossip incomplete (but working) due to missing/unknown text id's.
EndScriptData */

#include "../../sc_defines.h"
#include "../../../../../game/Player.h"
#include "../../../../../game/QuestDef.h"
#include "../../../../../game/GossipDef.h"

// **** This script is still under Developement ****

/*######
## npc_altruis_the_sufferer
######*/

bool GossipHello_npc_altruis_the_sufferer(Player *player, Creature *_Creature)
{
    if (_Creature->isQuestGiver())
        player->PrepareQuestMenu( _Creature->GetGUID() );

    if (player->GetQuestRewardStatus(9982) == 1 || 
        player->GetQuestRewardStatus(9983) == 1 && 
        player->GetQuestRewardStatus(9991) == 0)
        player->ADD_GOSSIP_ITEM( 0, "Tell me what you see.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+10);

    if (player->GetQuestStatus(9991) == QUEST_STATUS_INCOMPLETE)
        player->ADD_GOSSIP_ITEM( 0, "Well...?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+20);

    if (player->GetQuestStatus(10646) == QUEST_STATUS_INCOMPLETE) //www.wowwiki.com/Varedis
        player->ADD_GOSSIP_ITEM( 0, "[PH] Story about Illidan's Pupil", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+30);

    player->PlayerTalkClass->SendGossipMenu(9419, _Creature->GetGUID());

    return true;
}

bool GossipSelect_npc_altruis_the_sufferer(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    switch (action)
    {
        case GOSSIP_ACTION_INFO_DEF+10:
            player->ADD_GOSSIP_ITEM( 0, "Legion? What legion...", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
            player->SEND_GOSSIP_MENU(9420, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+11:
            player->ADD_GOSSIP_ITEM( 0, "You can not see them clearely? Why is that?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
            player->SEND_GOSSIP_MENU(9421, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+12:
            player->ADD_GOSSIP_ITEM( 0, "Yet you do not fear them?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
            player->SEND_GOSSIP_MENU(9422, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+13:
            player->ADD_GOSSIP_ITEM( 0, "Forge camps?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 14);
            player->SEND_GOSSIP_MENU(9423, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+14:
            player->ADD_GOSSIP_ITEM( 0, "Sounds ok with me", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 15);
            player->SEND_GOSSIP_MENU(9424, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+15:
            player->PlayerTalkClass->CloseGossip();
            break;

        case GOSSIP_ACTION_INFO_DEF+20:
            player->ADD_GOSSIP_ITEM( 0, "Ok.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 21);
            player->SEND_GOSSIP_MENU(9427, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+21:
            player->PlayerTalkClass->CloseGossip();
            player->CompleteQuest(9991);
            break;

        case GOSSIP_ACTION_INFO_DEF+30:
            player->ADD_GOSSIP_ITEM( 0, "[PH] Story done", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 31);
            player->SEND_GOSSIP_MENU(384, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+31:
            player->PlayerTalkClass->CloseGossip();
            player->CompleteQuest(10646);
            break;
    }
    return true;
}

bool QuestAccept_npc_altruis_the_sufferer(Player *player, Creature *creature, Quest const *quest )
{
    if ( !player->GetQuestRewardStatus(9991) == 1 )         //Survey the Land, q-id 9991
    {
        player->PlayerTalkClass->CloseGossip();

        std::vector<uint32> nodes;

        nodes.resize(2);
        nodes[0] = 113;                                     //from
        nodes[1] = 114;                                     //end at
        player->ActivateTaxiPathTo(nodes);                  //TaxiPath 532
    }
    return true;
}
/*######
## npc_lantresor_of_the_blade
######*/

bool GossipHello_npc_lantresor_of_the_blade(Player *player, Creature *_Creature)
{
    if (_Creature->isQuestGiver())
        player->PrepareQuestMenu( _Creature->GetGUID() );

    if (player->GetQuestStatus(10107) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(10108) == QUEST_STATUS_INCOMPLETE)
        player->ADD_GOSSIP_ITEM( 0, "Talk to me", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

    player->PlayerTalkClass->SendGossipMenu(_Creature->GetNpcTextId(), _Creature->GetGUID());

    return true;
}

bool GossipSelect_npc_lantresor_of_the_blade(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    switch (action)
    {
        case GOSSIP_ACTION_INFO_DEF:
            player->ADD_GOSSIP_ITEM( 0, "Death? No...", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(9361, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+1:
            player->ADD_GOSSIP_ITEM( 0, "Easy, you're an Orc.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            player->SEND_GOSSIP_MENU(9362, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+2:
            player->ADD_GOSSIP_ITEM( 0, "Half-orc? What's the other half then?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            player->SEND_GOSSIP_MENU(9363, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+3:
            player->ADD_GOSSIP_ITEM( 0, "Sorry, i've never seen it, i don't belive you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
            player->SEND_GOSSIP_MENU(9364, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+4:
            player->ADD_GOSSIP_ITEM( 0, "Ok, ok! I'm only here to ask for your help.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
            player->SEND_GOSSIP_MENU(9365, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+5:
            player->ADD_GOSSIP_ITEM( 0, "We want the attacks from the Boulderfist clan to stop!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
            player->SEND_GOSSIP_MENU(9366, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+6:
            player->ADD_GOSSIP_ITEM( 0, "Our leaders are demanding it!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
            player->SEND_GOSSIP_MENU(9367, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+7:
            player->ADD_GOSSIP_ITEM( 0, "Ok, go ahead and tell.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
            player->SEND_GOSSIP_MENU(9368, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+8:
            player->ADD_GOSSIP_ITEM( 0, "So be it, i'm prepared!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
            player->SEND_GOSSIP_MENU(9369, _Creature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+9:
            player->PlayerTalkClass->CloseGossip();
            if (player->GetQuestStatus(10107) == QUEST_STATUS_INCOMPLETE)
                player->CompleteQuest(10107);
            if (player->GetQuestStatus(10108) == QUEST_STATUS_INCOMPLETE)
                player->CompleteQuest(10108);
            break;
    }
    return true;
}

/*######
## AddSC
######*/

void AddSC_npcs_nagrand()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name="npc_altruis_the_sufferer";
    newscript->pGossipHello = &GossipHello_npc_altruis_the_sufferer;
    newscript->pGossipSelect = &GossipSelect_npc_altruis_the_sufferer;
    newscript->pQuestAccept =   &QuestAccept_npc_altruis_the_sufferer;
    m_scripts[nrscripts++] = newscript;

    newscript = new Script;
    newscript->Name="npc_lantresor_of_the_blade";
    newscript->pGossipHello = &GossipHello_npc_lantresor_of_the_blade;
    newscript->pGossipSelect = &GossipSelect_npc_lantresor_of_the_blade;
    m_scripts[nrscripts++] = newscript;
}
