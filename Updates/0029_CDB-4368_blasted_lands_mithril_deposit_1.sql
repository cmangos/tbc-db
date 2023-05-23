
-- https://github.com/cmangos/classic-db/commit/5394af1dc59634805bd9dc6386a532d721342040
-- Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit 
-- Mithril Deposit
-- DELETE FROM `gameobject` WHERE (`guid` IN (71500, 71504, 71508, 71512, 71516, 71520, 71524, 71528, 71532, 71536, 71540, 71544, 71548, 71552, 71556, 71560, 71564, 71568, 71572, 71576, 71580, 71584, 71588,
-- 71592, 71596, 71600, 71604, 71608, 71612, 71616, 71620, 71624, 71628, 71632, 71636, 71640, 71644, 71648, 71652, 71656, 71660, 71664, 71668, 71672, 71676, 71680, 71684, 71688, 71692, 71696, 71700, 71704,
-- 71708, 71712, 71716, 71720, 71724, 71728, 71732, 71736, 71740, 71744, 71748, 71752, 71756, 71760, 71764, 71768, 71772, 71776, 71780, 71784, 71788, 71792, 71796, 71800, 71804, 71808, 71812, 71816, 71820,
-- 71824, 71828, 71832, 71836, 71840, 71844, 71848, 71860, 71864, 71868, 71872, 71876, 71880, 71884, 71888, 71892, 71896, 71900, 71904, 71908, 71912, 71916, 71924, 71928, 71932, 71936, 71984, 71988, 71992));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (71500, 71504, 71508, 71512, 71516, 71520, 71524, 71528, 71532, 71536, 71540, 71544, 71548, 71552, 71556, 71560, 71564, 71568, 71572, 71576, 71580, 71584, 71588,
-- 71592, 71596, 71600, 71604, 71608, 71612, 71616, 71620, 71624, 71628, 71632, 71636, 71640, 71644, 71648, 71652, 71656, 71660, 71664, 71668, 71672, 71676, 71680, 71684, 71688, 71692, 71696, 71700, 71704,
-- 71708, 71712, 71716, 71720, 71724, 71728, 71732, 71736, 71740, 71744, 71748, 71752, 71756, 71760, 71764, 71768, 71772, 71776, 71780, 71784, 71788, 71792, 71796, 71800, 71804, 71808, 71812, 71816, 71820,
-- 71824, 71828, 71832, 71836, 71840, 71844, 71848, 71860, 71864, 71868, 71872, 71876, 71880, 71884, 71888, 71892, 71896, 71900, 71904, 71908, 71912, 71916, 71924, 71928, 71932, 71936, 71984, 71988, 71992));

-- -- Small Thorium Vein
-- DELETE FROM `gameobject` WHERE (`guid` IN (71645, 71649, 71657, 71665, 71677, 71697, 71721, 71729, 71785, 71793, 71845, 71865, 71869, 71877, 71881, 71897, 71901, 71905, 71909));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (71645, 71649, 71657, 71665, 71677, 71697, 71721, 71729, 71785, 71793, 71845, 71865, 71869, 71877, 71881, 71897, 71901, 71905, 71909));

-- -- Truesilver Deposit
-- DELETE FROM `gameobject` WHERE (`guid` IN (71647, 71651, 71659, 71667, 71679, 71699, 71723, 71731, 71787, 71795, 71847, 71867, 71871, 71879, 71883, 71899, 71903, 71907, 71911));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (71647, 71651, 71659, 71667, 71679, 71699, 71723, 71731, 71787, 71795, 71847, 71867, 71871, 71879, 71883, 71899, 71903, 71907, 71911));

