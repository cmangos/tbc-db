-- ToDo: Add Spells like 46256 and alike for faction/modelid deconfusion for Midsummer Celebrant 16781
-- Remove duplicate gos
-- stormwind lineup seems to be incomplete .go c 94852 (red tent)

-- Midsummer Celebrant 16781 - Source: https://gist.githubusercontent.com/Kinzcool/e81137dab3bc828631ada717f7da5159/raw/796cd141ede5c02299a55ecd3037cdd460b5944c/creaturedifficulty.sql
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 16781;
UPDATE `creature_template` SET `Faction` = 35 WHERE `entry` = 16781;

-- Ribbon Pole Debug Target 17066
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 17066;

-- [DNT] Torch Tossing Target Bunny 25535
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 25535;

-- Removed duplicate spawns of some Midsummer Fire Festival spawns
DELETE FROM `creature` WHERE `guid` IN (1886,46888,46889,94805,94808,46804,47575,86716,86264,86327,94888,94762,94513,86426,94796,94950,94892,94831,86895,86376,86265,94887,94761,94839,94603,94555,86898,94899,94765,86358,86249,94518,94901,94956,86387,94786,
94840,90490,86258,86241,94760,94882,46807,47614,94723
);
DELETE FROM `creature_addon` WHERE `guid` IN (1886,46888,46889,94805,94808,46804,47575,86716,86264,86327,94888,94762,94513,86426,94796,94950,94892,94831,86895,86376,86265,94887,94761,94839,94603,94555,86898,94899,94765,86358,86249,94518,94901,94956,86387,94786,
94840,90490,86258,86241,94760,94882,46807,47614,94723
);

