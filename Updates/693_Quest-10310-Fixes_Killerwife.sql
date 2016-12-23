-- ===================
-- Fixes by Killerwife
-- ===================
-- http://www.wowhead.com/quest=10310/sabotage-the-warp-gate
UPDATE creature_template SET FactionAlliance=16,FactionHorde=16 WHERE entry in (20399,20402,20403);
DELETE FROM spell_template WHERE id IN (42456,42467);
insert into spell_template (id, effect0,duration_index, effect0_implicit_target_a, effect0_misc_value,comments) VALUES (42456, 76,9, 47, 185318,'Summon smoke object');
insert into spell_template (id, effect0,duration_index, effect0_implicit_target_a, effect0_misc_value,comments) VALUES (42467, 76,8, 47, 185319,'Summon fire object');
UPDATE creature SET position_x=3022.441,position_y=2718.388,orientation=2.4 WHERE guid=72186;
-- https://github.com/killerwife/mangos-tbc/commit/1e98e5ebcc60d1e80e5dc20d154923a660106506

