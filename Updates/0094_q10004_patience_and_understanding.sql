UPDATE gossip_menu_option SET condition_id=10992 WHERE menu_id=7725;
DELETE FROM conditions WHERE condition_entry=10992;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(10992, 9, 10004, 1, 'Quest ID 10004 Taken AND NOT Completed');


