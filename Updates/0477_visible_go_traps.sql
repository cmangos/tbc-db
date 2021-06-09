-- Fix some Gameobject Traps being visible to players
UPDATE `gameobject_template` SET `data9` = 1 WHERE `entry` IN (
-- wotlk/classic-db
103575, -- Containment Coffer TRAP
128972, -- Shallow Grave TRAP
176592, -- Shellfish Trap
176750, -- Kodo Bones
177493, -- Fire of Elune (Trap
177529, -- Altar of Elune (Trap
178124, -- Resonite Crystal (Trap
178248, -- Naga Brazier (trap
181214, -- Necropolis critter spawner
-- vmangos
179324, -- Frostwolf Landmine
179325, -- Stormpike Landmine
-- thx @shagu
171941, -- Blackrock Keg Trap
180391, -- Heart of Hakkar Spell Emitter
184718, -- Cauldron Summoner
184722 -- Cauldron Bug Summoner
);

