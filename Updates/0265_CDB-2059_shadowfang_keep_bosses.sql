UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608) WHERE Entry=4279;
-- Fixed faction and mechanic immunities of Wolf Master Nandos
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608)  WHERE Entry=3927;
-- Fixed mechanic immunities of Rethilgore and Razorclaw the Butcher
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608) WHERE Entry IN (3886, 3914);
-- Fixed mechanic immunities of Baron Silverlaine and Commander Springvale
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(64+1024+2048+4096+8192+8388608) WHERE Entry IN (3887, 4278);


