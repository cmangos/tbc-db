-- DB/Areatrigger: Fix orientation on sethekkhalls exit thx@Xadras
UPDATE `areatrigger_teleport` SET `name`='Sethekk Halls (Exit)' WHERE (`id`='4399');
UPDATE `areatrigger_teleport` SET `name`='Auchenai Crypts (Exit)' WHERE (`id`='4403');
UPDATE `areatrigger_teleport` SET `target_orientation`='1.602784' WHERE (`id`='4399');

