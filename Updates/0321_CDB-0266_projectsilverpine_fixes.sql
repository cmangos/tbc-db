-- Fixes based on Project Silverpine reports (Titarion and Sinoxan) and some of the fixes by Titarion

-- Reduce the drop rate for Quest Item: Bloodstone Amulet
-- Source: https://tbc.wowhead.com/item=4495/bloodstone-amulet#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (2589, 2587, 2586) AND `item` = 4495;

-- Allowed Warlocks to accept the Quest 8381 (Armaments of War)
-- https://classic.wowhead.com/quest=8379/armaments-of-war
-- https://classic.wowhead.com/quest=8381/armaments-of-war
-- Source: http://www.wowhead.com/quest=8381
UPDATE `quest_template` SET `RequiredClasses` = 384 WHERE `entry` = 8381; -- mage+warlock (128 befor) there is no quest for warlock specific

-- The Item: Immature Venom Sac will now rot (disappear) after 1 hour (real time)
-- Source: http://www.wowhead.com/item=12586
UPDATE `item_template` SET `duration` = 3600, `ExtraFlags` = 1 WHERE `entry` = 12586;

-- Removed the Quest Item: 6083 (Broken Tears) from dropping from creatures as it drops from gameobject
-- Source: http://www.wowhead.com/quest=1369
DELETE FROM `creature_loot_template` WHERE `item` = 6083; -- https://tbc.wowhead.com/item=6083/broken-tears

-- Remove the Quest Item: Dinosaur Bone from Bloodpetal Trapper and Frenzied Pterrordax
-- Source: http://www.wowhead.com/item=11114#dropped-by, https://tbc.wowhead.com/npc=6503/spiked-stegodon
DELETE FROM `creature_loot_template` WHERE `entry` IN (6503, 6512, 9167) AND `item` = 11114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 11114;

-- Correct the drop rate of the following Quest Items:
-- Note: for most of the items, the value is guessed from comments, especially
-- those posted prior patch 2.3 were questing was make more easy by reducing many mobs stats
-- and increasing some drops rate
-- but still better than the way too high 80% drop chance previously in DB for every item
-- Source: https://tbc.wowhead.com/item=6080/shadow-panther-heart#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 768 AND `item` = 6080;

 -- https://tbc.wowhead.com/item=21928/winterspring-blood-sample#comments:id=5282927
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 21928;

-- Source: hhttps://tbc.wowhead.com/item=4029/akiris-reed#dropped-by;comments:id=5282927
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4029;

-- Source: https://tbc.wowhead.com/item=3915/bloody-bone-necklace#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3915;

-- Source: https://tbc.wowhead.com/item=4106/tumbled-crystal#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `item` = 4106;

-- Source: https://tbc.wowhead.com/item=3901/bloodscalp-tusk#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `item` = 3901;

-- https://tbc.wowhead.com/item=3839/pristine-tigress-fang#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3839;

-- https://tbc.wowhead.com/item=3862/aged-gorilla-sinew#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3862;

-- Source: https://tbc.wowhead.com/item=3863/jungle-stalker-feather#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3863;

-- Source: https://tbc.wowhead.com/item=3919/mistvale-giblets#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3919;

-- Source: https://tbc.wowhead.com/item=1524/skullsplitter-tusk#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 1524;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 1524 AND `entry` IN (672,781,783,1059);

-- https://tbc.wowhead.com/item=3916/split-bone-necklace#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3916;

-- Source: https://tbc.wowhead.com/item=4053/large-river-crocolisk-skin#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `item` = 4053;

-- Source: https://tbc.wowhead.com/item=5803/speck-of-dream-dust#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5803;

-- Source: https://tbc.wowhead.com/item=6184/monstrous-crawler-leg#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 6184;

-- Source: https://tbc.wowhead.com/item=6169/unprepared-sawtooth-flank#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 6169;

-- Source: https://tbc.wowhead.com/item=9322/undamaged-venom-sac#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 9322;

-- Source: https://tbc.wowhead.com/item=5808/pridewing-venom-sac#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 5808;

-- Source: https://tbc.wowhead.com/item=5463/glowing-gem#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 5463;

