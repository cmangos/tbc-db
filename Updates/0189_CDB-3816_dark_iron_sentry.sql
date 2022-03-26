-- these are not sentries anymore in tbc+ but positioning is still more correct then current for 5777
UPDATE `creature` SET `position_x` = '-7023.14746093750', `position_y` = '-1283.5075683593750', `position_z` = '258.440917968750000', `orientation` = '4.764749050140380859', `spawndist` = '0', `MovementType` = '0' WHERE (`guid` = '5777');
UPDATE `creature` SET `position_x` = '-6906.52539062500', `position_y` = '-1093.6492919921875', `position_z` = '256.740142822265625', `orientation` = '0.942477762699127197' WHERE (`guid` = '6830');
UPDATE `creature` SET `position_x` = '-6995.07080078125', `position_y` = '-1144.6099853515625', `position_z` = '257.579864501953125', `orientation` = '1.413716673851013183' WHERE (`guid` = '6831');
UPDATE `creature` SET `position_x` = '-6931.85400390625', `position_y` = '-1419.8157958984375', `position_z` = '256.156494140625000', `orientation` = '4.852015495300292968' WHERE (`guid` = '6832');

DELETE FROM `creature` WHERE `guid` IN ('6087'); -- https://github.com/cmangos/classic-db/commit/03a12ec667ea49305a5bff029c5108c4888f57e7#diff-87462e01fd9450e0753da4501e62035a60f4e42c9177e8fc1f61d08e598cb828R8

