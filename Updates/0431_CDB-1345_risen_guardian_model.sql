-- Added missing models for NPC 11598 (Risen Guardian) in Scholomance
-- Fixed the corresponding model ID (bounding radius and combat reach)
-- Source UDB
DELETE FROM creature_model_info WHERE modelid IN (775, 533, 5432, 10975);
INSERT INTO creature_model_info (modelid,bounding_radius,combat_reach,gender,modelid_other_gender,modelid_alternative) VALUES
(533, 0.5122, 1.95, 2, 0, 0),
(775, 0.591, 2.25, 2, 0, 0),
(5432, 0.5205, 1.5, 2, 0, 0),
(10975, 0.5205, 1.5, 2, 0, 0);