-- Source: https://tbc.wowhead.com/item=13815/some-rune#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 13815;

-- Source: https://tbc.wowhead.com/item=5336/grell-earring#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -48 WHERE `item` = 5336;

-- Source: https://tbc.wowhead.com/item=5338/ancient-moonstone-seal#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 5338;

-- Source: https://tbc.wowhead.com/item=5413/moonstalker-fang#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5413;

-- Source: https://tbc.wowhead.com/item=5348/worn-parchment#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5348;

-- Source: https://tbc.wowhead.com/item=5414/grizzled-scalp#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 5414;

-- Source: https://tbc.wowhead.com/item=6079/crude-charm#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4633,4635) AND `item` = 6079;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (4632, 4634, 4636, 4637, 12976, 12977) AND `item` = 6079;

-- Source: https://tbc.wowhead.com/item=4888/crawler-mucus#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4888;

-- Source: https://tbc.wowhead.com/item=4887/intact-makrura-eye#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -65 WHERE `item` = 4887;

-- Source: https://tbc.wowhead.com/item=4870/canvas-scraps#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4870;

-- Source: https://tbc.wowhead.com/item=11674/jadefire-felbind#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -23 WHERE `item` = 11674;

-- Source: https://tbc.wowhead.com/item=9369/iridescent-sprite-darter-wing#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 9369;
UPDATE `creature_loot_template` SET `maxcount` = 2 WHERE `entry` = 7997 AND `item` = 9369;

-- Source: https://tbc.wowhead.com/item=9237/woodpaw-gnoll-mane#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 9237;

-- Source: https://tbc.wowhead.com/item=4759/plainstrider-talon#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4759;

-- Source: https://tbc.wowhead.com/item=4758/prairie-wolf-paw#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4758;

-- Source: http://www.wowhead.com/item=4769#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -80 WHERE  `item` = 4769;

-- Source: https://tbc.wowhead.com/item=5203/flatland-prowler-claw#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `item` = 5203;

-- Source: https://tbc.wowhead.com/item=4802/cougar-claws#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4802;

-- Source: https://tbc.wowhead.com/item=4801/stalker-claws#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4801;

-- Source: https://tbc.wowhead.com/item=4803/prairie-alpha-tooth#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 4803;

-- Source: https://tbc.wowhead.com/item=22381/silithus-venom-sample#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 22381;

-- Source: https://tbc.wowhead.com/item=11477/white-ravasaur-claw#objective-of
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 11477;

-- https://tbc.wowhead.com/item=6995/corrupted-kor-gem#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6995;

-- Source: https://tbc.wowhead.com/item=11837/gorishi-scent-gland#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 11837;

-- Source: https://tbc.wowhead.com/item=8587/centipaar-insect-parts#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 8587;

-- Source: https://tbc.wowhead.com/item=20519/southsea-pirate-hat#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 20519;

-- Source: https://tbc.wowhead.com/item=5204/bloodfeather-belt#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5204;

-- Source: https://tbc.wowhead.com/item=5168/timberling-seed#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE `item` = 5168;

-- Source: https://tbc.wowhead.com/item=5170/mossy-tumor#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5170;

-- Source: https://tbc.wowhead.com/item=3412/webwood-spider-silk#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 3412;

-- Source: https://tbc.wowhead.com/item=3409/nightsaber-fang#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 3409;

-- Source: https://tbc.wowhead.com/item=3411/strigid-owl-feather#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 3411;

-- Source: https://tbc.wowhead.com/item=5842/unrefined-ore-sample#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE `item` = 5842;

-- Source: https://tbc.wowhead.com/item=4898/lightning-gland#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4898;

-- Source: https://tbc.wowhead.com/item=5064/witchwing-talon#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -39 WHERE `item` = 5064;

-- https://tbc.wowhead.com/item=5795/hardened-tortoise-shell#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 5795;

-- Source: https://tbc.wowhead.com/item=5797/indurium-flake#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 5797;

-- https://tbc.wowhead.com/item=5855/silithid-heart#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 5855;

-- Source: https://tbc.wowhead.com/item=5794/salty-scorpid-venom#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 5794;

-- Source: https://tbc.wowhead.com/item=11114/dinosaur-bone#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `item` = 11114;

