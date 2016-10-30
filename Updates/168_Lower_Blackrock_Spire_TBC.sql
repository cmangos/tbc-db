-- =================================
-- LOWER BLACKROCK SPIRE TBC UPDATES
-- =================================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (10263,9219,9218,9217,9196,9236,9237,16080,9596,10596,10376,9736,10220,10268,9718,9568);











