-- Fix cost for Thunder s.34547 (10g)
-- https://web.archive.org/web/20081009183630/https://www.wowhead.com/?spell=34547
-- https://web.archive.org/web/20090402072230/http://www.wowhead.com/?spell=34547
UPDATE npc_trainer SET spellcost=100000 WHERE spell=34547;
UPDATE npc_trainer_template SET spellcost=100000 WHERE spell=34547;

