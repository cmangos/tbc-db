-- Add missing areatrigger when fall from Shadowfang Keep
-- Closes https://github.com/cmangos/issues/issues/1734
DELETE FROM areatrigger_teleport WHERE id=2406;
INSERT INTO areatrigger_teleport (id, name, required_level, required_item, required_item2, required_quest_done, target_map, target_position_x, target_position_y, target_position_z, target_orientation, status_failed_text, condition_id) VALUES
(2406, 'Shadowfang Keep - Falling out', 0, 0, 0, 0, 0, -233.011, 1567.5, 76.8921, 4.27606, NULL, 0);


