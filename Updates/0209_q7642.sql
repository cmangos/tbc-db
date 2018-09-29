-- q.7642 Collection of Goods should require 150 gold to complete
UPDATE quest_template SET RewOrReqMoney=-1500000 WHERE entry=7642;
