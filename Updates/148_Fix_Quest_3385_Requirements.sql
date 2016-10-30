-- Change Incorrect 250 Tailoring Requirement (Implemented in WOTLK)
UPDATE quest_template SET RequiredSkillValue=1 WHERE entry IN (3385);

