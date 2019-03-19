-- Add Food Crate (3719) / Water Barrel (3658) Pooling for Starter Zones
DELETE FROM `pool_template` WHERE `entry` IN (16449,16450); -- "Elwynn Forest - Food Crate Pool"
DELETE FROM `pool_template` WHERE `entry` BETWEEN 21400 AND 21800;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(21400, 8, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21401, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #1'),
(21402, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #2'),
(21403, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #3'),
(21404, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #4'),
(21405, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #5'),
(21406, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #6'),
(21407, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #7'),
(21408, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #8'),
(21409, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #9'),
(21410, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #10'),
(21411, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #11'),
(21412, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #12'),
(21413, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #13'),
(21414, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #14'),
(21415, 1, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #15'),

(21450, 14, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21451, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #1'),
(21452, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #2'),
(21453, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #3'),
(21454, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #4'),
(21455, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #5'),
(21456, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #6'),
(21457, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #7'),
(21458, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #8'),
(21459, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #9'),
(21460, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #10'),
(21461, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #11'),
(21462, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #12'),
(21463, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #13'),
(21464, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #14'),
(21465, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #15'),
(21466, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #16'),
(21467, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #17'),
(21468, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #18'),
(21469, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #19'),
(21470, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #20'),
(21471, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #21'),
(21472, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #22'),
(21473, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #23'),
(21474, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #24'),
(21475, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #25'),
(21476, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #26'),
(21477, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #27'),
(21478, 1, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #28'),

(21500, 6, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21501, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #1'),
(21502, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #2'),
(21503, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #3'),
(21504, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #4'),
(21505, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #5'),
(21506, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #6'),
(21507, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #7'),
(21508, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #8'),
(21509, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #9'),
(21510, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #10'),
(21511, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #11'),
(21512, 1, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #12'),

(21550, 10, 'Durotar - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21551, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #1'),
(21552, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #2'),
(21553, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #3'),
(21554, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #4'),
(21555, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #5'),
(21556, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #6'),
(21557, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #7'),
(21558, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #8'),
(21559, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #9'),
(21560, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #10'),
(21561, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #11'),
(21562, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #12'),
(21563, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #13'),
(21564, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #14'),
(21565, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #15'),
(21566, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #16'),
(21567, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #17'),
(21568, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #18'),
(21569, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #19'),
(21570, 1, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #20'),

(21600, 8, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21601, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #1'),
(21602, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #2'),
(21603, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #3'),
(21604, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #4'),
(21605, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #5'),
(21606, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #6'),
(21607, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #7'),
(21608, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #8'),
(21609, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #9'),
(21610, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #10'),
(21611, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #11'),
(21612, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #12'),
(21613, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #13'),
(21614, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #14'),
(21615, 1, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #15'),

(21650, 4, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21651, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #1'),
(21652, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #2'),
(21653, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #3'),
(21654, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #4'),
(21655, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #5'),
(21656, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #6'),
(21657, 1, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #7'),

(21700, 8, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21701, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #1'),
(21702, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #2'),
(21703, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #3'),
(21704, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #4'),
(21705, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #5'),
(21706, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #6'),
(21707, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #7'),
(21708, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #8'),
(21709, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #9'),
(21710, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #10'),
(21711, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #11'),
(21712, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #12'),
(21713, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #13'),
(21714, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #14'),
(21715, 1, 'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #15'),

(21750, 8, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - Master Pool'),
(21751, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #1'),
(21752, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #2'),
(21753, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #3'),
(21754, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #4'),
(21755, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #5'),
(21756, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #6'),
(21757, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #7'),
(21758, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #8'),
(21759, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #9'),
(21760, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #10'),
(21761, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #11'),
(21762, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #12'),
(21763, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #13'),
(21764, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #14'),
(21765, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #15'),
(21766, 1, 'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #16');

DELETE FROM `pool_pool` WHERE `mother_pool` IN (21400,21450,21500,21550,21600,21650,21700,21750);
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(21401,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #1'),
(21402,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #2'),
(21403,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #3'),
(21404,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #4'),
(21405,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #5'),
(21406,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #6'),
(21407,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #7'),
(21408,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #8'),
(21409,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #9'),
(21410,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #10'),
(21411,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #11'),
(21412,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #12'),
(21413,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #13'),
(21414,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #14'),
(21415,21400,0,'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #15'),

(21451,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #1'),
(21452,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #2'),
(21453,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #3'),
(21454,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #4'),
(21455,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #5'),
(21456,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #6'),
(21457,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #7'),
(21458,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #8'),
(21459,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #9'),
(21460,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #10'),
(21461,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #11'),
(21462,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #12'),
(21463,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #13'),
(21464,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #14'),
(21465,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #15'),
(21466,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #16'),
(21467,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #17'),
(21468,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #18'),
(21469,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #19'),
(21470,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #20'),
(21471,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #21'),
(21472,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #22'),
(21473,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #23'),
(21474,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #24'),
(21475,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #25'),
(21476,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #26'),
(21477,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #27'),
(21478,21450,0,'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #28'),

(21501,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #1'),
(21502,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #2'),
(21503,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #3'),
(21504,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #4'),
(21505,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #5'),
(21506,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #6'),
(21507,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #7'),
(21508,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #8'),
(21509,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #9'),
(21510,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #10'),
(21511,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #11'),
(21512,21500,0,'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #12'),

(21551,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #1'),
(21552,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #2'),
(21553,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #3'),
(21554,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #4'),
(21555,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #5'),
(21556,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #6'),
(21557,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #7'),
(21558,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #8'),
(21559,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #9'),
(21560,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #10'),
(21561,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #11'),
(21562,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #12'),
(21563,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #13'),
(21564,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #14'),
(21565,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #15'),
(21566,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #16'),
(21567,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #17'),
(21568,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #18'),
(21569,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #19'),
(21570,21550,0,'Durotar - Food Crate (3719) / Water Barrel (3658) - #20'),

(21601,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #1'),
(21602,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #2'),
(21603,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #3'),
(21604,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #4'),
(21605,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #5'),
(21606,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #6'),
(21607,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #7'),
(21608,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #8'),
(21609,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #9'),
(21610,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #10'),
(21611,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #11'),
(21612,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #12'),
(21613,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #13'),
(21614,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #14'),
(21615,21600,0,'Mulgore - Food Crate (3719) / Water Barrel (3658) - #15'),

(21651,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #1'),
(21652,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #2'),
(21653,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #3'),
(21654,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #4'),
(21655,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #5'),
(21656,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #6'),
(21657,21650,0,'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #7'),

(21701,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #1'),
(21702,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #2'),
(21703,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #3'),
(21704,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #4'),
(21705,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #5'),
(21706,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #6'),
(21707,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #7'),
(21708,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #8'),
(21709,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #9'),
(21710,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #10'),
(21711,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #11'),
(21712,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #12'),
(21713,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #13'),
(21714,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #14'),
(21715,21700,0,'Azuremyst Isle - Food Crate (3719) / Water Barrel (3658) - #15'),

(21751,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #1'),
(21752,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #2'),
(21753,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #3'),
(21754,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #4'),
(21755,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #5'),
(21756,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #6'),
(21757,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #7'),
(21758,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #8'),
(21759,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #9'),
(21760,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #10'),
(21761,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #11'),
(21762,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #12'),
(21763,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #13'),
(21764,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #14'),
(21765,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #15'),
(21766,21750,0,'Eversong Woods - Food Crate (3719) / Water Barrel (3658) - #16');

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (16449,16450); -- ""Elwynn Forest" - Food Crate Pool"
DELETE FROM `pool_gameobject` WHERE pool_entry BETWEEN 21400 AND 21800;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
-- Dun Morogh
(10677, 21401, 0, 'Dun Morogh - Food Crate (3719) - #1'),(1462, 21401, 0, 'Dun Morogh - Water Barrel (3658) - #1'),
(97119, 21402, 0, 'Dun Morogh - Food Crate (3719) - #2'),(10847, 21402, 0, 'Dun Morogh - Water Barrel (3658) - #2'),
(97120, 21403, 0, 'Dun Morogh - Food Crate (3719) - #3'),(10838, 21403, 0, 'Dun Morogh - Water Barrel (3658) - #3'),
(97121, 21404, 0, 'Dun Morogh - Food Crate (3719) - #4'),(31414, 21404, 0, 'Dun Morogh - Water Barrel (3658) - #4'),
(29626, 21405, 0, 'Dun Morogh - Food Crate (3719) - #5'),(97122, 21405, 0, 'Dun Morogh - Water Barrel (3658) - #5'),
(10063, 21406, 0, 'Dun Morogh - Food Crate (3719) - #6'),(97123, 21406, 0, 'Dun Morogh - Water Barrel (3658) - #6'),
(97124, 21407, 0, 'Dun Morogh - Food Crate (3719) - #7'),(10734, 21407, 0, 'Dun Morogh - Water Barrel (3658) - #7'),
(29306, 21408, 0, 'Dun Morogh - Food Crate (3719) - #8'),(29609, 21408, 0, 'Dun Morogh - Water Barrel (3658) - #8'),
(97125, 21409, 0, 'Dun Morogh - Food Crate (3719) - #9'),(29317, 21409, 0, 'Dun Morogh - Water Barrel (3658) - #9'),
(29640, 21410, 0, 'Dun Morogh - Food Crate (3719) - #10'),(97126, 21410, 0, 'Dun Morogh - Water Barrel (3658) - #10'),
(83035, 21411, 0, 'Dun Morogh - Food Crate (3719) - #11'),(83034, 21411, 0, 'Dun Morogh - Water Barrel (3658) - #11'),
(97129, 21412, 0, 'Dun Morogh - Food Crate (3719) - #12'),(10946, 21412, 0, 'Dun Morogh - Water Barrel (3658) - #12'),
(9467, 21413, 0, 'Dun Morogh - Food Crate (3719) - #13'),(97130, 21413, 0, 'Dun Morogh - Water Barrel (3658) - #13'),
(97131, 21414, 0, 'Dun Morogh - Food Crate (3719) - #14'),(32369, 21414, 0, 'Dun Morogh - Water Barrel (3658) - #14'),
(97132, 21415, 0, 'Dun Morogh - Food Crate (3719) - #15'),(10173, 21415, 0, 'Dun Morogh - Water Barrel (3658) - #15'),

-- Elwynn Forest
(97095, 21451, 0, 'Elwynn Forest - Food Crate (3719) - #1'),(26862, 21451, 0, 'Elwynn Forest - Water Barrel (3658) - #1'),
(97096, 21452, 0, 'Elwynn Forest - Food Crate (3719) - #2'),(26888, 21452, 0, 'Elwynn Forest - Water Barrel (3658) - #2'),
(34031, 21453, 0, 'Elwynn Forest - Food Crate (3719) - #3'),(97097, 21453, 0, 'Elwynn Forest - Water Barrel (3658) - #3'),
(34822, 21454, 0, 'Elwynn Forest - Food Crate (3719) - #4'),(97098, 21454, 0, 'Elwynn Forest - Water Barrel (3658) - #4'),
(97099, 21455, 0, 'Elwynn Forest - Food Crate (3719) - #5'),(33491, 21455, 0, 'Elwynn Forest - Water Barrel (3658) - #5'),
(97100, 21456, 0, 'Elwynn Forest - Food Crate (3719) - #6'),(30971, 21456, 0, 'Elwynn Forest - Water Barrel (3658) - #6'),
(30685, 21457, 0, 'Elwynn Forest - Food Crate (3719) - #7'),(97101, 21457, 0, 'Elwynn Forest - Water Barrel (3658) - #7'),
(26898, 21458, 0, 'Elwynn Forest - Food Crate (3719) - #8'),(97102, 21458, 0, 'Elwynn Forest - Water Barrel (3658) - #8'),
(26877, 21459, 0, 'Elwynn Forest - Food Crate (3719) - #9'),(97103, 21459, 0, 'Elwynn Forest - Water Barrel (3658) - #9'),
(97104, 21460, 0, 'Elwynn Forest - Food Crate (3719) - #10'),(30846, 21460, 0, 'Elwynn Forest - Water Barrel (3658) - #10'),
(26851, 21461, 0, 'Elwynn Forest - Food Crate (3719) - #11'),(97105, 21461, 0, 'Elwynn Forest - Water Barrel (3658) - #11'),
(27052, 21462, 0, 'Elwynn Forest - Food Crate (3719) - #12'),(97106, 21462, 0, 'Elwynn Forest - Water Barrel (3658) - #12'),
(30758, 21463, 0, 'Elwynn Forest - Food Crate (3719) - #13'),(29275, 21463, 0, 'Elwynn Forest - Water Barrel (3658) - #13'),
(32752, 21464, 0, 'Elwynn Forest - Food Crate (3719) - #14'),(97107, 21464, 0, 'Elwynn Forest - Water Barrel (3658) - #14'),
(97108, 21465, 0, 'Elwynn Forest - Food Crate (3719) - #15'),(32825, 21465, 0, 'Elwynn Forest - Water Barrel (3658) - #15'),
(97109, 21466, 0, 'Elwynn Forest - Food Crate (3719) - #16'),(31104, 21466, 0, 'Elwynn Forest - Water Barrel (3658) - #16'),
(26962, 21467, 0, 'Elwynn Forest - Food Crate (3719) - #17'),(97110, 21467, 0, 'Elwynn Forest - Water Barrel (3658) - #17'),
(97111, 21468, 0, 'Elwynn Forest - Food Crate (3719) - #18'),(27084, 21468, 0, 'Elwynn Forest - Water Barrel (3658) - #18'),
(32754, 21469, 0, 'Elwynn Forest - Food Crate (3719) - #19'),(32313, 21469, 0, 'Elwynn Forest - Water Barrel (3658) - #19'),
(30839, 21470, 0, 'Elwynn Forest - Food Crate (3719) - #20'),(30677, 21470, 0, 'Elwynn Forest - Water Barrel (3658) - #20'),
(29578, 21471, 0, 'Elwynn Forest - Food Crate (3719) - #21'),(97112, 21471, 0, 'Elwynn Forest - Water Barrel (3658) - #21'),
(97113, 21472, 0, 'Elwynn Forest - Food Crate (3719) - #22'),(26983, 21472, 0, 'Elwynn Forest - Water Barrel (3658) - #22'),
(97114, 21473, 0, 'Elwynn Forest - Food Crate (3719) - #23'),(26782, 21473, 0, 'Elwynn Forest - Water Barrel (3658) - #23'),
(97115, 21474, 0, 'Elwynn Forest - Food Crate (3719) - #24'),(30748, 21474, 0, 'Elwynn Forest - Water Barrel (3658) - #24'),
(30687, 21475, 0, 'Elwynn Forest - Food Crate (3719) - #25'),(29276, 21475, 0, 'Elwynn Forest - Water Barrel (3658) - #25'),
(30751, 21476, 0, 'Elwynn Forest - Food Crate (3719) - #26'),(97116, 21476, 0, 'Elwynn Forest - Water Barrel (3658) - #26'),
(26994, 21477, 0, 'Elwynn Forest - Food Crate (3719) - #27'),(97117, 21477, 0, 'Elwynn Forest - Water Barrel (3658) - #27'),
(26998, 21478, 0, 'Elwynn Forest - Food Crate (3719) - #28'),(97118, 21478, 0, 'Elwynn Forest - Water Barrel (3658) - #28'),

-- Teldrassil
(97193, 21501, 0, 'Teldrassil - Food Crate (3719) - #1'),(49612, 21501, 0, 'Teldrassil - Water Barrel (3658) - #1'),
(97195, 21502, 0, 'Teldrassil - Food Crate (3719) - #2'),(49611, 21502, 0, 'Teldrassil - Water Barrel (3658) - #2'),
(97201, 21503, 0, 'Teldrassil - Food Crate (3719) - #3'),(49613, 21503, 0, 'Teldrassil - Water Barrel (3658) - #3'),
(49734, 21504, 0, 'Teldrassil - Food Crate (3719) - #4'),(97203, 21504, 0, 'Teldrassil - Water Barrel (3658) - #4'),
(49733, 21505, 0, 'Teldrassil - Food Crate (3719) - #5'),(97204, 21505, 0, 'Teldrassil - Water Barrel (3658) - #5'),
(97205, 21506, 0, 'Teldrassil - Food Crate (3719) - #6'),(49614, 21506, 0, 'Teldrassil - Water Barrel (3658) - #6'),
(97206, 21507, 0, 'Teldrassil - Food Crate (3719) - #7'),(49615, 21507, 0, 'Teldrassil - Water Barrel (3658) - #7'),
(49736, 21508, 0, 'Teldrassil - Food Crate (3719) - #8'),(97207, 21508, 0, 'Teldrassil - Water Barrel (3658) - #8'),
(49737, 21509, 0, 'Teldrassil - Food Crate (3719) - #9'),(97208, 21509, 0, 'Teldrassil - Water Barrel (3658) - #9'),
(97209, 21510, 0, 'Teldrassil - Food Crate (3719) - #10'),(49609, 21510, 0, 'Teldrassil - Water Barrel (3658) - #10'),
(49735, 21511, 0, 'Teldrassil - Food Crate (3719) - #11'),(97210, 21511, 0, 'Teldrassil - Water Barrel (3658) - #11'),
(97211, 21512, 0, 'Teldrassil - Food Crate (3719) - #12'),(49610, 21512, 0, 'Teldrassil - Water Barrel (3658) - #12'),

-- Durotar
(97155, 21551, 0, 'Durotar - Food Crate (3719) - #1'),(12498, 21551, 0, 'Durotar - Water Barrel (3658) - #1'),
(97160, 21552, 0, 'Durotar - Food Crate (3719) - #2'),(12550, 21552, 0, 'Durotar - Water Barrel (3658) - #2'),
(97161, 21553, 0, 'Durotar - Food Crate (3719) - #3'),(12393, 21553, 0, 'Durotar - Water Barrel (3658) - #3'),
(97162, 21554, 0, 'Durotar - Food Crate (3719) - #4'),(12391, 21554, 0, 'Durotar - Water Barrel (3658) - #4'),
(97164, 21555, 0, 'Durotar - Food Crate (3719) - #5'),(12394, 21555, 0, 'Durotar - Water Barrel (3658) - #5'),
(12553, 21556, 0, 'Durotar - Food Crate (3719) - #6'),(97165, 21556, 0, 'Durotar - Water Barrel (3658) - #6'),
(12501, 21557, 0, 'Durotar - Food Crate (3719) - #7'),(97166, 21557, 0, 'Durotar - Water Barrel (3658) - #7'),
(83030, 21558, 0, 'Durotar - Food Crate (3719) - #8'),(83029, 21558, 0, 'Durotar - Water Barrel (3658) - #8'),
(83032, 21559, 0, 'Durotar - Food Crate (3719) - #9'),(83031, 21559, 0, 'Durotar - Water Barrel (3658) - #9'),
(12350, 21560, 0, 'Durotar - Food Crate (3719) - #10'),(97167, 21560, 0, 'Durotar - Water Barrel (3658) - #10'),
(97168, 21561, 0, 'Durotar - Food Crate (3719) - #11'),(12351, 21561, 0, 'Durotar - Water Barrel (3658) - #11'),
(12346, 21562, 0, 'Durotar - Food Crate (3719) - #12'),(83033, 21562, 0, 'Durotar - Water Barrel (3658) - #12'),
(97169, 21563, 0, 'Durotar - Food Crate (3719) - #13'),(12551, 21563, 0, 'Durotar - Water Barrel (3658) - #13'),
(97170, 21564, 0, 'Durotar - Food Crate (3719) - #14'),(12397, 21564, 0, 'Durotar - Water Barrel (3658) - #14'),
(12602, 21565, 0, 'Durotar - Food Crate (3719) - #15'),(97171, 21565, 0, 'Durotar - Water Barrel (3658) - #15'),
(97172, 21566, 0, 'Durotar - Food Crate (3719) - #16'),(12395, 21566, 0, 'Durotar - Water Barrel (3658) - #16'),
(12502, 21567, 0, 'Durotar - Food Crate (3719) - #17'),(97173, 21567, 0, 'Durotar - Water Barrel (3658) - #17'),
(12549, 21568, 0, 'Durotar - Food Crate (3719) - #18'),(97174, 21568, 0, 'Durotar - Water Barrel (3658) - #18'),
(12505, 21569, 0, 'Durotar - Food Crate (3719) - #19'),(97175, 21569, 0, 'Durotar - Water Barrel (3658) - #19'),
(12392, 21570, 0, 'Durotar - Food Crate (3719) - #20'),(97176, 21570, 0, 'Durotar - Water Barrel (3658) - #20'),

-- Mulgore
(20529, 21601, 0, 'Mulgore - Food Crate (3719) - #1'),(97145, 21601, 0, 'Mulgore - Water Barrel (3658) - #1'),
(97146, 21602, 0, 'Mulgore - Food Crate (3719) - #2'),(18305, 21602, 0, 'Mulgore - Water Barrel (3658) - #2'),
(20532, 21603, 0, 'Mulgore - Food Crate (3719) - #3'),(97147, 21603, 0, 'Mulgore - Water Barrel (3658) - #3'),
(97148, 21604, 0, 'Mulgore - Food Crate (3719) - #4'),(18434, 21604, 0, 'Mulgore - Water Barrel (3658) - #4'),
(20527, 21605, 0, 'Mulgore - Food Crate (3719) - #5'),(97149, 21605, 0, 'Mulgore - Water Barrel (3658) - #5'),
(20528, 21606, 0, 'Mulgore - Food Crate (3719) - #6'),(97150, 21606, 0, 'Mulgore - Water Barrel (3658) - #6'),
(20530, 21607, 0, 'Mulgore - Food Crate (3719) - #7'),(97151, 21607, 0, 'Mulgore - Water Barrel (3658) - #7'),
(97152, 21608, 0, 'Mulgore - Food Crate (3719) - #8'),(18304, 21608, 0, 'Mulgore - Water Barrel (3658) - #8'),
(20526, 21609, 0, 'Mulgore - Food Crate (3719) - #9'),(97153, 21609, 0, 'Mulgore - Water Barrel (3658) - #9'),
(20525, 21610, 0, 'Mulgore - Food Crate (3719) - #10'),(97154, 21610, 0, 'Mulgore - Water Barrel (3658) - #10'),
(97156, 21611, 0, 'Mulgore - Food Crate (3719) - #11'),(18302, 21611, 0, 'Mulgore - Water Barrel (3658) - #11'),
(97157, 21612, 0, 'Mulgore - Food Crate (3719) - #12'),(18303, 21612, 0, 'Mulgore - Water Barrel (3658) - #12'),
(97158, 21613, 0, 'Mulgore - Food Crate (3719) - #13'),(18300, 21613, 0, 'Mulgore - Water Barrel (3658) - #13'),
(97159, 21614, 0, 'Mulgore - Food Crate (3719) - #14'),(18301, 21614, 0, 'Mulgore - Water Barrel (3658) - #14'),
(20531, 21615, 0, 'Mulgore - Food Crate (3719) - #15'),(97163, 21615, 0, 'Mulgore - Water Barrel (3658) - #15'),

-- Tirisfal Glades
(97177, 21651, 0, 'Tirisfal Glades - Food Crate (3719) - #1'),(45059, 21651, 0, 'Tirisfal Glades - Water Barrel (3658) - #1'),
(97178, 21652, 0, 'Tirisfal Glades - Food Crate (3719) - #2'),(45105, 21652, 0, 'Tirisfal Glades - Water Barrel (3658) - #2'),
(97179, 21653, 0, 'Tirisfal Glades - Food Crate (3719) - #3'),(45108, 21653, 0, 'Tirisfal Glades - Water Barrel (3658) - #3'),
(97180, 21654, 0, 'Tirisfal Glades - Food Crate (3719) - #4'),(45160, 21654, 0, 'Tirisfal Glades - Water Barrel (3658) - #4'),
(97181, 21655, 0, 'Tirisfal Glades - Food Crate (3719) - #5'),(45259, 21655, 0, 'Tirisfal Glades - Water Barrel (3658) - #5'),
(97182, 21656, 0, 'Tirisfal Glades - Food Crate (3719) - #6'),(45103, 21656, 0, 'Tirisfal Glades - Water Barrel (3658) - #6'),
(97183, 21657, 0, 'Tirisfal Glades - Food Crate (3719) - #7'),(45107, 21657, 0, 'Tirisfal Glades - Water Barrel (3658) - #7'),

-- Azuremyst Isle
(12981, 21701, 0, 'Azuremyst Isle - Food Crate (3719) - #1'),(97127, 21701, 0, 'Azuremyst Isle - Water Barrel (3658) - #1'),
(97128, 21702, 0, 'Azuremyst Isle - Food Crate (3719) - #2'),(12596, 21702, 0, 'Azuremyst Isle - Water Barrel (3658) - #2'),
(30487, 21703, 0, 'Azuremyst Isle - Food Crate (3719) - #3'),(97133, 21703, 0, 'Azuremyst Isle - Water Barrel (3658) - #3'),
(12979, 21704, 0, 'Azuremyst Isle - Food Crate (3719) - #4'),(97134, 21704, 0, 'Azuremyst Isle - Water Barrel (3658) - #4'),
(85642, 21705, 0, 'Azuremyst Isle - Food Crate (3719) - #5'),(12597, 21705, 0, 'Azuremyst Isle - Water Barrel (3658) - #5'),
(12980, 21706, 0, 'Azuremyst Isle - Food Crate (3719) - #6'),(97135, 21706, 0, 'Azuremyst Isle - Water Barrel (3658) - #6'),
(30511, 21707, 0, 'Azuremyst Isle - Food Crate (3719) - #7'),(97136, 21707, 0, 'Azuremyst Isle - Water Barrel (3658) - #7'),
(12978, 21708, 0, 'Azuremyst Isle - Food Crate (3719) - #8'),(97137, 21708, 0, 'Azuremyst Isle - Water Barrel (3658) - #8'),
(97138, 21709, 0, 'Azuremyst Isle - Food Crate (3719) - #9'),(85623, 21709, 0, 'Azuremyst Isle - Water Barrel (3658) - #9'),
(12975, 21710, 0, 'Azuremyst Isle - Food Crate (3719) - #10'),(97139, 21710, 0, 'Azuremyst Isle - Water Barrel (3658) - #10'),
(85641, 21711, 0, 'Azuremyst Isle - Food Crate (3719) - #11'),(97140, 21711, 0, 'Azuremyst Isle - Water Barrel (3658) - #11'),
(12976, 21712, 0, 'Azuremyst Isle - Food Crate (3719) - #12'),(97141, 21712, 0, 'Azuremyst Isle - Water Barrel (3658) - #12'),
(30528, 21713, 0, 'Azuremyst Isle - Food Crate (3719) - #13'),(97142, 21713, 0, 'Azuremyst Isle - Water Barrel (3658) - #13'),
(12977, 21714, 0, 'Azuremyst Isle - Food Crate (3719) - #14'),(97143, 21714, 0, 'Azuremyst Isle - Water Barrel (3658) - #14'),
(97144, 21715, 0, 'Azuremyst Isle - Food Crate (3719) - #15'),(85624, 21715, 0, 'Azuremyst Isle - Water Barrel (3658) - #15'),

-- Eversong Woods
(12973, 21751, 0, 'Eversong Woods - Food Crate (3719) - #1'),(97184, 21751, 0, 'Eversong Woods - Water Barrel (3658) - #1'),
(34003, 21752, 0, 'Eversong Woods - Food Crate (3719) - #2'),(97185, 21752, 0, 'Eversong Woods - Water Barrel (3658) - #2'),
(12970, 21753, 0, 'Eversong Woods - Food Crate (3719) - #3'),(97186, 21753, 0, 'Eversong Woods - Water Barrel (3658) - #3'),
(33892, 21754, 0, 'Eversong Woods - Food Crate (3719) - #4'),(97187, 21754, 0, 'Eversong Woods - Water Barrel (3658) - #4'),
(12974, 21755, 0, 'Eversong Woods - Food Crate (3719) - #5'),(97188, 21755, 0, 'Eversong Woods - Water Barrel (3658) - #5'),
(12971, 21756, 0, 'Eversong Woods - Food Crate (3719) - #6'),(97189, 21756, 0, 'Eversong Woods - Water Barrel (3658) - #6'),
(12969, 21757, 0, 'Eversong Woods - Food Crate (3719) - #7'),(97190, 21757, 0, 'Eversong Woods - Water Barrel (3658) - #7'),
(12972, 21758, 0, 'Eversong Woods - Food Crate (3719) - #8'),(97191, 21758, 0, 'Eversong Woods - Water Barrel (3658) - #8'),
(33904, 21759, 0, 'Eversong Woods - Food Crate (3719) - #9'),(97192, 21759, 0, 'Eversong Woods - Water Barrel (3658) - #9'),
(12965, 21760, 0, 'Eversong Woods - Food Crate (3719) - #10'),(97194, 21760, 0, 'Eversong Woods - Water Barrel (3658) - #10'),
(12968, 21761, 0, 'Eversong Woods - Food Crate (3719) - #11'),(97196, 21761, 0, 'Eversong Woods - Water Barrel (3658) - #11'),
(33907, 21762, 0, 'Eversong Woods - Food Crate (3719) - #12'),(97197, 21762, 0, 'Eversong Woods - Water Barrel (3658) - #12'),
(12966, 21763, 0, 'Eversong Woods - Food Crate (3719) - #13'),(97198, 21763, 0, 'Eversong Woods - Water Barrel (3658) - #13'),
(33948, 21764, 0, 'Eversong Woods - Food Crate (3719) - #14'),(97199, 21764, 0, 'Eversong Woods - Water Barrel (3658) - #14'),
(12964, 21765, 0, 'Eversong Woods - Food Crate (3719) - #15'),(97200, 21765, 0, 'Eversong Woods - Water Barrel (3658) - #15'),
(12967, 21766, 0, 'Eversong Woods - Food Crate (3719) - #16'),(97202, 21766, 0, 'Eversong Woods - Water Barrel (3658) - #16');

-- 97095 - 97799 free across all 3 dbs
SET @OGUID := 97095;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID AND @OGUID+150;
DELETE FROM `gameobject` WHERE `guid` IN (34031,34822,30685,26898,26877,26851,27052,30758,32752,26962,32754,30839,29578,30687,30751,26994,26998);
DELETE FROM `gameobject` WHERE `guid` IN (26862,26888,33491,30971,30846,29275,32825,31104,27084,32313,30677,26983,26782,30748,29276);
DELETE FROM `gameobject` WHERE `guid` IN (83029,83030,83031,83032,83033,83034,83035,83036,83037,83038,83039,83040,83041,83042,83043,83044,83045);
DELETE FROM `gameobject` WHERE `guid` IN (83046,83047,83048,83049,83050,83051,83052,83053,83054,83055,83056,83057,83058,83059,83060);
DELETE FROM `gameobject` WHERE `guid` IN (85641,85642,85623,85624);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(26851, 3719, 0, 1, -9809.68, 718.15, 33.1179, 1.02974, 0, 0, 0.492422, 0.870357, 180, 180, 100, 1),
(26877, 3719, 0, 1, -9853.07, 366.57, 36.4383, -0.418879, 0, 0, -0.207912, 0.978148, 180, 180, 100, 1),
(26898, 3719, 0, 1, -9862.25, -230.512, 35.5091, -1.29154, 0, 0, -0.601814, 0.798637, 180, 180, 100, 1),
(26962, 3719, 0, 1, -9555.29, -718.836, 99.0869, -2.84489, 0, 0, -0.989016, 0.147808, 180, 180, 100, 1),
(26994, 3719, 0, 1, -8900.41, -770.323, 69.5532, -2.42601, 0, 0, -0.936673, 0.350206, 180, 180, 100, 1),
(26998, 3719, 0, 1, -8823.07, -872.418, 74.7945, 2.98451, 0, 0, 0.996917, 0.0784606, 180, 180, 100, 1),
(27052, 3719, 0, 1, -9789.66, -1399.88, 62.8007, 1.58825, 0, 0, 0.713251, 0.700909, 180, 180, 100, 1),
(29578, 3719, 0, 1, -9439.13, 485.315, 53.1871, -1.90241, 0, 0, -0.814116, 0.580702, 180, 180, 100, 1),
(30685, 3719, 0, 1, -9909.52, 26.2754, 32.0256, 0.401426, 0, 0, 0.199368, 0.979925, 180, 180, 100, 1),
(30687, 3719, 0, 1, -9258.88, 355.379, 76.693, 1.36136, 0, 0, 0.629322, 0.777145, 180, 180, 100, 1),
(30751, 3719, 0, 1, -8981.32, -815.302, 70.3834, -1.50098, 0, 0, -0.681997, 0.731355, 180, 180, 100, 1),
(30758, 3719, 0, 1, -9729.42, 656.299, 31.8338, 2.35619, 0, 0, 0.923879, 0.382686, 180, 180, 100, 1),
(30839, 3719, 0, 1, -9458.53, 8.58518, 56.9626, 2.98451, 0, 0, 0.996917, 0.0784606, 180, 180, 100, 1),
(32752, 3719, 0, 1, -9630.97, -53.8834, 44.6324, 1.64061, 0, 0, 0.731354, 0.681998, 180, 180, 100, 1),
(32754, 3719, 0, 1, -9500.53, 81.368, 57.4601, 0.017453, 0, 0, 0.00872639, 0.999962, 180, 180, 100, 1),
(34031, 3719, 0, 1, -10004.2, 668.569, 35.7438, 1.48353, 0, 0, 0.67559, 0.737277, 180, 180, 100, 1),
(34822, 3719, 0, 1, -9947.94, 625.232, 37.2732, 1.0821, 0, 0, 0.515036, 0.857168, 180, 180, 100, 1),
(85641, 3719, 530, 1, -3293.09, -13006.2, -0.417608, 2.11185, 0, 0, 0.870356, 0.492423, 180, 180, 100, 1),	
(85642, 3719, 530, 1, -4712.45, -12396.8, 11.7453, 1.88495, 0, 0, 0.809015, 0.587788, 180, 180, 100, 1),

(26862, 3658, 0, 1, -10063.4, 622.68, 39.2654, -0.523599, 0, 0, -0.258819, 0.965926, 180, 180, 100, 1),
(26888, 3658, 0, 1, -10009.8, 38.8972, 35.1709, 2.26893, 0, 0, 0.906308, 0.422617, 180, 180, 100, 1),
(33491, 3658, 0, 1, -9940.45, -1108.79, 22.2839, 0.785398, 0, 0, 0.382683, 0.92388, 180, 180, 100, 1),
(30971, 3658, 0, 1, -9930.38, 582.718, 37.709, -0.436333, 0, 0, -0.21644, 0.976296, 180, 180, 100, 1),
(30846, 3658, 0, 1, -9851.94, 173.276, 21.2732, -1.72788, 0, 0, -0.760407, 0.649446, 180, 180, 100, 1),
(29275, 3658, 0, 1, -9729.42, 656.299, 31.8338, 2.35619, 0, 0, 0.923879, 0.382686, 180, 180, 100, 1),
(32825, 3658, 0, 1, -9605.92, 674.789, 38.6522, 1.50098, 0, 0, 0.681997, 0.731355, 180, 180, 100, 1),
(31104, 3658, 0, 1, -9572.89, -718.307, 64.7386, 3.07178, 0, 0, 0.999391, 0.0348993, 180, 180, 100, 1),
(27084, 3658, 0, 1, -9538.32, -1406.06, 55.6784, 2.79253, 0, 0, 0.984808, 0.173647, 180, 180, 100, 1),
(32313, 3658, 0, 1, -9500.53, 81.368, 57.4601, 0.017453, 0, 0, 0.00872639, 0.999962, 180, 180, 100, 1),
(30677, 3658, 0, 1, -9458.53, 8.58518, 56.9626, 2.98451, 0, 0, 0.996917, 0.0784606, 180, 180, 100, 1),
(26983, 3658, 0, 1, -9379.27, -115.021, 58.7317, -0.139626, 0, 0, -0.0697563, 0.997564, 180, 180, 100, 1),
(26782, 3658, 0, 1, -9316.71, 290.286, 70.5393, -0.959931, 0, 0, -0.461749, 0.887011, 180, 180, 100, 1),
(30748, 3658, 0, 1, -9307.25, -291.366, 70.4318, 2.26893, 0, 0, 0.906308, 0.422617, 180, 180, 100, 1),
(29276, 3658, 0, 1, -9258.88, 355.379, 76.693, 1.36136, 0, 0, 0.629322, 0.777145, 180, 180, 100, 1),
(85623, 3658, 530, 1, -3421, -11897.6, -0.021669, 2.40855, 0, 0, 0.93358, 0.35837, 180, 180, 100, 1),
(85624, 3658, 530, 1, -3109.6, -11929.5, -0.304297, 0.034906, 0, 0, 0.0174521, 0.999848, 180, 180, 100, 1),

-- ccdb
(83029, 3658, 1, 1, 269.644, -4701.72, 11.9075, 1.39626, 0, 0, 0, 0, 180, 180, 100, 1),
(83030, 3719, 1, 1, 269.644, -4701.72, 11.9075, 1.39626, 0, 0, 0, 0, 180, 180, 100, 1),
(83031, 3658, 1, 1, 319.082, -4768.63, 11.9896, 1.72787, 0, 0, 0, 0, 180, 180, 100, 1),
(83032, 3719, 1, 1, 319.082, -4768.63, 11.9896, 1.72787, 0, 0, 0, 0, 180, 180, 100, 1),
(83033, 3658, 1, 1, 387.24, -4586.66, 76.1843, 0.680678, 0, 0, 0, 0, 180, 180, 100, 1),
(83034, 3658, 0, 1, -5316.5, -1053.26, 393.347, -1.79769, 0, 0, -0.782608, 0.622514, 180, 180, 100, 1),
(83035, 3719, 0, 1, -5316.5, -1053.26, 393.347, -1.79769, 0, 0, -0.782608, 0.622514, 180, 180, 100, 1),

(@OGUID := @OGUID + 0, 3719, 0, 1, -10063.4, 622.68, 39.2654, -0.523599, 0, 0, -0.258819, 0.965926, 180, 180, 100, 1), -- 26862
(@OGUID := @OGUID + 1, 3719, 0, 1, -10009.8, 38.8972, 35.1709, 2.26893, 0, 0, 0.906308, 0.422617, 180, 180, 100, 1), -- 26888
(@OGUID := @OGUID + 1, 3658, 0, 1, -10004.2, 668.569, 35.7438, 1.48353, 0, 0, 0.67559, 0.737277, 180, 180, 100, 1), -- 34031
(@OGUID := @OGUID + 1, 3658, 0, 1, -9947.94, 625.232, 37.2732, 1.0821, 0, 0, 0.515036, 0.857168, 180, 180, 100, 1), -- 34822
(@OGUID := @OGUID + 1, 3719, 0, 1, -9940.45, -1108.79, 22.2839, 0.785398, 0, 0, 0.382683, 0.92388, 180, 180, 100, 1), -- 33491
(@OGUID := @OGUID + 1, 3719, 0, 1, -9930.38, 582.718, 37.709, -0.436333, 0, 0, -0.21644, 0.976296, 180, 180, 100, 1), -- 30971
(@OGUID := @OGUID + 1, 3658, 0, 1, -9909.52, 26.2754, 32.0256, 0.401426, 0, 0, 0.199368, 0.979925, 180, 180, 100, 1), -- 30685
(@OGUID := @OGUID + 1, 3658, 0, 1, -9862.25, -230.512, 35.5091, -1.29154, 0, 0, -0.601814, 0.798637, 180, 180, 100, 1), -- 26898
(@OGUID := @OGUID + 1, 3658, 0, 1, -9853.07, 366.57, 36.4383, -0.418879, 0, 0, -0.207912, 0.978148, 180, 180, 100, 1), -- 26877
(@OGUID := @OGUID + 1, 3719, 0, 1, -9851.94, 173.276, 21.2732, -1.72788, 0, 0, -0.760407, 0.649446, 180, 180, 100, 1), -- 30846
(@OGUID := @OGUID + 1, 3658, 0, 1, -9809.68, 718.15, 33.1179, 1.02974, 0, 0, 0.492422, 0.870357, 180, 180, 100, 1), -- 26851
(@OGUID := @OGUID + 1, 3658, 0, 1, -9789.66, -1399.88, 62.8007, 1.58825, 0, 0, 0.713251, 0.700909, 180, 180, 100, 1), -- 27052
(@OGUID := @OGUID + 1, 3658, 0, 1, -9630.97, -53.8834, 44.6324, 1.64061, 0, 0, 0.731354, 0.681998, 180, 180, 100, 1), -- 32752
(@OGUID := @OGUID + 1, 3719, 0, 1, -9605.92, 674.789, 38.6522, 1.50098, 0, 0, 0.681997, 0.731355, 180, 180, 100, 1), -- 32825
(@OGUID := @OGUID + 1, 3719, 0, 1, -9572.89, -718.307, 64.7386, 3.07178, 0, 0, 0.999391, 0.0348993, 180, 180, 100, 1), -- 31104
(@OGUID := @OGUID + 1, 3658, 0, 1, -9555.29, -718.836, 99.0869, -2.84489, 0, 0, -0.989016, 0.147808, 180, 180, 100, 1), -- 26962
(@OGUID := @OGUID + 1, 3719, 0, 1, -9538.32, -1406.06, 55.6784, 2.79253, 0, 0, 0.984808, 0.173647, 180, 180, 100, 1), -- 27084
(@OGUID := @OGUID + 1, 3658, 0, 1, -9439.13, 485.315, 53.1871, -1.90241, 0, 0, -0.814116, 0.580702, 180, 180, 100, 1), -- 29578
(@OGUID := @OGUID + 1, 3719, 0, 1, -9379.27, -115.021, 58.7317, -0.139626, 0, 0, -0.0697563, 0.997564, 180, 180, 100, 1), -- 26983
(@OGUID := @OGUID + 1, 3719, 0, 1, -9316.71, 290.286, 70.5393, -0.959931, 0, 0, -0.461749, 0.887011, 180, 180, 100, 1), -- 26782
(@OGUID := @OGUID + 1, 3719, 0, 1, -9307.25, -291.366, 70.4318, 2.26893, 0, 0, 0.906308, 0.422617, 180, 180, 100, 1), -- 30748
(@OGUID := @OGUID + 1, 3658, 0, 1, -8981.32, -815.302, 70.3834, -1.50098, 0, 0, -0.681997, 0.731355, 180, 180, 100, 1), -- 30751
(@OGUID := @OGUID + 1, 3658, 0, 1, -8900.41, -770.323, 69.5532, -2.42601, 0, 0, -0.936673, 0.350206, 180, 180, 100, 1), -- 26994
(@OGUID := @OGUID + 1, 3658, 0, 1, -8823.07, -872.418, 74.7945, 2.98451, 0, 0, 0.996917, 0.0784606, 180, 180, 100, 1), -- 26998
(@OGUID := @OGUID + 1, 3719, 0, 1, -5862.66, -1538.93, 371.974, -2.14675, 0, 0, 0, 0, 180, 180, 100, 1), -- 10847
(@OGUID := @OGUID + 1, 3719, 0, 1, -5662.8, -1553.14, 387.125, 0.436332, 0, 0, 0, 0, 180, 180, 100, 1), -- 10838
(@OGUID := @OGUID + 1, 3719, 0, 1, -5637.03, -505.798, 396.955, 3.00197, 0, 0, 0, 0, 180, 180, 100, 1), -- 31414
(@OGUID := @OGUID + 1, 3658, 0, 1, -5602.55, -2006.01, 395.767, -0.872665, 0, 0, 0, 0, 180, 180, 100, 1), -- 29626
(@OGUID := @OGUID + 1, 3658, 0, 1, -5566.9, 106.377, 482.453, -1.23918, 0, 0, 0, 0, 180, 180, 100, 1), -- 10063
(@OGUID := @OGUID + 1, 3719, 0, 1, -5521.79, -1299.64, 405.023, 0.331613, 0, 0, 0, 0, 180, 180, 100, 1), -- 10734
(@OGUID := @OGUID + 1, 3719, 0, 1, -5416.44, -1249.67, 444.115, -1.22173, 0, 0, 0, 0, 180, 180, 100, 1), -- 29317
(@OGUID := @OGUID + 1, 3658, 0, 1, -5371.96, 287.039, 394.127, -1.0472, 0, 0, 0, 0, 180, 180, 100, 1), -- 29640
(@OGUID := @OGUID + 1, 3658, 530, 1, -5290.39, -10854.9, 1.12893, 0.558505, 0, 0, 0, 0, 180, 180, 100, 1), -- 12981
(@OGUID := @OGUID + 1, 3719, 530, 1, -5155.56, -10778, -0.057397, -2.00713, 0, 0, 0, 0, 180, 180, 100, 1), -- 12596
(@OGUID := @OGUID + 1, 3719, 0, 1, -5123.81, -2339.11, 400.498, 2.21657, 0, 0, 0, 0, 180, 180, 100, 1), -- 10946
(@OGUID := @OGUID + 1, 3658, 0, 1, -5077.23, 494.845, 401.821, -2.47837, 0, 0, 0, 0, 180, 180, 100, 1), -- 9467
(@OGUID := @OGUID + 1, 3719, 0, 1, -5073.84, 445.727, 410.966, 0.10472, 0, 0, 0, 0, 180, 180, 100, 1), -- 32369
(@OGUID := @OGUID + 1, 3719, 0, 1, -5060.36, -249.986, 442.184, -1.53589, 0, 0, 0, 0, 180, 180, 100, 1), -- 10173
(@OGUID := @OGUID + 1, 3658, 530, 1, -5047.55, -11821.6, -0.018669, -0.191986, 0, 0, 0, 0, 180, 180, 100, 1), -- 30487
(@OGUID := @OGUID + 1, 3658, 530, 1, -4918.44, -11525.2, -0.047205, -2.11185, 0, 0, 0, 0, 180, 180, 100, 1), -- 12979
(@OGUID := @OGUID + 1, 3658, 530, 1, -4592.73, -11611.1, 17.7883, -1.22173, 0, 0, 0, 0, 180, 180, 100, 1), -- 12980
(@OGUID := @OGUID + 1, 3658, 530, 1, -4504.14, -11592.1, 12.8724, -1.90241, 0, 0, 0, 0, 180, 180, 100, 1), -- 30511
(@OGUID := @OGUID + 1, 3658, 530, 1, -3762.18, -12784.4, -0.384442, 2.1293, 0, 0, 0, 0, 180, 180, 100, 1), -- 12978
(@OGUID := @OGUID + 1, 3719, 530, 1, -3421, -11897.6, -0.021669, 2.40855, 0, 0, 0.93358, 0.35837, 180, 180, 100, 1), -- 85623
(@OGUID := @OGUID + 1, 3658, 530, 1, -3371.07, -12281.8, 22.0357, -2.1293, 0, 0, 0, 0, 180, 180, 100, 1), -- 12975
(@OGUID := @OGUID + 1, 3658, 530, 1, -3293.09, -13006.2, -0.417608, 2.11185, 0, 0, 0.870356, 0.492423, 180, 180, 100, 1), -- 85641
(@OGUID := @OGUID + 1, 3658, 530, 1, -3219.77, -12411, 19.5746, 2.9147, 0, 0, 0, 0, 180, 180, 100, 1), -- 12976
(@OGUID := @OGUID + 1, 3658, 530, 1, -3210.53, -12390.3, 19.0607, -0.523599, 0, 0, 0, 0, 180, 180, 100, 1), -- 30528
(@OGUID := @OGUID + 1, 3658, 530, 1, -3123.4, -12678.2, 13.5786, 0.855211, 0, 0, 0, 0, 180, 180, 100, 1), -- 12977
(@OGUID := @OGUID + 1, 3719, 530, 1, -3109.6, -11929.5, -0.304297, 0.034906, 0, 0, 0.0174521, 0.999848, 180, 180, 100, 1), -- 85624
(@OGUID := @OGUID + 1, 3658, 1, 1, -2750.28, -438.494, -2.84708, 0.942478, 0, 0, 0, 0, 180, 180, 100, 1), -- 20529
(@OGUID := @OGUID + 1, 3719, 1, 1, -2416.05, 498.563, 64.3684, -1.27409, 0, 0, 0, 0, 180, 180, 100, 1), -- 18305
(@OGUID := @OGUID + 1, 3658, 1, 1, -2246.88, -313.829, -9.4249, 2.74017, 0, 0, 0, 0, 180, 180, 100, 1), -- 20532
(@OGUID := @OGUID + 1, 3719, 1, 1, -2212.89, -376.176, -8.69453, 1.69297, 0, 0, 0, 0, 180, 180, 100, 1), -- 18434
(@OGUID := @OGUID + 1, 3658, 1, 1, -2189.53, -420.679, -4.39675, 1.0472, 0, 0, 0, 0, 180, 180, 100, 1), -- 20527
(@OGUID := @OGUID + 1, 3658, 1, 1, -1925.28, 417.42, 133.59, -2.04204, 0, 0, 0, 0, 180, 180, 100, 1), -- 20528
(@OGUID := @OGUID + 1, 3658, 1, 1, -1917.36, -711.039, 3.66848, -1.6057, 0, 0, 0, 0, 180, 180, 100, 1), -- 20530
(@OGUID := @OGUID + 1, 3719, 1, 1, -1894.44, 357.08, 107.787, 3.14159, 0, 0, 0, 0, 180, 180, 100, 1), -- 18304
(@OGUID := @OGUID + 1, 3658, 1, 1, -1774.41, -1175.7, 116.892, 2.54818, 0, 0, 0, 0, 180, 180, 100, 1), -- 20526
(@OGUID := @OGUID + 1, 3658, 1, 1, -1756.74, -1256.07, 113.383, -1.43117, 0, 0, 0, 0, 180, 180, 100, 1), -- 20525
(@OGUID := @OGUID + 1, 3719, 1, 1, -1642.23, -5284.79, -0.033276, 0.523599, 0, 0, 0, 0, 180, 180, 100, 1), -- 12498
(@OGUID := @OGUID + 1, 3719, 1, 1, -1604.49, -1224.06, 136.574, -1.3439, 0, 0, 0, 0, 180, 180, 100, 1), -- 18302
(@OGUID := @OGUID + 1, 3719, 1, 1, -1577.29, -1191.23, 142.176, 1.0472, 0, 0, 0, 0, 180, 180, 100, 1), -- 18303
(@OGUID := @OGUID + 1, 3719, 1, 1, -1466.17, -980.293, 148.621, -2.09439, 0, 0, 0, 0, 180, 180, 100, 1), -- 18300
(@OGUID := @OGUID + 1, 3719, 1, 1, -1343.92, -1127.75, 141.794, 0.506145, 0, 0, 0, 0, 180, 180, 100, 1), -- 18301
(@OGUID := @OGUID + 1, 3719, 1, 1, -1336.29, -5200.97, -0.091026, -0.680679, 0, 0, 0, 0, 180, 180, 100, 1), -- 12550
(@OGUID := @OGUID + 1, 3719, 1, 1, -1123.15, -5575.75, 7.39658, 0.226893, 0, 0, 0, 0, 180, 180, 100, 1), -- 12393
(@OGUID := @OGUID + 1, 3719, 1, 1, -1045.77, -4608.98, 25.831, 0.034907, 0, 0, 0, 0, 180, 180, 100, 1), -- 12391
(@OGUID := @OGUID + 1, 3658, 1, 1, -825.687, -23.4734, -13.1944, 1.69297, 0, 0, 0, 0, 180, 180, 100, 1), -- 20531
(@OGUID := @OGUID + 1, 3719, 1, 1, -758.5, -5366.35, -0.032768, -2.05949, 0, 0, 0, 0, 180, 180, 100, 1), -- 12394
(@OGUID := @OGUID + 1, 3658, 1, 1, -639.43, -5185.13, 0.112274, 2.60054, 0, 0, 0, 0, 180, 180, 100, 1), -- 12553
(@OGUID := @OGUID + 1, 3658, 1, 1, -153.696, -5023.12, 21.9477, -0.10472, 0, 0, 0, 0, 180, 180, 100, 1), -- 12501
(@OGUID := @OGUID + 1, 3658, 1, 1, 339.336, -4700.81, 16.4578, 1.91986, 0, 0, 0, 0, 180, 180, 100, 1), -- 12350
(@OGUID := @OGUID + 1, 3719, 1, 1, 382.927, -4597.71, 54.7897, 0.610865, 0, 0, 0, 0, 180, 180, 100, 1), -- 12351
(@OGUID := @OGUID + 1, 3719, 1, 1, 563.076, -4090.13, 15.6692, 1.16937, 0, 0, 0, 0, 180, 180, 100, 1), -- 12551
(@OGUID := @OGUID + 1, 3719, 1, 1, 665.216, -4540.14, 8.83067, -1.78024, 0, 0, 0, 0, 180, 180, 100, 1), -- 12397
(@OGUID := @OGUID + 1, 3658, 1, 1, 787.201, -4530.7, 5.7406, 1.78024, 0, 0, 0, 0, 180, 180, 100, 1), -- 12602
(@OGUID := @OGUID + 1, 3719, 1, 1, 915.418, -4633.35, 18.9878, 1.41372, 0, 0, 0, 0, 180, 180, 100, 1), -- 12395
(@OGUID := @OGUID + 1, 3658, 1, 1, 933.269, -5104.26, -0.032131, 0.471239, 0, 0, 0, 0, 180, 180, 100, 1), -- 12502
(@OGUID := @OGUID + 1, 3658, 1, 1, 946.095, -4704.73, 23.0614, 3.00197, 0, 0, 0, 0, 180, 180, 100, 1), -- 12549
(@OGUID := @OGUID + 1, 3658, 1, 1, 992.105, -4407.13, 14.5778, -2.94961, 0, 0, 0, 0, 180, 180, 100, 1), -- 12505
(@OGUID := @OGUID + 1, 3658, 1, 1, 1269, -4178.72, 26.0548, 1.39626, 0, 0, 0, 0, 180, 180, 100, 1), -- 12392
(@OGUID := @OGUID + 1, 3719, 0, 1, 1660.01, -735.278, 59.8819, 0.418879, 0, 0, 0, 0, 180, 180, 100, 1), -- 45059
(@OGUID := @OGUID + 1, 3719, 0, 1, 2040.9, -461.893, 35.9081, 2.19912, 0, 0, 0, 0, 180, 180, 100, 1), -- 45105
(@OGUID := @OGUID + 1, 3719, 0, 1, 2340.66, 1306.41, 34.0632, -3.10669, 0, 0, 0, 0, 180, 180, 100, 1), -- 45108
(@OGUID := @OGUID + 1, 3719, 0, 1, 2522.86, 1512.94, 0.003494, 1.0472, 0, 0, 0, 0, 180, 180, 100, 1), -- 45160
(@OGUID := @OGUID + 1, 3719, 0, 1, 2670.02, 954.971, 114.079, 2.14675, 0, 0, 0, 0, 180, 180, 100, 1), -- 45259
(@OGUID := @OGUID + 1, 3719, 0, 1, 2831.79, 822.436, 113.144, 2.72271, 0, 0, 0, 0, 180, 180, 100, 1), -- 45103
(@OGUID := @OGUID + 1, 3719, 0, 1, 3054.27, -350.856, -0.050096, 2.54818, 0, 0, 0, 0, 180, 180, 100, 1), -- 45107
(@OGUID := @OGUID + 1, 3658, 530, 1, 8056.87, -6727.33, 62.2095, 0, 0, 0, 0, 0, 180, 180, 100, 1), -- 12973
(@OGUID := @OGUID + 1, 3658, 530, 1, 8167.41, -6310.29, 64.4526, -2.05949, 0, 0, 0, 0, 180, 180, 100, 1), -- 34003
(@OGUID := @OGUID + 1, 3658, 530, 1, 8366.01, -7957.1, 183.91, 1.93731, 0, 0, 0, 0, 180, 180, 100, 1), -- 12970
(@OGUID := @OGUID + 1, 3658, 530, 1, 8367.81, -7012.98, 94.9916, -3.05433, 0, 0, 0, 0, 180, 180, 100, 1), -- 33892
(@OGUID := @OGUID + 1, 3658, 530, 1, 8455.49, -6998.37, 93.1232, 2.54818, 0, 0, 0, 0, 180, 180, 100, 1), -- 12974
(@OGUID := @OGUID + 1, 3658, 530, 1, 8520.75, -5635.19, -0.129472, -1.23918, 0, 0, 0, 0, 180, 180, 100, 1), -- 12971
(@OGUID := @OGUID + 1, 3658, 530, 1, 8638.29, -7948.3, 152.224, 0.10472, 0, 0, 0, 0, 180, 180, 100, 1), -- 12969
(@OGUID := @OGUID + 1, 3658, 530, 1, 8824.32, -6188.38, 6.86821, -2.18166, 0, 0, 0, 0, 180, 180, 100, 1), -- 12972
(@OGUID := @OGUID + 1, 3658, 530, 1, 8843.23, -6993.92, 29.8737, 1.71042, 0, 0, 0, 0, 180, 180, 100, 1), -- 33904
(@OGUID := @OGUID + 1, 3719, 1, 1, 9107.97, 1857.2, 1328.11, -0.191986, 0, 0, 0, 0, 180, 180, 100, 1), -- 49612
(@OGUID := @OGUID + 1, 3658, 530, 1, 9133.84, -5974.19, 33.8361, -0.383972, 0, 0, 0, 0, 180, 180, 100, 1), -- 12965
(@OGUID := @OGUID + 1, 3719, 1, 1, 9199.46, 1402.7, 1311.31, -2.67035, 0, 0, 0, 0, 180, 180, 100, 1), -- 49611
(@OGUID := @OGUID + 1, 3658, 530, 1, 9215.69, -8002.62, -0.123365, 1.44862, 0, 0, 0, 0, 180, 180, 100, 1), -- 12968
(@OGUID := @OGUID + 1, 3658, 530, 1, 9256.02, -7207.31, 16.4126, 1.85005, 0, 0, 0, 0, 180, 180, 100, 1), -- 33907
(@OGUID := @OGUID + 1, 3658, 530, 1, 9306.22, -6535.88, 34.9979, 0, 0, 0, 0, 0, 180, 180, 100, 1), -- 12966
(@OGUID := @OGUID + 1, 3658, 530, 1, 9326.9, -7872.09, 142.246, 1.5708, 0, 0, 0, 0, 180, 180, 100, 1), -- 33948
(@OGUID := @OGUID + 1, 3658, 530, 1, 9342.13, -6037.66, 0.00043, 2.70526, 0, 0, 0, 0, 180, 180, 100, 1), -- 12964
(@OGUID := @OGUID + 1, 3719, 1, 1, 9554.9, 1897.06, 1314.51, 1.16937, 0, 0, 0, 0, 180, 180, 100, 1), -- 49613
(@OGUID := @OGUID + 1, 3658, 530, 1, 9665.29, -7940.64, -0.172877, 1.01229, 0, 0, 0, 0, 180, 180, 100, 1), -- 12967
(@OGUID := @OGUID + 1, 3658, 1, 1, 9757.14, 1577.77, 1299.06, -0.645772, 0, 0, 0, 0, 180, 180, 100, 1), -- 49734
(@OGUID := @OGUID + 1, 3658, 1, 1, 9804.29, 966.447, 1308.77, -1.65806, 0, 0, 0, 0, 180, 180, 100, 1), -- 49733
(@OGUID := @OGUID + 1, 3719, 1, 1, 9824.22, 447.278, 1307.79, -0.558505, 0, 0, 0, 0, 180, 180, 100, 1), -- 49614
(@OGUID := @OGUID + 1, 3719, 1, 1, 9908.29, 985.799, 1354.8, 2.74017, 0, 0, 0, 0, 180, 180, 100, 1), -- 49615
(@OGUID := @OGUID + 1, 3658, 1, 1, 10031.4, 287.298, 1323.28, 2.35619, 0, 0, 0, 0, 180, 180, 100, 1), -- 49736
(@OGUID := @OGUID + 1, 3658, 1, 1, 10410.2, 1624.57, 1288.32, 2.58309, 0, 0, 0, 0, 180, 180, 100, 1), -- 49737
(@OGUID := @OGUID + 1, 3719, 1, 1, 10503.2, 1983.78, 1326.53, -1.93731, 0, 0, 0, 0, 180, 180, 100, 1), -- 49609
(@OGUID := @OGUID + 1, 3658, 1, 1, 10648.4, 2078.58, 1332.94, 1.20428, 0, 0, 0, 0, 180, 180, 100, 1), -- 49735
(@OGUID := @OGUID + 1, 3719, 1, 1, 10747.1, 2177.42, 1331.39, -1.58825, 0, 0, 0, 0, 180, 180, 100, 1); -- 49610

UPDATE `gameobject` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 900 WHERE `id` IN (3658,3719);

