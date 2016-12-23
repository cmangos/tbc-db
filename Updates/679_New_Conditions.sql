DELETE FROM `conditions` WHERE `condition_entry` IN (509,510,511,512,513,941,942);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('509','15','29','2'); -- Level 1-29
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('510','15','30','1'); -- Level 30 And Above
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('511','15','59','2'); -- Level 59 And Below
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('512','15','69','2'); -- Level 69 And Below
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('513','15','70','0'); -- Level 70

insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('941','-1','510','511'); -- Level 30-59
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('942','-1','929','512'); -- Level 60-69

