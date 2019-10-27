-- add required item as per sniff for vengeful harbinger
UPDATE quest_template SET ReqItemId1=SrcItemId,ReqItemCount1=1 WHERE entry IN(10842);

