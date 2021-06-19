-- Correct Scale which was incorrectly imported from classic-db
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0 AND `entry` IN (
2416, -- Crushridge Plunderer
4324, -- Searing Whelp
5345, -- Diamond Head
6222, -- Leprous Technician
6223, -- Leprous Defender
6224, -- Leprous Machinesmith
6391, -- Holdout Warrior
6392, -- Holdout Medic
6407, -- Holdout Technician
7603, -- Leprous Assistant
9676, -- Tink Sprocketwhistle
10182, -- Rokaro
14234, -- Hayoc
14478, -- Huricanian
14491, -- Kurmokk
15168, -- Vile Scarab
15246, -- Qiraji Mindslayer
15334, -- Giant Eye Tentacle
15343, -- Qiraji Swarmguard
15348, -- Kurinnaxx
15370, -- Buru the Gorger
15387, -- Qiraji Warrior
15461, -- Shrieker Scarab
15462, -- Spitting Scarab
15507, -- Buru the Gorger Transform Visual
15511, -- Lord Kri
15514, -- Buru Egg
15521, -- Hive'Zara Hatchling
15543, -- Princess Yauj
15544, -- Vem
15589, -- Eye of C'Thun
15630, -- Spawn of Fankriss
15725, -- Claw Tentacle
15726, -- Eye Tentacle
15727, -- C'Thun
15728, -- Giant Claw Tentacle
15775, -- Christmas Emperor Dagran Thaurissan
15802, -- Flesh Tentacle
15809, -- C'Thun Transformation Visual
15904, -- Tentacle Portal
15910, -- Giant Tentacle Portal
15974, -- Dread Creeper
15975, -- Carrion Spinner
15976, -- Venom Stalker
15977, -- Infectious Skitterer
16017, -- Patchwork Golem
16027, -- Living Poison
16029, -- Sludge Belcher
16068, -- Larva
16127, -- Spectral Trainee
16145, -- Deathknight Captain
16146, -- Deathknight
16163, -- Deathknight Cavalier
16164, -- Shade of Naxxramas
16165, -- Necro Knight
16368, -- Necropolis Acolyte
16390, -- Deathchill Servant
16400, -- Toxic Tunnel
16446, -- Plagued Gargoyle
16449, -- Spirit of Naxxramas
16451, -- Deathknight Vindicator
16452, -- Necro Knight Guardian
16861, -- Death Lord
17025 -- Sapphiron's Wing Buffet
);

