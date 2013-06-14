-- fixing Quest 3567 (To The Top) this is removing the "You learn spell" from complete quest window and spell gets casted by Marli not by player
-- .go c id 7773
-- slows down the process as spell s.12242 is not cast through RewSpellCast anymore, we have remaining changes already
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 3567;

