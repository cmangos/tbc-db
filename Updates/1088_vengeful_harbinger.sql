-- add required item as per sniff for vengeful harbinger
UPDATE quest_template SET ReqItemId1=SrcItemId,ReqItemCount1=1 WHERE entry IN(10842);
UPDATE gameobject SET animprogress=100 WHERE guid IN(56060);

