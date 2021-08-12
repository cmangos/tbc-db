-- Add MECHANIC_DISORIENTED 2 - "Blind was a Poison in Classic - Dont Add Poison Immune Npcs"
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|2 WHERE `entry` IN  (
7044, -- Black Drake
9019, -- Emperor Dagran Thaurissan
11658, -- Molten Giant
11665, -- Lava Annihilator
11668, -- Firelord
11673 -- Ancient Core Hound
);

-- Add MECHANIC_DISTRACT 8
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|8 WHERE `entry` IN  (
7039, -- War Reaver
8906, -- Ragereaver Golem
8907, -- Wrath Hammer Construct
8908, -- Molten War Golem
8929 -- Princess Moira Bronzebeard

);

-- Add MECHANIC_SNARE 1024
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1024 WHERE `entry` IN  (
7044, -- Black Drake
9019, -- Emperor Dagran Thaurissan
9032, -- Hedrum the Creeper
9938, -- Magmus
12206 -- Primordial Behemoth
);

-- Add MECHANIC_STUN 2048
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|2048 WHERE `entry` IN  (
2757, -- Blacklash
2759, -- Hematus
7044, -- Black Drake
9017, -- Lord Incendius
9019, -- Emperor Dagran Thaurissan
9156, -- Ambassador Flamelash
9499, -- Plugger Spazzring
11658, -- Molten Giant
11665, -- Lava Annihilator
11666, -- Firewalker
11668, -- Firelord
11671, -- Core Hound
11673, -- Ancient Core Hound
12100, -- Lava Reaver
12265 -- Lava Spawn
);

-- Add MECHANIC_KNOCKOUT 8192
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|8192 WHERE `entry` IN  (
7039, -- War Reaver
7044, -- Black Drake
11658, -- Molten Giant
11665, -- Lava Annihilator
11666, -- Firewalker
11668, -- Firelord
11673, -- Ancient Core Hound
12100 -- Lava Reaver
);

-- Patch 2.4.0 - Non-corporeal Undead and Mechanical creatures are now susceptible to bleed effects. - DO NOT ADD THESE HERE
-- Add MECHANIC_BLEED 16384
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16384 WHERE `entry` IN  (
9017, -- Lord Incendius
9156, -- Ambassador Flamelash
9816, -- Pyroguard Emberseer
11665, -- Lava Annihilator
11666 -- Firewalker
);

-- Add MECHANIC_INTERRUPT 33554432
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|33554432 WHERE `entry` IN  (
2757, -- Blacklash
2759, -- Hematus
9499 -- Plugger Spazzring
);

-- ========================================================================================================
-- CLASSIC
-- ========================================================================================================

UPDATE `creature_template` SET `MechanicImmuneMask` = 646135647 WHERE `entry` = 1842; -- Highlord Taelan Fordring
UPDATE `creature_template` SET `MechanicImmuneMask` = 646135647 WHERE `entry` = 12126; -- Lord Tirion Fordring

-- Add Interrupt Immunity for General Drakkisath 10363
UPDATE `creature_template` SET `SpeedWalk` = 2.22222 / 2.5, `SpeedRun` =  6.94444 / 7, `MechanicImmuneMask` = `MechanicImmuneMask`|33554432 WHERE `entry` = 10363;

-- ========================================================================================================
-- TBC
-- ========================================================================================================
-- 269_black_morass
-- Chrono Lord Deja 17879,20738
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 17879;
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 20738;
-- Temporus 17880,20745
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 17880;
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 20745;
-- Aeonus 17881,20737
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 17881;
UPDATE `creature_template` SET `MechanicImmuneMask` = 42155863 WHERE `entry` = 20737;

-- 530 Outland
UPDATE `creature_template` SET `MechanicImmuneMask` = 46284630 WHERE `entry` = 23354; -- Mo'arg Incinerator (Same as 22281,23353,23355)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18733; -- Fel Reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19400; -- Fel Reaver Sentry
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22196; -- Wrath Reaver (Active Pre 2.1)

-- 532_karazhan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16485; -- Arcane Watchman
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16504; -- Arcane Protector
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17543; -- Strawman
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17547; -- Tinhead

-- 534_hyjal_summit

-- 540_shattered_halls
UPDATE `creature_template` SET `MechanicImmuneMask` = 545468947 WHERE `entry` IN (17671,20584); -- Shattered Hand Champion

