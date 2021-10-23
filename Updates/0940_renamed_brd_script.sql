-- Remove renamed brd tbc dbscript for [DND] L70ETC Drums - Grim Guzzler Despawn Drums on Drummer Spawn
-- https://github.com/cmangos/tbc-db/commit/1f919d8b3cf2a131eff991a3d2f5259ccdc24960#diff-4963014397da4d8f36413aa610013b5dffb775df3640253c3c11899c41cae087L3030
DELETE FROM dbscripts_on_creature_movement WHERE id = 9839501; -- old guid * 100 + 1

