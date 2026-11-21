-- Farstrider Retreat is a Breadcrumb for Quest Amani Encroachment
-- You can take Amani Encroachment without doing Farstrider Retreat 
-- source: TBC Anni
UPDATE quest_template SET BreadcrumbForQuestId = 8476 WHERE entry = 9359;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 8476;