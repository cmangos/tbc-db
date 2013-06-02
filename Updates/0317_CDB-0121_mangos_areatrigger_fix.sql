-- Set The Molten Core -> BRD areatrigger to level 48
-- later went down to 0, vmangos has same, inside of MC to BRD
UPDATE `areatrigger_teleport` SET `required_level` = 0 WHERE `id` = 2890;

