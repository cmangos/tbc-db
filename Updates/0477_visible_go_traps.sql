-- Fix some Gameobject Traps being visible to players
UPDATE `gameobject_template` SET `data9` = 1 WHERE `entry` IN (
103575, -- Containment Coffer TRAP
128972, -- Shallow Grave TRAP

176592, -- Shellfish Trap
176750, -- Kodo Bones
177493, -- Fire of Elune (Trap
177529, -- Altar of Elune (Trap
178124, -- Resonite Crystal (Trap
178248, -- Naga Brazier (trap

179324, -- Frostwolf Landmine
179325, -- Stormpike Landmine

181214); -- Necropolis critter spawner