-- -- Gold Vein
-- DELETE FROM `gameobject` WHERE (`guid` IN (71502, 71506, 71510, 71514, 71518, 71522, 71526, 71530, 71538, 71542, 71546, 71550, 71554, 71558, 71562, 71566, 71570, 71574, 71578, 71582, 71586, 71590, 71594,
-- 71598, 71602, 71606, 71610, 71614, 71618, 71622, 71626, 71630, 71634, 71638, 71642, 71646, 71650, 71654, 71658, 71662, 71666, 71670, 71674, 71678, 71682, 71686, 71690, 71694, 71698, 71702, 71706, 71710,
-- 71714, 71718, 71722, 71726, 71730, 71734, 71738, 71742, 71746, 71750, 71754, 71758, 71762, 71766, 71770, 71774, 71778, 71782, 71786, 71790, 71794, 71798, 71802, 71806, 71810, 71814, 71818, 71822, 71826, 71830,
-- 71834, 71838, 71842, 71846, 71850, 71862, 71866, 71870, 71874, 71878, 71882, 71886, 71890, 71894, 71898, 71902, 71906, 71910, 71914, 71918, 71926, 71930, 71934, 71938, 71986, 71990, 71994));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (71502, 71506, 71510, 71514, 71518, 71522, 71526, 71530, 71538, 71542, 71546, 71550, 71554, 71558, 71562, 71566, 71570, 71574, 71578, 71582, 71586, 71590, 71594,
-- 71598, 71602, 71606, 71610, 71614, 71618, 71622, 71626, 71630, 71634, 71638, 71642, 71646, 71650, 71654, 71658, 71662, 71666, 71670, 71674, 71678, 71682, 71686, 71690, 71694, 71698, 71702, 71706, 71710,
-- 71714, 71718, 71722, 71726, 71730, 71734, 71738, 71742, 71746, 71750, 71754, 71758, 71762, 71766, 71770, 71774, 71778, 71782, 71786, 71790, 71794, 71798, 71802, 71806, 71810, 71814, 71818, 71822, 71826, 71830,
-- 71834, 71838, 71842, 71846, 71850, 71862, 71866, 71870, 71874, 71878, 71882, 71886, 71890, 71894, 71898, 71902, 71906, 71910, 71914, 71918, 71926, 71930, 71934, 71938, 71986, 71990, 71994));

