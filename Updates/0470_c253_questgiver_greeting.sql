DELETE FROM questgiver_greeting WHERE Entry IN (253);
INSERT INTO questgiver_greeting (Entry, Type, Text, EmoteId, EmoteDelay) VALUES
(253, 0, 'Aha! Good day, good day, Master $C! Come, sit down and have a drink. You have an enterprising look in your eye, and I think you\'ll find speaking to me worth your time...', 0, 0);

DELETE FROM locales_questgiver_greeting WHERE Entry IN (253);
INSERT INTO locales_questgiver_greeting (Entry, Type, Text_loc3) VALUES
(253, 0, 'Aha! Guten Tag, guten Tag, Meister $C! Kommt, setzt Euch und trinkt etwas. Ihr habt so ein Leuchten in den Augen, als wolltet ihr gern etwas tun. Ich denke, Ihr solltet ein paar Wörtchen mit mir wechseln, es lohnt sich bestimmt...');


