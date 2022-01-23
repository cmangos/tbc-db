-- Correct broadcast_text for Apprentice Varnis 16206 (q.9164)
-- https://tbc.wowhead.com/npc=16206/apprentice-varnis-rescued
-- "Thank you. I thought I would die without seeing my sisters again!" -> "Th... thank you. I thought I was going to die."
-- Resolves https://github.com/cmangos/tbc-db/issues/1014
UPDATE `dbscripts_on_gossip` SET `dataint` = 12222 WHERE `id` = 7186 AND `command` = 0; -- 23042

