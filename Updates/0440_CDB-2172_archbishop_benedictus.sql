-- Update stats for NPC 1284 (Archbishop Benedictus)
-- classic level 63, 466400hp, 123120mp

-- 7799_V2_3_3_7799\2008-01-28-14-56_7799_MIHASYA.sqlite
-- [46] (0) OBJECT_FIELD_GUID: Full: 0xF0094DC4 UInt64: 4027141572
-- [46] (3) OBJECT_FIELD_ENTRY: 1284
-- [46] (4) OBJECT_FIELD_SCALE_X: 1.2
-- [46] (28) UNIT_FIELD_MAXHEALTH: 100 (619600/1062200) depending on Expansion, due to scale (no aura i 
-- [46] (29) UNIT_FIELD_MAXPOWER1: 153080
-- [46] (31) UNIT_FIELD_MAXPOWER3: 2000
-- [46] (33) UNIT_FIELD_MAXPOWER5: 1000000
-- [46] (34) UNIT_FIELD_LEVEL: 73
-- HealthMultriplier: 200
-- ManaMultiplier: 20
-- Maybe he was on the Hight of his Power at this point in time, we'll never know (Expansion 0/1 unclear)
-- (1007, 1284, 12, -1, 3, 3, 2563313664, 8, 1048576, 1048576, 0), - creaturedifficulty.dbc says -1 so always scale with max boss rank
-- https://tbc.wowhead.com/npc=1284/archbishop-benedictus#comments
-- https://wowpedia.fandom.com/wiki/Archbishop_Benedictus?diff=next&oldid=1634927
UPDATE `creature_template` SET `Scale` = 1.2, `Expansion` = 1, `MinLevel`='73', `MaxLevel`='73', `MeleeBaseAttackTime`='2400' WHERE `entry`='1284'; -- Archbishop Benedictus (200H)(20P)(2D)(1A)

-- 9183_V3_0_3_9183\2008-12-26-19-48_9183_MIHASYA.sqlite
-- [46] GUID: Full: 0xF130000504001552 Type: Creature Entry: 1284 Low: 5458
-- [46] OBJECT_FIELD_SCALE_X: 1
-- [46] UNIT_FIELD_MAXHEALTH: 106800
-- [46] UNIT_FIELD_MAXPOWER1: 115020/1.61177E-40
-- [46] UNIT_FIELD_MAXPOWER3: 100/1.4E-43
-- [46] UNIT_FIELD_MAXPOWER4: 2000/2.803E-42
-- [46] UNIT_FIELD_MAXPOWER5: 1000000/1.401298E-39
-- [46] UNIT_FIELD_LEVEL: 60
-- Modifier 1: 50
-- Modifier 2: 20