-- DELETE FROM `pool_template` WHERE (`entry` IN (3200, 3213, 3215, 3216, 3217, 3220, 3221, 3241, 3250, 3255, 3282, 3283, 3292, 3304, 3306, 3314, 3316));
-- DELETE FROM `pool_pool` WHERE (`pool_id` IN (3200, 3213, 3215, 3216, 3217, 3220, 3221, 3241, 3250, 3255, 3282, 3283, 3292, 3304, 3306, 3314, 3316));

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71648 AND 71651;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71648 AND 71651;
DELETE FROM `pool_pool` WHERE `pool_id` = 3937;
DELETE FROM `pool_template` WHERE `entry` = 3937;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71752 AND 71755;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71752 AND 71755;
DELETE FROM `pool_pool` WHERE `pool_id` = 3963;
DELETE FROM `pool_template` WHERE `entry` = 3963;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71696 AND 71699;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71696 AND 71699;
DELETE FROM `pool_pool` WHERE `pool_id` = 3949;
DELETE FROM `pool_template` WHERE `entry` = 3949;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71904 AND 71907;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71904 AND 71907;
DELETE FROM `pool_pool` WHERE `pool_id` = 4001;
DELETE FROM `pool_template` WHERE `entry` = 4001;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71876 AND 71879;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71876 AND 71879;
DELETE FROM `pool_pool` WHERE `pool_id` = 3994;
DELETE FROM `pool_template` WHERE `entry` = 3994;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71720 AND 71723;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71720 AND 71723;
DELETE FROM `pool_pool` WHERE `pool_id` = 3955;
DELETE FROM `pool_template` WHERE `entry` = 3955;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71644 AND 71647;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71644 AND 71647;
DELETE FROM `pool_pool` WHERE `pool_id` = 3936;
DELETE FROM `pool_template` WHERE `entry` = 3936;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71728 AND 71731;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71728 AND 71731;
DELETE FROM `pool_pool` WHERE `pool_id` = 3957;
DELETE FROM `pool_template` WHERE `entry` = 3957;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71868 AND 71871;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71868 AND 71871;
DELETE FROM `pool_pool` WHERE `pool_id` = 3992;
DELETE FROM `pool_template` WHERE `entry` = 3992;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71616 AND 71619;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71616 AND 71619;
DELETE FROM `pool_pool` WHERE `pool_id` = 3929;
DELETE FROM `pool_template` WHERE `entry` = 3929;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71792 AND 71795;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71792 AND 71795;
DELETE FROM `pool_pool` WHERE `pool_id` = 3973;
DELETE FROM `pool_template` WHERE `entry` = 3973;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71772 AND 71775;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71772 AND 71775;
DELETE FROM `pool_pool` WHERE `pool_id` = 3968;
DELETE FROM `pool_template` WHERE `entry` = 3968;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71744 AND 71747;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71744 AND 71747;
DELETE FROM `pool_pool` WHERE `pool_id` = 3961;
DELETE FROM `pool_template` WHERE `entry` = 3961;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71804 AND 71807;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71804 AND 71807;
DELETE FROM `pool_pool` WHERE `pool_id` = 3976;
DELETE FROM `pool_template` WHERE `entry` = 3976;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71600 AND 71603;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71600 AND 71603;
DELETE FROM `pool_pool` WHERE `pool_id` = 3925;
DELETE FROM `pool_template` WHERE `entry` = 3925;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71604 AND 71607;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71604 AND 71607;
DELETE FROM `pool_pool` WHERE `pool_id` = 3926;
DELETE FROM `pool_template` WHERE `entry` = 3926;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71732 AND 71735;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71732 AND 71735;
DELETE FROM `pool_pool` WHERE `pool_id` = 3958;
DELETE FROM `pool_template` WHERE `entry` = 3958;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71764 AND 71767;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71764 AND 71767;
DELETE FROM `pool_pool` WHERE `pool_id` = 3966;
DELETE FROM `pool_template` WHERE `entry` = 3966;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71864 AND 71867;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71864 AND 71867;
DELETE FROM `pool_pool` WHERE `pool_id` = 3991;
DELETE FROM `pool_template` WHERE `entry` = 3991;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71844 AND 71847;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71844 AND 71847;
DELETE FROM `pool_pool` WHERE `pool_id` = 3986;
DELETE FROM `pool_template` WHERE `entry` = 3986;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71676 AND 71679;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71676 AND 71679;
DELETE FROM `pool_pool` WHERE `pool_id` = 3944;
DELETE FROM `pool_template` WHERE `entry` = 3944;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71900 AND 71903;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71900 AND 71903;
DELETE FROM `pool_pool` WHERE `pool_id` = 4000;
DELETE FROM `pool_template` WHERE `entry` = 4000;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71908 AND 71911;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71908 AND 71911;
DELETE FROM `pool_pool` WHERE `pool_id` = 4002;
DELETE FROM `pool_template` WHERE `entry` = 4002;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71784 AND 71787;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71784 AND 71787;
DELETE FROM `pool_pool` WHERE `pool_id` = 3971;
DELETE FROM `pool_template` WHERE `entry` = 3971;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71656 AND 71659;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71656 AND 71659;
DELETE FROM `pool_pool` WHERE `pool_id` = 3939;
DELETE FROM `pool_template` WHERE `entry` = 3939;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71880 AND 71883;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71880 AND 71883;
DELETE FROM `pool_pool` WHERE `pool_id` = 3995;
DELETE FROM `pool_template` WHERE `entry` = 3995;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71896 AND 71899;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71896 AND 71899;
DELETE FROM `pool_pool` WHERE `pool_id` = 3999;
DELETE FROM `pool_template` WHERE `entry` = 3999;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71812 AND 71815;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71812 AND 71815;
DELETE FROM `pool_pool` WHERE `pool_id` = 3978;
DELETE FROM `pool_template` WHERE `entry` = 3978;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71836 AND 71839;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71836 AND 71839;
DELETE FROM `pool_pool` WHERE `pool_id` = 3984;
DELETE FROM `pool_template` WHERE `entry` = 3984;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71588 AND 71591;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71588 AND 71591;
DELETE FROM `pool_pool` WHERE `pool_id` = 3922;
DELETE FROM `pool_template` WHERE `entry` = 3922;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71520 AND 71523;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71520 AND 71523;
DELETE FROM `pool_pool` WHERE `pool_id` = 3905;
DELETE FROM `pool_template` WHERE `entry` = 3905;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 77519 AND 77523; -- d.6370
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 77519 AND 77523;
DELETE FROM `pool_pool` WHERE `pool_id` = 6400;
DELETE FROM `pool_template` WHERE `entry` = 6400;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71504 AND 71507;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71504 AND 71507;
DELETE FROM `pool_pool` WHERE `pool_id` = 3901;
DELETE FROM `pool_template` WHERE `entry` = 3901;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71512 AND 71515;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71512 AND 71515;
DELETE FROM `pool_pool` WHERE `pool_id` = 3903;
DELETE FROM `pool_template` WHERE `entry` = 3903;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71516 AND 71519;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71516 AND 71519;
DELETE FROM `pool_pool` WHERE `pool_id` = 3904;
DELETE FROM `pool_template` WHERE `entry` = 3904;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71524 AND 71527;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71524 AND 71527;
DELETE FROM `pool_pool` WHERE `pool_id` = 3906;
DELETE FROM `pool_template` WHERE `entry` = 3906;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71532 AND 71535;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71532 AND 71535;
DELETE FROM `pool_pool` WHERE `pool_id` = 3908;
DELETE FROM `pool_template` WHERE `entry` = 3908;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71540 AND 71543;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71540 AND 71543;
DELETE FROM `pool_pool` WHERE `pool_id` = 3910;
DELETE FROM `pool_template` WHERE `entry` = 3910;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71544 AND 71547;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71544 AND 71547;
DELETE FROM `pool_pool` WHERE `pool_id` = 3911;
DELETE FROM `pool_template` WHERE `entry` = 3911;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71556 AND 71559;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71556 AND 71559;
DELETE FROM `pool_pool` WHERE `pool_id` = 3914;
DELETE FROM `pool_template` WHERE `entry` = 3914;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71564 AND 71567;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71564 AND 71567;
DELETE FROM `pool_pool` WHERE `pool_id` = 3916;
DELETE FROM `pool_template` WHERE `entry` = 3916;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71568 AND 71571;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71568 AND 71571;
DELETE FROM `pool_pool` WHERE `pool_id` = 3917;
DELETE FROM `pool_template` WHERE `entry` = 3917;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71576 AND 71579;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71576 AND 71579;
DELETE FROM `pool_pool` WHERE `pool_id` = 3919;
DELETE FROM `pool_template` WHERE `entry` = 3919;

