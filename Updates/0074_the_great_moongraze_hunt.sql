-- Quest: The Great Moongraze Hunt (9454)
-- This quest should be available without any prequest.
-- Also: "Find Acteon!" (9453 - the previously assigned quest) is not a breadcrumb quest.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 9454;