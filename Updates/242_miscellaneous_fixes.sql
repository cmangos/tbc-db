-- Molten Core does not require attunement to enter through portal, only through Lothos Riftwalker
UPDATE areatrigger_teleport SET required_quest_done=0 WHERE id IN(3528,3529);

-- The Eye - dont require attunement
UPDATE areatrigger_teleport SET required_item=0 AND required_quest_done=0 WHERE id=4470;


