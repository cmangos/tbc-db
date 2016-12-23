-- q.9418 'Avruu's Orb'
-- Aeranas should be spawned only by gossip_option (by players who has this q. active).
UPDATE gossip_menu SET script_id = 0 WHERE entry = 10219;
-- summoned should despawn soon after q. completed
DELETE FROM dbscripts_on_quest_end WHERE id = 9418;
INSERT INTO dbscripts_on_quest_end VALUES
(9418,1,18,60000,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
 UPDATE quest_template SET CompleteScript = 9418 WHERE entry = 9418;


