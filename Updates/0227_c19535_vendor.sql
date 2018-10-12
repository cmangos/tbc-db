-- Dealer Senzik 19538 should sell Uncommon gems in limited supply only (one at a time?)
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `entry` = 19538 AND ITEM IN (
23094, -- Teardrop Blood Garnet
23096, -- Runed Blood Garnet
23098, -- Inscribed Flame Spessarite
23099, -- Luminous Flame Spessarite
23100, -- Glinting Flame Spessarite
23101, -- Potent Flame Spessarite
23103, -- Radiant Deep Peridot
23106, -- Dazzling Deep Peridot
23108, -- Glowing Shadow Draenite
23109, -- Royal Shadow Draenite
23110, -- Shifting Shadow Draenite
23111, -- Sovereign Shadow Draenite
23113, -- Brilliant Golden Draenite
23114, -- Gleaming Golden Draenite
23115, -- Thick Golden Draenite
23118, -- Solid Azure Moonstone
23119, -- Sparkling Azure Moonstone
23120, -- Stormy Azure Moonstone
28290, -- Smooth Golden Draenite
28595 -- Bright Blood Garnet
);

