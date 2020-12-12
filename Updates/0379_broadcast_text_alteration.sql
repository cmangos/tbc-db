-- UPDATE npc_text SET text0_0='On the northern dock, you can board a ship that will carry you to Rut''theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan.  The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar.  Safe journeys to you!' WHERE id=5480;
-- broadcast text 8106 updated to assumed TBC version in core SQL file - related to 0101_misc_updates.sql
DELETE FROM `npc_text` WHERE `Id`=5480;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES (5480, 1, 8106);

