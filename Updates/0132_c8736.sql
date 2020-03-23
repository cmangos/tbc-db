-- Correct TrainerTemplateId for Buzzek Bracketswing 8736 Engineering (Artisan) Trainer (Fix may vary between expansions)
-- https://web.archive.org/web/20110717132326/http://www.wowhead.com:80/npc=8736#teaches-recipe:0-16+1+3 seems to always have the highest template
UPDATE `creature_template` SET `TrainerTemplateId` = 1000 WHERE `entry` = 8736;

