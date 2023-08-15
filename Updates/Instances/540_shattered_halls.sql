/* DBScriptData
DBName: Hellfire Citadel - The Shattered Halls
DBScriptName: instance_shattered_halls
DB%Complete: 80
DBComment:
* need to rewrite existing rp scripts to function with creature_spawn_entry

* gladiator fighting script to certain %threshold

combat faction 1692/1693 unitflags 557120
~40-50% reset, faction 16 unitflags 557136 stop combat activity
2500 emote 2
3000 move to homeloc
reset hp
1000 change faction start fighting again
1692 Monster Spar
1693 Monster Spar Buddy

(1746401, 0, 31, 0, 10, 0, 0, @CGUID+153, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Gladiator - Terminate Script if @CGUID+153 not found'),
(1746401, 0, 22, 1692, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Gladiator - Set Faction Monster Spar'), -- make the oppsite have 1693 then both attack each other
(1746401, 0, 35, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Gladiator - Send AI Event 5');

Shattered Hand Centurion: 5 (OneShotExclamation), 11 (OneShotLaugh), 23 (OneShotFlex) - maybe handles the event

* training dummy script like in garadar with hit animation on the dummy
* groups need to be restructured and hallway scripts have to be made to substitute these static spawned groups
* Shattered Hand Heathen at the entrance might be pooled with Shattered Hand Savage (1:1 pool, changed to 3:2 static atm)
* All Shattered Hand Legionnaire Packs need "Substutite Dead Group Member Mechanic"
EndDBScriptData */