-- Source: https://tbc.wowhead.com/item=11831/webbed-pterrordax-scale#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 11831;

-- Source: https://tbc.wowhead.com/item=11830/webbed-diemetradon-scale#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE`item` = 11830;

-- Source: http://www.wowhead.com/item=12444#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 12444;

-- Source: https://tbc.wowhead.com/item=12622/shardtooth-meat#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 12622;

-- Source: https://tbc.wowhead.com/item=12623/chillwind-meat#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 12623;

-- Source: https://tbc.wowhead.com/item=3349/sidas-bag#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3349;

-- Source: https://tbc.wowhead.com/item=8363/shaman-voodoo-charm#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 8363;

-- Source: https://tbc.wowhead.com/item=20027/healthy-courser-gland#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 20027;

-- Source: https://tbc.wowhead.com/item=8428/laden-dew-gland#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 8428;

-- Source: https://tbc.wowhead.com/item=2671/wendigo-mane#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 2671;

-- Source: https://tbc.wowhead.com/item=2607/mogrosh-crystal#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 2607;

-- https://tbc.wowhead.com/item=2939/crocolisk-tear#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 2939;

-- Source: https://tbc.wowhead.com/item=2606/lurker-venom#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE`item` = 2606;

-- Source: https://tbc.wowhead.com/item=2536/trogg-stone-tooth#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2536;

-- Source: https://tbc.wowhead.com/item=3110/tunnel-rat-ear#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 3110;

-- Source: https://tbc.wowhead.com/item=4626/small-stone-shard#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4626;

-- Source: https://tbc.wowhead.com/item=12367/pristine-yeti-horn#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 12367;

-- https://tbc.wowhead.com/item=8009/dentrium-power-stone#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 8009;

-- Source: https://tbc.wowhead.com/item=9247/hatecrest-naga-scale#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 9247;

-- Source: https://tbc.wowhead.com/item=7847/buzzard-gizzard#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 7847;

-- Source: https://tbc.wowhead.com/item=7848/rock-elemental-shard#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 7848;

-- Source: https://tbc.wowhead.com/item=11266/fractured-elemental-shard#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 11266;
UPDATE `creature_loot_template` SET `MinCountOrRef` = 5, `MaxCount` = 5 WHERE `item` = 11266 AND `entry` = 8981;

-- Source: https://tbc.wowhead.com/item=4630/scrap-metal#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4630;

-- Source: https://tbc.wowhead.com/item=4522/witherbark-medicine-pouch#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4522;

-- Source: https://tbc.wowhead.com/item=4503/witherbark-tusk#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4503;

-- Source: https://tbc.wowhead.com/item=4513/raptor-heart#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 4513;

-- Source: https://tbc.wowhead.com/item=4435/mote-of-myzrael#comments:id=5191650
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4435;

-- https://tbc.wowhead.com/item=4512/highland-raptor-eye#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4512;

-- Source: http://www.wowhead.com/item=11467#comments - Deathmaw bugged 1minmax
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `MinCountOrRef` = 3, `MaxCount` = 10 WHERE `item` = 11467;

-- https://tbc.wowhead.com/quest=1170/the-brood-of-onyxia - tbc+
-- https://tbc.wowhead.com/quest=1171/the-brood-of-onyxia
-- https://tbc.wowhead.com/quest=1172/the-brood-of-onyxia
UPDATE `quest_template` SET `MinLevel` = 37 WHERE `entry` IN (1170, 1171, 1172);

/* Removed Mana Points from all Warriors Trainers
   Sources: Example: http://www.wowhead.com/npc=5114/bilban-tosslespanner
            http://www.youtube.com/watch?v=nUwedP9Uoz4&t=2m48s
*/
UPDATE `creature_template` SET `minlevelmana` = 0, `maxlevelmana` = 0 WHERE `subname` = 'Warrior Trainer';

/* Removed Mana Points from Poisonous Skitterer
   Source: http://www.youtube.com/watch?v=whsUTnSoPto&t=1m1s
*/
UPDATE `creature_template` SET `minlevelmana` = 0, `maxlevelmana` = 0 WHERE `entry` = 15977;

