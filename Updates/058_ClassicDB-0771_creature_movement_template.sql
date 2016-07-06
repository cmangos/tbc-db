
SET @SUSAN := '2802'; -- Susan Tillinghast

-- -------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@SUSAN);

UPDATE `creature` SET `position_x`='1390.215', `position_y`='35.21756', `position_z`='-62.19329', `orientation`='2.079669', `MovementType`='2' WHERE `id`=@SUSAN;

DELETE FROM `creature_movement` WHERE `id`=@GUID;

DELETE FROM `creature_movement_template` WHERE `entry`=@SUSAN;

insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','1','1378.64','55.965','-62.2767','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','2','1383.24','83.3483','-62.2764','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','3','1399.81','97.1692','-62.2886','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','4','1417.96','141.021','-62.2946','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','5','1433.98','149.911','-62.284','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','6','1447.69','137.149','-62.2928','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','7','1461.87','120.971','-60.1884','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','8','1464.95','111.218','-60.1895','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','9','1479.52','98.093','-60.1901','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','10','1484.87','94.6143','-62.2497','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','11','1500.44','81.3289','-62.2983','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','12','1481.72','47.7067','-62.2949','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','13','1442.54','36.2326','-62.2783','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','14','1416.4','21.24','-62.2751','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','15','1405.66','23.783','-62.2762','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('2802','16','1387.2','36.6966','-62.2761','0','0','0','0','0','0','0','0','0','0','0','0');


