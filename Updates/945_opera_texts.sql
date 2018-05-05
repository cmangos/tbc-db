-- Missing opera event gossip texts
DELETE FROM npc_text WHERE ID IN(8969,8982);
INSERT INTO npc_text(ID,prob0,em0_1,text0_0) VALUES
(8969,1,5,'About time the guild sent some new blood our way! Too bad you came all this way for nothing. We''re not allowed to put on a show for our guests, can you believe it? Moroes has forbidden us from starting a new show, and my backers are going nuts! Something needs to be done about Moroes.'),
(8982,1,1,'The romantic plays are really tough, but you''ll do better this time. You have TALENT. Ready?');
UPDATE npc_text SET text0_0=text0_1,text0_1='' WHERE ID IN(8975);


