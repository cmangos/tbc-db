-- q.5151'Hypercapacitor Gizmo'
-- Enraged Panther will attack player after cage open.
DELETE FROM dbscripts_on_go_template_use WHERE id = 176195;
INSERT INTO dbscripts_on_go_template_use (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES
(176195, 3, 26, 0, 0, 10992, 50, 3, 'Enraged Panther - attack');


