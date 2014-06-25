-- Fixed combat distance of many raid encounters. Tank were previously forced to tank those bosses by being "inside" them
-- Source: Trinity Core DB
UPDATE `creature_model_info` SET `bounding_radius` = 0.0235, `combat_reach` = 14 WHERE `modelid` = 15556; -- eye of c'thun

