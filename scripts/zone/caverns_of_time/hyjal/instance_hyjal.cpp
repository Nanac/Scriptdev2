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
SDName: Instance_Mount_Hyjal
SD%Complete: 100
SDComment: Instance Data Scripts and functions to acquire mobs and set encounter status for use in various Hyjal Scripts
SDCategory: Caverns of Time, Mount Hyjal
EndScriptData */

#include "def_hyjal.h"

#define ENCOUNTERS     5

enum EncounterState
{
    NOT_STARTED   = 0,
    IN_PROGRESS   = 1,
    FAILED        = 2,
    DONE          = 3
};

/* Battle of Mount Hyjal encounters:
0 - Rage Winterchill event
1 - Anetheron event
2 - Kaz'rogal event
3 - Azgalor event
4 - Archimonde event
*/
 
struct MANGOS_DLL_DECL instance_mount_hyjal : public ScriptedInstance
{
    instance_mount_hyjal(Map *Map) : ScriptedInstance(Map) {Initialize();};

    uint64 RageWinterchill;
    uint64 Anetheron;
    uint64 Kazrogal;
    uint64 Azgalor;
    uint64 Archimonde;
    uint64 JainaProudmoore;
    uint64 Thrall;
    uint64 TyrandeWhisperwind;

    uint32 Encounters[ENCOUNTERS];

    void Initialize()
    {
        RageWinterchill = 0;
        Anetheron = 0;
        Kazrogal = 0;
        Azgalor = 0;
        Archimonde = 0;
        JainaProudmoore = 0;
        Thrall = 0;
        TyrandeWhisperwind = 0;
        
        for(uint8 i = 0; i < ENCOUNTERS; i++)
            Encounters[i] = NOT_STARTED;
    }

    bool IsEncounterInProgress() const 
    {
        for(uint8 i = 0; i < ENCOUNTERS; i++)
            if(Encounters[i] == IN_PROGRESS) return true;

        return false;
    }

    void OnCreatureCreate(Creature *creature, uint32 creature_entry)
    {
        switch(creature_entry)
        {
            case 17767:
                RageWinterchill = creature->GetGUID();
                break;

            case 17808:
                Anetheron = creature->GetGUID();
                break;

            case 17888:
                Kazrogal = creature->GetGUID();
                break;

            case 17842:
                Azgalor = creature->GetGUID();
                break;

            case 17968:
                Archimonde = creature->GetGUID();
                break;

            case 17772:
                JainaProudmoore = creature->GetGUID();
                break;

            case 17852:
                Thrall = creature->GetGUID();
                break;
                
            case 17948:
                TyrandeWhisperwind = creature->GetGUID();
                break;
        }
    }

    uint64 GetData64(uint32 identifier)
    {
        switch(identifier)
        {
            case DATA_RAGEWINTERCHILL:
                return RageWinterchill;
                
            case DATA_ANETHERON:
                return Anetheron;

            case DATA_KAZROGAL:
                return Kazrogal;

            case DATA_AZGALOR:
                return Azgalor;
            
            case DATA_ARCHIMONDE:
                return Archimonde;
            
            case DATA_JAINAPROUDMOORE:
                return JainaProudmoore;

            case DATA_THRALL:
                return Thrall;

            case DATA_TYRANDEWHISPERWIND:
                return TyrandeWhisperwind;
        }

        return 0;
    }

    void SetData(uint32 type, uint32 data)
    {
        switch(type)
        {
            case DATA_RAGEWINTERCHILLEVENT:
                Encounters[0] = data;
                break;

             case DATA_ANETHERONEVENT:
                Encounters[1] = data;
                break;

             case DATA_KAZROGALEVENT:
                Encounters[2] = data;
                break;

             case DATA_AZGALOREVENT:
                Encounters[3] = data;
                break;

             case DATA_ARCHIMONDEEVENT:
                Encounters[4] = data;
                break;
        }
    }

    uint32 GetData(uint32 type)
    {
        switch(type)
        {
            case DATA_RAGEWINTERCHILLEVENT:
                return Encounters[0];

             case DATA_ANETHERONEVENT:
                return Encounters[1];

             case DATA_KAZROGALEVENT:
                return Encounters[2];

             case DATA_AZGALOREVENT:
                return Encounters[3];

             case DATA_ARCHIMONDEEVENT:
                return Encounters[4];
        }
        return 0;
    }
};

InstanceData* GetInstanceData_instance_mount_hyjal(Map* map)
{
    return new instance_mount_hyjal(map);
}

void AddSC_instance_mount_hyjal()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_hyjal";
    newscript->GetInstanceData = GetInstanceData_instance_mount_hyjal;
    m_scripts[nrscripts++] = newscript;
}
