-- Reinsert ExtendedCost Values for tbc+ AV Vendors
-- https://web.archive.org/web/20080502114442/http://wow.allakhazam.com/db/mob.html?wmob=13217 - Beware costs are changed in tbcclassic!
-- Lost in backport https://github.com/cmangos/tbc-db/commit/7329b66ba7dfaafb19caf5338f2c12037c616f36
-- Resolves https://github.com/cmangos/issues/issues/4027
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1564 WHERE `entry` IN (512,513) AND `item` IN (17348,17351); -- Major Healing Draught,Major Mana Draught (1564)
UPDATE `npc_vendor_template` SET `ExtendedCost` = 460 WHERE `entry` IN (512,513) AND `item` IN (17349,17352,19316,19317); -- Superior Healing Draught,Superior Mana Draught,Ice Threaded Arrow,Ice Threaded Bullet (460)
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1005 WHERE `entry` IN (512,513) AND `item` IN (19030,19029); -- Stormpike Battle Charger,Horn of the Frostwolf Howler
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1003 WHERE `entry` IN (512,513) AND `item` IN (19032,19031); -- Stormpike Battle Tabard,Frostwolf Battle Tabard
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1002 WHERE `entry` IN (512,513) AND `item` IN (19045,19046); -- Stormpike Battle Standard,Frostwolf Battle Standard
UPDATE `npc_vendor_template` SET `ExtendedCost` = 532 WHERE `entry` IN (512,513) AND `item` IN (19084,19086,19319,19320,19083,19085,19319,19320); -- Stormpike Soldier's Cloak,Stormpike Sage's Cloak,Harpy Hide Quiver,Gnoll Skin Bandolier,Frostwolf Legionnaire's Cloak,Frostwolf Advisor's Cloak,Harpy Hide Quiver,Gnoll Skin Bandolier
UPDATE `npc_vendor_template` SET `ExtendedCost` = 428 WHERE `entry` IN (512,513) AND `item` IN (19091,19092,19093,19094,19087,19088,19089,19090); -- Stormpike Plate Girdle,Stormpike Mail Girdle,Stormpike Leather Girdle,Stormpike Cloth Girdle,Frostwolf Plate Belt,Frostwolf Mail Belt,Frostwolf Leather Belt,Frostwolf Cloth Belt
UPDATE `npc_vendor_template` SET `ExtendedCost` = 533 WHERE `entry` IN (512,513) AND `item` IN (19097,19098,19095,19096); -- Stormpike Soldier's Pendant,Stormpike Sage's Pendant,Frostwolf Legionnaire's Pendant,Frostwolf Advisor's Pendant
UPDATE `npc_vendor_template` SET `ExtendedCost` = 496 WHERE `entry` IN (512,513) AND `item` IN (19100,19104,19099,19103); -- Electrified Dagger,Stormstrike Hammer,Glacial Blade,Frostbite
UPDATE `npc_vendor_template` SET `ExtendedCost` = 497 WHERE `entry` IN (512,513) AND `item` IN (19102,19101); -- Crackling Staff,Whiteout Staff
UPDATE `npc_vendor_template` SET `ExtendedCost` = 702 WHERE `entry` IN (512,513) AND `item` IN (19308,19309,19310,19311,19312,19315,19321,19323,19324); -- Tome of Arcane Domination,Tome of Shadow Force,Tome of the Ice Lord,Tome of Fiery Arcana,Lei of the Lifegiver,Therazane's Touch,The Immovable Object,The Unstoppable Force,The Lobotomizer
UPDATE `npc_vendor_template` SET `ExtendedCost` = 489 WHERE `entry` IN (512,513) AND `item` IN (19325,21563); -- Don Julio's Band,Don Rodrigo's Band

