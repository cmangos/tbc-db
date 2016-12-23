-- ===================
-- Fixes by Killerwife
-- ===================
-- Who are they? quest fix
-- http://www.wowhead.com/quest=10040/who-are-they

DELETE FROM conditions WHERE condition_entry IN (600);
INSERT INTO conditions VALUES(600,9,10040,0); -- hide the gossip when you are not on the quest


UPDATE gossip_menu_option SET action_script_id=777101 WHERE menu_id=7771; -- set script "give another shadowy disguise"
UPDATE gossip_menu_option SET action_menu_id=-1 WHERE menu_id=7771; -- close window after clicking on gossip option
UPDATE gossip_menu_option SET condition_id=600 WHERE menu_id=7771; -- set condition to gossip option
DELETE FROM dbscripts_on_gossip WHERE id IN (777101);
INSERT INTO dbscripts_on_gossip VALUES(777101,0,15,48917,0,0,0,0,0,0,0,0,0,0,0,0,'Give another shadowy disguise'); -- create new script to execute after "private weeks I need another disguise" casts spell that gives shadowy disguise and the shapeshift effect of a cultist


-- give credit after talking to npc
UPDATE gossip_menu_option SET action_script_id=7759 WHERE menu_id=7759;
INSERT INTO dbscripts_on_gossip VALUES(7759,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowy Initiate Gives Credit on Gossip');


-- associate gossip option with script for credit
UPDATE gossip_menu_option SET action_script_id=7757 WHERE menu_id=7757;
INSERT INTO dbscripts_on_gossip VALUES(7757,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowy Laborer give talked to credit');

UPDATE gossip_menu_option SET action_script_id=7760 WHERE menu_id=7760;
INSERT INTO dbscripts_on_gossip VALUES(7760,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowy Advisor give talked to credit');



