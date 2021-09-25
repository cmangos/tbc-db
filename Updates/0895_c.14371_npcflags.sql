-- Add UNIT_NPC_FLAG_VENDOR_FOOD instead UNIT_NPC_FLAG_QUESTGIVER for Shen'dralar Provisioner 14371
-- Based on https://github.com/cmangos/classic-db/commit/b097979e66d1b3f82083268485f2a0e21556c5e4
UPDATE creature_template SET NpcFlags=4736 WHERE Entry=14371; -- 4226

