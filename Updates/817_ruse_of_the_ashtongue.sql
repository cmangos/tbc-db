-- per sniff, this quest is completed on external event
UPDATE quest_template SET ReqCreatureOrGOCount1=0,ReqCreatureOrGOId1=0,SpecialFlags=2 WHERE entry IN(10946);