SET @CGUID := 5400000; -- creatures
SET @OGUID := 5400000; -- gameobjects
SET @PGUID := 48000; -- pools
SET @SGGUID := 5400000; -- spawn_groups

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+74, 1, 62.7101, 2.91998, -13.0349, 0, 0, 1670001),
(@CGUID+74, 2, 56.5515, 2.61235, -13.1199, 0, 0, 1670001),
(@CGUID+74, 3, 50.393, 2.30471, -13.2049, 0, 0, 1670001),
(@CGUID+74, 4, 38.6893, 1.72007, -13.1907, 0, 0, 1670001),
(@CGUID+74, 5, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+74, 6, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+74, 7, 9.57407, 1.84343, -13.1916, 0, 0, 1670001),
(@CGUID+74, 8, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+74, 9, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+74, 10, 55.6437, 2.6325, -13.2086, 0, 0, 1670001),
(@CGUID+77, 1, 57.0575, 73.036, -13.1202, 0, 0, 1670002),
(@CGUID+77, 2, 60.1673, 75.9561, -13.223, 0, 0, 1670002),
(@CGUID+77, 3, 64.0052, 79.5599, -13.2225, 0, 0, 1670002),
(@CGUID+77, 4, 73.1336, 78.9491, -13.2227, 0, 0, 1670002),
(@CGUID+77, 5, 80.2024, 73.1727, -13.2225, 0, 0, 1670002),
(@CGUID+77, 6, 73.1336, 78.9491, -13.2227, 0, 0, 1670002),
(@CGUID+77, 7, 64.0052, 79.5599, -13.2225, 0, 0, 1670002),
(@CGUID+77, 8, 56.9667, 74.2579, -13.2229, 0, 0, 1670002),
(@CGUID+78, 1, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 2, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 3, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 4, 69.7139, 263.393, -13.201, 0, 0, 0),
(@CGUID+78, 5, 69.6648, 257.303, -13.2001, 0, 0, 0),
(@CGUID+78, 6, 69.7602, 263.401, -13.2011, 0, 0, 0),
(@CGUID+78, 7, 69.7602, 263.401, -13.2011, 0.541052, 0, 0),
(@CGUID+78, 8, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 9, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 10, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 11, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 12, 69.7139, 263.393, -13.201, 0, 0, 0),
(@CGUID+78, 13, 69.7139, 263.393, -13.201, 4.69494, 0, 0),
(@CGUID+78, 14, 69.6648, 257.303, -13.2001, 0, 0, 0),
(@CGUID+78, 15, 69.7602, 263.401, -13.2011, 0, 0, 0),
(@CGUID+78, 16, 63.4647, 269.655, -13.1999, 0, 0, 0),
(@CGUID+78, 17, 64.4153, 277.185, -13.2015, 0, 0, 0),
(@CGUID+78, 18, 72.1938, 278.969, -13.2044, 0, 0, 0),
(@CGUID+78, 19, 80.1167, 274.187, -13.2064, 0, 0, 0),
(@CGUID+78, 20, 88.3872, 265.499, -13.2078, 0, 0, 0),
(@CGUID+78, 21, 84.6359, 258.439, -13.2054, 0, 0, 0),
(@CGUID+78, 22, 76.9477, 257.962, -13.2027, 0, 0, 0),
(@CGUID+109, 1, 208.781, 157.507, -42.2841, 0, 0, 0),
(@CGUID+109, 2, 204.672, 157.262, -42.338, 0, 0, 0),
(@CGUID+109, 3, 200.564, 157.017, -42.3919, 0, 0, 0),
(@CGUID+109, 4, 191.801, 156.494, -42.3675, 0, 0, 0),
(@CGUID+109, 5, 188.834, 156.318, -42.3626, 0, 0, 0),
(@CGUID+109, 6, 188.834, 156.318, -42.3626, 0, 0, 0),
(@CGUID+109, 7, 173.756, 158.343, -42.3484, 0, 0, 0),
(@CGUID+109, 8, 164.909, 162.791, -42.3396, 0, 0, 0),
(@CGUID+109, 9, 155.078, 169.182, -43.113, 0, 0, 0),
(@CGUID+109, 10, 138.186, 182.209, -46.1408, 0, 0, 0),
(@CGUID+109, 11, 129.483, 194.904, -48.3247, 0, 0, 0),
(@CGUID+109, 12, 121.166, 212.933, -48.6825, 0, 0, 0),
(@CGUID+109, 13, 120.617, 233.686, -46.492, 0, 0, 0),
(@CGUID+109, 14, 123.362, 245.1, -45.1537, 0, 0, 0),
(@CGUID+109, 15, 128.454, 239.689, -45.7313, 0, 0, 0),
(@CGUID+109, 16, 127.277, 223.089, -47.6913, 0, 0, 0),
(@CGUID+109, 17, 125.95, 215.666, -48.407, 0, 0, 0),
(@CGUID+109, 18, 130.311, 198.841, -48.5123, 0, 0, 0),
(@CGUID+109, 19, 141.065, 186.745, -46.2314, 0, 0, 0),
(@CGUID+109, 20, 153.516, 175.231, -43.6068, 0, 0, 0),
(@CGUID+109, 21, 160.805, 169.901, -42.6202, 0, 0, 0),
(@CGUID+109, 22, 173.268, 163.253, -42.3472, 0, 0, 0),
(@CGUID+109, 23, 189.937, 163.27, -42.3548, 0, 0, 0),
(@CGUID+109, 24, 204.351, 157.219, -42.42, 0, 0, 0),
(@CGUID+110, 1, 210.848, 161.595, -42.2951, 100, 1000, 5),
(@CGUID+110, 2, 206.148, 162.308, -42.343, 100, 0, 0),
(@CGUID+110, 3, 201.449, 163.02, -42.3909, 100, 0, 0),
(@CGUID+110, 4, 195.171, 163.972, -42.3668, 100, 0, 0),
(@CGUID+110, 5, 192.864, 164.322, -42.3624, 100, 0, 0),
(@CGUID+110, 6, 185.363, 165.272, -42.339, 100, 0, 0),
(@CGUID+110, 7, 178.693, 166.118, -42.0879, 100, 0, 0),
(@CGUID+110, 8, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 9, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 10, 166.318, 169.741, -42.1037, 100, 0, 0),
(@CGUID+110, 11, 155.029, 177.772, -43.6118, 100, 0, 0),
(@CGUID+110, 12, 142.266, 189.677, -46.5907, 100, 0, 0),
(@CGUID+110, 13, 131.14, 203.608, -48.8394, 100, 0, 0),
(@CGUID+110, 14, 127.192, 216.227, -48.4439, 100, 0, 0),
(@CGUID+110, 15, 127.055, 230.763, -46.8783, 100, 0, 0),
(@CGUID+110, 16, 127.269, 244.19, -45.1538, 100, 0, 0),
(@CGUID+110, 17, 124.92, 255.491, -45.2476, 100, 0, 0),
(@CGUID+110, 18, 120.452, 249.473, -45.1982, 100, 0, 0),
(@CGUID+110, 19, 120.655, 230.804, -46.8631, 100, 0, 0),
(@CGUID+110, 20, 121.295, 217.322, -48.2715, 100, 0, 0),
(@CGUID+110, 21, 123.283, 203.541, -48.7075, 100, 0, 0),
(@CGUID+110, 22, 128.151, 193.247, -48.2969, 100, 0, 0),
(@CGUID+110, 23, 141.356, 180.626, -45.5281, 100, 0, 0),
(@CGUID+110, 24, 148.569, 174.72, -44.0388, 100, 0, 0),
(@CGUID+110, 25, 159.804, 166.573, -42.5221, 100, 0, 0),
(@CGUID+110, 26, 171.079, 161.572, -42.3455, 100, 0, 0),
(@CGUID+110, 27, 185.74, 157.802, -42.3595, 100, 0, 0),
(@CGUID+110, 28, 199.637, 158.023, -42.3893, 100, 0, 0),
(@CGUID+110, 29, 203.456, 159.606, -42.4103, 100, 0, 0),
(@CGUID+110, 30, 192.864, 164.322, -42.3624, 100, 0, 0),
(@CGUID+110, 31, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 32, 166.318, 169.741, -42.1037, 100, 0, 0),
(@CGUID+110, 33, 155.029, 177.772, -43.6118, 100, 0, 0),
(@CGUID+110, 34, 142.266, 189.677, -46.5907, 100, 0, 0),
(@CGUID+110, 35, 131.14, 203.608, -48.8394, 100, 0, 0),
(@CGUID+110, 36, 127.192, 216.227, -48.4439, 100, 0, 0),
(@CGUID+110, 37, 127.055, 230.763, -46.8783, 100, 0, 0),
(@CGUID+110, 38, 127.269, 244.19, -45.1538, 100, 0, 0),
(@CGUID+110, 39, 124.92, 255.491, -45.2476, 100, 0, 0),
(@CGUID+110, 40, 120.452, 249.473, -45.1982, 100, 0, 0),
(@CGUID+110, 41, 120.655, 230.804, -46.8631, 100, 0, 0),
(@CGUID+110, 42, 121.295, 217.322, -48.2715, 100, 0, 0),
(@CGUID+110, 43, 123.283, 203.541, -48.7075, 100, 0, 0),
(@CGUID+110, 44, 128.151, 193.247, -48.2969, 100, 0, 0),
(@CGUID+110, 45, 141.356, 180.626, -45.5281, 100, 0, 0),
(@CGUID+110, 46, 148.569, 174.72, -44.0388, 100, 0, 0),
(@CGUID+110, 47, 159.804, 166.573, -42.5221, 100, 0, 0),
(@CGUID+110, 48, 171.079, 161.572, -42.3455, 100, 0, 0),
(@CGUID+110, 49, 185.74, 157.802, -42.3595, 100, 0, 0),
(@CGUID+110, 50, 199.637, 158.023, -42.3893, 100, 0, 0),
(@CGUID+110, 51, 205.919, 162.355, -42.4253, 100, 0, 0),
(@CGUID+111, 1, 207.999, 167.217, -42.2706, 100, 1000, 5),
(@CGUID+111, 2, 204.797, 165.539, -42.3308, 100, 0, 0),
(@CGUID+111, 3, 201.595, 163.861, -42.3909, 100, 0, 0),
(@CGUID+111, 4, 198.155, 162.058, -42.3768, 100, 0, 0),
(@CGUID+111, 5, 189.875, 157.719, -42.3605, 100, 0, 0),
(@CGUID+111, 6, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 7, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 8, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 9, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 10, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 11, 123.671, 194.798, -48.4265, 100, 0, 0),
(@CGUID+111, 12, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 13, 118.149, 241.914, -45.4721, 100, 0, 0),
(@CGUID+111, 14, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 15, 123.483, 194.851, -48.4398, 100, 0, 0),
(@CGUID+111, 16, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 17, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 18, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 19, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 20, 203.842, 166.232, -42.4048, 100, 0, 0),
(@CGUID+111, 21, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 22, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 23, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 24, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 25, 123.671, 194.798, -48.4265, 100, 0, 0),
(@CGUID+111, 26, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 27, 118.149, 241.914, -45.4721, 100, 0, 0),
(@CGUID+111, 28, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 29, 123.483, 194.851, -48.4398, 100, 0, 0),
(@CGUID+111, 30, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 31, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 32, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 33, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 34, 203.842, 166.232, -42.4048, 100, 0, 0),
(@CGUID+112, 1, 135.003, 263.02, -45.1575, 100, 0, 0),
(@CGUID+112, 2, 130.864, 258.34, -45.1872, 100, 0, 0),
(@CGUID+112, 3, 126.724, 253.66, -45.2169, 100, 0, 0),
(@CGUID+112, 4, 118.551, 244.42, -45.1415, 100, 0, 0),
(@CGUID+112, 5, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 6, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 7, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 8, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 9, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 10, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 11, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 12, 201.779, 154.332, -42.4044, 100, 0, 0),
(@CGUID+112, 13, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 14, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 15, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 16, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 17, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 18, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 19, 130.402, 258.117, -45.2686, 100, 0, 0),
(@CGUID+112, 20, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 21, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 22, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 23, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 24, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 25, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 26, 201.779, 154.332, -42.4044, 100, 0, 0),
(@CGUID+112, 27, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 28, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 29, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 30, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 31, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 32, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 33, 130.402, 258.117, -45.2686, 100, 0, 0),
(@CGUID+134, 1, 46.3248, 59.879, -12.9904, 0, 1000, 5),
(@CGUID+134, 2, 53.246, 58.0863, -13.1067, 0, 0, 0),
(@CGUID+134, 3, 60.1673, 56.2936, -13.223, 0, 0, 0),
(@CGUID+134, 4, 62.0403, 55.8085, -13.2236, 0, 0, 0),
(@CGUID+134, 5, 66.1605, 54.7413, -13.2229, 0, 0, 0),
(@CGUID+134, 6, 66.8337, 51.6796, -13.2228, 0, 0, 0),
(@CGUID+134, 7, 67.2014, 50.007, -13.2218, 0, 0, 0),
(@CGUID+134, 8, 69.3164, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+134, 9, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+134, 10, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+134, 11, 65.8643, 14.4801, -13.2172, 0, 0, 0),
(@CGUID+134, 12, 57.2744, 7.4202, -13.215, 0, 0, 0),
(@CGUID+134, 13, 45.6987, 6.42616, -13.1906, 100, 2000, 1742001),
(@CGUID+135, 1, 83.755, 57.2887, -13.114, 0, 1000, 5),
(@CGUID+135, 2, 73.5564, 52.4972, -13.2227, 0, 0, 0),
(@CGUID+135, 3, 73.2092, 50.007, -13.2218, 0, 0, 0),
(@CGUID+135, 4, 71.868, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+135, 5, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+135, 6, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+135, 7, 63.0987, 2.38798, -13.1956, 0, 0, 0),
(@CGUID+135, 8, 36.6416, -1.55471, -13.1958, 0, 0, 0),
(@CGUID+135, 9, 25.2589, -4.47658, -13.1882, 0, 0, 0),
(@CGUID+135, 10, 12.3784, -2.32701, -13.1913, 100, 2000, 1742001),
(@CGUID+136, 1, 53.5243, 60.0879, -13.0071, 0, 1000, 5),
(@CGUID+136, 2, 56.8458, 57.6507, -13.1151, 0, 0, 0),
(@CGUID+136, 3, 60.1673, 55.2135, -13.223, 0, 0, 0),
(@CGUID+136, 4, 61.37, 54.3309, -13.2237, 0, 0, 0),
(@CGUID+136, 5, 64.9833, 51.6796, -13.2229, 0, 0, 0),
(@CGUID+136, 6, 67.2627, 50.007, -13.2218, 0, 0, 0),
(@CGUID+136, 7, 67.693, 49.6913, -13.2218, 0, 0, 0),
(@CGUID+136, 8, 67.8674, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+136, 9, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+136, 10, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+136, 11, 64.0192, 12.3123, -13.219, 0, 0, 0),
(@CGUID+136, 12, 46.6975, 4.63054, -13.1906, 0, 0, 0),
(@CGUID+136, 13, 33.7657, 6.79465, -13.1942, 0, 0, 0),
(@CGUID+136, 14, 22.7783, 7.14236, -13.1889, 100, 2000, 1742001),
(@CGUID+137, 1, 90.0297, 57.4987, -13.1003, 0, 1000, 5),
(@CGUID+137, 2, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+137, 3, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+137, 4, 71.4676, 45.247, -13.2218, 0, 0, 0),
(@CGUID+137, 5, 70.8612, 26.3303, -13.191, 0, 0, 0),
(@CGUID+137, 6, 69.0497, 8.98774, -13.2077, 0, 0, 0),
(@CGUID+137, 7, 62.9846, -0.321715, -13.1952, 0, 0, 0),
(@CGUID+137, 8, 57.8027, -0.197392, -13.2067, 100, 2000, 1742001),
(@CGUID+138, 1, 87.9912, 57.5445, -13.1049, 0, 1000, 5),
(@CGUID+138, 2, 73.6565, 52.4234, -13.2226, 0, 0, 0),
(@CGUID+138, 3, 71.5909, 37.8002, -13.2262, 0, 0, 0),
(@CGUID+138, 4, 70.0568, 10.5743, -13.2209, 0, 0, 0),
(@CGUID+138, 5, 52.6026, -0.81406, -13.2027, 0, 0, 0),
(@CGUID+138, 6, 37.0071, -1.50796, -13.1959, 100, 2000, 1742001),
(@CGUID+282, 1, 76.5898, 203.889, -13.1954, 100, 0, 0),
(@CGUID+282, 2, 62.5537, 203.886, -13.1971, 100, 0, 0),
(@CGUID+304, 1, 46.3248, 59.879, -12.9904, 0, 1000, 5),
(@CGUID+304, 2, 53.246, 58.0863, -13.1067, 0, 0, 0),
(@CGUID+304, 3, 60.1673, 56.2936, -13.223, 0, 0, 0),
(@CGUID+304, 4, 62.0403, 55.8085, -13.2236, 0, 0, 0),
(@CGUID+304, 5, 66.1605, 54.7413, -13.2229, 0, 0, 0),
(@CGUID+304, 6, 66.8337, 51.6796, -13.2228, 0, 0, 0),
(@CGUID+304, 7, 67.2014, 50.007, -13.2218, 0, 0, 0),
(@CGUID+304, 8, 69.3164, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+304, 9, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+304, 10, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+304, 11, 65.8643, 14.4801, -13.2172, 0, 0, 0),
(@CGUID+304, 12, 57.2744, 7.4202, -13.215, 0, 0, 0),
(@CGUID+304, 13, 45.6987, 6.42616, -13.1906, 100, 2000, 1742001),
(@CGUID+305, 2, 83.755, 57.2887, -13.114, 0, 1000, 5),
(@CGUID+305, 3, 73.5564, 52.4972, -13.2227, 0, 0, 0),
(@CGUID+305, 4, 73.2092, 50.007, -13.2218, 0, 0, 0),
(@CGUID+305, 5, 71.868, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+305, 6, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+305, 7, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+305, 8, 63.0987, 2.38798, -13.1956, 0, 0, 0),
(@CGUID+305, 9, 36.6416, -1.55471, -13.1958, 0, 0, 0),
(@CGUID+305, 10, 25.2589, -4.47658, -13.1882, 0, 0, 0),
(@CGUID+305, 11, 12.3784, -2.32701, -13.1913, 100, 2000, 1742001),
(@CGUID+306, 1, 53.5243, 60.0879, -13.0071, 0, 1000, 5),
(@CGUID+306, 2, 56.8458, 57.6507, -13.1151, 0, 0, 0),
(@CGUID+306, 3, 60.1673, 55.2135, -13.223, 0, 0, 0),
(@CGUID+306, 4, 61.37, 54.3309, -13.2237, 0, 0, 0),
(@CGUID+306, 5, 64.9833, 51.6796, -13.2229, 0, 0, 0),
(@CGUID+306, 6, 67.2627, 50.007, -13.2218, 0, 0, 0),
(@CGUID+306, 7, 67.693, 49.6913, -13.2218, 0, 0, 0),
(@CGUID+306, 8, 67.8674, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+306, 9, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+306, 10, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+306, 11, 64.0192, 12.3123, -13.219, 0, 0, 0),
(@CGUID+306, 12, 46.6975, 4.63054, -13.1906, 0, 0, 0),
(@CGUID+306, 13, 33.7657, 6.79465, -13.1942, 0, 0, 0),
(@CGUID+306, 14, 22.7783, 7.14236, -13.1889, 100, 2000, 1742001),
(@CGUID+307, 1, 90.0297, 57.4987, -13.1003, 0, 1000, 5),
(@CGUID+307, 2, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+307, 3, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+307, 4, 71.4676, 45.247, -13.2218, 0, 0, 0),
(@CGUID+307, 5, 70.8612, 26.3303, -13.191, 0, 0, 0),
(@CGUID+307, 6, 69.0497, 8.98774, -13.2077, 0, 0, 0),
(@CGUID+307, 7, 62.9846, -0.321715, -13.1952, 0, 0, 0),
(@CGUID+307, 8, 57.8027, -0.197392, -13.2067, 100, 2000, 1742001),
(@CGUID+308, 1, 87.9912, 57.5445, -13.1049, 0, 1000, 5),
(@CGUID+308, 2, 73.6565, 52.4234, -13.2226, 0, 0, 0),
(@CGUID+308, 3, 71.5909, 37.8002, -13.2262, 0, 0, 0),
(@CGUID+308, 4, 70.0568, 10.5743, -13.2209, 0, 0, 0),
(@CGUID+308, 5, 52.6026, -0.81406, -13.2027, 0, 0, 0),
(@CGUID+308, 6, 37.0071, -1.50796, -13.1959, 100, 2000, 1742001),
-- reworked
(@CGUID+357,1,528.1561,228.07251,1.9335356,100,0,0),
(@CGUID+357,2,521.939,226.18733,1.9384854,100,0,0),
(@CGUID+357,3,519.15515,222.23543,1.9348023,100,0,0),
(@CGUID+366,1,522.757,158.84065,1.9294991,100,0,0),
(@CGUID+366,2,511.35275,162.06738,1.9312072,100,0,0),
/* 
@CGUID+378 not sure yet what triggers his spawn
(@CGUID+378,1,517.5042,110.27213,1.9337319,100,0,0),
(@CGUID+378,2,517.7876,95.66194,1.9120612,100,0,0),
(@CGUID+378,3,517.27277,84.83315,1.9335656,100,0,0),
(@CGUID+378,4,514.5376,68.17303,1.9055551,100,0,0),
(@CGUID+378,5,505.58887,61.884686,1.9372952,100,0,0),
(@CGUID+378,6,490.86508,62.12726,1.9241942,100,0,0),
(@CGUID+378,7,472.6607,61.781292,1.92517,100,0,0),
(@CGUID+378,8,457.20792,61.528564,1.9381392,100,0,0),
(@CGUID+378,9,440.30304,60.604694,1.9265512,100,0,0),
(@CGUID+378,10,423.63367,58.10315,2.1907735,100,0,0),
(@CGUID+378,11,397.91632,59.60511,-7.9198833,100,0,0),
(@CGUID+378,12,385.9369,60.24474,-7.608985,100,0,0),
(@CGUID+378,13,375.5266,58.39276,-7.3140163,100,0,0),
(@CGUID+378,14,372.8525,47.495487,-7.669405,100,0,0),
(@CGUID+378,15,370.9641,31.848307,-8.043931,100,0,0),
(@CGUID+378,16,369.20416,22.684153,-2.8790743,100,0,0),
(@CGUID+378,17,368.72055,13.340087,1.0450294,100,0,0),
(@CGUID+378,18,370.1174,4.700938,1.5122721,100,0,0),
(@CGUID+378,19,372.98456,-2.465837,1.8750225,100,0,0),
(@CGUID+378,20,372.3696,-22.92599,1.9098651,100,0,0),
(@CGUID+378,21,372.27838,-50.026485,1.9342409,100,0,0),
(@CGUID+378,22,371.556,-64.19129,1.9257647,100,0,0),
(@CGUID+378,23,369.65765,-73.29199,1.9207075,100,0,0),
(@CGUID+378,24,357.85913,-82.47999,1.920399,100,0,0),
(@CGUID+378,25,321.81198,-82.54967,1.93689,100,0,0),
(@CGUID+378,26,304.77307,-82.520065,1.9369328,100,0,0),
(@CGUID+378,27,292.90714,-80.60747,1.9165285,100,0,0),
(@CGUID+378,28,287.34784,-85.04131,1.9744341,100,0,0),
(@CGUID+378,29,293.92264,-89.50142,1.9235594,100,0,0),
(@CGUID+378,30,309.35217,-87.78571,1.9372386,100,0,0),
(@CGUID+378,31,321.07938,-86.63962,1.9371738,100,0,0),
(@CGUID+378,32,358.08585,-84.085205,1.9221135,100,0,0),
(@CGUID+378,33,370.87408,-74.414055,1.9192178,100,0,0),
(@CGUID+378,34,372.99686,-64.16115,1.9257658,100,0,0),
(@CGUID+378,35,374.01288,-49.91967,1.934043,100,0,0),
(@CGUID+378,36,374.27414,-23.146532,1.9096458,100,0,0),
(@CGUID+378,37,375.20255,-3.506816,1.9123003,100,0,0),
(@CGUID+378,38,372.49487,4.910421,1.5018377,100,0,0),
(@CGUID+378,39,371.32224,12.931185,1.0456508,100,0,0),
(@CGUID+378,40,370.77585,21.130861,-2.1123235,100,0,0),
(@CGUID+378,41,372.136,31.573832,-8.033039,100,0,0),
(@CGUID+378,42,374.06696,46.990696,-7.5437126,100,0,0),
(@CGUID+378,43,397.36246,57.241814,-7.8759065,100,0,0),
(@CGUID+378,44,423.1603,56.2867,2.2034597,100,0,0),
(@CGUID+378,45,441.3885,58.891068,1.9266673,100,0,0),
(@CGUID+378,46,456.52408,59.47583,1.9382808,100,0,0),
(@CGUID+378,47,470.97098,60.052864,1.9252926,100,0,0),
(@CGUID+378,48,487.3806,60.27333,1.9343144,100,0,0),
(@CGUID+378,49,504.22516,59.83277,1.9387043,100,0,0),
(@CGUID+378,50,515.0728,66.449615,1.9329457,100,0,0),
(@CGUID+378,51,518.69635,84.8585,1.9335626,100,0,0),
(@CGUID+378,52,518.87775,95.494446,1.9124671,100,0,0),
(@CGUID+378,53,520.8324,110.96814,1.9329703,100,0,0),
(@CGUID+378,54,520.2576,120.18124,1.8685412,100,0,0),
(@CGUID+378,55,517.9992,126.17156,1.9240329,100,0,0),
(@CGUID+378,56,517.04175,118.07283,1.9159209,100,0,0),
*/
(@CGUID+391,1,381.3262,-18.909515,1.9102229,100,0,0),
(@CGUID+391,2,365.75497,-24.649958,1.9100889,100,0,0),
(@CGUID+391,3,382.04645,-32.39672,1.9077514,100,0,0),
(@CGUID+392,1,383.08115,-52.932426,1.939616,100,0,0),
(@CGUID+392,2,367.0894,-43.882507,1.9245446,100,0,0),
(@CGUID+392,3,381.66763,-38.641228,1.9141335,100,0,0),
(@CGUID+393,1,381.3918,-74.539215,1.9187236,100,0,0),
(@CGUID+393,2,365.37756,-68.21585,1.9214319,100,0,0),
(@CGUID+393,3,381.1033,-60.501587,1.9292904,100,0,0),
(@CGUID+394,6,368.5422,-87.628334,1.9119368,100,0,0),
(@CGUID+394,2,356.64178,-75.437904,1.913136,100,0,0),
(@CGUID+394,3,354.86255,-90.409584,1.935186,100,0,0),
(@CGUID+395,1,346.19812,-88.69315,1.9350995,100,0,0),
(@CGUID+395,2,332.8256,-76.8942,1.9393015,100,0,0),
(@CGUID+395,3,325.15228,-92.04973,1.9375387,100,0,0),
(@CGUID+396,1,314.45364,-91.16705,1.9374878,100,0,0),
(@CGUID+396,2,299.4695,-76.63259,1.9365374,100,0,0),
(@CGUID+396,3,291.05557,-90.919136,1.9129256,100,0,0);