UPDATE `pool_pool` SET `mother_pool` = 2025, `description` = 'Swamp of Sorrows - Mineral Node' WHERE `pool_id` = 3924;

UPDATE `pool_pool` SET `mother_pool` = 2025, `description` = 'Swamp of Sorrows - Mineral Node' WHERE `pool_id` = 3988;

UPDATE `pool_pool` SET `mother_pool` = 2025, `description` = 'Swamp of Sorrows - Mineral Node' WHERE `pool_id` = 3989;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71608 AND 71611;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71608 AND 71611;
DELETE FROM `pool_pool` WHERE `pool_id` = 3927;
DELETE FROM `pool_template` WHERE `entry` = 3927;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71612 AND 71615;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71612 AND 71615;
DELETE FROM `pool_pool` WHERE `pool_id` = 3928;
DELETE FROM `pool_template` WHERE `entry` = 3928;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71620 AND 71623;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71620 AND 71623;
DELETE FROM `pool_pool` WHERE `pool_id` = 3930;
DELETE FROM `pool_template` WHERE `entry` = 3930;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71628 AND 71631;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71628 AND 71631;
DELETE FROM `pool_pool` WHERE `pool_id` = 3932;
DELETE FROM `pool_template` WHERE `entry` = 3932;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71632 AND 71635;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71632 AND 71635;
DELETE FROM `pool_pool` WHERE `pool_id` = 3933;
DELETE FROM `pool_template` WHERE `entry` = 3933;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71636 AND 71639;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71636 AND 71639;
DELETE FROM `pool_pool` WHERE `pool_id` = 3934;
DELETE FROM `pool_template` WHERE `entry` = 3934;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71640 AND 71643;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71640 AND 71643;
DELETE FROM `pool_pool` WHERE `pool_id` = 3935;
DELETE FROM `pool_template` WHERE `entry` = 3935;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71652 AND 71655;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71652 AND 71655;
DELETE FROM `pool_pool` WHERE `pool_id` = 3938;
DELETE FROM `pool_template` WHERE `entry` = 3938;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71660 AND 71663;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71660 AND 71663;
DELETE FROM `pool_pool` WHERE `pool_id` = 3940;
DELETE FROM `pool_template` WHERE `entry` = 3940;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71664 AND 71667;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71664 AND 71667;
DELETE FROM `pool_pool` WHERE `pool_id` = 3941;
DELETE FROM `pool_template` WHERE `entry` = 3941;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71668 AND 71671;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71668 AND 71671;
DELETE FROM `pool_pool` WHERE `pool_id` = 3942;
DELETE FROM `pool_template` WHERE `entry` = 3942;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71672 AND 71675;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71672 AND 71675;
DELETE FROM `pool_pool` WHERE `pool_id` = 3943;
DELETE FROM `pool_template` WHERE `entry` = 3943;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71680 AND 71683;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71680 AND 71683;
DELETE FROM `pool_pool` WHERE `pool_id` = 3945;
DELETE FROM `pool_template` WHERE `entry` = 3945;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71684 AND 71687;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71684 AND 71687;
DELETE FROM `pool_pool` WHERE `pool_id` = 3946;
DELETE FROM `pool_template` WHERE `entry` = 3946;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71756 AND 71759;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71756 AND 71759;
DELETE FROM `pool_pool` WHERE `pool_id` = 3964;
DELETE FROM `pool_template` WHERE `entry` = 3964;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71768 AND 71771;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71768 AND 71771;
DELETE FROM `pool_pool` WHERE `pool_id` = 3967;
DELETE FROM `pool_template` WHERE `entry` = 3967;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71796 AND 71799;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71796 AND 71799;
DELETE FROM `pool_pool` WHERE `pool_id` = 3974;
DELETE FROM `pool_template` WHERE `entry` = 3974;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71824 AND 71827;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71824 AND 71827;
DELETE FROM `pool_pool` WHERE `pool_id` = 3981;
DELETE FROM `pool_template` WHERE `entry` = 3981;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71688 AND 71691;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71688 AND 71691;
DELETE FROM `pool_pool` WHERE `pool_id` = 3947;
DELETE FROM `pool_template` WHERE `entry` = 3947;		

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71724 AND 71727;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71724 AND 71727;
DELETE FROM `pool_pool` WHERE `pool_id` = 3956;
DELETE FROM `pool_template` WHERE `entry` = 3956;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71692 AND 71695;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71692 AND 71695;
DELETE FROM `pool_pool` WHERE `pool_id` = 3948;
DELETE FROM `pool_template` WHERE `entry` = 3948;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71700 AND 71703;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71700 AND 71703;
DELETE FROM `pool_pool` WHERE `pool_id` = 3950;
DELETE FROM `pool_template` WHERE `entry` = 3950;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71704 AND 71707;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71704 AND 71707;
DELETE FROM `pool_pool` WHERE `pool_id` = 3951;
DELETE FROM `pool_template` WHERE `entry` = 3951;		

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71712 AND 71715;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71712 AND 71715;
DELETE FROM `pool_pool` WHERE `pool_id` = 3953;
DELETE FROM `pool_template` WHERE `entry` = 3953;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71716 AND 71719;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71716 AND 71719;
DELETE FROM `pool_pool` WHERE `pool_id` = 3954;
DELETE FROM `pool_template` WHERE `entry` = 3954;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71736 AND 71739;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71736 AND 71739;
DELETE FROM `pool_pool` WHERE `pool_id` = 3959;
DELETE FROM `pool_template` WHERE `entry` = 3959;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71760 AND 71763;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71760 AND 71763;
DELETE FROM `pool_pool` WHERE `pool_id` = 3965;
DELETE FROM `pool_template` WHERE `entry` = 3965;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71800 AND 71803;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71800 AND 71803;
DELETE FROM `pool_pool` WHERE `pool_id` = 3975;
DELETE FROM `pool_template` WHERE `entry` = 3975;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71828 AND 71831;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71828 AND 71831;
DELETE FROM `pool_pool` WHERE `pool_id` = 3982;
DELETE FROM `pool_template` WHERE `entry` = 3982;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71776 AND 71779;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71776 AND 71779;
DELETE FROM `pool_pool` WHERE `pool_id` = 3969;
DELETE FROM `pool_template` WHERE `entry` = 3969;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71780 AND 71783;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71780 AND 71783;
DELETE FROM `pool_pool` WHERE `pool_id` = 3970;
DELETE FROM `pool_template` WHERE `entry` = 3970;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71820 AND 71823;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71820 AND 71823;
DELETE FROM `pool_pool` WHERE `pool_id` = 3980;
DELETE FROM `pool_template` WHERE `entry` = 3980;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71788 AND 71791;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71788 AND 71791;
DELETE FROM `pool_pool` WHERE `pool_id` = 3972;
DELETE FROM `pool_template` WHERE `entry` = 3972;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71808 AND 71811;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71808 AND 71811;
DELETE FROM `pool_pool` WHERE `pool_id` = 3977;
DELETE FROM `pool_template` WHERE `entry` = 3977;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71832 AND 71835;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71832 AND 71835;
DELETE FROM `pool_pool` WHERE `pool_id` = 3983;
DELETE FROM `pool_template` WHERE `entry` = 3983;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71916 AND 71919;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71916 AND 71919;
DELETE FROM `pool_pool` WHERE `pool_id` = 4004;
DELETE FROM `pool_template` WHERE `entry` = 4004;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71920 AND 71923;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71920 AND 71923;
DELETE FROM `pool_pool` WHERE `pool_id` = 4005;
DELETE FROM `pool_template` WHERE `entry` = 4005;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71924 AND 71927;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71924 AND 71927;
DELETE FROM `pool_pool` WHERE `pool_id` = 4006;
DELETE FROM `pool_template` WHERE `entry` = 4006;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71928 AND 71931;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71928 AND 71931;
DELETE FROM `pool_pool` WHERE `pool_id` = 4007;
DELETE FROM `pool_template` WHERE `entry` = 4007;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71932 AND 71935;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71932 AND 71935;
DELETE FROM `pool_pool` WHERE `pool_id` = 4008;
DELETE FROM `pool_template` WHERE `entry` = 4008;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 71936 AND 71939;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71936 AND 71939;
DELETE FROM `pool_pool` WHERE `pool_id` = 4009;
DELETE FROM `pool_template` WHERE `entry` = 4009;

