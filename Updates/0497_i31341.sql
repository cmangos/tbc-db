-- https://web.archive.org/web/20110703153526/http://www.wowhead.com:80/npc=22099#sells
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 22099 AND `item` = 31341; -- Wyrmcultist's Cloak -> Wyrmcult Provisioner