-- 542_blood_furnace

-- 543_hellfire_ramparts
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|4 WHERE `entry` IN (17281,18055); -- Bonechewer Ripper does not have a weapon

-- 544_magtheridon

-- 545_steamvault

-- 546_underbog

-- 547_slave_pens

-- 548_serpentshrine_cavern

-- 550_the_eye

-- 552_arcatraz
-- Missing Charm Immunities
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (
-- Arca Normal
20866, -- Soul Devourer
20869,21586, -- Arcatraz Sentinel
20875, -- Negaton Screamer
20883 -- Spiteful Temptress
);
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 20896; -- Ethereum Slayer (619659262)
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 20897; -- Ethereum Wave-Caster (256)
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 21702; -- Ethereum Life-Binder (619659262)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 21596; -- Ethereum Slayer (1) (74186917)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 21597; -- Ethereum Wave-Caster (1) (1)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 22346; -- Ethereum Life-Binder (1) (74186917)
UPDATE `creature_template` SET `MechanicImmuneMask` = 46284631 WHERE `entry` = 20898; -- Gargantuan Abyssal
UPDATE `creature_template` SET `MechanicImmuneMask` = 46284627 WHERE `entry` IN (20900,21621); -- Unchained Doombringer
UPDATE `creature_template` SET `MechanicImmuneMask` = 46284631 WHERE `entry` = 20866; -- Soul Devourer

-- 553_botanica
-- Tempest-Forge Peacekeeper 18405,21578
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18405;
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21578;

-- 554_mechanar
-- Tempest-Forge Destroyer 19735,21542
UPDATE `creature_template` SET `MechanicImmuneMask` = 8413983 WHERE `entry` = 19735;
UPDATE `creature_template` SET `MechanicImmuneMask` = 8545055 WHERE `entry` = 21542;
-- Tempest-Forge Patroller 19166,21543
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19166;
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21543;
-- Mechano-Lord Capacitus 19219,21533
UPDATE `creature_template` SET `MechanicImmuneMask` = 109215575 WHERE `entry` = 19219;
UPDATE `creature_template` SET `MechanicImmuneMask` = 109215575 WHERE `entry` = 21533;

-- 555_shadow_labyrinth

-- 556_sethekk_halls

-- 557_mana_tombs

-- 558_auchenai_crypts

-- 560_old_hillsbrad_foothills

-- 564_black_temple

-- 565_gruul

-- ============================
-- 568_zulaman
-- ============================

UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 23574; -- Akil'zon
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 23576; -- Nalorakk (might also be disarmable in humanoid form -> c++)
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 23578; -- Jan'alai
UPDATE `creature_template` SET `MechanicImmuneMask` = 42012944 WHERE `entry` = 23818; -- Amani'shi Hatcher
UPDATE `creature_template` SET `MechanicImmuneMask` = 42012944 WHERE `entry` = 24504; -- Amani'shi Hatcher
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 23577; -- Halazzi
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 24143; -- Spirit of the Lynx
UPDATE `creature_template` SET `MechanicImmuneMask` = 650870623 WHERE `entry` = 24224; -- Corrupted Lightning Totem
UPDATE `creature_template` SET `MechanicImmuneMask` = 617299803 WHERE `entry` = 24239; -- Hex Lord Malacrass
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24240; -- Alyson Antille
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24241; -- Thurg
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24242; -- Slither
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24243; -- Lord Raadan
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24244; -- Gazakroth
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24245; -- Fenstalker
UPDATE `creature_template` SET `MechanicImmuneMask` = 8388625 WHERE `entry` = 24246; -- Darkheart
UPDATE `creature_template` SET `MechanicImmuneMask` = 8388625 WHERE `entry` = 24247; -- Koragg
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854239 WHERE `entry` = 23863; -- Zul'jin (might also be disarmable in humanoid form -> c++)
-- Trash
UPDATE `creature_template` SET `MechanicImmuneMask` = 650854231 WHERE `entry` = 23580; -- Amani'shi Warbringer
UPDATE `creature_template` SET `MechanicImmuneMask` = 545468947 WHERE `entry` = 23586; -- Amani'shi Scout
UPDATE `creature_template` SET `MechanicImmuneMask` = 570636123 WHERE `entry` = 23597; -- Amani'shi Guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = 579024731 WHERE `entry` = 23774; -- Amani'shi Trainer
UPDATE `creature_template` SET `MechanicImmuneMask` = 8467796 WHERE `entry` = 24047; -- Amani Crocolisk
UPDATE `creature_template` SET `MechanicImmuneMask` = 579026911 WHERE `entry` = 24374; -- Amani'shi Berserker
UPDATE `creature_template` SET `MechanicImmuneMask` = 579026907 WHERE `entry` = 24549; -- Amani'shi Tempest

