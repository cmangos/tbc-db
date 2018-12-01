-- Correct restocktime for i.28101 sold by 22099
UPDATE `npc_vendor` SET `maxcount` = 4, `incrtime` = 43200 WHERE `entry` = 22099 AND `item` = 28101; -- https://web.archive.org/web/20110703153526/http://www.wowhead.com:80/npc=22099#sells

