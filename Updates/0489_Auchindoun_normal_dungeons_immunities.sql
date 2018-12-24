-- ----------
-- IMMUNITIES
-- ----------

-- =====================
-- ADD MISSING MECHANICS
-- =====================

-- Remove "old" MechanicImmuneMask (commented as safety measure)
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` IN (18319,18327,18341,18343,18344,18371,18373,18394,18431,18441,18472,18473,18478,18497,18498,18499,18500,18501,18503,18506,18521,18524,18556,18557,18558,18559,18667,18700,18708,18731,18732,18796,18797,18848,19203,19204,19205,19206,19226,19307);

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18373, -- Exarch Maladaar
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
19226 -- Void Traveler
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
18431, -- Ethereal Beacon
18394, -- Ethereal Wraith
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18327, -- Time-Lost Controller
18319, -- Time-Lost Scryer
18524, -- Angered Skeleton
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18557, -- Phasing Cleric
18556, -- Phasing Soldier
18558, -- Phasing Sorcerer
18559, -- Phasing Stalker
18521, -- Raging Skeleton
18506, -- Raging Soul
18700, -- Reanimated Bones
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18500, -- Unliving Cleric
18498, -- Unliving Soldier
18499, -- Unliving Sorcerer
18501, -- Unliving Stalker
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708, -- Murmur
18797, -- Tortured Skeleton
19226 -- Void Traveler
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
18431, -- Ethereal Beacon
18394, -- Ethereal Wraith
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
19205, -- Syth Arcane Elemental
19203, -- Syth Fire Elemental
19204, -- Syth Frost Elemental
19206, -- Syth Shadow Elemental
18473, -- Talon King Ikiss
18327, -- Time-Lost Controller
18319, -- Time-Lost Scryer
18524, -- Angered Skeleton
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18557, -- Phasing Cleric
18556, -- Phasing Soldier
18558, -- Phasing Sorcerer
18559, -- Phasing Stalker
18521, -- Raging Skeleton
18506, -- Raging Soul
18700, -- Reanimated Bones
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18500, -- Unliving Cleric
18498, -- Unliving Soldier
18499, -- Unliving Sorcerer
18501, -- Unliving Stalker
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708, -- Murmur
18797 -- Tortured Skeleton
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
19204, -- Syth Frost Elemental
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
18344, -- Nexus-Prince Shaffar
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18373, -- Exarch Maladaar
18506, -- Raging Soul
18667, -- Blackheart the Inciter
18732 -- Grandmaster Vorpil
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- SHACKLE [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
18478, -- Avatar of the Martyred
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18441 -- Stolen Soul
);

-- HORROR [2 spells] (Death Coil, Psychic Horror)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
18431, -- Ethereal Beacon
18394, -- Ethereal Wraith
18344, -- Nexus-Prince Shaffar
19307, -- Nexus Terror
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18327, -- Time-Lost Controller
18319, -- Time-Lost Scryer
18524, -- Angered Skeleton
18497, -- Auchenai Monk
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18557, -- Phasing Cleric
18556, -- Phasing Soldier
18558, -- Phasing Sorcerer
18559, -- Phasing Stalker
18521, -- Raging Skeleton
18506, -- Raging Soul
18700, -- Reanimated Bones
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18500, -- Unliving Cleric
18498, -- Unliving Soldier
18499, -- Unliving Sorcerer
18501, -- Unliving Stalker
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708, -- Murmur
18797, -- Tortured Skeleton
19226 -- Void Traveler
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
18431, -- Ethereal Beacon
18344, -- Nexus-Prince Shaffar
18341, -- Pandemonius
18343, -- Tavarok
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18478, -- Avatar of the Martyred
18373, -- Exarch Maladaar
18503, -- Phantasmal Possessor
18506, -- Raging Soul
18371, -- Shirrak the Dead Watcher
18441, -- Stolen Soul
18731, -- Ambassador Hellmaw
18667, -- Blackheart the Inciter
18796, -- Fel Overseer
18732, -- Grandmaster Vorpil
18848, -- Malicious Instructor
18708 -- Murmur
);

-- SAPPED [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
18344, -- Nexus-Prince Shaffar
18472, -- Darkweaver Syth
18473, -- Talon King Ikiss
18497, -- Auchenai Monk
18373, -- Exarch Maladaar
18667, -- Blackheart the Inciter
18732 -- Grandmaster Vorpil
);