-- ============================
-- 580_sunwell_plateau
-- ============================
--													  CHARM	DISORIENTED	DISARM	DISTRACT	FEAR	ROOT	SILENCE	SLEEP	SNARE	STUN	FREEZE	KNOCKOUT	POLYMORPH	BANISH		SHACKLE		TURN		HORROR		INTERRUPT	SAPPED
-- Kalecgos 24850
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 24850;
-- Sathrovarr the Corruptor 24892
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 24892;
-- Kalecgos 24891
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 24891;
-- Brutallus 24882
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 24882;
-- Felmyst 25038
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25038;
-- Unyielding Dead 25268
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		4 +		0 +		 	16 +	0 +		0 +		512 +	0 +		0 +		0 +		0 +			0 +			0 +			0 +			0 + 		8388608 + 	0 + 		0 WHERE `entry` = 25268;
-- Lady Sacrolash 25165
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25165;
-- Grand Warlock Alythess 25166
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25166;
-- M'uru 25741
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25741;
-- Entropius 25840
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25840;
-- Shadowsword Berserker 25798
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	0 +		0 +		0 +		0 +		0 +		0 +			0 +			0 +			0 +			0 + 		0 + 		0 + 		0 WHERE `entry` = 25798;
-- Shadowsword Fury Mage 25799
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	0 +		0 +		0 +		0 +		0 +		0 +			0 +			0 +			0 +			0 + 		0 + 		0 + 		0 WHERE `entry` = 25799;
-- Void Sentinal 25772
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	0 +  	256 +	512 +	0 +		2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25772;
-- Void Spawn 25824
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 + 	0 + 		4 +		0 +		 	0 +		0 +  	0 +		0 +		0 +		0 +		0 +		0 +			0 +			0 +			0 +			0 + 		0 + 		0 + 		0 WHERE `entry` = 25824;
-- Dark Fiend 25744
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 + 	0 + 		4 +		0 +		 	0 +		0 +  	0 +		0 +		0 +		0 +		0 +		0 +			0 +			0 +			0 +			0 + 		0 + 		0 + 		0 WHERE `entry` = 25744;
-- Kil'jaeden <The Deceiver> 25315
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25315;
-- Hand of the Deceiver 25588
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	0 +		512 +	1024 +	0 +		4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	0 + 	536870912 WHERE `entry` = 25588;
-- Volatile Felfire Fiend 25598
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	0 +  	256 +	512 +	0 +		2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25598;
-- Sinister Reflection 25708
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	0 + 	536870912 WHERE `entry` = 25708;
-- Shield Orb 25502
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25502;
--													  CHARM	DISORIENTED	DISARM	DISTRACT	FEAR	ROOT	SILENCE	SLEEP	SNARE	STUN	FREEZE	KNOCKOUT	POLYMORPH	BANISH		SHACKLE		TURN		HORROR		INTERRUPT	SAPPED

