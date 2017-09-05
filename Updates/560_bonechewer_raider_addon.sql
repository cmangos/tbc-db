-- Delete addon from one Bonechewer Raider. It didn't have a mount assigned. This is already handled in creature_template_addon
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=16925);
