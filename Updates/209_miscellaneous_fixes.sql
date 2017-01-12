UPDATE gameobject SET spawntimesecs=90 WHERE id=186266; -- Deserter Propaganda - down from abysmal 900

UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=16152 AND item=23809; -- Schematic: Stabilized Eternium Scope up from 0.5%

UPDATE creature_template SET SchoolImmuneMask=4,ResistanceFire=0,MechanicImmuneMask=16 WHERE entry IN(6073); -- searing infernal, immune to fire, immune to fear

UPDATE quest_template SET SpecialFlags=0 WHERE entry IN(5056); -- quest should not require external event

UPDATE quest_template SET MinLevel=47 WHERE entry IN(3941,3942); -- mid questline wrong minlevel

DELETE FROM gameobject WHERE guid=30079 AND id=2024;
INSERT INTO gameobject VALUES -- fix andorhal sign quaternion
('30079', '2024', '0', '1', '452.427', '-629.573', '166.348', '2.90598', '0.576802', '-0.173584', '0.779713', '0.170927', '7200', '100', '1');

-- Sprok data fixes and gossip
UPDATE creature_template SET FactionAlliance=120,FactionHorde=120,GossipMenuId=12741,NpcFlags=1 WHERE entry=8320;

DELETE FROM gossip_menu WHERE entry=12741;
INSERT INTO gossip_menu VALUES
('12741', '17880', '0', '0');

DELETE FROM npc_text WHERE id IN(17880);
INSERT INTO npc_text VALUES
('17880', 'This teleporter will transport you to Grom''gol in Northern Stranglethorn.$B$BUsually.$B$BI mean, sometimes it''ll just disintegrate you, or reduce all your soft tissues into a greenish, foul-smelling mist, but mostly it''s safe!$B$B...mostly.', '', '0', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

UPDATE gameobject_template SET data5=1 WHERE entry in(177243,177365,177366,177367,177368,177369,177397,177398,177399,177400); -- should despawn after usage

DELETE FROM npc_vendor WHERE entry=3348 AND item=5642;
INSERT INTO npc_vendor VALUES -- horde NPC was missing this TBC-530
('3348', '5642', '0', '0', '0', '0', 'Recipe: Free Action Potion');

-- Nightbane immune to interrupt and silence
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(33554432+256) WHERE entry=17225;

