UPDATE gameobject SET spawntimesecs=90 WHERE id=186266; -- Deserter Propaganda - down from abysmal 900

UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=16152 AND item=23809; -- Schematic: Stabilized Eternium Scope up from 0.5%

UPDATE creature_template SET SchoolImmuneMask=4,ResistanceFire=0,MechanicImmuneMask=16 WHERE entry IN(6073); -- searing infernal, immune to fire, immune to fear

UPDATE quest_template SET SpecialFlags=0 WHERE entry IN(5056); -- quest should not require external event

UPDATE quest_template SET MinLevel=47 WHERE entry IN(3941,3942); -- mid questline wrong minlevel


