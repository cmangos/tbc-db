-- ==========================================================================================================
-- ==========          Implement Faction Mounts To Require Exalted Reputation To Purchase          ==========
-- ==========================================================================================================

DELETE FROM conditions WHERE condition_entry BETWEEN 1075 AND 1084;
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1075','-2','263','295'); -- Dwarf Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1076','-2','265','293'); -- Human Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1077','-2','271','296'); -- Night Elf Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1078','-2','272','299'); -- Gnome Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1079','-2','267','302'); -- Draenei Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1080','-2','264','294'); -- Orc Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1081','-2','266','298'); -- Tauren Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1082','-2','268','300'); -- Troll Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1083','-2','270','297'); -- Undead Vendor
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('1084','-2','269','301'); -- Blood Elf Vendor


-- ============
-- Dwarf Mounts
-- ============
UPDATE npc_vendor SET condition_id=1075 WHERE entry IN (1261);

-- ============
-- Human Mounts
-- ============
UPDATE npc_vendor SET condition_id=1076 WHERE entry IN (384,1460);
UPDATE npc_vendor_template SET condition_id=1076 WHERE entry IN (17);

-- ================
-- Night Elf Mounts
-- ================
UPDATE npc_vendor SET condition_id=1077 WHERE entry IN (4730);

-- ============
-- Gnome Mounts
-- ============
UPDATE npc_vendor SET condition_id=1078 WHERE entry IN (7955);

-- ==============
-- Draenai Mounts
-- ==============
UPDATE npc_vendor SET condition_id=1079 WHERE entry IN (17584);

-- ==========
-- Orc Mounts
-- ==========
UPDATE npc_vendor SET condition_id=1080 WHERE entry IN (3362);

-- =============
-- Tauren Mounts
-- =============
UPDATE npc_vendor SET condition_id=1081 WHERE entry IN (3685);

-- ============
-- Troll Mounts
-- ============
UPDATE npc_vendor SET condition_id=1082 WHERE entry IN (7952);

-- =============
-- Undead Mounts
-- =============
UPDATE npc_vendor SET condition_id=1083 WHERE entry IN (4731);

-- ================
-- Blood Elf Mounts
-- ================
UPDATE npc_vendor SET condition_id=1084 WHERE entry IN (16264);








