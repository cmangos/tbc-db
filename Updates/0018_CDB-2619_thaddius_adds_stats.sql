-- Update stats and remove movement hack for NPC 16218 (Tesla Coil)
UPDATE creature_template SET HealthMultiplier=1.35, SpeedWalk=(2/2.5), SpeedRun=(8/7.0), MovementType=0 WHERE Entry=16218;


