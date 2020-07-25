-- (Re)add different gossip text for players below Honored rep with Skyguard Handler Deesak (23415)
-- Fixed here https://gitlab.com/lights-vengeance/tbc-db-vengeance/-/commit/3aa6f389af9f20a751ac6deb9ba38e9d80464b3d but later removed due to bad condition
DELETE FROM gossip_menu WHERE entry=8719 AND `condition_id` = 0;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8719, 10980, 0, 0);

