-- =====================
-- Add missing MechanicImmuneMask for Bashir Event
-- =====================

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
23391, -- Bash'ir
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
23391, -- Bash'ir
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
23391, -- Bash'ir
23249, -- Bash'ir Flesh Fiend
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor
23332, -- Bash'ir Reckoner
23350 -- The Grand Collector
);

-- SAPPED [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
23332 -- Bash'ir Reckoner
);

