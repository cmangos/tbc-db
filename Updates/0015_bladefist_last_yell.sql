-- BCT was not adjusted correctly
-- wowhead yells:
-- Warchief Kargath Bladefist yells: Cowards! You'll never draw me into the shadows!
-- Warchief Kargath Bladefist yells: For the real Horde!
-- Warchief Kargath Bladefist yells: I am called Bladefist for a reason. As you will see.
-- Warchief Kargath Bladefist yells: I am the ONLY warchief!
-- Warchief Kargath Bladefist yells: I'll carve the meat from your bones!
-- Warchief Kargath Bladefist yells: Ours is the TRUE Horde! The only Horde!
-- Warchief Kargath Bladefist yells: The true Horde... will prevail.

-- Other Yells for non Boss Fights:
-- Warchief Kargath Bladefist yells: Execute one of the prisoners at once! Slay the dwarf first... he talks far too much for his own good.
-- Warchief Kargath Bladefist yells: Execute one of the prisoners at once! Slay the tauren first... keep his head as a trophy.
-- Warchief Kargath Bladefist yells: It looks like we have a ranking officer among our captives... how amusing. Execute the Alliance wench!
-- Warchief Kargath Bladefist yells: The Alliance dares to intrude this far into my fortress? Bring out the Honor Hold prisoners and call for the executioner! They'll pay with their lives for this trespass!
-- Warchief Kargath Bladefist yells: The excecutioner has arrived! Ready the prisoners!
-- old scriptdev data
-- ('-1540042','Ours is the TRUE Horde! The only Horde!','10323','1','0','0','17614','kargath SAY_AGGRO1'),
-- ('-1540043','I'll carve the meat from your bones!','10324','1','0','0','13863','kargath SAY_AGGRO2'), -> 17616
-- ('-1540044','I am called Bladefist for a reason. As you will see.','10325','1','0','0','17617','kargath SAY_AGGRO3'),
-- ('-1540045','For the real Horde!','10326','1','0','0','17619','kargath SAY_SLAY1'),
-- ('-1540046','I am the ONLY warchief!','10327','1','0','0','17620','kargath SAY_SLAY2'),
-- ('-1540047','The true Horde... will prevail.','10328','1','0','0','17621','kargath SAY_DEATH'),
-- ('-1540048','Cowards! You'll never draw me into the shadows!','0','1','0','0','18367','kargath SAY_EVADE'), -> Check if it has a sound attached.
-- 17614	Ours is the TRUE Horde! The only Horde!		1	0	0	0	1	10323	0	0	0	0	0	0	0	18019
-- 17616	I'll carve the meat from your bones!		0	0	0	0	1	0	0	0	0	0	0	0	0	18019
-- 17617	I am called Bladefist for a reason. As you will see.		1	0	0	0	1	10325	0	0	0	0	0	0	0	18019
-- 17619	For the real Horde!		1	0	0	0	1	10326	0	0	0	0	0	0	0	18019
-- 17620	I am the ONLY warchief!		1	0	0	0	1	10327	0	0	0	0	0	0	0	18019
-- 17621	The true Horde... will prevail.		1	0	0	0	1	10328	0	0	0	0	0	0	0	18019
-- 18367	Cowards! You'll never draw me into the shadows!		1	0	0	0	1	0	0	0	0	0	0	0	0	18019
-- https://github.com/cmangos/mangos-tbc/commit/c0d3643003839653bd5977b885ed764b665e76ee#diff-0356dba4d68dcb72de15cc754be85afadfca32b4582db9c9394c2934030ce2a1
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesId1` = 10324 WHERE `Id` = 17616; -- I'll carve the meat from your bones!

-- Execution Event Yells
-- 13721	The Alliance dares to intrude this far into my fortress?  Bring out the Honor Hold prisoners and call for the executioner!  They'll pay with their lives for this trespass!
-- 13722	Thrall's false Horde dares to intrude this far into my fortress?  Bring out the Thrallmar prisoners and call for the executioner!  They'll pay with their lives for this trespass!
-- 13723	The excecutioner has arrived!  Ready the prisoners!
-- 13724	Execute one of the prisoners at once!  Slay the dwarf first... he talks far too much for his own good.
-- 13725	Execute one of the prisoners at once!  Slay the tauren first... keep his head as a trophy.
-- 13726	It looks like we have a ranking officer among our captives... how amusing.  Execute the Alliance wench!
-- 13727	It looks like we have a ranking officer among our captives... how amusing.  Execute this green-skinned dog at once!
-- 13728	Slay the last prisoner.  Maybe our intruders will reconsider their foolish actions now!
UPDATE `broadcast_text` SET `ChatTypeID` = 6 WHERE `Id` IN (13721, 13722, 13723, 13724, 13725, 13726, 13727, 13728);

