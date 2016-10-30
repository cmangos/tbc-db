-- Remove Faction Rep For Quest 308 "Distracting Jarven"
UPDATE quest_template SET RewRepFaction1=0, RewRepFaction2=0, RewRepValue1=0, RewRepValue2=0 WHERE entry IN (308);