DELETE FROM `creature_movement_template` WHERE `entry` = 16807;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Grand Warlock Nethekurse
(16807, 0, 1, 171.8228, 289.9769, -8.185595, 100, 0, 0),
(16807, 0, 2, 178.5562, 288.1734, -7.933493, 100, 0, 0),
(16807, 0, 3, 184.7897, 290.3699, -8.18139, 100, 0, 0),
(16807, 0, 4, 178.5562, 288.1734, -7.933493, 100, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+52, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+53, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+54, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+55, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+63, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+64, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+65, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+68, 0, 0, 0, 0, 0, '16093'), -- Shadowmoon Acolyte
(@CGUID+70, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+71, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+72, 0, 0, 0, 333, 0, NULL), -- creature_spawn_entry
(@CGUID+79, 0, 0, 0, 333, 0, NULL), -- creature_spawn_entry
(@CGUID+80, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+81, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+132, 0, 0, 0, 333, 0, NULL), -- creature_spawn_entry
(@CGUID+133, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+275, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+276, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+277, 0, 0, 2, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+278, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+279, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
-- reguided
(@CGUID+363, 0, 0, 0, 389, 0, NULL), -- spawn_group_entry
(@CGUID+364, 0, 0, 0, 389, 0, NULL), -- spawn_group_entry
(@CGUID+365, 0, 0, 0, 389, 0, NULL), -- spawn_group_entry
(@CGUID+375, 0, 0, 0, 389, 0, NULL), -- creature_spawn_entry
(@CGUID+376, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Savage
(@CGUID+377, 0, 0, 0, 389, 0, NULL); -- Shattered Hand Savage

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(16507, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Sentry
(16593, 0, 0, 1, 0, 0, '8876'), -- Shattered Hand Brawler
(16700, 0, 0, 0, 0, 0, '30472'), -- Shattered Hand Legionnaire
(16704, 0, 0, 2, 0, 0, NULL), -- Shattered Hand Sharpshooter
(16808, 0, 0, 0, 0, 0, '19818'), -- Warchief Kargath Bladefist -- stealth detect?
(17462, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Zealot
(17471, 0, 0, 0, 0, 0, NULL), -- Lesser Shadow Fissure
(17578, 0, 0, 0, 0, 0, '7056'), -- Training Dummy
(17669, 0, 0, 0, 0, 0, '18950'), -- Rabid Warhound
(17671, 0, 0, 0, 333, 0, '12782 18950'), -- Shattered Hand Champion
(17693, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Scout
(17695, 0, 0, 1, 0, 0, '30991'), -- Shattered Hand Assassin
(18370, 0, 0, 0, 0, 0, NULL), -- Wild Shadow Fissure
(20923, 0, 0, 0, 0, 0, '18950'); -- Blood Guard Porung

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
-- Entrance - Shattered Hand Legionnaire #1
(@CGUID+134, @CGUID+74, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+136, @CGUID+74, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+135, @CGUID+74, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+137, @CGUID+74, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+138, @CGUID+74, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+304, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+305, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+306, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+307, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+308, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+74, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
(@CGUID+52, @CGUID+53, 1155), -- Shattered Hand Sentry -> Shattered Hand Sentry
-- Hall of the Fathers - Shattered Hand Legionnaire #2
(@CGUID+309, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+310, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+311, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+312, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+313, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+314, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+315, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+316, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+317, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+318, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+319, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+320, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+321, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+322, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+323, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+330, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+331, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+332, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+324, @CGUID+77, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+325, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+326, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+327, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+328, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+329, @CGUID+77, 1024), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+77, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
(@CGUID+54, @CGUID+55, 1155), -- Shattered Hand Sentry -> Shattered Hand Sentry
-- Hall of the Fathers - Shattered Hand Legionnaire #3
(@CGUID+79, @CGUID+75, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+80, @CGUID+75, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+132, @CGUID+75, 1155), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+70, @CGUID+75, 1155), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+75, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
-- Hall of the Fathers - Shattered Hand Legionnaire #4
(@CGUID+81, @CGUID+76, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+71, @CGUID+76, 1155), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+72, @CGUID+76, 1155), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+133, @CGUID+76, 1155), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+76, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
-- Hall of the Fathers - Shattered Hand Legionnaire #5
(@CGUID+275, @CGUID+282, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+279, @CGUID+282, 1155), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+277, @CGUID+282, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+278, @CGUID+282, 1155), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+276, @CGUID+282, 1155), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+282, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
(@CGUID+69, @CGUID+78, 1155), -- Shadowmoon Acolyte -> Shattered Hand Legionnaire
(@CGUID+73, @CGUID+78, 1155), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+221, @CGUID+78, 1155), -- Shadowmoon Darkcaster -> Shattered Hand Legionnaire
(@CGUID+90, @CGUID+78, 1155), -- Fel Orc Convert -> Shattered Hand Legionnaire
(@CGUID+56, @CGUID+78, 1155), -- creature_spawn_entry -> Shattered Hand Legionnaire
(@CGUID+89, @CGUID+78, 1155), -- Fel Orc Convert -> Shattered Hand Legionnaire
(@CGUID+78, @CGUID+82, 1024), -- Shattered Hand Legionnaire -> Grand Warlock Nethekurse
(@CGUID+187, @CGUID+189, 1155), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+188, @CGUID+189, 1155), -- Rabid Warhound -> Shattered Hand Houndmaster
-- The Sewer
(@CGUID+98, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+99, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+100, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+101, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+102, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+103, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+104, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+105, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+106, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+107, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+108, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+113, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+114, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+115, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+116, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+117, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+118, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+119, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+120, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+121, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+122, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+123, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+124, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+125, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+126, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+127, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+128, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+129, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+130, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+131, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
-- Throne of the Damned
-- Gauntlet of Flame
(@CGUID+146, @CGUID+148, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+147, @CGUID+148, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+150, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+151, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+152, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+149, @CGUID+143, 1); -- Shattered Hand Zealot -> Shattered Hand Archer



REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(16809, 540, 16808, 1, 0), -- Warbringer O'mrogg -> Warchief Kargath Bladefist
(17693, 540, 17427, 1, 0), -- Shattered Hand Scout -> Shattered Hand Archer				-- Abuse Prevention (void Aggro, npc_Shattered_Hand_Scout)
(17427, 540, 17427, 3, 0), -- Shattered Hand Archer -> Shattered Hand Archer
(17461, 540, 17427, 3, 0), -- Shattered Hand Blood Guard -> Shattered Hand Archer
(20923, 540, 17427, 3, 0); -- Blood Guard Porung -> Shattered Hand Archer

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
-- commented due to need static entry for rp event
(@CGUID+56, 16593), (@CGUID+56, 17694), -- Shattered Hand Brawler, Shadowmoon Darkcaster
(@CGUID+57, 16523), (@CGUID+57, 17694), -- Shattered Hand Savage, Shadowmoon Darkcaster
(@CGUID+59, 16523), (@CGUID+59, 16594), -- Shattered Hand Savage, Shadowmoon Acolyte
(@CGUID+60, 16593), (@CGUID+60, 16594), -- Shattered Hand Brawler, Shadowmoon Acolyte
(@CGUID+61, 16699), (@CGUID+61, 17694), -- Shattered Hand Reaver, Shadowmoon Darkcaster
(@CGUID+72, 16593), (@CGUID+72, 17694), -- Shattered Hand Brawler, Shadowmoon Darkcaster
(@CGUID+73, 16523), (@CGUID+73, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+79, 16523), (@CGUID+79, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+132, 16593), (@CGUID+132, 16594), -- Shattered Hand Brawler, Shadowmoon Acolyte
(@CGUID+134, 16523), (@CGUID+134, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+135, 16523), (@CGUID+135, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+136, 16523), (@CGUID+136, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+137, 16523), (@CGUID+137, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+138, 16523), (@CGUID+138, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+309, 16523), (@CGUID+309, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+311, 16593), (@CGUID+311, 16594), (@CGUID+311, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+312, 16523), (@CGUID+312, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+314, 16593), (@CGUID+314, 16594), (@CGUID+314, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+315, 16523), (@CGUID+315, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+317, 16593), (@CGUID+317, 16594), (@CGUID+317, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+318, 16523), (@CGUID+318, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+320, 16593), (@CGUID+320, 16594), (@CGUID+320, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+321, 16523), (@CGUID+321, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+323, 16593), (@CGUID+323, 16594), (@CGUID+323, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+324, 16523), (@CGUID+324, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+326, 16593), (@CGUID+326, 16594), (@CGUID+326, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+327, 16523), (@CGUID+327, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+329, 16593), (@CGUID+329, 16594), (@CGUID+329, 17694), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler
(@CGUID+330, 16523), (@CGUID+330, 17420), -- Shattered Hand Savage, Shattered Hand Heathen
(@CGUID+332, 16593), (@CGUID+332, 16594), (@CGUID+332, 17694); -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 2110, 540, 3, 115.869, 223.215, -47.7406, 1.51629, 900, 900, 5, 1), -- Black Rat
(@CGUID+2, 2110, 540, 3, -10.3597, 6.42759, -13.2078, 5.64778, 900, 900, 5, 1), -- Black Rat
(@CGUID+3, 2110, 540, 3, 501.895, 293.72, 1.9389, 5.75975, 900, 900, 5, 1), -- Black Rat
(@CGUID+4, 2110, 540, 3, 251.579, 263.924, -13.2118, 4.73688, 900, 900, 5, 1), -- Black Rat
(@CGUID+5, 2110, 540, 3, 177.031, 300.648, -8.19186, 3.68007, 900, 900, 5, 1), -- Black Rat
(@CGUID+6, 2110, 540, 3, 47.0979, 254.544, -13.0907, 1.07684, 900, 900, 5, 1), -- Black Rat
(@CGUID+7, 2110, 540, 3, 320.906, 294.456, 2.01263, 2.98451, 900, 900, 5, 1), -- Black Rat
(@CGUID+8, 2110, 540, 3, 344.047, 335.721, 1.9456, 3.23042, 900, 900, 5, 1), -- Black Rat
(@CGUID+9, 2110, 540, 3, 501.513, 293.966, 1.93947, 0.445941, 900, 900, 5, 1), -- Black Rat
(@CGUID+10, 2110, 540, 3, 119.419, 255.938, -45.2524, 0.830412, 900, 900, 5, 1), -- Black Rat
(@CGUID+11, 2110, 540, 3, 413.007, 92.7835, 1.03479, 0.917774, 900, 900, 5, 1), -- Black Rat
(@CGUID+12, 2110, 540, 3, 203.879, 165.702, -42.4057, 6.14243, 900, 900, 5, 1), -- Black Rat
(@CGUID+13, 2110, 540, 3, 501.594, 53.5415, 1.94273, 0.330827, 900, 900, 5, 1), -- Black Rat
(@CGUID+14, 2110, 540, 3, 133.197, 261.577, -13.2012, 2.3947, 900, 900, 5, 1), -- Black Rat
(@CGUID+15, 2110, 540, 3, 49.8876, 281.703, -13.1265, 4.09254, 900, 900, 5, 1), -- Black Rat
(@CGUID+16, 2110, 540, 3, 159.809, 246.503, -13.1881, 2.41328, 900, 900, 5, 1), -- Black Rat
(@CGUID+17, 2914, 540, 3, 169.113, 160.488, -42.3438, 6.15895, 900, 900, 10, 1), -- Snake
(@CGUID+18, 2914, 540, 3, 196.605, 156.598, -42.3818, 2.6321, 900, 900, 10, 1), -- Snake
(@CGUID+19, 2914, 540, 3, 124.75, 221.811, -47.8098, 4.6856, 900, 900, 10, 1), -- Snake
(@CGUID+20, 2914, 540, 3, 127.502, 195.562, -48.3811, 5.06052, 900, 900, 10, 1), -- Snake
(@CGUID+21, 2914, 540, 3, 158.569, 179.447, -43.3181, 2.12398, 900, 900, 10, 1), -- Snake
(@CGUID+22, 2914, 540, 3, 184.983, 157.058, -42.359, 2.86419, 900, 900, 10, 1), -- Snake
(@CGUID+23, 2914, 540, 3, 180.964, 221.136, -19.9495, 4.79997, 900, 900, 10, 1), -- Snake
(@CGUID+24, 2914, 540, 3, 176.379, 194.505, -29.3616, 2.21331, 900, 900, 10, 1), -- Snake
(@CGUID+25, 2914, 540, 3, 119.84, 234.17, -46.3605, 3.14159, 900, 900, 10, 1), -- Snake
(@CGUID+26, 4075, 540, 3, 93.8544, 77.9175, -13.2221, 1.79534, 900, 900, 5, 1), -- Rat
(@CGUID+27, 4075, 540, 3, 336.401, -80.9012, 1.93798, 4.28647, 900, 900, 5, 1), -- Rat
(@CGUID+28, 4075, 540, 3, 74.3365, 12.5382, -13.2194, 4.50366, 900, 900, 5, 1), -- Rat
(@CGUID+29, 4075, 540, 3, 348.926, 15.3367, 1.05846, 5.78935, 900, 900, 5, 1), -- Rat
(@CGUID+30, 4075, 540, 3, 46.9932, 279.064, -13.1237, 5.7629, 900, 900, 5, 1), -- Rat
(@CGUID+31, 4075, 540, 3, 46.9123, 63.7751, -13.1153, 5.46641, 900, 900, 5, 1), -- Rat
(@CGUID+32, 4075, 540, 3, 502.01, 293.909, 1.93946, 1.97847, 900, 900, 5, 1), -- Rat
(@CGUID+33, 4075, 540, 3, 368.352, -47.8858, 1.93028, 1.12947, 900, 900, 5, 1), -- Rat
(@CGUID+34, 4075, 540, 3, 194.412, 245.801, -13.1823, 2.82348, 900, 900, 5, 1), -- Rat
(@CGUID+35, 4075, 540, 3, 536.59, 295.011, 1.94342, 6.26132, 900, 900, 5, 1), -- Rat
(@CGUID+36, 4075, 540, 3, 526.892, 338.525, 2.11571, 0.276872, 900, 900, 5, 1), -- Rat
(@CGUID+37, 9699, 540, 3, 58.3455, 220.712, -13.2181, 2.27722, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+38, 9699, 540, 3, 58.5732, 225.986, -13.1171, 4.85973, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+39, 9699, 540, 3, 57.4501, 111.621, -13.2218, 5.81864, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+40, 9699, 540, 3, 82.703, 112.605, -13.1385, 1.80114, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+41, 9699, 540, 3, 81.9415, 225.795, -13.1873, 5.65857, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+42, 9699, 540, 3, 81.9493, 221.776, -13.2032, 4.03066, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+43, 9699, 540, 3, 50.9596, 188.825, -13.2365, 0.78815, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+44, 9699, 540, 3, 49.4711, 151.141, -13.1444, 2.51327, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+45, 9699, 540, 3, 56.0556, 223.233, -13.2109, 5.97285, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+46, 9699, 540, 3, 80.5337, 116.628, -13.2218, 3.8644, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+47, 9699, 540, 3, 475.297, 328.561, 1.93489, 0.559711, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+48, 9699, 540, 3, 474.959, 302.775, 2.0046, 2.09439, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+49, 9699, 540, 3, 437.785, 299.469, 1.90173, 2.05887, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+50, 9699, 540, 3, 365.673, 327.968, 1.91816, 3.92003, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+51, 9699, 540, 3, 86.9678, 155.807, -13.1448, 1.74533, 900, 900, 5, 1), -- Fire Beetle
(@CGUID+52, 16507, 540, 3, 66.47607, 41.36766, -13.13848, 4.694936, 7200, 7200, 0, 0), -- Shattered Hand Sentry
(@CGUID+53, 16507, 540, 3, 73.12358, 41.20788, -13.13848, 4.625123, 7200, 7200, 0, 0), -- Shattered Hand Sentry
(@CGUID+54, 16507, 540, 3, 65.25273, 97.51249, -13.13848, 4.694936, 7200, 7200, 0, 0), -- Shattered Hand Sentry
(@CGUID+55, 16507, 540, 3, 73.99692, 96.77193, -13.13848, 4.537856, 7200, 7200, 0, 0), -- Shattered Hand Sentry
(@CGUID+56, 0, 540, 3, 72.6862, 267.434, -13.1023, 3.94444, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+63, 16593, 540, 3, 43.5588, 265.281, -10.7783, 1.658063, 7200, 7200, 0, 0), -- Shattered Hand Brawler
(@CGUID+64, 16593, 540, 3, 43.5914, 253.725, -10.9988, 1.58825, 7200, 7200, 0, 0), -- Shattered Hand Brawler
(@CGUID+65, 16593, 540, 3, 69.6697, 286.034, -10.8391, 0.122173, 7200, 7200, 0, 0), -- Shattered Hand Brawler


