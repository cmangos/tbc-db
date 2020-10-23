-- q.11971 'The Spinner of Summer Tales' requires Midsummer Fire Festival event
DELETE FROM conditions WHERE condition_entry=10320;
INSERT INTO conditions (condition_entry, `type`, value1, value2, comments) VALUES
(10320, 12, 1, 0, 'Event ID 1 Active');
UPDATE quest_template SET RequiredCondition=10320 WHERE entry=11971;


