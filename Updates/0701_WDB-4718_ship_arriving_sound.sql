-- Sounds for arriving Transports (Ships)
-- eventough these do not seem to do anything in tbcmangos, maybe these were not just yet implemented yet back then.
DELETE FROM dbscripts_on_event WHERE id IN (16397,16398,10301,10302,16396,16395,10303,10304,16400,16402,16401,19124,19123,19032,19033,19030,19031);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16397,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16397,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16398,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16398,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(10301,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(10301,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(10302,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(10302,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16396,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16396,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16395,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16395,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(10303,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(10303,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(10304,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(10304,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16400,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16400,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16402,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16402,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16401,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16401,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked');
-- WOTLK+
-- Table `dbscripts_on_event` has script (Id: 19030) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- Table `dbscripts_on_event` has script (Id: 19031) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- Table `dbscripts_on_event` has script (Id: 19032) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- Table `dbscripts_on_event` has script (Id: 19033) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- Table `dbscripts_on_event` has script (Id: 19123) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- Table `dbscripts_on_event` has script (Id: 19124) not referring to any fitting gameobject_template or any spell effect 61 or path taxi node data
-- (19124,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19124,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
-- (19123,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19123,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
-- (19032,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19032,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
-- (19033,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19033,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
-- (19030,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19030,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
-- (19031,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
-- (19031,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked');

