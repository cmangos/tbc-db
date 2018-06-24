--
--  EASTERN KINGDOMS
--

-- Alliance:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (425, 427, 438);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(425, 0, 2, 'Morgan\'s Vigil - Stormwind | Landing extracted from verified'),
(427, 4, 0, 'Stormwind - Morgan\'s Vigil | Takeoff extracted and fixed from verified'),
(438, 11, 0, 'Ironforge - Light\'s Hope Chapel | Takeoff is approximate'); -- Update takeoff length

-- Horde:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (36, 37, 319, 320, 473, 474, 484, 485);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(36, 0, 1, 'Booty Bay - Kargath | Landing extracted from verified'),
(37, 1, 0, 'Kargath - Booty Bay | Takeoff verified: videos'),
(319, 1, 1, 'Kargath - Hammerfall | Takeoff and landing extracted from verified'),
(320, 2, 1, 'Hammerfall - Kargath | Takeoff and landing verified: videos'),
(473, 1, 1, 'Revantusk Village - Light\'s Hope Chapel | Takeoff and landing vextracted from verified'),
(474, 3, 1, 'Light\'s Hope Chapel - Revantusk Village | Takeoff and landing verified: videos'),
(484, 1, 1, 'Hammerfall - Revantusk Village | Takeoff and landing vextracted from verified'),
(485, 1, 1, 'Revantusk Village - Hammerfall | Takeoff and landing verified: videos');

--
--  "OUTLAND" EASTERN KINGDOMS
--

-- Alliance:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (775, 776, 796, 797);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(775, 3, 2, 'Light\'s Hope Chapel - Zul\'Aman (Alliance) | Takeoff and landing are approximate'),
(776, 2, 2, 'Zul\'Aman - Light\'s Hope Chapel (Alliance) | Takeoff verified: videos'),
(796, 3, 0, 'Light\'s Hope Chapel - Isle of Quel\'Danas (Alliance) | Takeoff is approximate'),
(797, 0, 2, 'Isle of Quel\'Danas - Light\'s Hope Chapel (Alliance) | Landing is approximate');

-- Horde:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (488, 489, 766, 767, 771, 772, 773, 774, 781, 782);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(488, 4, 2, 'Tranquillien - Silvermoon | Takeoff and landing are approximate'),
(489, 0, 2, 'Silvermoon - Tranquillien | Landing verified: videos'),
(766, 0, 4, 'Light\'s Hope Chapel - Tranquillien | Landing is approximate'),
(767, 2, 3, 'Tranquillien - Light\'s Hope Chapel | Takeoff and landing verified: videos'),
(771, 3, 2, 'Light\'s Hope Chapel - Zul\'Aman (Horde) | Takeoff extracted from verified, landing is approximate'),
(772, 2, 3, 'Zul\'Aman - Light\'s Hope Chapel (Horde) | Takeoff verified: videos'),
(773, 4, 0, 'Tranquillien - Zul\'Aman | Takeoff is approximate'),
(774, 0, 4, 'Zul\'Aman - Tranquillien | Landing is approximate'),
(781, 3, 0, 'Silvermoon - Isle of Quel\'Danas | Takeoff is approximate'),
(782, 0, 3, 'Isle of Quel\'Danas - Silvermoon | Landing is approximate');

-- Neutral:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (786, 787);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(786, 2, 0, 'Zul\'Aman - Isle of Quel\'Danas (Neutral) | Takeoff is approximate'),
(787, 0, 2, 'Isle of Quel\'Danas - Zul\'Aman (Neutral) | Landing verified: videos');

