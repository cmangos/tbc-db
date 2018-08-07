
-- =====================
-- ADD MISSING MECHANICS
-- =====================

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
22826 -- King Dorfbruiser
);

-- TURN [2 spells] (Turn Undead, Turn Evil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
22827, -- Gorgolon the All-Seeing
22826, -- King Dorfbruiser
22825, -- Matron Li-sahar
20888, -- Solus the Eternal
22828, -- Trelopades
22930 -- Yor
);

