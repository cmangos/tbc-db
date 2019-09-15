UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(4) WHERE entry IN(2760,575); -- fire
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(2762); -- nature
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(16) WHERE entry IN(2761); -- frost
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(2761,2762,2760,575); -- bleed

