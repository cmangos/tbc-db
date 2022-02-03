-- nothing to see here, I did an oopsie
UPDATE reference_loot_template SET entry=40406 WHERE entry=40402;
UPDATE gameobject_loot_template SET item=40406,mincountOrRef=-40406 WHERE entry=188124 AND item=40402;
INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(40402,28779,0,1,1,1,0,'Girdle of the Endless Pit'),
(40402,28774,0,1,1,1,0,'Glaive of the Pit'),
(40402,28777,0,1,1,1,0,'Cloak of the Pit Stalker'),
(40402,28775,0,1,1,1,0,'Thundering Greathelm'),
(40402,28778,0,1,1,1,0,'Terror Pit Girdle'),
(40402,28776,0,1,1,1,0,'Liar\'s Tongue Gloves');

