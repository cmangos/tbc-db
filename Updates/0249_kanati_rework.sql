UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN(6149);

DELETE FROM waypoint_path WHERE PathId=10638;
INSERT INTO waypoint_path(PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
('10638', '1', '-4903.52', '-1368.34', '-52.611', '0', '5000', '0', 'SAY_KAN_START'),
('10638', '2', '-4906', '-1367.05', '-52.611', '0', '1000', '0', '');