(@CGUID+68, 16594, 540, 3, 83.5451, 286.75, -10.8789, 3.036873, 7200, 7200, 0, 0), -- Shadowmoon Acolyte
(@CGUID+69, 16699, 540, 3, 83.3397, 265.004, -13.1239, 3.66519, 7200, 7200, 0, 0), -- Shattered Hand Reaver
(@CGUID+70, 16699, 540, 3, 71.5349, 130.864, -13.1991, 4.62365, 7200, 7200, 0, 0), -- Shattered Hand Reaver
(@CGUID+71, 16704, 540, 3, 63.2694, 185.208, -13.2393, 4.73753, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+72, 0, 540, 3, 72.4708, 184.452, -13.238, 4.72051, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+73, 0, 540, 3, 77.862, 270.631, -13.1145, 3.89208, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+74, 16700, 540, 3, 62.7101, 2.91998, -13.0349, 3.16464, 7200, 7200, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+75, 16700, 540, 3, 68.7698, 133.221, -13.1937, 4.72575, 7200, 7200, 0, 0), -- Shattered Hand Legionnaire
(@CGUID+76, 16700, 540, 3, 69.5766, 186.23, -13.2424, 4.69381, 7200, 7200, 0, 0), -- Shattered Hand Legionnaire
(@CGUID+77, 16700, 540, 3, 57.0575, 73.036, -13.1202, 0.753955, 7200, 7200, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+78, 16700, 540, 3, 76.4215, 261.567, -13.2031, 100, 7200, 7200, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+79, 0, 540, 3, 74.8027, 130.074, -13.2007, 4.62365, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+80, 16704, 540, 3, 62.9769, 129.768, -13.1948, 5.01111, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+81, 16704, 540, 3, 76.022, 183.854, -13.2361, 4.65506, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+82, 16807, 540, 3, 178.928, 289.487, -8.18744, 4.70166, 86400, 86400, 0, 2), -- Grand Warlock Nethekurse
(@CGUID+83, 16808, 540, 3, 231.25, -83.64489, 5.023408, 6.265732, 86400, 86400, 0, 0), -- Warchief Kargath Bladefist
(@CGUID+84, 16809, 540, 3, 375.1204, 57.5781, -7.215918, 6.178465, 86400, 86400, 0, 0), -- Warbringer O'mrogg
(@CGUID+85, 17083, 540, 3, 174.0495, 269.1325, -13.05492, 1.448623, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+86, 17083, 540, 3, 164.7159, 266.263, -13.1122, 1.047198, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+87, 17083, 540, 3, 184.4263, 269.2937, -13.05559, 1.727876, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+88, 17083, 540, 3, 194.4839, 267.0721, -13.10399, 2.181662, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+89, 17083, 540, 3, 78.1933, 264.122, -13.1129, 3.71755, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+90, 17083, 540, 3, 67.6849, 270.865, -13.1014, 4.17134, 7200, 7200, 0, 0), -- Fel Orc Convert
(@CGUID+91, 17302, 540, 3, 149.408, -83.94183, 2.01231, 1.117011, 86400, 86400, 0, 0), -- Hellfire Military Hard Mode Timer
(@CGUID+92, 17356, 540, 3, 138.423, 189.354, -46.8948, 1.83825, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+93, 17356, 540, 3, 162.355, 169.274, -42.4084, 1.87538, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+94, 17356, 540, 3, 147.502, 179.938, -44.5792, 2.4191, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+95, 17356, 540, 3, 191.868, 162.182, -42.3617, 2.2475, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+96, 17356, 540, 3, 175.914, 164.713, -42.2624, 2.7796, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+97, 17356, 540, 3, 124.141, 208.786, -48.894, 2.27221, 7200, 7200, 5, 1), -- Creeping Ooze
(@CGUID+98, 17357, 540, 3, 163.768, 166.468, -42.3358, 2.51788, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+99, 17357, 540, 3, 140.024, 189.972, -46.8456, 2.38138, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+100, 17357, 540, 3, 150.414, 178.932, -44.1642, 2.29484, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+101, 17357, 540, 3, 164.897, 169.435, -42.1612, 2.22609, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+102, 17357, 540, 3, 137.191, 186.834, -46.7469, 1.70266, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+103, 17357, 540, 3, 149.655, 181.523, -44.4461, 2.34902, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+104, 17357, 540, 3, 147.165, 182.024, -44.9088, 2.34902, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+105, 17357, 540, 3, 159.993, 167.41, -42.5863, 2.7268, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+106, 17357, 540, 3, 145.066, 179.112, -44.8451, 2.30583, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+107, 17357, 540, 3, 147.843, 177.019, -44.2836, 2.36159, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+108, 17357, 540, 3, 140.323, 187.314, -46.3915, 1.83066, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+109, 17357, 540, 3, 208.781, 157.507, -42.2841, 3.20117, 10, 10, 0, 2), -- Creeping Oozeling
(@CGUID+110, 17357, 540, 3, 210.848, 161.595, -42.2951, 2.99115, 10, 10, 0, 2), -- Creeping Oozeling
(@CGUID+111, 17357, 540, 3, 207.999, 167.217, -42.2706, 3.62433, 10, 10, 0, 2), -- Creeping Oozeling
(@CGUID+112, 17357, 540, 3, 135.003, 263.02, -45.1575, 3.98822, 10, 10, 0, 2), -- Creeping Oozeling
(@CGUID+113, 17357, 540, 3, 193.846, 159.943, -42.3644, 2.30662, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+114, 17357, 540, 3, 136.148, 189.949, -47.2087, 1.78513, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+115, 17357, 540, 3, 124.402, 210.795, -48.9305, 3.9438, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+116, 17357, 540, 3, 194.568, 162.28, -42.3654, 2.79357, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+117, 17357, 540, 3, 191.95, 164.168, -42.3563, 2.79357, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+118, 17357, 540, 3, 178.068, 162.26, -42.3361, 2.76215, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+119, 17357, 540, 3, 126.863, 206.611, -48.8628, 1.44017, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+120, 17357, 540, 3, 176.454, 167.258, -42.0528, 2.76608, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+121, 17357, 540, 3, 121.906, 209.147, -48.9523, 1.86679, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+122, 17357, 540, 3, 123.8, 205.96, -48.7739, 5.99503, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+123, 17357, 540, 3, 174.927, 162.66, -42.3366, 2.79749, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+124, 17357, 540, 3, 191.397, 159.199, -42.3587, 2.39888, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+125, 17357, 540, 3, 163.06, 171.363, -42.3153, 2.52574, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+126, 17357, 540, 3, 179.021, 165.185, -42.152, 2.73466, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+127, 17357, 540, 3, 126.955, 210.208, -49.0893, 2.4013, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+128, 17357, 540, 3, 174.108, 165.207, -42.2668, 2.82891, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+129, 17357, 540, 3, 160.462, 170.581, -42.7061, 1.87512, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+130, 17357, 540, 3, 190.181, 162.989, -42.3513, 2.35767, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+131, 17357, 540, 3, 138.444, 191.164, -47.1833, 6.21809, 7200, 7200, 0, 0), -- Creeping Oozeling
(@CGUID+132, 0, 540, 3, 66.2363, 130.973, -13.196, 4.80743, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+133, 16699, 540, 3, 67.1698, 183.923, -13.2365, 4.69381, 7200, 7200, 0, 0), -- Shattered Hand Reaver
-- First hallway in dungeon, random between Shattered Hand Heathen or Savage in normal mode only
(@CGUID+134, 0, 540, 1, 46.3248, 59.879, -12.9904, 0, 5, 5, 0, 2), -- creature_spawn_entry
(@CGUID+135, 0, 540, 1, 83.755, 57.2887, -13.114, 3.15, 5, 5, 0, 2), -- creature_spawn_entry
(@CGUID+136, 0, 540, 1, 53.5243, 60.0879, -13.0071, 0, 5, 5, 0, 2), -- creature_spawn_entry
(@CGUID+137, 0, 540, 1, 90.0297, 57.4987, -13.1003, 3.261756, 5, 5, 0, 2), -- creature_spawn_entry
(@CGUID+138, 0, 540, 1, 87.9912, 57.5445, -13.1049, 3.2617, 5, 5, 0, 2), -- creature_spawn_entry
-- Re-Use 139-142
-- Gauntlet of Flames
(@CGUID+143, 17427, 540, 3, 514.5014, 319.6571, 2.042556, 3.368485, 7200, 7200, 0, 0), -- Shattered Hand Archer
(@CGUID+144, 17427, 540, 3, 514.8049, 312.0412, 2.036432, 3.001966, 7200, 7200, 0, 0), -- Shattered Hand Archer
(@CGUID+145, 17461, 540, 1, 512.6873, 315.6516, 2.040503, 2.984513, 86400, 86400, 0, 0), -- Shattered Hand Blood Guard
(@CGUID+146, 17462, 540, 3, 335.331, 311.7092, 2.02385, 0.9948376, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+147, 17462, 540, 3, 332.262, 314.0845, 2.030712, 0.1570796, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+148, 17462, 540, 3, 335.664, 317.5591, 2.024835, 5.288348, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+149, 17462, 540, 3, 499.0804, 322.2516, 2.031424, 3.281219, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+150, 17462, 540, 3, 498.9346, 309.12, 2.030749, 3.001966, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+151, 17462, 540, 3, 499.8543, 318.8076, 2.032207, 3.159046, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+152, 17462, 540, 3, 499.7404, 313.2804, 2.032141, 3.036873, 7200, 7200, 0, 0), -- Shattered Hand Zealot
(@CGUID+173, 17552, 540, 3, 191.091, 279.1522, 6.347817, 1.003119, 86400, 86400, 0, 0), -- Hellfire Death Brazier
(@CGUID+174, 17552, 540, 3, 165.1729, 278.9961, 7.502974, 0.5861885, 86400, 86400, 0, 0), -- Hellfire Death Brazier
(@CGUID+175, 17552, 540, 3, 179.6241, 258.1517, 7.795619, 0.6800787, 86400, 86400, 0, 0), -- Hellfire Death Brazier
(@CGUID+176, 17578, 540, 3, 508.1696, 131.2284, 2.018857, 1.22173, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+177, 17578, 540, 3, 512.5972, 119.7658, 1.994586, 0.6632251, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+178, 17578, 540, 3, 523.4672, 119.2777, 1.946144, 2.042035, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+179, 17578, 540, 3, 512.9296, 186.9605, 2.00013, 0.7679449, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+180, 17578, 540, 3, 525.0672, 176.6558, 2.016024, 2.356194, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+181, 17578, 540, 3, 512.1739, 205.3514, 2.007787, 0.6981317, 86400, 86400, 0, 0), -- Training Dummy
(@CGUID+182, 17611, 540, 3, 336.7071, -84.05206, 1.992441, 3.124139, 86400, 86400, 0, 0), -- Warchief's Portal
(@CGUID+183, 15384, 540, 3, 280.4014, -91.7462, 1.821993, 2.443461, 86400, 86400, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
-- (@CGUID+184, 17295, 540, 3, 151.2411, -91.0293, 2.019741, 1.570796, 86400, 86400, 0, 0), -- Korag Proudmane
-- (@CGUID+185, 17296, 540, 3, 138.8807, -84.22707, 1.992269, 0.06981317, 86400, 86400, 0, 0), -- Captain Boneshatter
-- (@CGUID+186, 17297, 540, 3, 151.0459, -77.51981, 2.021008, 4.747295, 86400, 86400, 0, 0), -- Scout Orgarr
(@CGUID+187, 17669, 540, 3, 102.8895, 262.3415, -13.13969, 3.001966, 7200, 7200, 0, 0), -- Rabid Warhound
(@CGUID+188, 17669, 540, 3, 102.9968, 269.9615, -13.13969, 3.193953, 7200, 7200, 0, 0), -- Rabid Warhound
(@CGUID+189, 17670, 540, 3, 103.0368, 266.3398, -13.13969, 2.9147, 7200, 7200, 0, 0), -- Shattered Hand Houndmaster
-- reuse 190, 191, 192, 194, 193, 195, 196, 196, 197
(@CGUID+198, 17687, 540, 3, 475.607, 317.259, 1.93511, 3.53184, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+199, 17687, 540, 3, 474.604, 316.266, 1.93224, 3.52502, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+200, 17687, 540, 3, 458.635, 316.226, 1.9386, 1.09048, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+201, 17687, 540, 3, 442.53, 312.552, 1.89971, 4.90947, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+202, 17687, 540, 3, 443.132, 315.544, 1.98497, 0, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+203, 17687, 540, 3, 425.697, 315.906, 1.9384, 0.0896327, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+204, 17687, 540, 3, 424.878, 314.647, 1.94027, 5.80904, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+205, 17687, 540, 3, 405.523, 315.378, 1.89959, 3.40177, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+206, 17687, 540, 3, 317.974, 314.801, 1.9146, 0.34688, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+207, 17687, 540, 3, 317.211, 315.742, 1.91492, 1.1656, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+208, 17687, 540, 3, 351.347, 315.593, 1.91816, 4.00343, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+209, 17687, 540, 3, 351.773, 317.038, 1.91816, 0.501879, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+210, 17687, 540, 3, 368.151, 317.076, 1.9157, 1.26919, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+211, 17687, 540, 3, 369.298, 320.104, 1.91694, 1.42251, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+212, 17687, 540, 3, 384.094, 319.218, 1.93988, 2.53266, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+213, 17687, 540, 3, 384.278, 314.477, 1.93969, 3.99809, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+214, 17687, 540, 3, 408.506, 316.692, 1.91144, 0.0542292, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+215, 17687, 540, 3, 294.722, 317.899, 1.91816, 0.186297, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+216, 17687, 540, 3, 287.066, 315.53, 1.87145, 6.21995, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+217, 17687, 540, 3, 455.513, 317.784, 1.94178, 3.58176, 7200, 7200, 10, 1), -- Flame Arrow
(@CGUID+218, 17693, 540, 3, 341.2886, 314.903, 2.012742, 3.141593, 7200, 7200, 0, 0), -- Shattered Hand Scout


(@CGUID+221, 16699, 540, 3, 72.871, 274.047, -13.1036, 4.08407, 7200, 7200, 0, 0), -- Shattered Hand Reaver
-- (@CGUID+222, 17301, 540, 3, 152.8524, -83.63912, 2.021005, 0.06981317, 86400, 86400, 0, 0), -- Shattered Hand Executioner
-- (@CGUID+223
-- (@CGUID+224
-- (@CGUID+225, 17083, 540, 3, 89.46494, 187.3341, -13.14554, 3.392555, 7200, 7200, 0, 0), -- First Hallway Reinforcement, might be missing one spawn location
-- (@CGUID+226, 17083, 540, 3, 79.96329, 219.0321, -13.13969, 3.984551, 7200, 7200, 0, 0),
-- (@CGUID+227, 17083, 540, 3, 83.53072, 250.5345, -13.11314, 3.607419, 7200, 7200, 0, 0),
-- (@CGUID+228, 19523, 540, 3, 374.3786, 51.28566, 30.64389, 0.03490658, 86400, 86400, 0, 0), -- O'mrogg's Left Head
-- (@CGUID+229, 19524, 540, 3, 374.3565, 64.50481, 31.22059, 6.073746, 86400, 86400, 0, 0), -- O'mrogg's Right Head
(@CGUID+230, 20709, 540, 3, 249.962, -98.2689, 5.0227, 3.61283, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+231, 20709, 540, 3, 251.623, -84.1218, 5.02172, 5.25344, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+232, 20709, 540, 3, 260.148, -83.7987, 4.18425, 2.6529, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+233, 20709, 540, 3, 190.912, -84.5878, 2.68429, 5.75959, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+234, 20709, 540, 3, 223.158, -83.8724, 5.02341, 6.10865, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+235, 20709, 540, 3, 223.486, -68.3885, 5.02341, 0.942478, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+236, 20709, 540, 3, 215.421, -89.0572, 5.02342, 5.21853, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+237, 20709, 540, 3, 198.564, -84.262, 3.9186, 4.01426, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+238, 20709, 540, 3, 235.637, -99.7462, 5.02341, 5.34071, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+239, 20709, 540, 3, 207.548, -84.2186, 5.02176, 0.122173, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+240, 20709, 540, 3, 236.281, -68.8607, 5.02341, 5.14872, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+241, 20709, 540, 3, 229.37, -63.3378, 5.02341, 2.75762, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+242, 20709, 540, 3, 222.929, -99.3172, 5.02341, 0.366519, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+243, 20709, 540, 3, 229.213, -91.2796, 5.02341, 0.244346, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+244, 20709, 540, 3, 243.45, -77.2963, 5.0234, 4.55531, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+245, 20709, 540, 3, 267.997, -84.1363, 3.17459, 5.86431, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+246, 20709, 540, 3, 209.371, -97.9959, 5.02256, 5.25344, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+247, 20709, 540, 3, 229.574, -76.4437, 5.02341, 2.14675, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+248, 20709, 540, 3, 242.707, -90.59, 5.02341, 5.11381, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+249, 20709, 540, 3, 216.092, -104.188, 5.0228, 1.48353, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+250, 20709, 540, 3, 216.282, -64.6925, 5.02281, 3.75246, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+251, 20709, 540, 3, 249.602, -69.3923, 5.0222, 1.39626, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+252, 20709, 540, 3, 229.357, -104.793, 5.02341, 3.4383, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+253, 20709, 540, 3, 210.256, -70.4671, 5.02276, 0.925025, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+254, 20709, 540, 3, 216.1, -78.2583, 5.02342, 5.09636, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+255, 20709, 540, 3, 235.918, -83.9248, 5.02341, 1.81514, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+256, 20709, 540, 3, 242.375, -63.7785, 5.02294, 3.05433, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+257, 20709, 540, 3, 243.196, -104.702, 5.02294, 5.14872, 60, 120, 0, 0), -- Blade Dance Target
(@CGUID+258, 20923, 540, 2, 512.6873, 315.6516, 2.040503, 2.984513, 86400, 86400, 0, 0), -- Blood Guard Porung
(@CGUID+275, 16704, 540, 3, 62.3102, 207.759, -13.1978, 4.7401, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+276, 16704, 540, 3, 77.1728, 207.646, -13.1964, 4.6223, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+277, 16704, 540, 3, 69.8649, 212.634, -13.2109, 4.65764, 7200, 7200, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+278, 16699, 540, 3, 73.4567, 209.972, -13.2053, 4.60659, 7200, 7200, 0, 0), -- Shattered Hand Reaver
(@CGUID+279, 16699, 540, 3, 66.0253, 210.383, -13.2053, 4.7244, 7200, 7200, 0, 0), -- Shattered Hand Reaver
(@CGUID+282, 16700, 540, 3, 62.5538, 203.886, -13.1971, 0.000229836, 7200, 7200, 0, 2), -- Shattered Hand Legionnaire
-- First hallway in dungeon, all Shattered Hand Heathen in heroic mode only
(@CGUID+304, 17420, 540, 2, 46.3248, 59.879, -12.9904, 0, 5, 5, 0, 2), -- Shattered Hand Heathen
(@CGUID+305, 17420, 540, 2, 83.755, 57.2887, -13.114, 3.15, 5, 5, 0, 2), -- Shattered Hand Heathen
(@CGUID+306, 17420, 540, 2, 53.5243, 60.0879, -13.0071, 0, 5, 5, 0, 2), -- Shattered Hand Heathen
(@CGUID+307, 17420, 540, 2, 90.0297, 57.4987, -13.1003, 3.261756, 5, 5, 0, 2), -- Shattered Hand Heathen
(@CGUID+308, 17420, 540, 2, 87.9912, 57.5445, -13.1049, 3.2617, 5, 5, 0, 2), -- Shattered Hand Heathen
-- Hall of the Fathers, random between Shattered Hand Heathen in heroic mode only
-- Hall of the Fathers, random between Shattered Hand Heathen or Savage in normal mode only
(@CGUID+309, 0, 540, 1, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+310, 17420, 540, 2, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+311, 0, 540, 3, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+312, 0, 540, 1, 56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+313, 17420, 540, 2,  56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+314, 0, 540, 3, 56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+315, 0, 540, 1, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+316, 17420, 540, 2, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+317, 0, 540, 3, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+318, 0, 540, 1, 65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+319, 17420, 540, 2, 65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+320, 0, 540, 3, 65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+321, 0, 540, 1, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+322, 17420, 540, 2, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+323, 0, 540, 3, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+324, 0, 540, 1, 77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+325, 17420, 540, 2, 77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+326, 0, 540, 3, 77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+327, 0, 540, 1, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+328, 17420, 540, 2, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+329, 0, 540, 3, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

(@CGUID+330, 0, 540, 1, 84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0), -- Shattered Hand Savage, Shattered Hand Heathen (Normal)
(@CGUID+331, 17420, 540, 2, 84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0), -- Shattered Hand Heathen (Heroic)
(@CGUID+332, 0, 540, 3, 84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0), -- Shadowmoon Acolyte, Shadowmoon Darkcaster, Shattered Hand Brawler

-- reguid to get the in correct order

-- Shattered Hand Centurion group 1
(@CGUID+337, 17465, 540, 3, 551.806, 233.474, 0.260, 5.253, 7200, 7200, 0, 0), -- Shattered Hand Centurion
(@CGUID+338, 17464, 540, 3, 548.59235,228.68463,0.3211252, 1.2740, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+339, 17464, 540, 3, 555.09924,238.77547,0.24254562, 3.8397, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+340, 17464, 540, 3, 558.6774,234.45605,0.24871394, 3.3335, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+341, 17464, 540, 3, 555.4427,226.53958,0.26602003, 1.8151, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
-- Shattered Hand Centurion group 2
(@CGUID+342, 17465, 540, 3, 483.204, 233.218, 0.336, 0.2617, 7200, 7200, 0, 0), -- Shattered Hand Centurion
(@CGUID+343, 17464, 540, 3, 482.5505,228.24567,0.25334617, 0.8901, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+344, 17464, 540, 3, 481.735, 236.445, 0.259589, 5.55015, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+345, 17464, 540, 3, 486.24268,239.62515,0.25636414, 3.595, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+346, 17464, 540, 3, 488.32095,229.2469,0.28818652, 2.4783, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
-- Shattered Hand Centurion group 3
(@CGUID+347, 17465, 540, 3, 548.0821, 147.744, 0.344, 5.096, 7200, 7200, 0, 0), -- Shattered Hand Centurion
(@CGUID+348, 17464, 540, 3, 549.194,141.83539,0.27154884, 1.88495, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+349, 17464, 540, 3, 552.13196,149.60138,0.23917985, 3.4033, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+350, 17464, 540, 3, 556.409,145.13617,0.245854337, 2.8448, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+351, 17464, 540, 3, 553.9032,141.16313,0.2620143, 2.338, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
-- Shattered Hand Centurion group 4
(@CGUID+352, 17465, 540, 3, 487.649, 145.294, 0.333, 2.914, 7200, 7200, 0, 0), -- Shattered Hand Centurion
(@CGUID+353, 17464, 540, 3, 483.548, 139.49, 0.261523, 1.01229, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+354, 17464, 540, 3, 480.191, 144.154, 0.246361, 6.16101, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+355, 17464, 540, 3, 484.621, 149.136, 0.255085, 5.28835, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
(@CGUID+356, 17464, 540, 3, 489.581, 140.572, 0.383639, 1.88496, 7200, 7200, 0, 0), -- Shattered Hand Gladiator
-- legionnaire
(@CGUID+357, 16700, 540, 3, 528.1561,228.07251,1.9335356, 3.436007, 7200, 7200, 0, 4), -- Shattered Hand Legionnaire
(@CGUID+358, 0, 540, 3, 528.6796, 223.4055, 2.023122, 2.129302, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+359, 0, 540, 3, 525.7616, 220.7913, 2.016929, 1.919862, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+360, 0, 540, 3, 522.6966, 218.9557, 2.009991, 1.710423, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+361, 0, 540, 3, 525.9536, 224.0651, 2.019475, 2.007129, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+362, 0, 540, 3, 523.4786, 222.1381, 2.013575, 1.762783, 7200, 7200, 0, 0), -- creature_spawn_entry

-- Dummy group
(@CGUID+363, 0, 540, 3, 514.082, 207.3281, 2.00095, 3.822271, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+364, 0, 540, 3, 515.2893, 188.0133, 2.002992, 3.735005, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+365, 0, 540, 3, 524.1110, 179.1829, 2.022280, 5.27090, 7200, 7200, 0, 0), -- spawn_group_entry
-- Legionnaire group 07
(@CGUID+366, 16700, 540, 3, 519.1681, 159.8561, 1.930037, 6.007451, 7200, 7200, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+367, 0, 540, 3, 522.82, 154.4558, 2.012511, 2.181662, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+368, 0, 540, 3, 519.4902, 152.004, 2.013406, 1.692969, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+369, 0, 540, 3, 515.5397, 152.437, 2.011561, 1.239184, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+370, 0, 540, 3, 512.7481, 154.6207, 2.00748, 0.8203048, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+371, 0, 540, 3, 510.8584, 157.5727, 2.007741, 0.4014257, 7200, 7200, 0, 0), -- spawn_group_entry
-- Patrol 01
(@CGUID+372, 17670, 540, 3, 518.861, 192.848, 1.93, 4.689, 7200, 7200, 0, 0), -- Shattered Hand Houndmaster
(@CGUID+373, 17669, 540, 3, 519.302, 201.428, 1.93, 4.646, 7200, 7200, 0, 0), -- Rabid Warhound
(@CGUID+374, 17669, 540, 3, 522.155, 198.203, 1.93, 4.658, 7200, 7200, 0, 0), -- Rabid Warhound
-- Dummy
(@CGUID+375, 0, 540, 3, 509.7427, 133.4207, 2.017469, 4.101524, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+376, 16523, 540, 3, 514.6008, 120.4596, 1.992567, 3.403392, 7200, 7200, 0, 0), -- Shattered Hand Savage
(@CGUID+377, 16523, 540, 3, 524.7359, 120.8698, 1.99425, 4.101524, 7200, 7200, 0, 0), -- Shattered Hand Savage

-- (@CGUID+378, 17695, 540, 3, 482.708, 57.372, 1.93, 1.097, 7200, 7200, 0, 2), -- Shattered hand Assasin

(@CGUID+379, 17695, 540, 3, 519.602, 102.657, 1.92436, 5.62595, 7200, 7200, 7, 1), -- Shattered hand Assasin

(@CGUID+380, 17671, 540, 3, 514.3174, 86.33289, 2.016482, 1.204277, 7200, 7200, 0, 0), -- Shattered Hand Champion
(@CGUID+381, 17671, 540, 3, 523.4097, 85.73234, 2.016591, 1.815142, 7200, 7200, 0, 0), -- Shattered Hand Champion

(@CGUID+382, 17695, 540, 3, 482.708, 57.372, 1.93, 1.097, 7200, 7200, 7, 1), -- Shattered hand Assasin

(@CGUID+383, 17670, 540, 3, 459.75, 58.693, 1.937, 3.120, 7200, 7200, 0, 0), -- Shattered Hand Houndmaster
(@CGUID+384, 17669, 540, 3, 465.24, 55.549, 1.9256, 3.1238, 7200, 7200, 0, 0), -- Rabid Warhound
(@CGUID+385, 17669, 540, 3, 468.31, 58.506, 1.9254, 3.122, 7200, 7200, 0, 0), -- Rabid Warhound

(@CGUID+386, 17671, 540, 3, 448.3664, 53.29791, 2.02294, 0.4886922, 7200, 7200, 0, 0), -- Shattered Hand Champion
(@CGUID+387, 17671, 540, 3, 448.6344, 62.37546, 2.01648, 5.654867, 7200, 7200, 0, 0), -- Shattered Hand Champion

(@CGUID+388, 17695, 540, 3, 373.159, 108.577, 1.031, 4.772, 7200, 7200, 7, 1), -- Shattered Hand Assassin - right to 2nd boss
-- Way to endboss
(@CGUID+389, 17671, 540, 3, 378.3717, -7.73405, 1.993441, 1.832596, 7200, 7200, 0, 0), -- Shattered Hand Champion
(@CGUID+390, 17671, 540, 3, 369.9786, -7.824302, 2.005173, 1.32645, 7200, 7200, 0, 0), -- Shattered Hand Champion
-- Assasins before endboss
(@CGUID+391, 17695, 540, 3, 381.3262,-18.909515,1.9102229, 2.697728, 7200, 7200, 0, 4), -- Shattered Hand Assassin
(@CGUID+392, 17695, 540, 3, 383.08115,-52.932426,1.939616, 2.44247, 7200, 7200, 0, 4), -- Shattered Hand Assassin
(@CGUID+393, 17695, 540, 3, 381.3918,-74.539215,1.9187236, 2.765528, 7200, 7200, 0, 4), -- Shattered Hand Assassin
(@CGUID+394, 17695, 540, 3, 368.5422,-87.628334,1.9119368, 5.48575, 7200, 7200, 0, 4), -- Shattered Hand Assassin
(@CGUID+395, 17695, 540, 3, 346.19812,-88.69315,1.9350995, 5.56022, 7200, 7200, 0, 4), -- Shattered Hand Assassin
(@CGUID+396, 17695, 540, 3, 314.45364, -91.16705, 1.9374878, 2.3714, 7200, 7200, 0, 4), -- Shattered Hand Assassin
-- Patrol before endboss
(@CGUID+397, 17670, 540, 3, 369.437, -32.997, 1.909, 4.731, 7200, 7200, 0, 0), -- Shattered Hand Houndmaster
(@CGUID+398, 17669, 540, 3, 372.378, -29.858, 1.908, 5.141, 7200, 7200, 0, 0), -- Rabid Warhound
(@CGUID+399, 17669, 540, 3, 369.321, -26.915, 1.909, 4.296, 7200, 7200, 0, 0), -- Rabid Warhound
-- last group
(@CGUID+400, 17671, 540, 3, 282.9575, -80.28755, 2.17246, 6.021386, 7200, 7200, 0, 0), -- Shattered Hand Champion
(@CGUID+401, 17671, 540, 3, 283.5523, -89.42811, 2.158092, 0.4363323, 7200, 7200, 0, 0); -- Shattered Hand Champion

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 181679, 540, 3, 168.66, 291.89, -6.93, 0, 0, 0, 0, 0, 180, 180), -- Fel Brazier
(@OGUID+2, 181679, 540, 3, 187.77, 292.46, -7.33, 0, 0, 0, 0, 0, 180, 180), -- Fel Brazier
(@OGUID+3, 182539, 540, 3, 141.5157, 266.3664, -11.56821, 3.141593, 0, 0, -1, 0, 120, 120), -- Grand Warlock Chamber Door
(@OGUID+4, 182540, 540, 3, 214.4881, 266.1671, -11.51811, 0, 0, 0, 0, 1, 120, 120), -- Grand Warlock Chamber Door
(@OGUID+5, 184177, 540, 1, -42.05605, -26.77249, -13.51534, 1.469793, 0, 0, 0.6705103, 0.7419003, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+6, 184178, 540, 2, -42.05605, -26.77249, -13.51534, 1.469793, 0, 0, 0.6705103, 0.7419003, 0, 0), -- Doodad_InstancePortal_PurpleDifficultyIcon01
(@OGUID+7, 0, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest
-- (@OGUID+8, 184941, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400), -- Solid Adamantite Chest
(@OGUID+9, 181671, 540, 3, 330.75064, 74.205864, 1.079237, 3.1590624, 0, 0, -0.99996185, 0.008734641, 86400, 86400), -- Fel Horde Banner
(@OGUID+10, 181671, 540, 3, 330.79465, 41.026054, 1.070399, 0.017452462, 0, 0, 0.00872612, 0.9999619, 86400, 86400), -- Fel Horde Banner
(@OGUID+11, 181435, 540, 3, 242.159, -75.06284, -9.304095, 4.886921, 0, 0, -0.6427879, 0.7660442, 86400, 86400), -- Doodad_OnyziasLairLavaTrap80
(@OGUID+12, 181436, 540, 3, 232.8329, -98.32433, -11.76173, 0.6981294, 0, 0, 0.3420191, 0.939693, 86400, 86400), -- Doodad_OnyziasLairLavaTrap79
(@OGUID+13, 181437, 540, 3, 222.6859, -78.63619, -11.1251, 3.752462, 0, 0, -0.9537163, 0.3007079, 86400, 86400), -- Doodad_OnyziasLairLavaTrap78
(@OGUID+14, 181438, 540, 3, 257.0056, -102.1912, -5.668888, 4.450591, 0, 0, -0.7933531, 0.6087617, 86400, 86400), -- Doodad_OnyziasLairLavaTrap64
(@OGUID+15, 181439, 540, 3, 260.3188, -79.31659, -6.418934, 5.846854, 0, 0, -0.2164392, 0.9762961, 86400, 86400), -- Doodad_OnyziasLairLavaTrap72
(@OGUID+16, 181440, 540, 3, 215.4215, -112.6428, -6.456299, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400), -- Doodad_OnyziasLairLavaTrap81
(@OGUID+17, 181441, 540, 3, 220.3093, -54.90799, -6.456299, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400), -- Doodad_OnyziasLairLavaTrap82
(@OGUID+18, 181442, 540, 3, 197.2586, -84.19016, -7.345709, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400); -- Doodad_OnyziasLairLavaTrap83

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+1, 0, -1), -- Fel Brazier
(@OGUID+2, 0, -1), -- Fel Brazier
(@OGUID+5, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+6, 0, 0); -- Doodad_InstancePortal_PurpleDifficultyIcon01

-- ============
-- SPAWN GROUPS
-- ============

-- ======
-- SPAWN GROUPS
-- ======

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Shattered Halls - Adamantite Chest', 1, 1, 0, 0),
(@SGGUID+47, 'Shattered Halls - Shattered Hand Assassin (1)', 0, 0, 0, 0), -- Multiple Spawns, only one active
-- Gauntlet of Flame
-- (@SGGUID+48, 'Shattered Halls - Shattered Hand Zealot (3) | Shattered Hand Scout (1) | Gauntlet of Flame Group 001', 0, 3, 0, 1), -- On Aggro gauntlet starts
-- (@SGGUID+49, 'Shattered Halls - Shattered Hand Zealot (8) | Gauntlet of Flame Group 002', 0, 0, 0, 0), -- 8 Zealots that getting spawned when Scout reachs the end of his path
-- (@SGGUID+50, 'Shattered Halls - Shattered Hand Zealot (2) | Gauntlet of Flame Group 003', 0, 0, 0, 0), -- 2 Zealots that respawns every 20 seconds as long gauntlet is active
-- (@SGGUID+51, 'Shattered Halls - Shattered Hand Zealot (4) | Gauntlet of Flame Group 003', 0, 0, 0, 0), -- 4 Zealots before archer blood guard group
-- (@SGGUID+52, 'Shattered Halls - Shattered Hand Blood Guard (1) | Shattered Hand Archer (2) | Gauntlet of Flame Group 004 (Normal', 0, 0, 0, 0), -- Blood Guard ends gauntlet on normal
-- (@SGGUID+53, 'Shattered Halls - Blood Guard Porung (1) | Shattered Hand Archer (2) | Gauntlet of Flame Group 004 (Normal', 0, 0, 0, 0), -- Blood Guard Porung ends gauntlet on Heroic
(@SGGUID+54, 'Shattered Halls - Shattered Hand Centurion (1) | Shattered Hand Gladiatior (4) | Sparring Hall Group 001', 0, 5, 0, 1),
(@SGGUID+55, 'Shattered Halls - Shattered Hand Centurion (1) | Shattered Hand Gladiatior (4) | Sparring Hall Group 002', 0, 5, 0, 1),
(@SGGUID+56, 'Shattered Halls - Shattered Hand Centurion (1) | Shattered Hand Gladiatior (4) | Sparring Hall Group 003', 0, 5, 0, 1),
(@SGGUID+57, 'Shattered Halls - Shattered Hand Centurion (1) | Shattered Hand Gladiatior (4) | Sparring Hall Group 004', 0, 5, 0, 1),
-- Legionnaire Group 7 research (over 20 runs):
-- always 1 Acolyte and 1 Reaver
-- possible of having 2: reaver, savage or heathen
-- max 1 brawler, darkcaster
(@SGGUID+58, 'Shattered Halls - Shattered Hand Legionnaire Group 007', 0, 6, 0, 1),
(@SGGUID+59, 'Shattered Halls - Sparring Hall Group 001', 0, 3, 0, 0), -- Dummy Group with spawn_group_entry
-- Legionnaire Group 8 research (over 20 runs):
-- always 1 Acolyte and 1 Reaver
-- possible of having 2: reaver, savage or heathen
-- max 1 brawler, darkcaster
(@SGGUID+60, 'Shattered Halls - Shattered Hand Legionnaire 008', 0, 6, 0, 1),
(@SGGUID+61, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 001', 0, 3, 0, 1),
-- (@SGGUID+62, 'Shattered Halls - Shattered Hand Assasin | Sparing Hall Patrol 001', 0, 1, 0, 0), -- This is a solo Patroling Shattered Hand Assasin, not sure yet how when he gets spawned
(@SGGUID+63, 'Shattered Halls - Shattered Hand Savage (2) | spawn_group_entry | Sparring Hall Group 002', 0, 3, 0, 1), -- 3 npcs attacking dummys, 2 static 1 with rnd entry
(@SGGUID+64, 'Shattered Halls - Shattered Hand Champion (2) | Sparring Hall Group 003', 0, 2, 0, 1),
(@SGGUID+65, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 002', 0, 3, 0, 1),
(@SGGUID+66, 'Shattered Halls - Shattered Hand Champion (2) | Sparring Hall Group 004', 0, 2, 0, 1),
-- Way to endboss
(@SGGUID+67, 'Shattered Halls - Shattered Hand Champion (2) | Warbringers Ring Group 001', 0, 2, 0, 1), 
(@SGGUID+68, 'Shattered Halls - Shattered Hand Assassin (7)', 0, 6, 0, 0), -- 6 static spawned assasins before endboss
(@SGGUID+69, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Warbringers Ring Patrol 001', 0, 3, 0, 1),
(@SGGUID+70, 'Shattered Halls - Shattered Hand Champion (2) | Warbringers Ring Group 002', 0, 2, 0, 1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+1, 184940, 0, 0, 0), (@SGGUID+1, 184941, 0, 0, 0), -- Bound Adamantite Chest, Solid Adamantite Chest-- Legionnaire Group 8
(@SGGUID+58, 16523, 0, 2, 0), (@SGGUID+58, 16593, 0, 1, 0), (@SGGUID+58, 16594, 1, 1, 0), (@SGGUID+58, 16699, 1, 2, 0), (@SGGUID+58, 17420, 0, 2, 0), (@SGGUID+58, 17694, 0, 1, 0),  -- Shattered Hand Savage, Shattered Hand Brawler, Shattered Hand Acolyte, Shattered Hand Reaver, Shattered Hand Heathen, Shattered Hand Darkcaster
(@SGGUID+59, 16523, 0, 2, 0), (@SGGUID+59, 16593, 0, 1, 0), (@SGGUID+59, 16699, 0, 2, 0), (@SGGUID+59, 17420, 0, 2, 0), -- Shattered Hand Savage, Shattered Hand Brawler, Shattered Hand Reaver, Shattered Hand Heathen
(@SGGUID+60, 16523, 0, 2, 0), (@SGGUID+60, 16593, 0, 1, 0), (@SGGUID+60, 16594, 1, 1, 0), (@SGGUID+60, 16699, 1, 2, 0), (@SGGUID+60, 17420, 0, 2, 0), (@SGGUID+60, 17694, 0, 1, 0),  -- Shattered Hand Savage, Shattered Hand Brawler, Shattered Hand Acolyte, Shattered Hand Reaver, Shattered Hand Heathen, Shattered Hand Darkcaster
(@SGGUID+63, 16523, 0, 0, 0), (@SGGUID+63, 16699, 0, 0, 0), (@SGGUID+63, 17420, 0, 0, 0); -- Shattered Hand Savage, Shattered Hand Reaver, Shattered Hand Heathen


INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @OGUID+7, -1), -- spawn_group_entry

(@SGGUID+47, @CGUID+379, -1), -- Shattered Hand Assasins 
(@SGGUID+47, @CGUID+382, -1), -- Shattered Hand Assasins 
(@SGGUID+47, @CGUID+388, -1), -- Shattered Hand Assasins 

(@SGGUID+54, @CGUID+337, 0), -- Shattered Hand Centurion
(@SGGUID+54, @CGUID+338, 0), -- Shattered Hand Gladiator
(@SGGUID+54, @CGUID+339, 0), -- Shattered Hand Gladiator
(@SGGUID+54, @CGUID+340, 0), -- Shattered Hand Gladiator
(@SGGUID+54, @CGUID+341, 0), -- Shattered Hand Gladiator

(@SGGUID+55, @CGUID+342, 0), -- Shattered Hand Centurion
(@SGGUID+55, @CGUID+343, 0), -- Shattered Hand Gladiator
(@SGGUID+55, @CGUID+344, 0), -- Shattered Hand Gladiator
(@SGGUID+55, @CGUID+345, 0), -- Shattered Hand Gladiator
(@SGGUID+55, @CGUID+346, 0), -- Shattered Hand Gladiator

(@SGGUID+56, @CGUID+347, 0), -- Shattered Hand Centurion
(@SGGUID+56, @CGUID+348, 0), -- Shattered Hand Gladiator
(@SGGUID+56, @CGUID+349, 0), -- Shattered Hand Gladiator
(@SGGUID+56, @CGUID+350, 0), -- Shattered Hand Gladiator
(@SGGUID+56, @CGUID+351, 0), -- Shattered Hand Gladiator


(@SGGUID+57, @CGUID+352, 0), -- Shattered Hand Centurion
(@SGGUID+57, @CGUID+353, 0), -- Shattered Hand Gladiator
(@SGGUID+57, @CGUID+354, 0), -- Shattered Hand Gladiator
(@SGGUID+57, @CGUID+355, 0), -- Shattered Hand Gladiator
(@SGGUID+57, @CGUID+356, 0), -- Shattered Hand Gladiator

(@SGGUID+58, @CGUID+357, 0), -- Shattered Hand Legionnaire
(@SGGUID+58, @CGUID+358, 1), -- spawn_group_entry
(@SGGUID+58, @CGUID+359, 2), -- spawn_group_entry
(@SGGUID+58, @CGUID+360, 3), -- spawn_group_entry
(@SGGUID+58, @CGUID+361, 4), -- spawn_group_entry
(@SGGUID+58, @CGUID+362, 5), -- spawn_group_entry

(@SGGUID+59, @CGUID+363, -1), -- spawn_group_entry
(@SGGUID+59, @CGUID+364, -1), -- spawn_group_entry
(@SGGUID+59, @CGUID+365, -1), -- spawn_group_entry

(@SGGUID+60, @CGUID+366, 0), -- Shattered Hand Legionnaire
(@SGGUID+60, @CGUID+367, 1), -- spawn_group_entry
(@SGGUID+60, @CGUID+368, 2), -- spawn_group_entry
(@SGGUID+60, @CGUID+369, 3), -- spawn_group_entry
(@SGGUID+60, @CGUID+370, 4), -- spawn_group_entry
(@SGGUID+60, @CGUID+371, 5), -- spawn_group_entry

(@SGGUID+61, @CGUID+372, 0), -- Shattered Hand Houndmaster
(@SGGUID+61, @CGUID+373, 1), -- Rabid Warhound
(@SGGUID+61, @CGUID+374, 2), -- Rabid Warhound

-- (@SGGUID+62, @CGUID+378, -1), -- Shattered Hand Assasins 

(@SGGUID+63, @CGUID+375, -1), -- spawn_group_entry
(@SGGUID+63, @CGUID+376, -1), -- Shattered Hand Savage
(@SGGUID+63, @CGUID+377, -1), -- Shattered Hand Savage

(@SGGUID+64, @CGUID+380, -1), -- Shattered Hand Champion
(@SGGUID+64, @CGUID+381, -1), -- Shattered Hand Champion
(@SGGUID+65, @CGUID+383, 0), -- Shattered Hand Houndmaster
(@SGGUID+65, @CGUID+384, 1), -- Rabid Warhound
(@SGGUID+65, @CGUID+385, 2), -- Rabid Warhound
(@SGGUID+66, @CGUID+386, -1), -- Shattered Hand Champion
(@SGGUID+66, @CGUID+387, -1), -- Shattered Hand Champion
-- way to endboss
(@SGGUID+67, @CGUID+389, -1), -- Shattered Hand Champion
(@SGGUID+67, @CGUID+390, -1), -- Shattered Hand Champion
-- assasins way before endboss
(@SGGUID+68, @CGUID+391, -1), -- Shattered Hand Assasins
(@SGGUID+68, @CGUID+392, -1), -- Shattered Hand Assasins
(@SGGUID+68, @CGUID+393, -1), -- Shattered Hand Assasins
(@SGGUID+68, @CGUID+394, -1), -- Shattered Hand Assasins
(@SGGUID+68, @CGUID+395, -1), -- Shattered Hand Assasins
(@SGGUID+68, @CGUID+396, -1), -- Shattered Hand Assasins
-- Patrol before endboss
(@SGGUID+69, @CGUID+397, 0), -- Shattered Hand Houndmaster
(@SGGUID+69, @CGUID+398, 1), -- Rabid Warhound
(@SGGUID+69, @CGUID+399, 2), -- Rabid Warhound
-- Last group before endboss
(@SGGUID+70, @CGUID+400, -1), -- Shattered Hand Champion
(@SGGUID+70, @CGUID+401, -1); -- Shattered Hand Champion

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+61, 4, 3, 0, @SGGUID+61, 2, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 002'),
(@SGGUID+65, 4, 3, 0, @SGGUID+65, 2, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 002'),
(@SGGUID+69, 4, 3, 0, @SGGUID+69, 2, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Warbringers Ring Patrol 001');


INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+61, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 001'),
(@SGGUID+65, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Sparing Hall Patrol 002'),
(@SGGUID+69, 'Shattered Halls - Shattered Hand Houndmaster (1) | Rabid Warhound (2) | Warbringers Ring Patrol 001');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+61,1,506.59488,163.44115,1.9319266,100,0,0),
(@SGGUID+61,2,501.43848,152.39388,1.929595,100,0,0),
(@SGGUID+61,3,508.708,141.22534,1.9262449,100,0,0),
(@SGGUID+61,4,522.292,141.31062,1.9339751,100,0,0),
(@SGGUID+61,5,532.2282,148.97649,1.9294553,100,0,0),
(@SGGUID+61,6,525.00385,170.1712,1.9321325,100,0,0),
(@SGGUID+61,7,519.4442,175.25598,1.9428399,100,0,0),
(@SGGUID+61,8,519.6646,196.366,1.9364898,100,0,0),
(@SGGUID+61,9,520.9925,208.3555,1.863179,100,0,0),
(@SGGUID+61,10,513.1584,221.61227,1.9342216,100,0,0),
(@SGGUID+61,11,521.30457,237.0814,1.9299809,100,0,0),
(@SGGUID+61,12,517.14276,249.81818,1.9339325,100,0,0),
(@SGGUID+61,13,506.72614,240.23392,1.93266,100,0,0),
(@SGGUID+61,14,510.5138,229.18658,1.9293674,100,0,0),
(@SGGUID+61,15,519.78186,208.59735,1.8669927,100,0,0),
(@SGGUID+61,16,518.95435,196.91217,1.9373496,100,0,0),
(@SGGUID+61,17,518.4774,175.9383,1.9424627,100,0,0),
(@SGGUID+65,1,437.0384,61.912605,1.9237044,100,0,0),
(@SGGUID+65,2,430.70596,58.27038,2.0049384,100,0,0),
(@SGGUID+65,3,436.75922,53.82539,1.925432,100,0,0),
(@SGGUID+65,4,450.10388,57.169678,1.9267677,100,0,0),
(@SGGUID+65,5,459.8768,57.486713,1.9384289,100,0,0),
(@SGGUID+65,6,484.6614,57.491474,1.9347191,100,0,0),
(@SGGUID+65,7,499.84537,57.432102,1.9408772,100,0,0),
(@SGGUID+65,8,512.16394,59.819527,1.9372166,100,0,0),
(@SGGUID+65,9,518.48566,74.102104,1.9048867,100,0,0),
(@SGGUID+65,10,518.7643,84.54578,1.933246,100,0,0),
(@SGGUID+65,11,522.1816,93.50193,1.9172946,100,0,0),
(@SGGUID+65,12,522.32776,103.9952,1.9267256,100,0,0),
(@SGGUID+65,13,518.59015,109.2831,1.9350262,100,0,0),
(@SGGUID+65,14,514.31537,105.71796,1.929482,100,0,0),
(@SGGUID+65,15,518.8863,86.14224,1.9351246,100,0,0),
(@SGGUID+65,16,517.80896,74.34265,1.9050009,100,0,0),
(@SGGUID+65,17,511.79678,60.39599,1.9369621,100,0,0),
(@SGGUID+65,18,500.0572,58.475758,1.9402512,100,0,0),
(@SGGUID+65,19,485.16956,58.154434,1.9346583,100,0,0),
(@SGGUID+65,20,459.37115,58.70152,1.9383427,100,0,0),
(@SGGUID+65,21,450.82022,58.783375,1.9266548,100,0,0),
(@SGGUID+69,1,373.44144,-51.05542,1.9361445,100,0,0),
(@SGGUID+69,2,371.50775,-70.71428,1.9203951,100,0,0),
(@SGGUID+69,3,359.4892,-82.532364,1.9185716,100,0,0),
(@SGGUID+69,4,343.14014,-84.82301,1.9350435,100,0,0),
(@SGGUID+69,5,310.18472,-82.78763,1.9368917,100,0,0),
(@SGGUID+69,6,298.0218,-79.64861,1.9367486,100,0,0),
(@SGGUID+69,7,287.82153,-84.24349,1.9618785,100,0,0),
(@SGGUID+69,8,291.21362,-89.2625,1.9129633,100,0,0),
(@SGGUID+69,9,306.8405,-87.17954,1.9372501,100,0,0),
(@SGGUID+69,10,343.15958,-86.27303,1.9356986,100,0,0),
(@SGGUID+69,11,360.74103,-83.51457,1.9183288,100,0,0),
(@SGGUID+69,12,373.4364,-71.93072,1.920069,100,0,0),
(@SGGUID+69,13,375.80185,-50.9922,1.9360272,100,0,0),
(@SGGUID+69,14,378.60367,-31.814674,1.9073824,100,0,0),
(@SGGUID+69,15,374.94492,-20.095032,1.9111354,100,0,0),
(@SGGUID+69,16,369.20135,-20.56937,1.9118699,100,0,0),
(@SGGUID+69,17,369.4805,-35.282803,1.9122882,100,0,0);

-- =======
-- POOLING
-- =======

INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(@PGUID+3, @PGUID+2, 0, 'Shattered Halls - Halls of Father Group 1 - Left'), -- Shattered Halls - Halls of Father Group 1 (Master)
(@PGUID+4, @PGUID+2, 0, 'Shattered Halls - Halls of Father Group 1 - Right'),
(@PGUID+6, @PGUID+5, 0, 'Shattered Halls - Halls of Father Group 2 - Left'), -- Shattered Halls - Halls of Father Group 2 (Master)
(@PGUID+7, @PGUID+5, 0, 'Shattered Halls - Halls of Father Group 2 - Right'),
(@PGUID+9, @PGUID+8, 0, 'Shattered Halls - Halls of Father Group 3 - Left'), -- Shattered Halls - Halls of Father Group 3 (Master)
(@PGUID+10, @PGUID+8, 0, 'Shattered Halls - Halls of Father Group 3 - Right'),
(@PGUID+12, @PGUID+11, 0, 'Shattered Halls - Halls of Father Group 4 - Left'), -- Shattered Halls - Halls of Father Group 4 (Master)
(@PGUID+13, @PGUID+11, 0, 'Shattered Halls - Halls of Father Group 4 - Right');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+2, 2, 'Shattered Halls - Halls of Father Group 1 (Master)'),
(@PGUID+3, 1, 'Shattered Halls - Halls of Father Group 1 - Left'),
(@PGUID+4, 1, 'Shattered Halls - Halls of Father Group 1 - Right'),
(@PGUID+5, 2, 'Shattered Halls - Halls of Father Group 2 (Master)'),
(@PGUID+6, 1, 'Shattered Halls - Halls of Father Group 2 - Left'),
(@PGUID+7, 1, 'Shattered Halls - Halls of Father Group 2 - Right'),
(@PGUID+8, 2, 'Shattered Halls - Halls of Father Group 3 (Master)'),
(@PGUID+9, 1, 'Shattered Halls - Halls of Father Group 3 - Left'),
(@PGUID+10, 1, 'Shattered Halls - Halls of Father Group 3 - Right'),
(@PGUID+11, 2, 'Shattered Halls - Halls of Father Group 4 (Master)'),
(@PGUID+12, 1, 'Shattered Halls - Halls of Father Group 4 - Left'),
(@PGUID+13, 1, 'Shattered Halls - Halls of Father Group 4 - Right');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+309, @PGUID+3, 0, 'Shattered Halls - creature_spawn_entry - Group 1 - Left'), -- Shattered Halls - Halls of Father Group 1 - Left
(@CGUID+310, @PGUID+3, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 1 - Left'),
(@CGUID+311, @PGUID+3, 0, 'Shattered Halls - creature_spawn_entry - Group 1 - Left'),
(@CGUID+312, @PGUID+4, 0, 'Shattered Halls - creature_spawn_entry - Group 1 - Right'), -- Shattered Halls - Halls of Father Group 1 - Right
(@CGUID+313, @PGUID+4, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 1 - Right'),
(@CGUID+314, @PGUID+4, 0, 'Shattered Halls - creature_spawn_entry - Group 1 - Right'),
(@CGUID+315, @PGUID+6, 0, 'Shattered Halls - creature_spawn_entry - Group 2 - Left'), -- Shattered Halls - Halls of Father Group 2 - Left
(@CGUID+316, @PGUID+6, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 2 - Left'),
(@CGUID+317, @PGUID+6, 0, 'Shattered Halls - creature_spawn_entry - Group 2 - Left'),
(@CGUID+318, @PGUID+7, 0, 'Shattered Halls - creature_spawn_entry - Group 2 - Right'), -- Shattered Halls - Halls of Father Group 2 - Right
(@CGUID+319, @PGUID+7, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 2 - Right'),
(@CGUID+320, @PGUID+7, 0, 'Shattered Halls - creature_spawn_entry - Group 2 - Right'),
(@CGUID+321, @PGUID+9, 0, 'Shattered Halls - creature_spawn_entry - Group 3 - Left'), -- Shattered Halls - Halls of Father Group 3 - Left
(@CGUID+322, @PGUID+9, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 3 - Left'),
(@CGUID+323, @PGUID+9, 0, 'Shattered Halls - creature_spawn_entry - Group 3 - Left'),
(@CGUID+324, @PGUID+10, 0, 'Shattered Halls - creature_spawn_entry - Group 3 - Right'), -- Shattered Halls - Halls of Father Group 3 - Right
(@CGUID+325, @PGUID+10, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 3 - Right'),
(@CGUID+326, @PGUID+10, 0, 'Shattered Halls - creature_spawn_entry - Group 3 - Right'),
(@CGUID+327, @PGUID+12, 0, 'Shattered Halls - creature_spawn_entry - Group 4 - Left'), -- Shattered Halls - Halls of Father Group 4 - Left
(@CGUID+328, @PGUID+12, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 4 - Left'),
(@CGUID+329, @PGUID+12, 0, 'Shattered Halls - creature_spawn_entry - Group 4 - Left'),
(@CGUID+330, @PGUID+13, 0, 'Shattered Halls - creature_spawn_entry - Group 4 - Right'), -- Shattered Halls - Halls of Father Group 4 - Right
(@CGUID+331, @PGUID+13, 0, 'Shattered Halls - Shattered Hand Heathen (17420) - Group 4 - Right'),
(@CGUID+332, @PGUID+13, 0, 'Shattered Halls - creature_spawn_entry - Group 4 - Right');

-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+82, 0, 22800, 0, 0, 0, 2); -- Grand Warlock Nethekurse (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_relay WHERE id IN (10113,10114,10115,10116,10117,10118,10119,10120,10198,10199);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10113,0,0,0,10051,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - random yell'),
(10113,0,0,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event A'),

(10114,0,0,31,17420,6,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - Search for Heaven'),
(10114,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - pause waypoints'),
(10114,3000,0,37,0,0,2,17420,20,2,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - move to Heathen'),
(10114,4000,0,36,0,0,0,17420,20,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - face Legionnaire'),
(10114,4000,0,36,0,0,0,17420,5,1,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - face Heathen'),
(10114,5000,0,1,66,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotSalute'),
(10114,7000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotSalute'),
(10114,9000,0,1,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotTalk'),
(10114,10000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotExclamation'),
(10114,11000,0,36,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - reset orientation'),
(10114,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - unpause waypoints'),

(10198,0,0,31,16523,6,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - Search for Savage'),
(10198,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - pause waypoints'),
(10198,3000,0,37,0,0,2,16523,20,2,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - move to Savage'),
(10198,4000,0,36,0,0,0,16523,20,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - face Legionnaire'),
(10198,4000,0,36,0,0,0,16523,5,1,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - face Savage'),
(10198,5000,0,1,66,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - OneShotSalute'),
(10198,7000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotSalute'),
(10198,9000,0,1,1,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - OneShotTalk'),
(10198,10000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotExclamation'),
(10198,11000,0,36,1,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - reset orientation'),
(10198,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - unpause waypoints'),

(10115,5000,0,45,0,10052,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - 50% force bow, 50% force cheer'),

(10116,0,0,31,17420,5,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - Search for Heaven'),
(10116,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - pause waypoints'),
(10116,3000,0,37,0,0,2,17420,20,2,0,0,0,0,0,0,0,0,'Legionnaire - move to Heathen'),
(10116,5000,0,36,0,0,0,17420,3,0,0,0,0,0,0,0,0,0,'Heathen - face Legionnaire'),
(10116,5000,0,36,0,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - face Legionnaire'),
(10116,5000,0,36,0,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - face Legionnaire'),
(10116,5000,0,36,0,0,0,16593,3,0,0,0,0,0,0,0,0,0,'Brawler - face Legionnaire'),
(10116,7000,0,36,0,0,0,17420,3,1,0,0,0,0,0,0,0,0,'Legionnaire - face Heathen'),
(10116,8000,0,45,0,10053,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - 50% force kneel & laugh, 50% force stand & salute'),
(10116,14000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - unpause waypoints'),

(10199,0,0,31,16523,5,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - Search for Savage'),
(10199,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - pause waypoints'),
(10199,3000,0,37,0,0,2,16523,20,2,0,0,0,0,0,0,0,0,'Legionnaire - move to Savage'),
(10199,5000,0,36,0,0,0,16523,3,0,0,0,0,0,0,0,0,0,'Savage - face Legionnaire'),
(10199,5000,0,36,0,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - face Legionnaire'),
(10199,5000,0,36,0,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - face Legionnaire'),
(10199,5000,0,36,0,0,0,16593,3,0,0,0,0,0,0,0,0,0,'Brawler - face Legionnaire'),
(10199,7000,0,36,0,0,0,17420,3,1,0,0,0,0,0,0,0,0,'Legionnaire - face Heathen'),
(10199,8000,0,45,0,10053,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - 50% force kneel & laugh, 50% force stand & salute'),
(10199,14000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - unpause waypoints'),

(10117,0,0,31,17420,5,0,0,0,0,0,0,0,0,0,0,0,0,'Terminate if Heathen not in range'),
(10117,0,1,28,0,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Heathen - Stand'),
(10117,0,1,28,0,0,0,17694,5,0,0,0,0,0,0,0,0,0,'Darkcaster - Stand'),
(10117,0,1,28,0,0,0,16594,5,0,0,0,0,0,0,0,0,0,'Acolyte - Stand'),
(10117,0,1,28,0,0,0,16593,5,0,0,0,0,0,0,0,0,0,'Brawler - Stand'),
(10117,2000,1,28,8,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Heathen - Kneel'),
(10117,2000,1,28,8,0,0,17694,5,0,0,0,0,0,0,0,0,0,'Darkcaster - Kneel'),
(10117,2000,1,28,8,0,0,16594,5,0,0,0,0,0,0,0,0,0,'Acolyte - Kneel'),
(10117,2000,1,28,8,0,0,16593,5,0,0,0,0,0,0,0,0,0,'Brawler - Kneel'),
(10117,2000,0,0,0,0,0,0,0,0,12687,0,0,0,0,0,0,0,'Legionnaire - say'),
(10117,5000,0,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - Laugh'),

(10118,0,0,31,17420,5,0,0,0,0,0,0,0,0,0,0,0,0,'Terminate if Heathen not in range'),
(10118,0,1,28,0,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Heathen - Stand'),
(10118,0,1,28,0,0,0,17694,5,0,0,0,0,0,0,0,0,0,'Darkcaster - Stand'),
(10118,0,1,28,0,0,0,16594,5,0,0,0,0,0,0,0,0,0,'Acolyte - Stand'),
(10118,0,1,28,0,0,0,16593,5,0,0,0,0,0,0,0,0,0,'Brawler - Stand'),
(10118,2000,0,1,113,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Heathen - Salute'),
(10118,2000,0,1,113,0,0,17694,5,0,0,0,0,0,0,0,0,0,'Darkcaster - Salute'),
(10118,2000,0,1,113,0,0,16594,5,0,0,0,0,0,0,0,0,0,'Acolyte - Salute'),
(10118,2000,0,1,113,0,0,16593,5,0,0,0,0,0,0,0,0,0,'Brawler - Salute'),
(10118,4000,0,0,0,0,0,0,0,0,12685,12686,0,0,0,0,0,0,'Legionnaire - say'),

(10119,0,0,0,0,0,0,0,0,0,12684,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - say'),
(10119,0,0,35,7,40,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event C'),

(10120,0,0,0,0,0,0,0,0,0,12683,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - say'),
(10120,0,0,35,8,40,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event D');

DELETE FROM dbscript_random_templates WHERE id IN (10050,10051,10052,10053,10054);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10050, 1, 10113, 10, 'Shattered Hand Legionnaire - yell'),
(10050, 1, 10114, 10, 'Shattered Hand Legionnaire - approach ally Heathen'),
(10050, 1, 10198, 10, 'Shattered Hand Legionnaire - approach ally Savage'),
(10050, 1, 0, 70, 'Shattered Hand Legionnaire - nothing'),

(10051, 0, 16350, 0, 'Shattered Hand Legionnaire - random yell 1'),
(10051, 0, 17461, 0, 'Shattered Hand Legionnaire - random yell 2'),
(10051, 0, 16349, 0, 'Shattered Hand Legionnaire - random yell 3'),
(10051, 0, 16347, 0, 'Shattered Hand Legionnaire - random yell 4'),
(10051, 0, 16346, 0, 'Shattered Hand Legionnaire - random yell 5'),

(10052, 1, 10119, 0, 'Shattered Hand Legionnaire - force bow'),
(10052, 1, 10120, 0, 'Shattered Hand Legionnaire - force cheer'),

(10053, 1, 10117, 0, 'Shattered Hand Legionnaire - force kneel & laugh'),
(10053, 1, 10118, 0, 'Shattered Hand Legionnaire - force stand & salute'),

(10054, 1, 10115, 10, 'Shattered Hand Legionnaire - force bow/cheer'),
(10054, 1, 10116, 10, 'Shattered Hand Legionnaire - talk event'),
(10054, 1, 10199, 10, 'Shattered Hand Legionnaire - talk event'),
(10054, 1, 0, 70, 'Shattered Hand Legionnaire - nothing');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1670001,1670002,1742001);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1670001, 0, 45, 0, 10050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Legionnaire - 10% chance to yell, 20% chance to talk'),
(1670002, 0, 45, 0, 10054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Legionnaire - 10% force bow/cheer, 10% talk event'),
(1742001, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Halls - Waypoint Pause'),
(1742001, 1000, 2, 169, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Halls - EMOTE_STATE_READY1H');

-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES


