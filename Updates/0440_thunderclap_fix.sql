-- Fixes Thunderclap spell used by Sethekk Guards to use correct movement speed reduction
UPDATE spell_template SET EffectRealPointsPerLevel2=0 WHERE id=33967;
