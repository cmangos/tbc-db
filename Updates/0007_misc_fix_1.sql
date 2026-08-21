-- Correct creature_model_info for Eredar Soul-Eater & Eredar Deathbringer & Deathbringer Jovaan (20879,20880,21594,21595,21633)
UPDATE `creature_model_info` SET `bounding_radius` = 0.916668, `combat_reach` = 3 where `modelid` IN (19949,19950);

