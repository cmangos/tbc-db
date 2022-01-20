UPDATE broadcast_text SET ChatTypeID=4 WHERE Id IN (14706,14712,14713,14714);
DELETE FROM dbscripts_on_relay WHERE id=10205;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10205, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 14706, 0, 0, 0, 0, 0, 0, 0, 0, 'As the Crow Flies: Ysiel Windsinger - Whisper 1'),
(10205, 47000, 0, 0, 0, 0, 0, 0, 0, 0, 14712, 0, 0, 0, 0, 0, 0, 0, 0, 'As the Crow Flies: Ysiel Windsinger - Whisper 2'),
(10205, 74000, 0, 0, 0, 0, 0, 0, 0, 0, 14713, 0, 0, 0, 0, 0, 0, 0, 0, 'As the Crow Flies: Ysiel Windsinger - Whisper 3'),
(10205, 134000, 0, 0, 0, 0, 0, 0, 0, 0, 14714, 0, 0, 0, 0, 0, 0, 0, 0, 'As the Crow Flies: Ysiel Windsinger - Whisper 4'),
(10205, 134100, 0, 7, 9718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'As the Crow Flies: Quest Complete');


