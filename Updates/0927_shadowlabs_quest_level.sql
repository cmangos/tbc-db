-- Fix MinLevel Requirement for Shadow Labs Quests
UPDATE `quest_template` SET `MinLevel` = 68 WHERE `entry` IN (
10177, -- Trouble at Auchindoun - https://wow.gamepedia.com/index.php?title=Trouble_at_Auchindoun&oldid=1498674
10178, -- Find Spy To'gun - https://wow.gamepedia.com/index.php?title=Find_Spy_To%27gun&oldid=1498666
10094, -- The Codex of Blood - https://wow.gamepedia.com/index.php?title=The_Codex_of_Blood_(quest)&oldid=1498669
10095 -- Into the Heart of the Labyrinth - https://wow.gamepedia.com/index.php?title=Into_the_Heart_of_the_Labyrinth&oldid=1498667
);

