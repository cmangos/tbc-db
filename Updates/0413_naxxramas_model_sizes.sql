-- Resolves https://github.com/cmangos/issues/issues/2386
-- Closes https://github.com/cmangos/tbc-db/pull/815

-- Correct some Naxxramas Trash Model Sizes (Probably due to incomplete or wrong backporting from classic-db)
UPDATE creature_template SET Scale=1 WHERE entry=16145; -- Deathknight Captain (0)

UPDATE creature_template SET Scale=1 WHERE entry=16146; -- Deathknight (0)

UPDATE creature_template SET Scale=1 WHERE entry=16165; -- Necro Knight (0)

UPDATE creature_template SET Scale=1 WHERE entry=16164; -- Shade of Naxxramas (0)

UPDATE creature_template SET Scale=1 WHERE entry=16163; -- Deathknight Cavalier (0)

UPDATE creature_template SET Scale=1 WHERE entry=16861; -- Death Lord (0)

UPDATE creature_template SET Scale=1 WHERE entry=16449; -- Spirit of Naxxramas (0)

UPDATE creature_template SET Scale=1 WHERE entry=16368; -- Necropolis Acolyte (0)

UPDATE creature_template SET Scale=1 WHERE entry=16446; -- Plagued Gargoyle (0)

UPDATE creature_template SET Scale=1 WHERE entry=16451; -- Deathknight Vindicator (0)

UPDATE creature_template SET Scale=1 WHERE entry=16017; -- Patchwork Golem (0)

UPDATE creature_template SET Scale=1 WHERE entry=16029; -- Sludge Belcher (0)

UPDATE creature_template SET Scale=1 WHERE entry=16452; -- Necro Knight Guardian (0)

UPDATE creature_template SET Scale=1 WHERE entry=15976; -- Venom Stalker (0)

UPDATE creature_template SET Scale=1 WHERE entry=16453; -- Necro Stalker (1)

UPDATE creature_template SET Scale=1 WHERE entry=15975; -- Carrion Spinner (0)

UPDATE creature_template SET Scale=1 WHERE entry=15977; -- Infectious Skitterer (0) (this one was actually too small)

