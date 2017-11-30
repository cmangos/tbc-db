-- Winter's Presents quest has two versions - Horde and Alliance
UPDATE quest_template SET RequiredRaces=690 WHERE entry=8828;
UPDATE quest_template SET RequiredRaces=1101 WHERE entry=8827;

-- these Human Commoners in Stormwind should be associated with Hallow's End
DELETE FROM game_event_creature WHERE guid IN (62848,62849);
INSERT INTO game_event_creature (guid, event) VALUES
(62848, 12),
(62849, 12);


