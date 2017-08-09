-- Delete static Tamed Sporebat spawns. These are spawned by Feralfen Hunters (spell 32060)
DELETE FROM creature WHERE id=18201;

-- Path for one Feralfen Hunter
UPDATE creature SET MovementType=2 WHERE guid=64078 AND id=18113;
DELETE FROM `creature_movement` WHERE `id`=64078;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(64078,1,-211.168,7326.624,44.42298,0,0,0),
(64078,2,-211.5782,7335.716,44.4231,0,0,0),
(64078,3,-204.296,7341.524,44.4232,0,0,0),
(64078,4,-196.4764,7338.283,44.42353,0,0,0),
(64078,5,-194.9693,7329.362,44.42307,0,0,0),
(64078,6,-199.8639,7324.584,44.42302,0,0,0),
(64078,7,-203.4182,7322.745,44.42294,0,0,0);

