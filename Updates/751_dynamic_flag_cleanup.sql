-- remove flags which are dynamic in nature
--                                                 moving dep player con silenced   pacified   stunned    in combat  taxi fligh disarmed   confused   fleeing    possessed
UPDATE creature_template SET UnitFlags=UnitFlags&~(0x00000004+0x00000008+0x00002000+0x00020000+0x00040000+0x00080000+0x00100000+0x00200000+0x00400000+0x00800000+0x01000000);


