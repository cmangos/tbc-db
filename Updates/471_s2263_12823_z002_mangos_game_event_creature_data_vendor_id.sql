-- ===========================================================
-- Core Change to Implement Vendor ID Changes with Game Events
-- ===========================================================
ALTER TABLE `game_event_creature_data`
ADD COLUMN `vendor_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `equipment_id`;

