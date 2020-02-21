-- 20130 Andormu (child)
-- 19932 Andormu (adult)

UPDATE creature_template SET NpcFlags=2, VendorTemplateId=0 WHERE Entry=20130; -- child version is not a vendor

-- Return to Andormu 10285 should be turned into child Andormu, not adult
DELETE FROM creature_involvedrelation WHERE id=19932 AND quest=10285;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(20130, 10285);

-- Hero of the Brood should be turned in to child Andormu, not adult
DELETE FROM creature_involvedrelation WHERE id=19932 AND quest=10298;
DELETE FROM creature_involvedrelation WHERE id=20130 AND quest=10298;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(20130, 10298);


