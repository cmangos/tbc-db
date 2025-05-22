-- ----------------
-- Veil Lithic: Preemptive Strike
-- ----------------

-- [5] UpdateType: CreateObject1
-- [5] Object Guid: Full: 0x2C45B04240B4DEC000002400002817C6 GameObject/0 R4460/S36 Map: 530 Entry: 185211 Low: 2627526
-- [5] Object Type: 8 (GameObject)
-- [5] Flags: 0

-- [6] UpdateType: CreateObject1
-- [6] Object Guid: Full: 0x2C45B04240B4DE8000002400002817E0 GameObject/0 R4460/S36 Map: 530 Entry: 185210 Low: 2627552
-- [6] Flags: 0

UPDATE gameobject_template SET flags=0 WHERE entry=185211;
UPDATE gameobject_template SET flags=0 WHERE entry=185210;