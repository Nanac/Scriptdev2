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
SDName: Boss_Rotgrip
SD%Complete: 100
SDComment: 
SDCategory: Maraudon
EndScriptData */


#include "sc_creature.h"

#define SPELL_PUNCTURE             21911   

struct MANGOS_DLL_DECL boss_rotgripAI : public ScriptedAI
{
    boss_rotgripAI(Creature *c) : ScriptedAI(c) {Reset();}

    uint32 Puncture_Timer;

    void Reset()
    {       
        Puncture_Timer = 6000;
    }

    void Aggro(Unit *who)
    {
    }

    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostilTarget() || !m_creature->getVictim() )
            return;

        //Puncture_Timer
        if (Puncture_Timer < diff)
        {
            //Cast
            DoCast(m_creature->getVictim(),SPELL_PUNCTURE);

            //12 seconds
            Puncture_Timer = 12000;
        }else Puncture_Timer -= diff;

        DoMeleeAttackIfReady();
    }

}; 
CreatureAI* GetAI_boss_rotgrip(Creature *_Creature)
{
    return new boss_rotgripAI (_Creature);
}


void AddSC_boss_rotgrip()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name="boss_rotgrip";
    newscript->GetAI = GetAI_boss_rotgrip;
    m_scripts[nrscripts++] = newscript;
}