UPDATE `gameobject` SET `position_x` = -11513.3, `position_y` = -2965.08, `position_z` = 35.6738, `orientation` = 3.4383, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.989016, `rotation3` = 0.147811
WHERE `guid` IN (71584,71585,71586,71587);

UPDATE `gameobject` SET `position_x` = -11377.6, `position_y` = -2688.77, `position_z` = 33.9724, `orientation` = 4.85202, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.656058, `rotation3` = 0.75471
WHERE `guid` IN (71748,71749,71750,71751);

UPDATE `gameobject` SET `position_x` = -11309.9, `position_y` = -2952.67, `position_z` = 22.2286, `orientation` = 1.36136, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.62932, `rotation3` = 0.777146
WHERE `guid` IN (71740,71741,71742,71743);

UPDATE `gameobject` SET `position_x` = -11033.6, `position_y` = -2686.33, `position_z` = 24.8255, `orientation` = 4.13643, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.878817, `rotation3` = 0.47716
WHERE `guid` IN (71572,71573,71574,71575);

UPDATE `gameobject` SET `position_x` = -13118.3, `position_y` = 164.409, `position_z` = 42.8251, `orientation` = 2.1293, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.874619, `rotation3` = 0.48481
WHERE `guid` IN (77719,77720,77721,77722,77723);

