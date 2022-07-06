-- Add Frost Immunity for Ahune Event
-- Prior to Cataclysm, he and all his adds were immune to the frost school, including Death Knights' [Icy Touch] spell, making it difficult for Death Knights to tank effectively, and for frost mages to DPS.
-- https://wowpedia.fandom.com/wiki/Ahune - latest

-- Note that all the adds are immune or substantially resistant to frost effects. Death knights may need to alter their tanking strategies on this fight. 
-- https://wowpedia.fandom.com/wiki/Ahune?oldid=2314585 - 6 July 2010
UPDATE `creature_template` SET `SchoolImmuneMask` = `SchoolImmuneMask`|16 WHERE `entry` IN (
25757,26341, -- Ahunite Frostwind
25756,26340, -- Ahunite Coldwave
25755,26342, -- Ahunite Hailstone
25865,26339, -- Frozen Core
25740,26338 -- Ahune
);

