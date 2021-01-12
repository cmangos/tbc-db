-- Remove RequiredRaces for quest "Mor-zul Bloodbringer"
-- no change in tbc but classmask already restricts it enough
-- RequiredClasses = 256 = warlock
UPDATE quest_template SET RequiredRaces=0 WHERE entry=7562;
