-- Fixed stats of NPC 15466 (Minion of Omen) & 15467 (Omen) in Moonglade
-- Fixed stats and faction of NPC 15466 (Minion of Omen)
-- Also prevented it from going into water
-- Fixed stats of NPC 15467 (Omen)
-- Also prevented it from regenerating health

-- 7799_V2_3_3_7799\2008-02-07-16-11_7799_MIHASYA.sqlite - shows at 94% hp without combat unitflags & more
-- https://tbc.wowhead.com/npc=15467/omen#comments:id=230697
UPDATE `creature_template` SET `RegenerateStats`='0', `MinLevel` = 73, `MaxLevel` = 73, `HealthMultiplier`='300', `DamageMultiplier`='10', `Expansion` = 0, `SpeedWalk` = 1 WHERE `entry`='15467'; -- Omen (400H)(1P)(3D)(1A) - 14
UPDATE `creature_model_info` SET `bounding_radius` = 1 WHERE `modelid` = 15879;

