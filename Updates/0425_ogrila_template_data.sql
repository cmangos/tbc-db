-- Scorpion c.15476
UPDATE creature_template SET ModelId1=15469, ModelId2=5905, ModelId3=15470, ModelId4=15471 WHERE entry=15476;
-- Wrath Hound c.20557
UPDATE creature_template SET SpeedWalk=2.5/2.5, RangedBaseAttackTime=1500, ModelId2=0 WHERE entry=20557;
-- Ethereum Prisoner (Group Energy Ball) c.20889
UPDATE creature_template SET SpeedWalk=2.5/2.5, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, ModelId1=19745, ModelId2=15880 WHERE entry=20889;
-- Blade's Edge Invisible Stalker c.21234
UPDATE creature_template SET SpeedWalk=2.5/2.5, MovementType=2 WHERE entry=21234;
-- Apexis Flayer c.22175
UPDATE creature_template SET SpeedWalk=2.5/2.5, FactionAlliance=1873, FactionHorde=1873, RangedBaseAttackTime=1000, ModelId1=21234, ModelId2=0 WHERE entry=22175;
UPDATE creature_model_info SET bounding_radius=2.298332 WHERE modelid=21234;
-- Shard-Hide Boar c.22180
UPDATE creature_template SET SpeedWalk=2.5/2.5, FactionAlliance=14, FactionHorde=14 WHERE entry=22180;
UPDATE creature_model_info SET bounding_radius=1.645334 WHERE modelid=20831;
-- Bash'ir Raider c.22241
UPDATE creature_template SET SpeedWalk=2.5/2.5 WHERE entry=22241;
UPDATE creature_model_info SET bounding_radius=0.6 WHERE modelid=20898;
-- Bash'ir Spell-Thief c.22242
UPDATE creature_template SET SpeedWalk=2.5/2.5 WHERE entry=22242;
UPDATE creature_model_info SET bounding_radius=0.6 WHERE modelid=20895;
-- Unbound Ethereal c.22244
UPDATE creature_template SET SpeedWalk=2.5/2.5 WHERE entry=22244;
UPDATE creature_model_info SET bounding_radius=0.75, combat_reach=2.25 WHERE modelid=20894;
-- Wrath Corruptor c.22254
UPDATE creature_template SET SpeedWalk=2.5/2.5, ModelId2=20203, ModelId3=20204, ModelId4=20206 WHERE entry=22254;
-- Daggertail Lizard c.22255
UPDATE creature_template SET SpeedWalk=2.5/2.5 WHERE entry=22255;
-- Ogri'la Steelshaper c.22264
UPDATE creature_template SET ModelId1=21407 WHERE entry=22264;
-- Ogri'la Grubgiver c.22266
UPDATE creature_template SET ModelId1=21410 WHERE entry=22266;
-- Ogri'la Merchant c.22270
UPDATE creature_template SET ModelId1=21409 WHERE entry=22270;
-- Ogri'la Trader c.22271
UPDATE creature_template SET ModelId1=21411 WHERE entry=22271;
-- Apexis Guardian c.22275
UPDATE creature_template SET ModelId1=21585, ModelId2=0 WHERE entry=22275;
-- Galvanoth c.22281
UPDATE creature_model_info SET bounding_radius=10.29085 WHERE modelid=18526;
-- Furnace Guard c.22291
UPDATE creature_template SET SpeedWalk=2.5/2.5, UnitFlags=32768, ModelId1=21307, ModelId2=0 WHERE entry=22291;
-- Wrath Speaker c.22195
UPDATE creature_template SET SpeedWalk=4/2.5, SpeedRun=10/7 WHERE entry=22195;
-- Mo'arg Extractor c.22304
UPDATE creature_template SET SpeedWalk=2.5/2.5, UnitFlags=32768, ModelId1=18368, ExtraFlags=4096 WHERE entry=22304;
UPDATE creature_model_info SET bounding_radius=4.100669 WHERE modelid=18368;
-- Simon Game Bunny c.22923
UPDATE creature_template SET UnitFlags=33555200, ModelId2=11686 WHERE entry=22923;
-- Skyguard Scout c.22980
UPDATE creature_template SET SpeedRun=15/7, ModelId1=21459, ModelId2=21182, ModelId3=21194, ModelId4=21184 WHERE entry=22980;
-- Invisible Stalker (Floating) c.23033
UPDATE creature_template SET UnitFlags=33555200 WHERE entry=23033;
-- Legion Ring Event InvisMan c.23059
UPDATE creature_template SET UnitFlags=33554688, ModelId2=19595, InhabitType=4 WHERE entry=23059;
-- Rivendark c.23061
UPDATE creature_template SET SpeedWalk=10/2.5, SpeedRun=30/7, UnitFlags=2147483648, FactionAlliance=14, FactionHorde=14, InhabitType=4, ExtraFlags=4096 WHERE entry=23061;
-- Fel Imp Defender c.23078
UPDATE creature_template SET SpeedRun=14/7, UnitFlags=33554688, ModelId2=19595 WHERE entry=23078;
-- Ogre Smoke Image c.23088
UPDATE creature_template SET UnitFlags=33587456, MovementType=2, InhabitType=4 WHERE entry=23088;
UPDATE creature_model_info SET bounding_radius=0.893, combat_reach=1.5 WHERE modelid=21245;
-- Bash'ir Surveyor c.23153
UPDATE creature_template SET UnitFlags=32768, ExtraFlags=4096 WHERE entry=23153;
-- Mana-debt Slave c.23154
UPDATE creature_template SET UnitFlags=32768, ModelId2=7816, ModelId3=21294 WHERE entry=23154;
-- Felhound Defender c.23173
UPDATE creature_template SET SpeedRun=18/7, UnitFlags=33554688, ModelId2=19595 WHERE entry=23173;
-- Crystalfused Miner c.23174
UPDATE creature_template SET UnitFlags=32768 WHERE entry=23174;
-- Bombing Run Target Bunny c.23118
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=23118;
-- Bombing Run Explosion Bunny c.23119
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=23119;
-- Ethereal Smoke Image c.23189
UPDATE creature_template SET UnitFlags=33587456, MovementType=2, InhabitType=4 WHERE entry=23189;
UPDATE creature_model_info SET bounding_radius=0.3, combat_reach=1 WHERE modelid=21317;
-- Black Dragon Smoke Image c.23190
UPDATE creature_template SET UnitFlags=33587456, MovementType=2, InhabitType=4 WHERE entry=23190;
UPDATE creature_model_info SET bounding_radius=0.2, combat_reach=2 WHERE modelid=21319;
-- Gan'arg Underling c.23199
UPDATE creature_template SET UnitFlags=33554688, ModelId2=19595 WHERE entry=23199;
-- Mo'arg Tormenter c.23212
UPDATE creature_template SET SpeedRun=14/7, UnitFlags=33554688, ModelId2=19595 WHERE entry=23212;
-- Chu'a'lor 23233
UPDATE creature_template SET ModelId1=21404 WHERE entry=23233;
-- Felguard Smoke Image c.23252
UPDATE creature_template SET UnitFlags=33587456, MovementType=2, InhabitType=4 WHERE entry=23252;
UPDATE creature_model_info SET bounding_radius=0.9684735, combat_reach=1 WHERE modelid=21365;
-- Kronk's Book Bunny c.23255
UPDATE creature_template SET UnitFlags=33554432, ModelId2=11686, InhabitType=4 WHERE entry=23255;
DELETE FROM `creature_template_addon` WHERE `entry`=23255; -- Kronk's Book Bunny
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23255, 0, 0, 1, 16, 0, 0, '40570'); -- Kronk's Aura
-- Skyguard Windcharger c.23257
UPDATE creature_template SET ModelId2=21182, ModelId3=21194, ModelId4=21184 WHERE entry=23257;
-- Furywing c.23261
UPDATE creature_template SET SpeedWalk=10/2.5, SpeedRun=30/7, UnitFlags=2147483648, FactionAlliance=14, FactionHorde=14, InhabitType=4, ExtraFlags=4096 WHERE entry=23261;
-- Ethereal Ring, Forge c.23262
UPDATE creature_template SET UnitFlags=33555200, ModelId2=11686 WHERE entry=23262;
-- Portable Fel Cannon c.23278
UPDATE creature_template SET SpeedRun=14/7, UnitFlags=33554688, ModelId2=19595 WHERE entry=23278;
-- Insidion c.23281
UPDATE creature_template SET SpeedWalk=10/2.5, SpeedRun=30/7, UnitFlags=2147483648, FactionAlliance=14, FactionHorde=14, InhabitType=4, ExtraFlags=4096 WHERE entry=23281;
-- Obsidia c.23282
UPDATE creature_template SET SpeedWalk=10/2.5, SpeedRun=30/7, UnitFlags=2147483648, FactionAlliance=14, FactionHorde=14, InhabitType=4, ExtraFlags=4096 WHERE entry=23282;
-- Dragon Bunny c.23301
UPDATE creature_template SET ModelId2=11686 WHERE entry=23301;
-- Banishing Crystal Bunny 01 c.23322
UPDATE creature_template SET UnitFlags=33554432, ModelId2=11686 WHERE entry=23322;
-- Banishing Crystal Bunny 02 c.23327
UPDATE creature_template SET UnitFlags=33554432, ModelId2=11686 WHERE entry=23327;
-- Wrangled Aether Ray c.23343
UPDATE creature_template SET SpeedWalk=16/2.5, SpeedRun=28/7, UnitFlags=32768 WHERE entry=23343;
UPDATE creature_model_info SET bounding_radius=2.260511 WHERE modelid=21423;
-- Mo'arg Incinerator c.23354
UPDATE creature_model_info SET bounding_radius=9.128922 WHERE modelid=19899;
-- Zarcsin c.23355
UPDATE creature_template SET SpeedRun=8/7 WHERE entry=23355;
UPDATE creature_model_info SET bounding_radius=11.03733 WHERE modelid=21430;
-- Black Dragon Whelpling c.23364
UPDATE creature_template SET SpeedWalk=2.77778/2.5, SpeedRun=8/7, UnitFlags=33538, FactionAlliance=14, FactionHorde=14, MovementType=2 WHERE entry=23364;
UPDATE creature_model_info SET bounding_radius=0.591257 WHERE modelid=387;
-- Torkus Jr. c.23365
UPDATE creature_template SET SpeedWalk=6.5/2.5, SpeedRun=10/7, UnitFlags=33536, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, MovementType=2 WHERE entry=23365;
UPDATE creature_model_info SET bounding_radius=0.938, combat_reach=1.4 WHERE modelid=21433;
-- Simon Game Bunny Large c.23378
UPDATE creature_template SET ModelId1=5187, ModelId2=14501 WHERE entry=23378;
-- Bronco c.23380
UPDATE creature_template SET SpeedRun=9.7/7, MovementType=2 WHERE entry=23380;
UPDATE creature_model_info SET bounding_radius=2.260511 WHERE modelid=21444;
-- Simon Game Summon Target c.23382
UPDATE creature_template SET UnitFlags=33555200, ModelId2=11686 WHERE entry=23382;
-- Bash'ir's Harbinger c.23390
UPDATE creature_template SET UnitFlags=33088 WHERE entry=23390;
UPDATE creature_model_info SET bounding_radius=0.9, combat_reach=3 WHERE modelid=21489;
-- Bash'ir c.23391
UPDATE creature_template SET UnitFlags=33088 WHERE entry=23391;
UPDATE creature_model_info SET bounding_radius=1.06946, combat_reach=3.5 WHERE modelid=21488;
-- Bash'ir Landing Boss Bunny c.23395
UPDATE creature_template SET UnitFlags=33554688, ModelId2=11686 WHERE entry=23395;
-- Legion Ring Shield Zapper InvisMan c.23500
UPDATE creature_template SET UnitFlags=33554688, ModelId2=19595, InhabitType=4 WHERE entry=23500;

