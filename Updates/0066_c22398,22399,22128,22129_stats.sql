-- Correct Stats for Durnholde Reinforcement 22398,22399
UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67, `MechanicImmuneMask` = `MechanicImmuneMask`|(1+2+16+512+2048+4096+8192+65536+8388608+536870912) WHERE `entry` = 22398;
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|(1+2+16+512+2048+4096+8192+65536+8388608+536870912) WHERE `entry` = 22399;

-- Correct Stats for Durnholde Lookout 22128,22129
UPDATE `creature_template` SET `MinLevel` = 66, `MaxLevel` = 67, `MechanicImmuneMask` = `MechanicImmuneMask`&~(1+2+4+32+512+4096+32768+65536+131072+262144+524288+1048576+2097152+4194304+16777216+67108864+134217728+536870912) WHERE `entry` = 22128;
UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 71, `MechanicImmuneMask` = `MechanicImmuneMask`&~(1+2+4+32+512+4096+32768+65536+131072+262144+524288+1048576+2097152+4194304+16777216+67108864+134217728+536870912) WHERE `entry` = 22129;

