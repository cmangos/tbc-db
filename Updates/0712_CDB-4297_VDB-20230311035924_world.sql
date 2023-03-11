-- https://github.com/vmangos/core/commit/f8a50e33edd59b0986205fccda1d3b01ced32bc7

-- Add enslave immunity to several demons.
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry` IN (
7461, -- Hederine Initiate
7462, -- Hederine Manastalker
7463, -- Hederine Slayer
7665, -- Grol the Destroyer
7666, -- Archmage Allistarj
7667, -- Lady Sevine
7728, -- Kirith the Damned
8318, -- Atal'ai Slave
8717, -- Felguard Elite
8718, -- Manahound
9516, -- Lord Banehollow
10201, -- Lady Hederine
10813, -- Balnazzar
11490, -- Zevrim Thornhoof
11492, -- Alzzin the Wildshaper
12236, -- Lord Vyletongue
12396, -- Doomguard Commander
14101, -- Enraged Felguard
14354, -- Pusillin
15467 -- Omen
);

