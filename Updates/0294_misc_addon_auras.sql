-- Nerubis Centurion
DELETE FROM creature_template_addon WHERE entry=16319;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16319, 0, 0, 1, 16, 0, 0, '10022'); -- Deadly Poison

-- Monstrous Ooze
DELETE FROM creature_template_addon WHERE entry=1033;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1033, 0, 0, 1, 16, 0, 0, '3338'); -- Rancid Ooze

-- Crimson Ooze
DELETE FROM creature_template_addon WHERE entry=1031;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1031, 0, 0, 1, 16, 0, 0, '3338'); -- Rancid Ooze

-- Black Ooze
DELETE FROM creature_template_addon WHERE entry=1032;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1032, 0, 0, 1, 16, 0, 0, '3338'); -- Rancid Ooze

-- Mosshide Trapper
DELETE FROM creature_template_addon WHERE entry=1011;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1011, 0, 0, 1, 16, 0, 0, '8852'); -- Moss Hide

-- Mosshide Fenrunner
DELETE FROM creature_template_addon WHERE entry=1010;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1010, 0, 0, 1, 16, 0, 0, '8852'); -- Moss Hide

-- Murky
DELETE FROM creature_template_addon WHERE entry=15186;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(15186, 0, 0, 1, 16, 0, 0, '24983'); -- Baby Murloc Passive

-- Gurky
DELETE FROM creature_template_addon WHERE entry=16069;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16069, 0, 0, 1, 16, 0, 0, '24983'); -- Baby Murloc Passive

-- Gnome Commoner
DELETE FROM creature_template_addon WHERE entry=19172;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(19172, 0, 0, 1, 16, 0, 0, '33209 33208 33207'); -- Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Talk, Gossip NPC Periodic - Fidget

-- Dwarf Commoner
DELETE FROM creature_template_addon WHERE entry=19148;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(19148, 0, 0, 1, 16, 0, 0, '33209 33208 33207'); -- Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Talk, Gossip NPC Periodic - Fidget

-- Blood Elf Commoner
DELETE FROM creature_template_addon WHERE entry=19169;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(19169, 0, 0, 1, 16, 0, 0, '33209 33208 33207'); -- Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Talk, Gossip NPC Periodic - Fidget

-- Goblin Commoner
DELETE FROM creature_template_addon WHERE entry=20102;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(20102, 0, 0, 1, 16, 0, 0, '33209 33208 33207'); -- Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Talk, Gossip NPC Periodic - Fidget

-- Human Commoner
-- removes 43632 "Gossip NPC Appearance - Human Female, Halloween" (Hallow's End only?)
DELETE FROM creature_template_addon WHERE entry=18927;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(18927, 0, 0, 1, 16, 0, 0, '33209 33208 33207'); -- Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Talk, Gossip NPC Periodic - Fidget


