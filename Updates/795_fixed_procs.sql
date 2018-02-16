-- shadow focus
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|0x0000100002000000 WHERE entry=15260; -- devouring plague
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|0x0000000000000004 WHERE entry=15260; -- vampiric embrace
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|0x0000100084000000 WHERE entry=15260; -- silence

-- Cold Blood
UPDATE spell_affect SET SpellFamilyMask= 0x0000010F06020206 WHERE entry IN(14177); -- Mutilate

 -- Bangle of Endless Blessings - always proc on cast, no matter the procEx
UPDATE spell_proc_event SET procEx=65536 WHERE entry=38334;

-- Improved Mend Pet should proc on periodic ticks not on apply
UPDATE spell_proc_event SET procFlags=262144 WHERE entry IN(19572);

-- Savage fury wrong masks
UPDATE spell_affect SET SpellFamilyMask=0x00001800 WHERE entry=16998 AND effectId=0;
UPDATE spell_affect SET SpellFamilyMask=0x0000044000000000 WHERE entry=16998 AND effectId=2;

-- Natural Shapeshifter was missing Tree of Life - port from WotLK DBC
UPDATE spell_affect SET SpellFamilyMask=0x0001E000E0000000 WHERE entry=16833;

-- Vile poisons wrong masks fix - now correctly work for poisons
UPDATE spell_affect SET SpellFamilyMask=(0x00010000) WHERE entry=16513 AND effectId IN(1);
UPDATE spell_affect SET SpellFamilyMask=(0x00010000|0x10000000|0x0000000000008000|0x0000000000004000) WHERE entry=16513 AND effectId IN(2);

-- Lesser Spell Blasting (32106) (Spellstrike Set Effect) will now have a chance to trigger from channeled spells and DoT application
-- same for Quagmirrans eye
DELETE FROM spell_proc_event WHERE entry = 32106;
INSERT INTO spell_proc_event (entry,SchoolMask,SpellFamilyName,SpellFamilyMask0,procFlags,procEx,ppmRate,CustomChance,Cooldown)
VALUES(32106, 0, 0, 0, 0, 65536, 0, 0, 0);
UPDATE spell_proc_event SET procEx=65536 WHERE entry IN(33297);

-- Warrior T4 4-piece proper mask - taken from wotlk DBC
UPDATE spell_affect SET SpellFamilyMask=0x000005042A604CCE WHERE entry IN(37517);

-- Arcane Focus - correct mask to include Arcane Missiles triggers
UPDATE spell_affect SET SpellFamilyMask=0x00000010A1205000 WHERE entry IN(11222);

-- Spell Reflection missing proc flags for creature spell
DELETE FROM spell_proc_event WHERE entry IN(38599);
INSERT INTO spell_proc_event(entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
('38599', '127', '0', '0', '0', '0', '139936', '2048', '0', '0', '0');

-- Healing trance masks for Eye of Gruul trinket
UPDATE spell_affect SET SpellFamilyMask=0x2410041E40 WHERE entry IN(37706);
UPDATE spell_affect SET SpellFamilyMask=0x12000000F0 WHERE entry IN(37706);

-- Serpent Coil Braid item spell should proc on mana gem usage
REPLACE INTO spell_proc_event(entry,SpellFamilyMask0,SpellFamilyMask1,procFlags,procEx) VALUES
(37447,1099511627776,1099511627776,0x00015550,65536);

UPDATE spell_proc_event SET Cooldown=15 WHERE entry IN(27521); -- 15 second cooldown on Insightful Earthstorm Diamond proc

-- 30 second cooldown on Masquerade Gown lovestruct
REPLACE INTO spell_proc_event(entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
('34584', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30');

-- Snake trap should be affected by clever traps
UPDATE spell_affect SET SpellFamilyMask=0x0000200000000000|0x0000000000000004 WHERE entry IN(19239) AND effectId IN(1);

-- Add correct affect masks for Gladiators libram, totem and idol
DELETE FROM spell_affect WHERE entry IN(42367);
INSERT INTO spell_affect VALUES
(42367,0,0x0000001000000000);

-- fix lacerate threat coefficient
UPDATE spell_threat SET multiplier=0.2 WHERE entry IN(33745);

-- fix weird shuffle of values
REPLACE INTO spell_threat(entry, Threat, multiplier, ap_bonus) VALUES
('6807', '89', '1', '0'),
('6808', '118', '1', '0'),
('8972', '148', '1', '0'),
('9745', '178', '1', '0'),
('9880', '176', '1', '0'),
('9881', '207', '1', '0'),
('26996', '322', '1', '0');

-- revenge
-- post 2.1 values
REPLACE INTO spell_threat VALUES
-- rank 1 5 - guesswork
('6572', '85', '1', '0'),
('6574', '95', '1', '0'),
('7379', '100', '1', '0'),
('11600', '105', '1', '0'),
('11601', '110', '1', '0'),
-- rank 6 7 guessed relatively based on known values
('25269', '153', '1', '0'),
('25288', '120', '1', '0'),
-- rank 8 known value
('30357', '200', '1', '0');





