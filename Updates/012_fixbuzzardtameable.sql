#fix bonestripper buzzard bugging out when taming and so on due to nonworking inhabittype (4 flying only)
UPDATE creature_template SET inhabittype =  1 WHERE entry = 16972;