-- CREATURE_EXTRA_FLAG_NOT_TAUNTABLE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` IN (
25038, -- Felmyst
25165, -- Lady Sacrolash
25166, -- Grand Warlock Alythess
25741, -- M'uru
25840, -- Entropius
25772, -- Void Sentinal
25315, -- Kil'jaeden <The Deceiver>
25502, -- Shield Orb
25508 -- Shadowsword Guardian
);

-- ============================
-- Trash
-- ============================

--													  CHARM	DISORIENTED	DISARM	DISTRACT	FEAR	ROOT	SILENCE	SLEEP	SNARE	STUN	FREEZE	KNOCKOUT	POLYMORPH	BANISH		SHACKLE		TURN		HORROR		INTERRUPT	SAPPED	BLEED
-- Sunblade Cabalist 25363
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25363;
-- Sunblade Arch Mage 25367
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25367;
-- Sunblade Slayer 25368
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25368;
-- Sunblade Vindicator 25369
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25369;
-- Sunblade Dusk Priest 25370
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25370;
-- Sunblade Dawn Priest 25371
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25371;
-- Sunblade Scout 25372
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		8 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25372;
-- Shadowsword Soulbinder 25373
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25373;
-- Shadowsword Manafiend 25483
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25483;
-- Shadowsword Assassin 25484
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25484;
-- Shadowsword Deathbringer 25485
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25485;
-- Shadowsword Vanquisher 25486
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25486;
-- Shadowsword Lifeshaper 25506
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25506;
-- Sunblade Protector 25507
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		8 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 +	16384 WHERE `entry` = 25507;
-- Shadowsword Guardian 25508
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 + 16384 WHERE `entry` = 25508;
-- Priestess of Torment 25509
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25509;
-- Painbringer 25591
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25591;
-- Doomfire Destroyer 25592
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25592;
-- Apocalypse Guard 25593
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25593;
-- Chaos Gazer 25595
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25595;
-- Oblivion Mage 25597
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25597;
-- Cataclysm Hound 25599
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25599;
-- Shadowsword Commander 25837
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		0 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25837;
-- Volatile Fiend 25851
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	0 +  	256 +	512 +	0 +		2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25851;
-- Blazing Infernal 25860
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25860;
-- Felguard Slayer 25864
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	64 +  	256 +	512 +	1024 +	2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25864;
-- Sunblade Dragonhawk 25867
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	0 + 		0 +		0 +		 	0 +		0 +  	256 +	0 +		0 +		2048 +	0 +		8192 +		0 +			131072 +	524288 +	4194304 + 	0 + 		33554432 + 	0 WHERE `entry` = 25867;
-- Doomfire Shard 25948
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	0 +  	256 +	512 +	0 +		2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 25948;
-- Fire Fiend 26101
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 + 	2 + 		4 +		0 +		 	16 +	0 +  	256 +	512 +	0 +		2048 +	4096 +	8192 +		65536 +		131072 +	524288 +	4194304 + 	8388608 + 	33554432 + 	536870912 WHERE `entry` = 26101;
--													  CHARM	DISORIENTED	DISARM	DISTRACT	FEAR	ROOT	SILENCE	SLEEP	SNARE	STUN	FREEZE	KNOCKOUT	POLYMORPH	BANISH		SHACKLE		TURN		HORROR		INTERRUPT	SAPPED

-- ============================
-- 585_magisters_terrace
-- ============================

-- Selin Fireheart
UPDATE `creature_template` SET `MechanicImmuneMask` = 545472339 WHERE `entry` = 24723;
UPDATE `creature_template` SET `MechanicImmuneMask` = 545472339 WHERE `entry` = 25562;
-- Fel Crystal
UPDATE `creature_template` SET `MechanicImmuneMask` = 583745375 WHERE `entry` = 24722;
UPDATE `creature_template` SET `MechanicImmuneMask` = 583745375 WHERE `entry` = 25552;
-- Vexallus
UPDATE `creature_template` SET `MechanicImmuneMask` = 42090323 WHERE `entry` = 24744;
UPDATE `creature_template` SET `MechanicImmuneMask` = 42090323 WHERE `entry` = 25573;
-- Pure Energy
UPDATE `creature_template` SET `MechanicImmuneMask` = 7680 WHERE `entry` = 24745;
-- Priestess Delrissa (Priest)
UPDATE `creature_template` SET `MechanicImmuneMask` = 545456657, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24560;
UPDATE `creature_template` SET `MechanicImmuneMask` = 545456657, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25560;
-- Apoko (Shaman)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24553;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25541;
-- Eramas Brightblaze (Monk)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24554;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25550;
-- Garaxxas (Hunter)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24555;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25555;
-- Sliver (Ravager)
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24552;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25564;
-- Zelfan (Engineer)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24556;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25579;
-- High Explosive Sheep
-- Kagani Nightstrike (Rogue)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24557;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25556;
-- Ellrys Duskhallow (Warlock)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24558;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25549;
-- Fizzle (Imp)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24656;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 25553;
-- Warlord Salaris (Warrior)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24559;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25574;
-- Yazzai (Mage)
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24561;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 25578;
-- Kael'thas Sunstrider
UPDATE `creature_template` SET `MechanicImmuneMask` = 550190935 WHERE `entry` = 24664;
UPDATE `creature_template` SET `MechanicImmuneMask` = 550190935 WHERE `entry` = 24857;
-- Phoenix
UPDATE `creature_template` SET `MechanicImmuneMask` = 550189911, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24674;
-- Phoenix Egg
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24675;
-- Arcane Sphere

-- ============================
-- Trash
-- ============================

-- Sunblade Mage Guard
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24683;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25568;
-- Sunblade Blood Knight
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24684;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25565;
-- Sunblade Magister
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24685;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 25569;
-- Sunblade Warlock
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24686;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25572;
-- Sunblade Physician
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24687;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25570;
-- Wretched Skuller
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24688;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25577;
-- Wretched Bruiser
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24689;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25575;
-- Wretched Husk
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24690;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25576;
-- Coilskar Witch
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24696;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25547;
-- Sister of Torment
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24697;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25563;
-- Ethereum Smuggler
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24698;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25551;
-- Brightscale Wyrm
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24761;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25545;
-- Sunblade Keeper
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 24762;
UPDATE `creature_template` SET `MechanicImmuneMask` = 0 WHERE `entry` = 25567;
-- Sunblade Sentinel
UPDATE `creature_template` SET `MechanicImmuneMask` = 8396827+64+1024+2048+4096+131072 WHERE `entry` = 24777;
UPDATE `creature_template` SET `MechanicImmuneMask` = 8396827+64+1024+2048+4096+131072 WHERE `entry` = 25571;
-- Sunblade Imp
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 24815;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 25566;

-- Add missing CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY 0×00400000 4194304 (Curse of Tongues) as per Trugge Research
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|0x00400000 WHERE `entry` IN (
16808, 20597, -- Warchief Kargath Bladefist
17306, 18436, -- Watchkeeper Gargolmar
17307, 18435, -- Vazruden the Herald
17377, 18607, -- Keli'dan the Breaker
17381, 18621, -- The Maker
17537, 18434, -- Vazruden
17770, 20169, -- Hungarfen
17796, 20630, -- Mekgineer Steamrigger
17797, 20629, -- Hydromancer Thespia
17798, 20633, -- Warlord Kalithresh
17826, 20183, -- Swamplord Musel'ek
17827, 20165, -- Claw
17839, 20744, -- Rift Lord
17848, 20535, -- Lieutenant Drake
17879, 20738, -- Chrono Lord Deja
17880, 20745, -- Temporus
17882, 20184, -- The Black Stalker
17941, 19893, -- Mennu the Betrayer
17942, 19894, -- Quagmirran
17977, 21582, -- Warp Splinter
17991, 19895, -- Rokmar the Crackler
18096, 20531, -- Epoch Hunter
18105, 20168, -- Ghaz'an
18344, 20266, -- Nexus-Prince Shaffar
18371, 20318, -- Shirrak the Dead Watcher
18373, 20306, -- Exarch Maladaar
18431, 20254, -- Ethereal Beacon
18478, 20303, -- Avatar of the Martyred
18506, 20316, -- Raging Soul
18667, 20637, -- Blackheart the Inciter
18708, 20657, -- Murmur
18796, 20652, -- Fel Overseer
19710, 21526, -- Gatewatcher Iron-Hand
20870, 21626, -- Zereketh the Unbound
20879, 21595, -- Eredar Soul-Eater
20880, 21594, -- Eredar Deathbringer
20881, 21619, -- Unbound Devastator
20886, 21624, -- Wrath-Scryer Soccothrates
20906, 21606, -- Phase-Hunter
21104, 22170, -- Rift Keeper
21140, 22172, -- Rift Lord
21148, 22171, -- Rift Keeper

-- SWP
24850, -- Kalecgos
24892, -- Sathrovarr the Corruptor
24882, -- Brutallus
25038, -- Felmyst
25165, -- Lady Sacrolash
25166, -- Grand Warlock Alythess
25741, -- M'uru
25840, -- Entropius
25772, -- Void Sentinal
25315, -- Kil'jaeden <The Deceiver>
25588, -- Hand of the Deceiver
25598, -- Volatile Felfire Fiend
25708, -- Sinister Reflection
25502, -- Shield Orb

-- Trash
25372, -- Sunblade Scout
25373, -- Shadowsword Soulbinder
25507, -- Sunblade Protector
25508, -- Shadowsword Guardian
25592, -- Doomfire Destroyer
25593, -- Apocalypse Guard
25595, -- Chaos Gazer
25599, -- Cataclysm Hound
25837, -- Shadowsword Commander
25851 -- Volatile Fiend
);

