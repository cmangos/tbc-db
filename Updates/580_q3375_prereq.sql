-- Add proper conditions for getting Replacement Phial q.3375
-- http://www.wowhead.com/quest=3375/replacement-phial#comments:id=427683
-- Also made the quest repeatable
-- Note that the comment states the quest becomes unavailable after completing q.2361, but I believe that is incorrect since the last quest to use the Scrying Bowl is q.2204 (with the same name)
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 533 AND 540;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(533, 9, 2200, 0), -- Back to Uldaman accepted
(534, 8, 2200, 0), -- Back to Uldaman rewarded
(535, 8, 2204, 0), -- Restoring the Necklace rewarded
(536, 24, 7667, 1), -- Player does not own item 7667
(537, -3, 535, 0), -- Restoring the Necklace NOT rewarded
(538, -2, 533, 534), -- Back to Uldaman accepted OR rewarded
(539, -1, 537, 538), -- (Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)
(540, -1, 539, 536); -- ((Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)) AND Player does not own item 7667

UPDATE quest_template SET SpecialFlags=1, RequiredCondition=540 WHERE entry=3375;
