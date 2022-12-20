-- Remove remaining cases where `creature`.`modelid` != 0
-- Obsolte column can be removed! (Implementing probability column seems questionable)
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (16842,21419,22332,22418,19937,17432,17439,25195);

/*
Time: 02/02/2008 00:09:06.000 Number: 117822
Entry: 22332
[0] Name: Brood of Neltharaku
[1] Name:
[2] Name:
[3] Name:
Sub Name:
Icon Name:
Type Flags: None (0)
Type: Dragonkin (2)
Family: None (0)
Rank: Elite (1)
Unk Int: 0
Pet Spell Data Id: 0
[0] Display ID: 19980
[1] Display ID: 0
[2] Display ID: 0
[3] Display ID: 0
HealthMultriplier: 4
ManaMultiplier: 3
Racial Leader: False

[1] (46) UNIT_FIELD_FLAGS: (33600) Unk6, NotAttackbleByPlayerControlled, OnlyAttackableByPlayerControlled, OnlySwim
[1] (152) UNIT_FIELD_DISPLAYID: 19980
maybe invisible?
*/