UPDATE `gameobject` SET `position_x` = -12344.5, `position_y` = -1087.32, `position_z` = 3.17843, `orientation` = 3.59538, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.97437, `rotation3` = 0.224951
WHERE `guid` IN (77749,77750,77751,77752,77753);

UPDATE `gameobject` SET `position_x` = -11277, `position_y` = -3490.93, `position_z` = 9.94501, `orientation` = 6.26573, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.00872612, `rotation3` = 0.999962
WHERE `guid` IN (71536,71537,71538,71539);

UPDATE `gameobject` SET `position_x` = -11518.7, `position_y` = -861.167, `position_z` = 72.1001, `orientation` = 6.16101, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.0610485, `rotation3` = 0.998135
WHERE `guid` IN (77289,77290,77291,77292,77293);

UPDATE `gameobject` SET `position_x` = -14643.3, `position_y` = 481.62, `position_z` = 23.7943, `orientation` = 2.72271, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.978148, `rotation3` = 0.207912
WHERE `guid` IN (77669,77670,77671,77672,77673);

UPDATE `gameobject` SET `position_x` = -11635, `position_y` = -3190.86, `position_z` = 14.4105, `orientation` = 5.25344, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.492423, `rotation3` = 0.870356
WHERE `guid` IN (71912,71913,71914,71915);

