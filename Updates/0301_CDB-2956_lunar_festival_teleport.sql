-- Fix flags for spell targeting in Lunar Festival teleports from capital cities to Moonglade
-- Closes https://github.com/cmangos/issues/issues/2102
UPDATE dbscripts_on_go_template_use SET data_flags=5 WHERE id=180867;

-- Prevent players from teleporting to capital cities of opposite faction
UPDATE dbscripts_on_go_template_use SET condition_id=3 WHERE id=180867 AND buddy_entry IN (15891, 15908, 15907, 15719); -- Horde Player condition_id
UPDATE dbscripts_on_go_template_use SET condition_id=4 WHERE id=180867 AND buddy_entry IN (15892, 15694, 15905, 15906); -- Alliance Player condition_id

