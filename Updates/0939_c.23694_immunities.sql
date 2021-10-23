-- Add missing Immunities for Pulsing Pumpkin 23694
--																		   Confused, Fear, Horror, Silence, Sleep, Snare, Stun, Freeze, Knockout, Banish and Interrupt
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|2|16|8388608|256|512|1024|2048|4096|8192|131072|33554432 WHERE `entry` = 23694;

