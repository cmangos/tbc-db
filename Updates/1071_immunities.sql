-- rumbling exile
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(2592); -- nature
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(2592); -- bleed
