-- The Shattered Halls - Hellfire Training Dummy
/*
sniffs shows UNIT_FIELD_FLAGS: 657664
- 524288	UNIT_FLAG_IN_COMBAT
- 131072	UNIT_FLAG_PACIFIED -- comes from server side spell = 7056 
- 2048	UNIT_FLAG_PET_IN_COMBAT
- 256	UNIT_FLAG_IMMUNE_TO_PLAYER
*/
UPDATE creature_template SET UnitFlags=2304 WHERE entry = 17578;
