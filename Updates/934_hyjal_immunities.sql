-- ----------
-- ADD IMMUNITIES
-- ----------

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17916, -- Fel Stalker
17908, -- Giant Infernal
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- DISTRACT [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8 WHERE entry IN (
17898, -- Abomination
17905, -- Banshee
17897, -- Crypt Fiend
17916, -- Fel Stalker
17907, -- Frost Wyrm
17906, -- Gargoyle
17895, -- Ghoul
17899 -- Shadowy Necromancer
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
17808, -- Anetheron
17898, -- Abomination
17968, -- Archimonde
17842, -- Azgalor
17905, -- Banshee
17897, -- Crypt Fiend
17907, -- Frost Wyrm
17906, -- Gargoyle
17895, -- Ghoul
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17902, -- Skeleton Invader
17903, -- Skeleton Mage
17818 -- Towering Infernal
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
17808, -- Anetheron
17898, -- Abomination
17968, -- Archimonde
17842, -- Azgalor
17905, -- Banshee
17897, -- Crypt Fiend
17907, -- Frost Wyrm
17906, -- Gargoyle
17895, -- Ghoul
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17902, -- Skeleton Invader
17903, -- Skeleton Mage
17818 -- Towering Infernal
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- SHACKLE [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
17907, -- Frost Wyrm
17767 -- Rage Winterchill
);

-- TURN [2 spells] (Turn Undead, Turn Evil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
17808, -- Anetheron
17898, -- Abomination
17968, -- Archimonde
17842, -- Azgalor
17905, -- Banshee
17897, -- Crypt Fiend
17907, -- Frost Wyrm
17906, -- Gargoyle
17895, -- Ghoul
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17902, -- Skeleton Invader
17903, -- Skeleton Mage
17818 -- Towering Infernal
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- ===========
-- EXTRA FLAGS
-- ===========

-- NOT_TAUNTABLE
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN (
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- HASTE IMMUNE [2 spells] (Curse of Tongues, Mind-numbing Poison)
UPDATE creature_template SET ExtraFlags=ExtraFlags|4194304 WHERE entry IN(
17808, -- Anetheron
17968, -- Archimonde
17842, -- Azgalor
17907, -- Frost Wyrm
17888, -- Kaz'rogal
17864, -- Lesser Doomguard
17767, -- Rage Winterchill
17818 -- Towering Infernal
);

-- ===========
-- REMOVE IMMUNITIES
-- ===========

-- DISTRACT [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8 WHERE entry IN (
17767, -- Rage Winterchill
17808, -- Anetheron
17842, -- Azgalor
17888 -- Kaz'rogal
);

