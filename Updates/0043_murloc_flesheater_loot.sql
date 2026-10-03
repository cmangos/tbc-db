-- Murloc Flesheater (entry 422, level 18-19) drops several items that are far
-- above its level range. Remove the out-of-range drops:
--   4599 Cured Ham Steak       (req. level 35)
--   1710 Greater Healing Potion(req. level 21)
--   4539 Goldenbark Apple      (req. level 25)
--   4601 Soft Banana Bread     (req. level 35)
-- ref https://github.com/cmangos/issues/issues/3940
DELETE FROM `creature_loot_template` WHERE `entry` = 422 AND `item` IN (4599, 1710, 4539, 4601);
