-- This script and texts used are for patch 2.4.3. In earlier patches Cro had different texts (http://wowwiki.wikia.com/wiki/Cro_Threadstrong)

-- Pathing for  Entry: 19196 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=68731;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=19196;
DELETE FROM `creature_movement_template` WHERE `entry`=19196;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(19196,1,-2062.68,5255.393,-38.46511,32000,1919601,0,0,0,0,0,0,0,100,0,0),
(19196,2,-2060.171,5250.478,-38.46526,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,3,-2058.803,5251.768,-38.2835,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,4,-2057.311,5255.311,-38.21525,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,5,-2057.544,5258.627,-38.22134,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,6,-2058.27,5262.007,-38.21606,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,7,-2059.603,5261.874,-38.46512,8500,1919602,0,0,0,0,0,0,0,100,0,0),
(19196,8,-2062.257,5265.815,-38.21502,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,9,-2063.573,5267.653,-38.21495,13000,1919603,0,0,0,0,0,0,0,100,0,0),
(19196,10,-2068.837,5262.751,-38.21029,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,11,-2069.733,5260.295,-37.96473,0,0,0,0,0,0,0,0,0,0,0,0),
(19196,12,-2064.942,5256.248,-38.46506,1200000,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1919601 AND 1919603;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1919601,0,0,2,0,0,0,0,0,0,0,0,'Cro Threadstrong - Random text'),
(1919602,5,1,6,0,0,0,0,0,0,0,0,'Cro Threadstrong - OneShotQuestion'),
(1919603,5,0,0,0,2000001185,2000001186,2000001187,2000001188,0,0,0,'Cro Threadstrong - Random text'),
(1919603,13,32,1,0,0,0,0,0,19223,50,0,'Granny Smith - Pause Waypoints'),
(1919603,12,28,0,0,0,0,0,0,19223,50,0,'Granny Smith - UNIT_STAND_STATE_STAND'),
(1919603,12,1,0,0,0,0,0,0,19223,50,0,'Granny Smith - ONESHOT_NONE'),
(1919603,13,36,0,0,0,0,0,0,19223,50,3,'Granny Smith - Face Cro Threadstrong'),
(1919603,14,0,0,0,2000001189,2000001190,2000001191,2000001192,19223,50,3,'Granny Smith - Random text'),
(1919603,22,1,6,0,0,0,0,0,19223,50,0,'Granny Smith - OneShotQuestion'),
(1919603,26,32,0,0,0,0,0,0,19223,50,0,'Granny Smith - Resume Waypoints');

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001180 AND 2000001192;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001180, 'My army has not arrived.  I knew I could not trust the people I hired.  We will recruit new people.  We will sell these apples and our new army will crush them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001181, 'I do not understand this fruit vendor or their ogre.  It seemed as though war was upon us... Yet nothing has happened.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001182, 'We should sell these apples, but we will not allow peole to eat them.  Oh no!  We will sell apples to our friends, and they shall bring the fight to the fruit vendor for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001183, 'The fruit vendor has refused to accept my challenge and remove his cart.  Their ogre protector just sits and does nothing... What could his plan be?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001184, 'It''s time to deal with this fruit situtation on our terms.  We''ve been far too accomidating to the fruit vendor.  Now we will simply sell the fruit.  But the fruit will not be for people to eat.  I forbid it!  No one will eat our fruit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),


(2000001185, 'FRUIT VENDOR!!! Your cart is still in our way!  Your time is up!  You have new competition in selling fruit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001186, 'HA!  I CRUSHED AN APPLE, FRUIT VENDOR! NOW,  YOUR APPLES WILL BE SOLD TO OTHERS FOR THEM TO CRUSH AS WELL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001187, 'IF WAR IS WHAT YOU WANT, WAR IS WHAT YOU SHALL GET, FRUIT VENDOR!  WE WILL SEE WHO SELLS MORE OF YOUR APPLES!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001188, 'YOU HAVE RUN OUT OF TIME FRUIT VENDOR!!  NOW I WILL SELL YOUR ROTTEN FRUIT!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),

(2000001189, 'Huh? Did someone say something?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001190, 'What is that poor orc yelling about? Someone should see what is going on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001191, 'Fruit?  Did somebody say they wanted fruit?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001192, 'Is someone calling for me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Granny Smith (Entry: 19223)');

DELETE FROM dbscript_string_template WHERE id=2;
INSERT INTO dbscript_string_template (id,string_id) VALUES
(2,2000001180),
(2,2000001181),
(2,2000001182),
(2,2000001183),
(2,2000001184);

-- Missing item in tbc-db. Data from wotlk-db. (Was added in 2.4.2 http://www.wowhead.com/item=38518/cros-apple#comments)
DELETE FROM `item_template` WHERE `entry`=38518;
INSERT INTO `item_template` (`entry`, `name`, `displayid`, `Quality`, `Flags`, `BuyPrice`, `SellPrice`, `ItemLevel`, `RequiredLevel`, `maxcount`, `stackable`, `delay`, `spellid_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `description`, `Material`) VALUES 
('38518', 'Cro\'s Apple', '50737', '1', '64', '150', '37', '5', '1', '24', '24', '0', '50749', '-1', '0', '1000', 'For Cro Threadstrong!', '7');

DELETE FROM `npc_vendor` WHERE `entry`=19196 AND `item`=38518;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES 
(19196, 38518, 0, 0, 0, 0, NULL);