UPDATE `gameobject` SET `position_x` = -10831.1, `position_y` = -3691.35, `position_z` = 23.2697, `orientation` = 3.83973, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.939692, `rotation3` = 0.34202
WHERE `guid` IN (77971,77972,77973,77974);

UPDATE `gameobject` SET `id` = 0 WHERE `guid` = 170997;
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(170997, 1734),(170997, 2040); -- Gold, Mithril

UPDATE `gameobject` SET `position_x` = -11232.6, `position_y` = -3480.72, `position_z` = 9.60974, `orientation` = 3.71755, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.958819, `rotation3` = 0.284016
WHERE `guid` IN (71816,71817,71818,71819);

-- STV
UPDATE `gameobject` SET `position_x` = -13896.2, `position_y` = 458.601, `position_z` = 108.981, `orientation` = 1.93731, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.824125, `rotation3` = 0.566408
WHERE `guid` IN (75125,75126,75127,75128,75129);
UPDATE `gameobject` SET `position_x` = -13249.5, `position_y` = -519.636, `position_z` = 18.0377, `orientation` = 5.70723, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.284015, `rotation3` = 0.95882
WHERE `guid` IN (77654,77655,77656,77657,77658);
UPDATE `gameobject` SET `position_x` = -13003.7, `position_y` = -756.31, `position_z` = 59.3426, `orientation` = 1.93731, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.824125, `rotation3` = 0.566408
WHERE `guid` IN (75155,75156,75157,75158,75159);
UPDATE `gameobject` SET `position_x` = -12939.9, `position_y` = -887.41, `position_z` = 73.3167, `orientation` = 3.35105, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.994521, `rotation3` = 0.104536
WHERE `guid` IN (77199,77200,77201,77202,77203);
UPDATE `gameobject` SET `position_x` = -12929.7, `position_y` = 2.9528, `position_z` = 30.8999, `orientation` = 5.96903, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.156434, `rotation3` = 0.987688
WHERE `guid` IN (77514,77515,77516,77517,77518);
UPDATE `gameobject` SET `position_x` = -12337.4, `position_y` = -1156.71, `position_z` = 3.99737, `orientation` = 1.32645, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.615661, `rotation3` = 0.788011
WHERE `guid` IN (77174,77175,77176,77177,77178);
UPDATE `gameobject` SET `position_x` = -11447.4, `position_y` = -845.448, `position_z` = 15.4786, `orientation` = 6.14356, `rotation0` = 0, `rotation1` = 0, `rotation2` = -0.0697556, `rotation3` = 0.997564
WHERE `guid` IN (77139,77140,77141,77142,77143);
UPDATE `gameobject` SET `position_x` = -11444.6, `position_y` = -935.033, `position_z` = 22.5053, `orientation` = 1.88495, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.809016, `rotation3` = 0.587786
WHERE `guid` IN (77629,77630,77631,77632,77633);

-- 2005	28	Master Mineral Pool - Blasted Lands - 27
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 2005;
-- 2006	4	Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY - 13

-- 71500	3900	0	Mineral Spawn Point 1 - Mithril
-- 71501	3900	30	Mineral Spawn Point 1 - Small Thorium -> 20
-- 71502	3900	10	Mineral Spawn Point 1 - Gold -> 5
-- 71503	3900	20	Mineral Spawn Point 1 - Truesilver -> 5
UPDATE `pool_gameobject` SET `chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2005) AND `description` LIKE '%Gold%';
UPDATE `pool_gameobject` SET `chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2005) AND `description` LIKE '%Truesilver%';
UPDATE `pool_gameobject` SET `chance` = 20 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2005) AND `description` LIKE '%Thorium%';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141110;
SET @OBJECT_2 = 141111;
SET @OBJECT_3 = 141112;
SET @OBJECT_4 = 141113;

