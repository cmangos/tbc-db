-- ==============================
-- RAGEFIRE CHASM TBC UPDATES
-- ==============================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (11517,11518,11519,11520);


-- Linked Aggro Between Group 1 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48653);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48654','48653','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48662','48653','3');


-- Linked Aggro Between Group 2 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48660);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48666','48660','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48657','48660','3');

-- Move Trogg Closer To Group
UPDATE creature SET position_x='-277.035553', position_y='-47.274254', position_z='-60.932140' WHERE guid IN (48658);
-- Linked Aggro Between Group 3 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48658);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48670','48658','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48673','48658','3');


-- Linked Aggro Between Group 4 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48671);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48667','48671','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48665','48671','3');


-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48672);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48659','48672','3');


-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48656);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48652','48656','3');


-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48649);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48650','48649','3');


-- Linked Aggro Between Ragefire Trogg and Shaman (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (43583);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43582','43583','3');


-- Linked Aggro Between Ragefire Troggs Guarding Oggleflint
DELETE FROM creature_linking WHERE master_guid IN (48645);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48643','48645','3');


-- Linked Aggro Between (2nd Right-Path) 2 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48677);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48678','48677','3');


-- Earthborer Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48642;
DELETE FROM creature_movement WHERE id=48642;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','1','-176.762','11.7284','-31.6117','0','0','0','0','0','0','0','0','0','0.155953','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','2','-190.166','10.9667','-33.0618','0','0','0','0','0','0','0','0','0','3.22686','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','3','-210.648','7.87269','-39.8187','0','0','0','0','0','0','0','0','0','3.18916','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','4','-230.782','9.0604','-44.4237','0','0','0','0','0','0','0','0','0','3.03836','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','5','-257.486','7.90906','-49.87','0','0','0','0','0','0','0','0','0','3.17267','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','6','-277.67','8.30601','-49.0795','0','0','0','0','0','0','0','0','0','3.20801','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','7','-286.82','7.69739','-46.2229','0','0','0','0','0','0','0','0','0','3.20801','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','8','-298.657','5.29958','-48.0252','0','0','0','0','0','0','0','0','0','3.39179','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','9','-303.916','0.147967','-49.7325','0','0','0','0','0','0','0','0','0','4.02718','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','10','-293.624','7.59828','-47.0034','0','0','0','0','0','0','0','0','0','0.427703','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','11','-280.864','9.03737','-47.8212','0','0','0','0','0','0','0','0','0','0.121398','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','12','-265.063','9.36602','-49.8266','0','0','0','0','0','0','0','0','0','0.046786','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','13','-247.208','8.66721','-48.9012','0','0','0','0','0','0','0','0','0','6.25693','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','14','-233.341','8.45427','-44.4523','0','0','0','0','0','0','0','0','0','6.25693','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','15','-216.121','6.63711','-41.6912','0','0','0','0','0','0','0','0','0','6.14619','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','16','-204.445','7.92862','-37.4818','0','0','0','0','0','0','0','0','0','0.217217','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','17','-192.818','10.4947','-33.4114','0','0','0','0','0','0','0','0','0','0.217217','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','18','-172.941','14.3137','-30.7882','0','0','0','0','0','0','0','0','0','0.217217','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','19','-161.6','14.8526','-27.2189','0','0','0','0','0','0','0','0','0','0.046785','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','20','-147.478','11.5309','-22.3629','0','0','0','0','0','0','0','0','0','6.04723','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','21','-135.908','8.74903','-20.8654','0','0','0','0','0','0','0','0','0','6.04723','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','22','-124.215','10.9816','-19.9281','0','0','0','0','0','0','0','0','0','0.192869','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','23','-116.619','15.0944','-18.8846','0','0','0','0','0','0','0','0','0','0.49839','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','24','-111.628','24.9273','-18.6011','0','0','0','0','0','0','0','0','0','1.08587','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','25','-108.915','36.6246','-18.0731','0','0','0','0','0','0','0','0','0','1.33091','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','26','-114.503','21.4459','-18.8557','0','0','0','0','0','0','0','0','0','4.38297','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','27','-118.88','14.3031','-19.0844','0','0','0','0','0','0','0','0','0','4.1018','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','28','-131.828','8.81858','-20.8654','0','0','0','0','0','0','0','0','0','3.55045','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','29','-144.715','9.21781','-21.8423','0','0','0','0','0','0','0','0','0','3.11063','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','30','-161.281','12.4744','-27.4041','0','0','0','0','0','0','0','0','0','2.97632','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48642','31','-170.005','13.6925','-30.0021','0','0','0','0','0','0','0','0','0','3.08706','0','0');


-- Linked Aggro Between Right Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48689);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48695','48689','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48691','48689','3');


-- Linked Aggro Between Left Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48687);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48688','48687','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48694','48687','3');


