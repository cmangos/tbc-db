-- Set Default MovementType to Idle for Stationary Summoned Units
-- Like Mines, Totems that still miss it and can cause issues when they are summoned
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` IN (
8035, -- Dark Iron Land Mine
16385, -- Lightning Totem
18186, -- Feralfen Totem
18491, -- Veil Shalas Totem
18795, -- Lesser Scorching Totem
21420, -- Corrupt Water Totem
21468, -- Kaliri Totem
21703, -- Corrupt Fire Totem
21704, -- Corrupt Earth Totem
21705, -- Corrupt Air Totem
21992, -- Strength of Earth Totem
21995, -- Searing Totem
22315, -- Deathforge Mine
22318 -- Spirit Calling Totem
);