SET @GROUP_ID = 283;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -10942.7753906250, -2822.676757812500, 27.28628730773925781, 4.764749526977539062, 0, 0, -0.68835449218750000, 0.725374460220336914, 600, 900),
(@OBJECT_2, 0, 0, 1, -11253.7333984375, -2698.103759765625, 15.43786811828613281, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257, 600, 900),
(@OBJECT_3, 0, 0, 1, -11180.9316406250, -2909.930664062500, 39.01392745971679687, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255, 600, 900),
(@OBJECT_4, 0, 0, 1, -11347.8613281250, -2880.947998046875, 12.63000202178955078, 3.909541368484497070, 0, 0, -0.92718315124511718, 0.374608308076858520, 600, 900);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'), -- Mithril Deposit
(@GROUP_ID, '1734', '0', '0', '5'), -- Gold Vein
(@GROUP_ID, '2047', '0', '0', '5'); -- Truesilver Deposit

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141120;
SET @OBJECT_2 = 141121;
SET @OBJECT_3 = 141122;
SET @OBJECT_4 = 141123;

SET @GROUP_ID = 284;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -11526.7480468750, -2673.916992187500, 16.12965965270996093, 0.157079011201858520, 0, 0, 0.078458786010742187, 0.996917366981506347, 600, 900),
(@OBJECT_2, 0, 0, 1, -11705.3750000000, -2752.115478515625, 12.54726505279541015, 1.850048899650573730, 0, 0, 0.798635482788085937, 0.601815044879913330, 600, 900),
(@OBJECT_3, 0, 0, 1, -11853.1943359375, -2944.534667968750, 18.26174926757812500, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 600, 900),
(@OBJECT_4, 0, 0, 1, -11864.0966796875, -3352.510498046875, 17.59332275390625000, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.267241001129150390, 600, 900);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141130;
SET @OBJECT_2 = 141131;
SET @OBJECT_3 = 141132;
SET @OBJECT_4 = 141133;

SET @GROUP_ID = 285;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -11542.7392578125, -2919.173095703125, 14.53025531768798828, 4.118979454040527343, 0, 0, -0.88294696807861328, 0.469472706317901611, 600, 900),
(@OBJECT_2, 0, 0, 1, -11733.4560546875, -3170.780517578125, -13.587801, 5.253442287445068359, 0, 0, -0.49242305755615234, 0.870355963706970214, 600, 900), -- z=-7.08995914459228515
(@OBJECT_3, 0, 0, 1, -11556.6367187500, -3112.532226562500, 12.15329265594482421, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 600, 900),
(@OBJECT_4, 0, 0, 1, -11387.6845703125, -3348.583740234375, 11.88792896270751953, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939, 600, 900);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141140;
SET @OBJECT_2 = 141141;
SET @OBJECT_3 = 141142;
SET @OBJECT_4 = 141143;

SET @GROUP_ID = 286;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -11470.4326171875, -3198.202636718750, 24.33775711059570312, 5.951574802398681640, 0, 0, -0.16504669189453125, 0.986285746097564697, 600, 900),
(@OBJECT_2, 0, 0, 1, -11487.5527343750, -3406.519531250000, 18.85669708251953125, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.874620079994201660, 600, 900),
(@OBJECT_3, 0, 0, 1, -11303.5849609375, -3203.562988281250, 30.45775985717773437, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 600, 900),
(@OBJECT_4, 0, 0, 1, -11126.9003906250, -3365.380615234375, 58.95537185668945312, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 600, 900);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 141150;
SET @OBJECT_2 = 141151;
SET @OBJECT_3 = 141152;
SET @OBJECT_4 = 141153;

SET @GROUP_ID = 287;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 0, 1, -11286.7343750000, -3423.873779296875, 10.03210544586181640, 0.488691210746765136, 0, 0, 0.241921424865722656, 0.970295846462249755, 600, 900),
(@OBJECT_2, 0, 0, 1, -11280.6943359375, -3478.395507812500, 7.660781860351562500, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 600, 900),
(@OBJECT_3, 0, 0, 1, -11210.5654296875, -3524.074218750000, 6.147635936737060546, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 600, 900), -- missing
(@OBJECT_4, 0, 0, 1, -11251.9863281250, -3575.261962890625, 9.130021095275878906, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 600, 900); -- missing

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @GROUP_ID = 288;

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID + 000, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Placeholder 000', '1', '1', '0', '0'),
(@GROUP_ID + 001, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Placeholder 001', '1', '1', '0', '0'),
(@GROUP_ID + 002, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Placeholder 002', '1', '1', '0', '0'),
(@GROUP_ID + 003, 'Blasted Lands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Placeholder 003', '1', '1', '0', '0');