-- Right Searing Blade Enforcer Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48690;
DELETE FROM creature_movement WHERE id=48690;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','1','-203.927','99.1463','-25.4809','0','0','0','0','0','0','0','0','0','1.10078','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','2','-200.74','104.201','-25.1381','0','0','0','0','0','0','0','0','0','1.10078','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','3','-198.066','115.548','-23.217','0','0','0','0','0','0','0','0','0','1.29791','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','4','-195.291','126.656','-22.168','0','0','0','0','0','0','0','0','0','1.30027','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','5','-192.549','136.545','-24.1064','0','0','0','0','0','0','0','0','0','1.30027','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','6','-190.259','144.95','-25.2199','0','0','0','0','0','0','0','0','0','1.22487','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','7','-193.47','134.133','-23.458','0','0','0','0','0','0','0','0','0','4.48035','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','8','-196.29','123.736','-22.179','0','0','0','0','0','0','0','0','0','4.55103','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','9','-199.336','113.159','-23.7528','0','0','0','0','0','0','0','0','0','4.44029','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','10','-199.643','106.426','-24.8865','0','0','0','0','0','0','0','0','0','4.73482','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48690','11','-205.093','98.0147','-25.4833','0','0','0','0','0','0','0','0','0','4.09157','0','0');


-- Left Searing Blade Enforcer Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48696;
DELETE FROM creature_movement WHERE id=48696;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','1','-214.025','91.2148','-25.0186','0','0','0','0','0','0','0','0','0','3.71773','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','2','-219.007','90.5475','-25.0186','0','0','0','0','0','0','0','0','0','3.27476','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','3','-229.367','92.7477','-23.1312','0','0','0','0','0','0','0','0','0','2.93233','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','4','-235.891','93.102','-21.7277','0','0','0','0','0','0','0','0','0','3.16637','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','5','-246.583','91.6992','-23.5772','0','0','0','0','0','0','0','0','0','3.23942','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','6','-254.38','92.4157','-25.0184','0','0','0','0','0','0','0','0','0','3.02029','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','7','-245.579','91.7263','-23.2418','0','0','0','0','0','0','0','0','0','6.26634','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','8','-236.893','92.4553','-21.7166','0','0','0','0','0','0','0','0','0','0.024783','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','9','-231.24','92.8211','-22.4395','0','0','0','0','0','0','0','0','0','6.27027','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','10','-222.659','90.784','-25.0184','0','0','0','0','0','0','0','0','0','6.0158','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','11','-217.698','89.1509','-25.0184','0','0','0','0','0','0','0','0','0','6.04093','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48696','12','-209.44','94.6833','-25.2915','0','0','0','0','0','0','0','0','0','0.590271','0','0');


-- Linked Aggro Between Left Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48693);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48692','48693','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48705','48693','3');

UPDATE creature SET SpawnDist=4, MovementType=1 WHERE guid=48693;

-- Guards Should not be Moving
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid=48704;
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid=48703;

-- Linked Aggro Between Left Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48704);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48703','48704','3');


-- Linked Aggro Between Left Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48701);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48702','48701','3');


-- Linked Aggro Between Right Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48699);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48700','48699','3');


-- Linked Aggro Between Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48719);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48720','48719','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48702','48719','3');

-- Linked Aggro Between Far Right Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48713);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48712','48713','3');


-- Linked Aggro Between Far Left Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48710);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48709','48710','3');


-- Linked Aggro Between Far Left Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48708);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48711','48708','3');

-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48715);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48717','48715','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48722','48715','3');


-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48716);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48718','48716','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48714','48716','3');


-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48723);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48724','48723','3');


-- Add Missing Searing Blade Enforcer
DELETE FROM creature WHERE guid=107705;
INSERT INTO creature VALUES (107705,11323,389,1,0,0,-334.419,216.177,-20.6274,0.357766,7200,0,0,900,0,0,0);


-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (107705);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48725','107705','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48731','107705','3');

-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48732);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48728','48732','3');


-- Linked Aggro Between Group of Searing Cult Type NPC in front of Jergosh the Invoker
DELETE FROM creature_linking WHERE master_guid IN (48737);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48741','48737','3');


-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48744);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48739','48744','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48745','48744','3');


-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48727);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48726','48727','3');

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48730);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48729','48730','3');


-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48736);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48734','48736','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48735','48736','3');


-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48738);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48743','48738','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48746','48738','3');


-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48747);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48748','48747','3');


-- Linked Aggro Between Group of Searing Cult Type NPC in Front of  Balzzalan
DELETE FROM creature_linking WHERE master_guid IN (48751);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48749','48751','3');


-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (48668);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48674','48668','3');


-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (48637);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38050','48637','3');

-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (43580);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38049','43580','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('43581','43580','3');

