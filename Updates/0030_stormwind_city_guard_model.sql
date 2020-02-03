/*
Stormwind City Guard (68) - ModelId1 3167 (male), ModelId2 5446 (female)
Issue: they all currently spawn as female

Relevant comments from core - Creature::ChooseDisplayId
// if mod4 && mod3 && mod2 && mod1  use any, by 25%-chance (other gender is selected and replaced after this function)
// if mod3 && mod2 && mod1          use mod3 unless mod2 has modelid_alt_model (then all by 33%-chance)
// if mod2                          use mod2 unless mod2 has modelid_alt_model (then both by 50%-chance)
// if mod1                          use mod1

In our case for Stormwind Guard, we fall into scenario 3 (if mod2), because we have both ModelId1 and ModelId2.
Need to set alternative model for ModelId2 for guards to have a chance at being male.
*/
UPDATE `creature` SET `modelid`=0 WHERE `id`=68;
UPDATE `creature_model_info` SET `modelid_alternative`=3167 WHERE `modelid`=5446;


