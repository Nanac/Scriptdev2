/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#ifndef SC_GRIDSEARCH_H
#define SC_GRIDSEARCH_H

#include "Unit.h"
#include "GameObject.h"

#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"

GameObject* GetClosestGameObjectWithEntry(WorldObject* pSource, uint32 uiEntry, float fMaxSearchRange);
Creature* GetClosestCreatureWithEntry(WorldObject* pSource, uint32 uiEntry, float fMaxSearchRange);

//Used in:
//hyjalAI.cpp
class AllFriendlyCreaturesInGrid
{
    public:
        AllFriendlyCreaturesInGrid(Unit const* obj) : pUnit(obj) {}
        bool operator() (Unit* u)
        {
            if (u->isAlive() && u->GetVisibility() == VISIBILITY_ON && u->IsFriendlyTo(pUnit))
                return true;

            return false;
        }

    private:
        Unit const* pUnit;
};

//Used in:
//hyjalAI.cpp
class AllGameObjectsWithEntryInGrid
{
    public:
        AllGameObjectsWithEntryInGrid(uint32 ent) : entry(ent) {}
        bool operator() (GameObject* g)
        {
            if (g->GetEntry() == entry)
                return true;

            return false;
        }
    private:
        uint32 entry;
};

class AllCreaturesOfEntryInRange
{
    public:
        AllCreaturesOfEntryInRange(Unit const* obj, uint32 ent, float ran) : pUnit(obj), entry(ent), range(ran) {}
        bool operator() (Unit* u)
        {
            if (u->GetEntry() == entry && pUnit->IsWithinDistInMap(u, range))
                return true;

            return false;
        }

    private:
        Unit const* pUnit;
        uint32 entry;
        float range;
};

class PlayerAtMinimumRangeAway
{
    public:
        PlayerAtMinimumRangeAway(Unit const* unit, float fMinRange) : pUnit(unit), fRange(fMinRange) {}
        bool operator() (Player* pPlayer)
        {
            //No threat list check, must be done explicit if expected to be in combat with creature
            if (!pPlayer->isGameMaster() && pPlayer->isAlive() && !pUnit->IsWithinDist(pPlayer,fRange,false))
                return true;

            return false;
        }

    private:
        Unit const* pUnit;
        float fRange;
};

#endif
