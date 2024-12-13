-- Correct more vendor `slot` values

-- ["Eldara Dawnrunner"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 25032 AND `item` = 34780; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 25032 AND `item` = 34872; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 25032 AND `item` = 35500; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 25032 AND `item` = 35505; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 25032 AND `item` = 35502; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 25032 AND `item` = 29193; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 25032 AND `item` = 35697; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 25032 AND `item` = 35699; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 25032 AND `item` = 35695; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 25032 AND `item` = 35696; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 25032 AND `item` = 35698; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 25032 AND `item` = 35708; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 25032 AND `item` = 35769; -- [13]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 25032 AND `item` = 35766; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 25032 AND `item` = 35767; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 25032 AND `item` = 35768; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 25032 AND `item` = 34673; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 25032 AND `item` = 34670; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 25032 AND `item` = 34667; -- [19]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 25032 AND `item` = 34674; -- [20]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 25032 AND `item` = 34671; -- [21]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 25032 AND `item` = 34665; -- [22]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 25032 AND `item` = 34666; -- [23]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 25032 AND `item` = 34672; -- [24]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 25032 AND `item` = 34675; -- [25]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 25032 AND `item` = 34676; -- [26]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 25032 AND `item` = 34678; -- [27]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 25032 AND `item` = 34677; -- [28]
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 25032 AND `item` = 34680; -- [29]
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 25032 AND `item` = 34679; -- [30]
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 25032 AND `item` = 35755; -- [31]
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 25032 AND `item` = 35752; -- [32]
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 25032 AND `item` = 35754; -- [33]
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 25032 AND `item` = 35753; -- [34]
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 25032 AND `item` = 35221; -- [35]

-- ["Mar'nah"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 24975 AND `item` = 3371; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 24975 AND `item` = 3372; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 24975 AND `item` = 8925; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 24975 AND `item` = 18256; -- [4]

-- ["Caregiver Inaara"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 25036; -- 408
DELETE FROM `npc_vendor` WHERE `entry` = 25036;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(25036, 29450, 9, 'Telaari Grapes'),
(25036, 29451, 6, 'Clefthoof Ribs'),
(25036, 8957, 1, 'Spinefin Halibut'),
(25036, 28399, 11, 'Filtered Draenic Water'),
(25036, 27856, 8, 'Skethyl Berries'),
(25036, 27858, 2, 'Sunspring Carp'),
(25036, 8766, 10, 'Morning Glory Dew'),
(25036, 8953, 7, 'Deep Fried Plantains'),
(25036, 29452, 3, 'Zangar Trout'),
(25036, 27860, 12, 'Purified Draenic Water'),
(25036, 8952, 4, 'Roasted Quail'),
(25036, 27854, 5, 'Smoked Talbuk Venison');

-- ["Yrma"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 25977 AND `item` = 34406; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 25977 AND `item` = 34405; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 25977 AND `item` = 34386; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 25977 AND `item` = 34399; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 25977 AND `item` = 34393; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 25977 AND `item` = 34397; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 25977 AND `item` = 34392; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 25977 AND `item` = 34408; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 25977 AND `item` = 34385; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 25977 AND `item` = 34404; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 25977 AND `item` = 34384; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 25977 AND `item` = 34403; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 25977 AND `item` = 34391; -- [13]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 25977 AND `item` = 34407; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 25977 AND `item` = 34398; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 25977 AND `item` = 34409; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 25977 AND `item` = 34383; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 25977 AND `item` = 34402; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 25977 AND `item` = 34390; -- [19]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 25977 AND `item` = 34396; -- [20]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 25977 AND `item` = 34395; -- [21]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 25977 AND `item` = 34389; -- [22]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 25977 AND `item` = 34388; -- [23]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 25977 AND `item` = 34394; -- [24]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 25977 AND `item` = 34400; -- [25]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 25977 AND `item` = 34381; -- [26]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 25977 AND `item` = 34401; -- [27]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 25977 AND `item` = 34382; -- [28]

-- ["Smith Hauthaa"] = { - https://www.wowhead.com/tbc/npc=25046/smith-hauthaa - https://www.wowhead.com/tbc/npc=27667/anwehu
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 505 AND `item` = 34919; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 505 AND `item` = 34918; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 505 AND `item` = 34917; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 505 AND `item` = 34926; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 505 AND `item` = 34925; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 505 AND `item` = 34924; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 505 AND `item` = 34938; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 505 AND `item` = 34937; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 505 AND `item` = 34936; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 505 AND `item` = 34900; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 505 AND `item` = 34902; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 505 AND `item` = 34901; -- [12]
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 505 AND `item` = 34906; -- [13]
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 505 AND `item` = 34911; -- [14]
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 505 AND `item` = 34910; -- [15]
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 505 AND `item` = 34903; -- [16]
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` = 505 AND `item` = 34904; -- [17]
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` = 505 AND `item` = 34905; -- [18]
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `entry` = 505 AND `item` = 34929; -- [19]
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `entry` = 505 AND `item` = 34927; -- [20]
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `entry` = 505 AND `item` = 34928; -- [21]
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `entry` = 505 AND `item` = 34912; -- [22]
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `entry` = 505 AND `item` = 34916; -- [23]
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `entry` = 505 AND `item` = 34914; -- [24]
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `entry` = 505 AND `item` = 34932; -- [25]
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `entry` = 505 AND `item` = 34930; -- [26]
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `entry` = 505 AND `item` = 34931; -- [27]
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `entry` = 505 AND `item` = 34935; -- [28]
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `entry` = 505 AND `item` = 34933; -- [29]
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `entry` = 505 AND `item` = 34934; -- [30]
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `entry` = 505 AND `item` = 34923; -- [31]
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `entry` = 505 AND `item` = 34921; -- [32]
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `entry` = 505 AND `item` = 34922; -- [33]
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `entry` = 505 AND `item` = 34947; -- [34]
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `entry` = 505 AND `item` = 34945; -- [35]
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `entry` = 505 AND `item` = 34946; -- [36]
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `entry` = 505 AND `item` = 34944; -- [37]
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `entry` = 505 AND `item` = 34942; -- [38]
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `entry` = 505 AND `item` = 34943; -- [39]
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `entry` = 505 AND `item` = 34941; -- [40]
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `entry` = 505 AND `item` = 34939; -- [41]
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `entry` = 505 AND `item` = 34940; -- [42]
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `entry` = 505 AND `item` = 34889; -- [43]
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `entry` = 505 AND `item` = 34890; -- [44]
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `entry` = 505 AND `item` = 34887; -- [45]
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `entry` = 505 AND `item` = 34888; -- [46]
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `entry` = 505 AND `item` = 34891; -- [47]
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `entry` = 505 AND `item` = 34895; -- [48]
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `entry` = 505 AND `item` = 34892; -- [49]
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `entry` = 505 AND `item` = 34898; -- [50]
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `entry` = 505 AND `item` = 34896; -- [51]
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `entry` = 505 AND `item` = 34893; -- [52]
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `entry` = 505 AND `item` = 34950; -- [53]
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `entry` = 505 AND `item` = 34951; -- [54]
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `entry` = 505 AND `item` = 34894; -- [55]
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `entry` = 505 AND `item` = 34949; -- [56]
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `entry` = 505 AND `item` = 34952; -- [57]

-- ["Shaani"] = { - https://www.wowhead.com/tbc/npc=25950/shaani - https://www.wowhead.com/tbc/npc=27666/ontuvo
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` IN (102,514) AND `item` = 32227; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` IN (102,514) AND `item` = 32228; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` IN (102,514) AND `item` = 32229; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` IN (102,514) AND `item` = 32231; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` IN (102,514) AND `item` = 32230; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` IN (102,514) AND `item` = 32249; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` IN (102,514) AND `item` = 35264; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` IN (102,514) AND `item` = 35244; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` IN (102,514) AND `item` = 35261; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` IN (102,514) AND `item` = 35250; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` IN (102,514) AND `item` = 35263; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` IN (102,514) AND `item` = 35249; -- [12]
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` IN (102,514) AND `item` = 35260; -- [13]
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` IN (102,514) AND `item` = 35248; -- [14]
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` IN (102,514) AND `item` = 35262; -- [15]
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` IN (102,514) AND `item` = 35256; -- [16]
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` IN (102,514) AND `item` = 35245; -- [17]
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` IN (102,514) AND `item` = 35255; -- [18]
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `entry` IN (102,514) AND `item` = 35246; -- [19]
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `entry` IN (102,514) AND `item` = 35269; -- [20]
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `entry` IN (102,514) AND `item` = 35254; -- [21]
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `entry` IN (102,514) AND `item` = 35253; -- [22]
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `entry` IN (102,514) AND `item` = 35268; -- [23]
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `entry` IN (102,514) AND `item` = 35239; -- [24]
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `entry` IN (102,514) AND `item` = 35266; -- [25]
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `entry` IN (102,514) AND `item` = 35240; -- [26]
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `entry` IN (102,514) AND `item` = 35238; -- [27]
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `entry` IN (102,514) AND `item` = 35251; -- [28]
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `entry` IN (102,514) AND `item` = 35252; -- [29]
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `entry` IN (102,514) AND `item` = 35259; -- [30]
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `entry` IN (102,514) AND `item` = 35241; -- [31]
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `entry` IN (102,514) AND `item` = 35271; -- [32]
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `entry` IN (102,514) AND `item` = 35768; -- [33]
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `entry` IN (102,514) AND `item` = 35767; -- [34]
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `entry` IN (102,514) AND `item` = 35766; -- [35]
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `entry` IN (102,514) AND `item` = 35769; -- [36]
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `entry` IN (102,514) AND `item` = 35267; -- [37]
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `entry` IN (102,514) AND `item` = 35270; -- [38]
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `entry` IN (102,514) AND `item` = 35258; -- [39]
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `entry` IN (102,514) AND `item` = 35242; -- [40]
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `entry` IN (102,514) AND `item` = 35247; -- [41]
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `entry` IN (102,514) AND `item` = 35265; -- [42]
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `entry` IN (102,514) AND `item` = 35257; -- [43]
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `entry` IN (102,514) AND `item` = 35243; -- [44]
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `entry` IN (102,514) AND `item` = 37504; -- [45]
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `entry` IN (102,514) AND `item` = 35322; -- [46]
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `entry` IN (102,514) AND `item` = 35323; -- [47]
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `entry` IN (102,514) AND `item` = 35325; -- [48]

-- ["Master Chef Mouldier"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 16253; -- 119
DELETE FROM `npc_vendor` WHERE `entry` = 16253;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(16253, 159, 3, 'Refreshing Spring Water'),
(16253, 2678, 5, 'Mild Spices'),
(16253, 2692, 6, 'Hot Spices'),
(16253, 3713, 7, 'Soothing Spices'),
(16253, 21099, 8, 'Recipe: Smoked Sagefish'),
(16253, 21219, 9, 'Recipe: Sagefish Delight'),
(16253, 30817, 4, 'Simple Flour'),
(16253, 22647, 1, 'Recipe: Crunchy Spider Surprise'),
(16253, 27687, 2, 'Recipe: Bat Bites');

-- ["Garul"] = { - https://www.wowhead.com/tbc/npc=19050/garul
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 407 AND `item` = 8953; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 407 AND `item` = 27856; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 407 AND `item` = 29450; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 407 AND `item` = 8766; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 407 AND `item` = 28399; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 407 AND `item` = 27860; -- [6]

-- ["Brendan Turner"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 23263; -- 1200
DELETE FROM `npc_vendor` WHERE `entry` = 23263;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(23263, 29451, 8, 'Clefthoof Ribs'),
(23263, 4599, 5, 'Cured Ham Steak'),
(23263, 2287, 2, 'Haunch of Meat'),
(23263, 3770, 3, 'Mutton Chop'),
(23263, 8952, 6, 'Roasted Quail'),
(23263, 27854, 7, 'Smoked Talbuk Venison'),
(23263, 117, 1, 'Tough Jerky'),
(23263, 3771, 4, 'Wild Hog Shank');

-- ["Field Repair Bot 110G"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 24780; -- 124
DELETE FROM `npc_vendor` WHERE `entry` = 24780;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(24780, 28056, 0, 0, 1, 0, 0, 'Blackflight Arrow'),
(24780, 28061, 0, 0, 2, 0, 0, 'Ironbite Shell'),
(24780, 28100, 2, 3600, 3, 0, 0, 'Volatile Healing Potion'),
(24780, 28101, 2, 3600, 4, 0, 0, 'Unstable Mana Potion'),
(24780, 27499, 2, 3600, 5, 0, 0, 'Scroll of Intellect V'), -- guessed
(24780, 27503, 2, 3600, 6, 0, 0, 'Scroll of Strength V'), -- guessed
(24780, 27498, 2, 3600, 7, 0, 0, 'Scroll of Agility V'), -- guessed
(24780, 17037, 0, 0, 8, 0, 0, 'Hornbeam Seed'),
(24780, 17038, 0, 0, 9, 0, 0, 'Ironwood Seed'),
(24780, 22147, 0, 0, 10, 0, 0, 'Flintweed Seed'),
(24780, 17031, 0, 0, 11, 0, 0, 'Rune of Teleportation'),
(24780, 17032, 0, 0, 12, 0, 0, 'Rune of Portals'),
(24780, 17020, 0, 0, 13, 0, 0, 'Arcane Powder'),
(24780, 17030, 0, 0, 14, 0, 0, 'Ankh'),
(24780, 17033, 0, 0, 15, 0, 0, 'Symbol of Divinity'),
(24780, 17028, 0, 0, 16, 0, 0, 'Holy Candle'),
(24780, 17029, 0, 0, 17, 0, 0, 'Sacred Candle'),
(24780, 17021, 0, 0, 18, 0, 0, 'Wild Berries'),
(24780, 17026, 0, 0, 19, 0, 0, 'Wild Thornroot'),
(24780, 22148, 0, 0, 20, 0, 0, 'Wild Quillvine'),
(24780, 5565, 0, 0, 21, 0, 0, 'Infernal Stone'),
(24780, 16583, 0, 0, 22, 0, 0, 'Demonic Figurine'),
(24780, 21177, 0, 0, 23, 0, 0, 'Symbol of Kings'),
(24780, 18256, 0, 0, 24, 0, 0, 'Imbued Vial'),
(24780, 8925, 0, 0, 25, 0, 0, 'Crystal Vial'),
(24780, 5140, 0, 0, 26, 0, 0, 'Flash Powder'),
(24780, 3777, 0, 0, 27, 0, 0, 'Lethargy Root'),
(24780, 8924, 0, 0, 28, 0, 0, 'Dust of Deterioration'), -- missing?
(24780, 8923, 0, 0, 29, 0, 0, 'Essence of Agony'),
(24780, 5173, 0, 0, 30, 0, 0, 'Deathweed');
-- (24780, 2931, 0, 0, 31, 0, 0, 'Maiden\'s Anguish'); -- no longer sold by it?

-- ["Muffin Man Moser"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19664 AND `item` = 28486; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19664 AND `item` = 8950; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19664 AND `item` = 27855; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19664 AND `item` = 29449; -- [4]

-- ["Krinkle Goodsteel"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 5411 AND `item` = 2901; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 5411 AND `item` = 5956; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 5411 AND `item` = 2880; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 5411 AND `item` = 3466; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 5411 AND `item` = 3857; -- [5] 6 flipped?
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 5411 AND `item` = 18567; -- [6] 5 flipped?
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 5411 AND `item` = 6047; -- [7]

-- ["Haldor the Compulsive"] = { - https://www.wowhead.com/tbc/npc=23484/haldor-the-compulsive
-- ["Arcanist Xorith"] = { - https://www.wowhead.com/tbc/npc=23483/arcanist-xorith
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 18 AND `item` = 32898; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 18 AND `item` = 32899; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 18 AND `item` = 32901; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 18 AND `item` = 32900; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 18 AND `item` = 35716; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 18 AND `item` = 35717; -- [6]

-- ["Granny Smith"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19223 AND `item` = 4536; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19223 AND `item` = 4539; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19223 AND `item` = 8953; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19223 AND `item` = 27856; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 19223 AND `item` = 29450; -- [5]

-- ["Plugger Spazzring"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 9499 AND `item` = 11325; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 9499 AND `item` = 11444; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 9499 AND `item` = 38427; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 9499 AND `item` = 38428; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 9499 AND `item` = 38432; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 9499 AND `item` = 38466; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 9499 AND `item` = 38429; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 9499 AND `item` = 38430; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 9499 AND `item` = 38431; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 9499 AND `item` = 13483; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 9499 AND `item` = 15759; -- [11]

-- ["Jho'nass"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 23428 AND `item` = 32783; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 23428 AND `item` = 32784; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 23428 AND `item` = 32653; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 23428 AND `item` = 32654; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 23428 AND `item` = 32652; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 23428 AND `item` = 32650; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 23428 AND `item` = 32645; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 23428 AND `item` = 32651; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 23428 AND `item` = 32647; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 23428 AND `item` = 32648; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 23428 AND `item` = 32828; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 23428 AND `item` = 33934; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 23428 AND `item` = 33935; -- [13]

-- ["G'eras"] = { -- Didnt start at 1
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 18525 AND `item` = 29273; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 18525 AND `item` = 29271; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 18525 AND `item` = 29268; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 18525 AND `item` = 29275; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 18525 AND `item` = 29270; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 18525 AND `item` = 29269; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 18525 AND `item` = 29274; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 18525 AND `item` = 29267; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 18525 AND `item` = 29272; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 18525 AND `item` = 29266; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 18525 AND `item` = 29367; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 18525 AND `item` = 29373; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 18525 AND `item` = 29379; -- [13]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 18525 AND `item` = 29384; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 18525 AND `item` = 29368; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 18525 AND `item` = 29374; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 18525 AND `item` = 29381; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 18525 AND `item` = 29386; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 18525 AND `item` = 29369; -- [19]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 18525 AND `item` = 29375; -- [20]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 18525 AND `item` = 29382; -- [21]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 18525 AND `item` = 29385; -- [22]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 18525 AND `item` = 29370; -- [23]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 18525 AND `item` = 29376; -- [24]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 18525 AND `item` = 29383; -- [25]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 18525 AND `item` = 29387; -- [26]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 18525 AND `item` = 29390; -- [27]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 18525 AND `item` = 29388; -- [28]
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 18525 AND `item` = 29389; -- [29]
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 18525 AND `item` = 23572; -- [30]
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 18525 AND `item` = 30183; -- [31]
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 18525 AND `item` = 30770; -- [32]
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 18525 AND `item` = 30774; -- [33]
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 18525 AND `item` = 30773; -- [34]
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 18525 AND `item` = 30772; -- [35]
UPDATE `npc_vendor` SET `slot` = 36 WHERE `entry` = 18525 AND `item` = 30779; -- [36]
UPDATE `npc_vendor` SET `slot` = 37 WHERE `entry` = 18525 AND `item` = 30776; -- [37]
UPDATE `npc_vendor` SET `slot` = 38 WHERE `entry` = 18525 AND `item` = 30780; -- [38]
UPDATE `npc_vendor` SET `slot` = 39 WHERE `entry` = 18525 AND `item` = 30778; -- [39]
UPDATE `npc_vendor` SET `slot` = 40 WHERE `entry` = 18525 AND `item` = 30768; -- [40]
UPDATE `npc_vendor` SET `slot` = 41 WHERE `entry` = 18525 AND `item` = 30769; -- [41]
UPDATE `npc_vendor` SET `slot` = 42 WHERE `entry` = 18525 AND `item` = 30767; -- [42]
UPDATE `npc_vendor` SET `slot` = 43 WHERE `entry` = 18525 AND `item` = 30766; -- [43]
UPDATE `npc_vendor` SET `slot` = 44 WHERE `entry` = 18525 AND `item` = 30763; -- [44]
UPDATE `npc_vendor` SET `slot` = 45 WHERE `entry` = 18525 AND `item` = 30764; -- [45]
UPDATE `npc_vendor` SET `slot` = 46 WHERE `entry` = 18525 AND `item` = 30761; -- [46]
UPDATE `npc_vendor` SET `slot` = 47 WHERE `entry` = 18525 AND `item` = 30762; -- [47]
UPDATE `npc_vendor` SET `slot` = 48 WHERE `entry` = 18525 AND `item` = 32083; -- [48]
UPDATE `npc_vendor` SET `slot` = 49 WHERE `entry` = 18525 AND `item` = 32084; -- [49]
UPDATE `npc_vendor` SET `slot` = 50 WHERE `entry` = 18525 AND `item` = 32088; -- [50]
UPDATE `npc_vendor` SET `slot` = 51 WHERE `entry` = 18525 AND `item` = 32087; -- [51]
UPDATE `npc_vendor` SET `slot` = 52 WHERE `entry` = 18525 AND `item` = 32086; -- [52]
UPDATE `npc_vendor` SET `slot` = 53 WHERE `entry` = 18525 AND `item` = 32085; -- [53]
UPDATE `npc_vendor` SET `slot` = 54 WHERE `entry` = 18525 AND `item` = 32089; -- [54]
UPDATE `npc_vendor` SET `slot` = 55 WHERE `entry` = 18525 AND `item` = 32090; -- [55]
UPDATE `npc_vendor` SET `slot` = 56 WHERE `entry` = 18525 AND `item` = 33509; -- [56]
UPDATE `npc_vendor` SET `slot` = 57 WHERE `entry` = 18525 AND `item` = 33508; -- [57]
UPDATE `npc_vendor` SET `slot` = 58 WHERE `entry` = 18525 AND `item` = 33510; -- [58]
UPDATE `npc_vendor` SET `slot` = 59 WHERE `entry` = 18525 AND `item` = 33503; -- [59]
UPDATE `npc_vendor` SET `slot` = 60 WHERE `entry` = 18525 AND `item` = 33504; -- [60]
UPDATE `npc_vendor` SET `slot` = 61 WHERE `entry` = 18525 AND `item` = 33502; -- [61]
UPDATE `npc_vendor` SET `slot` = 62 WHERE `entry` = 18525 AND `item` = 33506; -- [62]
UPDATE `npc_vendor` SET `slot` = 63 WHERE `entry` = 18525 AND `item` = 33507; -- [63]
UPDATE `npc_vendor` SET `slot` = 64 WHERE `entry` = 18525 AND `item` = 33505; -- [64]
UPDATE `npc_vendor` SET `slot` = 65 WHERE `entry` = 18525 AND `item` = 33810; -- [65]
UPDATE `npc_vendor` SET `slot` = 66 WHERE `entry` = 18525 AND `item` = 33501; -- [66]
UPDATE `npc_vendor` SET `slot` = 67 WHERE `entry` = 18525 AND `item` = 33517; -- [67]
UPDATE `npc_vendor` SET `slot` = 68 WHERE `entry` = 18525 AND `item` = 33279; -- [68]
UPDATE `npc_vendor` SET `slot` = 69 WHERE `entry` = 18525 AND `item` = 33516; -- [69]
UPDATE `npc_vendor` SET `slot` = 70 WHERE `entry` = 18525 AND `item` = 33513; -- [70]
UPDATE `npc_vendor` SET `slot` = 71 WHERE `entry` = 18525 AND `item` = 33331; -- [71]
UPDATE `npc_vendor` SET `slot` = 72 WHERE `entry` = 18525 AND `item` = 33512; -- [72]
UPDATE `npc_vendor` SET `slot` = 73 WHERE `entry` = 18525 AND `item` = 33514; -- [73]
UPDATE `npc_vendor` SET `slot` = 74 WHERE `entry` = 18525 AND `item` = 33515; -- [74]
UPDATE `npc_vendor` SET `slot` = 75 WHERE `entry` = 18525 AND `item` = 33522; -- [75]
UPDATE `npc_vendor` SET `slot` = 76 WHERE `entry` = 18525 AND `item` = 33524; -- [76]
UPDATE `npc_vendor` SET `slot` = 77 WHERE `entry` = 18525 AND `item` = 33519; -- [77]
UPDATE `npc_vendor` SET `slot` = 78 WHERE `entry` = 18525 AND `item` = 33518; -- [78]
UPDATE `npc_vendor` SET `slot` = 79 WHERE `entry` = 18525 AND `item` = 33207; -- [79]
UPDATE `npc_vendor` SET `slot` = 80 WHERE `entry` = 18525 AND `item` = 33523; -- [80]
UPDATE `npc_vendor` SET `slot` = 81 WHERE `entry` = 18525 AND `item` = 33520; -- [81]
UPDATE `npc_vendor` SET `slot` = 82 WHERE `entry` = 18525 AND `item` = 33528; -- [82]
UPDATE `npc_vendor` SET `slot` = 83 WHERE `entry` = 18525 AND `item` = 33527; -- [83]
UPDATE `npc_vendor` SET `slot` = 84 WHERE `entry` = 18525 AND `item` = 33280; -- [84]
UPDATE `npc_vendor` SET `slot` = 85 WHERE `entry` = 18525 AND `item` = 33529; -- [85]
UPDATE `npc_vendor` SET `slot` = 86 WHERE `entry` = 18525 AND `item` = 33535; -- [86]
UPDATE `npc_vendor` SET `slot` = 87 WHERE `entry` = 18525 AND `item` = 33965; -- [87]
UPDATE `npc_vendor` SET `slot` = 88 WHERE `entry` = 18525 AND `item` = 33970; -- [88]
UPDATE `npc_vendor` SET `slot` = 89 WHERE `entry` = 18525 AND `item` = 33532; -- [89]
UPDATE `npc_vendor` SET `slot` = 90 WHERE `entry` = 18525 AND `item` = 33534; -- [90]
UPDATE `npc_vendor` SET `slot` = 91 WHERE `entry` = 18525 AND `item` = 33386; -- [91]
UPDATE `npc_vendor` SET `slot` = 92 WHERE `entry` = 18525 AND `item` = 33530; -- [92]
UPDATE `npc_vendor` SET `slot` = 93 WHERE `entry` = 18525 AND `item` = 33324; -- [93]
UPDATE `npc_vendor` SET `slot` = 94 WHERE `entry` = 18525 AND `item` = 33531; -- [94]
UPDATE `npc_vendor` SET `slot` = 95 WHERE `entry` = 18525 AND `item` = 33536; -- [95]
UPDATE `npc_vendor` SET `slot` = 96 WHERE `entry` = 18525 AND `item` = 33537; -- [96]
UPDATE `npc_vendor` SET `slot` = 97 WHERE `entry` = 18525 AND `item` = 33540; -- [97]
UPDATE `npc_vendor` SET `slot` = 98 WHERE `entry` = 18525 AND `item` = 33538; -- [98]
UPDATE `npc_vendor` SET `slot` = 99 WHERE `entry` = 18525 AND `item` = 33222; -- [99]
UPDATE `npc_vendor` SET `slot` = 100 WHERE `entry` = 18525 AND `item` = 33539; -- [100]
UPDATE `npc_vendor` SET `slot` = 101 WHERE `entry` = 18525 AND `item` = 33578; -- [101]
UPDATE `npc_vendor` SET `slot` = 102 WHERE `entry` = 18525 AND `item` = 33580; -- [102]
UPDATE `npc_vendor` SET `slot` = 103 WHERE `entry` = 18525 AND `item` = 33566; -- [103]
UPDATE `npc_vendor` SET `slot` = 104 WHERE `entry` = 18525 AND `item` = 33582; -- [104]
UPDATE `npc_vendor` SET `slot` = 105 WHERE `entry` = 18525 AND `item` = 33577; -- [105]
UPDATE `npc_vendor` SET `slot` = 106 WHERE `entry` = 18525 AND `item` = 33287; -- [106]
UPDATE `npc_vendor` SET `slot` = 107 WHERE `entry` = 18525 AND `item` = 33552; -- [107]
UPDATE `npc_vendor` SET `slot` = 108 WHERE `entry` = 18525 AND `item` = 33557; -- [108]
UPDATE `npc_vendor` SET `slot` = 109 WHERE `entry` = 18525 AND `item` = 33974; -- [109]
UPDATE `npc_vendor` SET `slot` = 110 WHERE `entry` = 18525 AND `item` = 33973; -- [110]
UPDATE `npc_vendor` SET `slot` = 111 WHERE `entry` = 18525 AND `item` = 33559; -- [111]
UPDATE `npc_vendor` SET `slot` = 112 WHERE `entry` = 18525 AND `item` = 33972; -- [112]
UPDATE `npc_vendor` SET `slot` = 113 WHERE `entry` = 18525 AND `item` = 33579; -- [113]
UPDATE `npc_vendor` SET `slot` = 114 WHERE `entry` = 18525 AND `item` = 33583; -- [114]
UPDATE `npc_vendor` SET `slot` = 115 WHERE `entry` = 18525 AND `item` = 33588; -- [115]
UPDATE `npc_vendor` SET `slot` = 116 WHERE `entry` = 18525 AND `item` = 33584; -- [116]
UPDATE `npc_vendor` SET `slot` = 117 WHERE `entry` = 18525 AND `item` = 33586; -- [117]
UPDATE `npc_vendor` SET `slot` = 118 WHERE `entry` = 18525 AND `item` = 33291; -- [118]
UPDATE `npc_vendor` SET `slot` = 119 WHERE `entry` = 18525 AND `item` = 33585; -- [119]
UPDATE `npc_vendor` SET `slot` = 120 WHERE `entry` = 18525 AND `item` = 33587; -- [120]
UPDATE `npc_vendor` SET `slot` = 121 WHERE `entry` = 18525 AND `item` = 33589; -- [121]
UPDATE `npc_vendor` SET `slot` = 122 WHERE `entry` = 18525 AND `item` = 33593; -- [122]
UPDATE `npc_vendor` SET `slot` = 123 WHERE `entry` = 18525 AND `item` = 33333; -- [123]
UPDATE `npc_vendor` SET `slot` = 124 WHERE `entry` = 18525 AND `item` = 35324; -- [124]
UPDATE `npc_vendor` SET `slot` = 125 WHERE `entry` = 18525 AND `item` = 33304; -- [125]
UPDATE `npc_vendor` SET `slot` = 126 WHERE `entry` = 18525 AND `item` = 35321; -- [126]
UPDATE `npc_vendor` SET `slot` = 127 WHERE `entry` = 18525 AND `item` = 33484; -- [127]
UPDATE `npc_vendor` SET `slot` = 128 WHERE `entry` = 18525 AND `item` = 33334; -- [128]
UPDATE `npc_vendor` SET `slot` = 129 WHERE `entry` = 18525 AND `item` = 33325; -- [129]
UPDATE `npc_vendor` SET `slot` = 130 WHERE `entry` = 18525 AND `item` = 33192; -- [130]
UPDATE `npc_vendor` SET `slot` = 131 WHERE `entry` = 18525 AND `item` = 33296; -- [131]
UPDATE `npc_vendor` SET `slot` = 132 WHERE `entry` = 18525 AND `item` = 33832; -- [132]
UPDATE `npc_vendor` SET `slot` = 133 WHERE `entry` = 18525 AND `item` = 34050; -- [133]
UPDATE `npc_vendor` SET `slot` = 134 WHERE `entry` = 18525 AND `item` = 34049; -- [134]
UPDATE `npc_vendor` SET `slot` = 135 WHERE `entry` = 18525 AND `item` = 34163; -- [135]
UPDATE `npc_vendor` SET `slot` = 136 WHERE `entry` = 18525 AND `item` = 34162; -- [136]
UPDATE `npc_vendor` SET `slot` = 137 WHERE `entry` = 18525 AND `item` = 35326; -- [137]

-- ["Grella"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 23367 AND `item` = 32722; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 23367 AND `item` = 32721; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 23367 AND `item` = 32538; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 23367 AND `item` = 32539; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 23367 AND `item` = 38628; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 23367 AND `item` = 32319; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 23367 AND `item` = 32314; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 23367 AND `item` = 32316; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 23367 AND `item` = 32317; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 23367 AND `item` = 32318; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 23367 AND `item` = 32445; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 23367 AND `item` = 32771; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 23367 AND `item` = 32770; -- [13]

-- ["Nalama the Merchant"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 19243; -- 429
DELETE FROM `npc_vendor` WHERE `entry` = 19243;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(19243, 4471, 8, 'Flint and Tinder'),
(19243, 4470, 7, 'Simple Wood'),
(19243, 11284, 4, 'Accurate Slugs'),
(19243, 11285, 1, 'Jagged Arrow'),
(19243, 28053, 2, 'Wicked Arrow'),
(19243, 28056, 3, 'Blackflight Arrow'),
(19243, 28060, 5, 'Impact Shot'),
(19243, 28061, 6, 'Ironbite Shell'),
(19243, 29013, 10, 'Jagged Throwing Axe'),
(19243, 29014, 9, 'Blacksteel Throwing Dagger');

-- ["Andrion Darkspinner"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 22212 AND `item` = 30483; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 22212 AND `item` = 21912; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 22212 AND `item` = 21914; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 22212 AND `item` = 21913; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 22212 AND `item` = 21915; -- [5]

-- ["Okuno"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 23159 AND `item` = 32438; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 23159 AND `item` = 32440; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 23159 AND `item` = 32429; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 23159 AND `item` = 32430; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 23159 AND `item` = 32435; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 23159 AND `item` = 32436; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 23159 AND `item` = 32442; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 23159 AND `item` = 32444; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 23159 AND `item` = 32439; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 23159 AND `item` = 32437; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 23159 AND `item` = 32447; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 23159 AND `item` = 32431; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 23159 AND `item` = 32432; -- [13]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 23159 AND `item` = 32433; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 23159 AND `item` = 32434; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 23159 AND `item` = 32443; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 23159 AND `item` = 32441; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 23159 AND `item` = 32485; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 23159 AND `item` = 32486; -- [18]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 23159 AND `item` = 32487; -- [18]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 23159 AND `item` = 32488; -- [18]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 23159 AND `item` = 32489; -- [18]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 23159 AND `item` = 32490; -- [18]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 23159 AND `item` = 32491; -- [18]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 23159 AND `item` = 32492; -- [18]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 23159 AND `item` = 32493; -- [18]

-- ["Mahir Redstroke"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 19239; -- 122
DELETE FROM `npc_vendor` WHERE `entry` = 19239;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(19239, 2526, 1, 'Main Gauche'),
(19239, 2534, 2, 'Rondel'),
(19239, 2931, 9, 'Maiden\'s Anguish'),
(19239, 3777, 5, 'Lethargy Root'),
(19239, 5140, 4, 'Flash Powder'),
(19239, 5173, 8, 'Deathweed'),
(19239, 8923, 7, 'Essence of Agony'),
(19239, 8924, 6, 'Dust of Deterioration'),
(19239, 8925, 3, 'Crystal Vial');

-- ["Skreah"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 19074; -- 126
DELETE FROM `npc_vendor` WHERE `entry` = 19074;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(19074, 23574, 1, 10800, 1, 0, 0, 'Recipe: Transmute Primal Might'),
(19074, 3371, 0, 0, 2, 0, 0, 'Empty Vial'),
(19074, 3372, 0, 0, 3, 0, 0, 'Leaded Vial'),
(19074, 8925, 0, 0, 4, 0, 0, 'Crystal Vial'),
(19074, 18256, 0, 0, 5, 0, 0, 'Imbued Vial');
UPDATE `npc_vendor` SET `incrtime` = 3600 WHERE `item` = 23574 AND `entry` IN (19074,16641,16705); --  down from 3h

-- ["Asuur"] = { - https://www.wowhead.com/tbc/npc=20616/asuur
-- ["Arodis Sunblade"] = { - https://www.wowhead.com/tbc/npc=20613/arodis-sunblade
-- Priest
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 507 AND `item` = 29050; -- [1] Chest Heal
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 507 AND `item` = 29056; -- [2] Chest Dps
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 507 AND `item` = 29055; -- [3] Hands Heal
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 507 AND `item` = 29057; -- [4] Hands Dps
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 507 AND `item` = 29049; -- [5] Head Heal
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 507 AND `item` = 29058; -- [6] Head Dps
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 507 AND `item` = 29053; -- [7] Legs Heal
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 507 AND `item` = 29059; -- [8] Legs Dps
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 507 AND `item` = 29054; -- [9] Shoulder Heal
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 507 AND `item` = 29060; -- [10] Shoulder Dps
-- UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 507 AND `item` = 27707; -- [11] Arena Dps Hands - classic only?
-- UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 507 AND `item` = 27710; -- [12] Arena Dps Shoulder
-- UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 507 AND `item` = 27709; -- [13] Arena Dps Legs
-- UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 507 AND `item` = 27708; -- [14] Arena Dps Head
-- UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 507 AND `item` = 27711; -- [15] Arena Dps Chest
-- UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 507 AND `item` = 31409; -- [16] Arena Heal Hands
-- UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` = 507 AND `item` = 31412; -- [17] Arena Heal Shoulder
-- UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` = 507 AND `item` = 31411; -- [18] Arena Heal Legs
-- UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `entry` = 507 AND `item` = 31410; -- [19] Arena Heal Head
-- UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `entry` = 507 AND `item` = 31413; -- [20] Arena Heal Chest
-- Mage
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `entry` = 507 AND `item` = 29077; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `entry` = 507 AND `item` = 29080; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `entry` = 507 AND `item` = 29076; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `entry` = 507 AND `item` = 29078; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `entry` = 507 AND `item` = 29079; -- [5]
-- UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `entry` = 507 AND `item` = 25857; -- [6]
-- UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `entry` = 507 AND `item` = 25854; -- [7]
-- UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `entry` = 507 AND `item` = 25858; -- [8]
-- UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `entry` = 507 AND `item` = 25855; -- [9]
-- UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `entry` = 507 AND `item` = 25856; -- [10]
-- Warlock
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `entry` = 507 AND `item` = 28964; -- [2] Chest Dps
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `entry` = 507 AND `item` = 28968; -- [4] Hands Dps
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `entry` = 507 AND `item` = 28963; -- [6] Head Dps
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `entry` = 507 AND `item` = 28966; -- [8] Legs Dps
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `entry` = 507 AND `item` = 28967; -- [10] Shoulder Dps
-- Rogue
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `entry` = 507 AND `item` = 29045; -- [2] Chest Dps
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `entry` = 507 AND `item` = 29048; -- [4] Hands Dps
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `entry` = 507 AND `item` = 29044; -- [6] Head Dps
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `entry` = 507 AND `item` = 29046; -- [8] Legs Dps
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `entry` = 507 AND `item` = 29047; -- [10] Shoulder Dps
-- Druid
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `entry` = 507 AND `item` = 29087; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `entry` = 507 AND `item` = 29090; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `entry` = 507 AND `item` = 29086; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `entry` = 507 AND `item` = 29088; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `entry` = 507 AND `item` = 29089; -- [9] Shoulder 1
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `entry` = 507 AND `item` = 29091; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `entry` = 507 AND `item` = 29092; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `entry` = 507 AND `item` = 29093; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `entry` = 507 AND `item` = 29094; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `entry` = 507 AND `item` = 29095; -- [9] Shoulder 1
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `entry` = 507 AND `item` = 29096; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `entry` = 507 AND `item` = 29097; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `entry` = 507 AND `item` = 29098; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `entry` = 507 AND `item` = 29099; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `entry` = 507 AND `item` = 29100; -- [9] Shoulder 1
-- Hunter
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `entry` = 507 AND `item` = 29082; -- [2] Chest Dps
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `entry` = 507 AND `item` = 29085; -- [4] Hands Dps
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `entry` = 507 AND `item` = 29081; -- [6] Head Dps
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `entry` = 507 AND `item` = 29083; -- [8] Legs Dps
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `entry` = 507 AND `item` = 29084; -- [10] Shoulder Dps
-- Shaman
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `entry` = 507 AND `item` = 29029; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `entry` = 507 AND `item` = 29032; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `entry` = 507 AND `item` = 29028; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `entry` = 507 AND `item` = 29030; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `entry` = 507 AND `item` = 29031; -- [9] Shoulder 1
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `entry` = 507 AND `item` = 29033; -- [1] Chest 2
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `entry` = 507 AND `item` = 29034; -- [3] Hands 2
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `entry` = 507 AND `item` = 29035; -- [5] Head 2
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `entry` = 507 AND `item` = 29036; -- [7] Legs 2
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `entry` = 507 AND `item` = 29037; -- [9] Shoulder 2
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `entry` = 507 AND `item` = 29038; -- [1] Chest 3
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `entry` = 507 AND `item` = 29039; -- [3] Hands 3
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `entry` = 507 AND `item` = 29040; -- [5] Head 3
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `entry` = 507 AND `item` = 29042; -- [7] Legs 3
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `entry` = 507 AND `item` = 29043; -- [9] Shoulder 3
-- Paladin
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `entry` = 507 AND `item` = 29062; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `entry` = 507 AND `item` = 29065; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `entry` = 507 AND `item` = 29061; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `entry` = 507 AND `item` = 29063; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `entry` = 507 AND `item` = 29064; -- [9] Shoulder 1
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `entry` = 507 AND `item` = 29066; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `entry` = 507 AND `item` = 29067; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `entry` = 507 AND `item` = 29068; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `entry` = 507 AND `item` = 29069; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `entry` = 507 AND `item` = 29070; -- [9] Shoulder 1
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `entry` = 507 AND `item` = 29071; -- [1] Chest 1
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `entry` = 507 AND `item` = 29072; -- [3] Hands 1
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `entry` = 507 AND `item` = 29073; -- [5] Head 1
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `entry` = 507 AND `item` = 29074; -- [7] Legs 1
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `entry` = 507 AND `item` = 29075; -- [9] Shoulder 1
-- Warrior
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `entry` = 507 AND `item` = 29012; -- [1] Chest Tank
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `entry` = 507 AND `item` = 29019; -- [2] Chest Dps
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `entry` = 507 AND `item` = 29017; -- [3] Hands Tank
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `entry` = 507 AND `item` = 29020; -- [4] Hands Dps
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `entry` = 507 AND `item` = 29011; -- [5] Head Tank
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `entry` = 507 AND `item` = 29021; -- [6] Head Dps
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `entry` = 507 AND `item` = 29015; -- [7] Legs Tank
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `entry` = 507 AND `item` = 29022; -- [8] Legs Dps
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `entry` = 507 AND `item` = 29016; -- [9] Shoulder Tank
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `entry` = 507 AND `item` = 29023; -- [10] Shoulder Dps

-- ["Technician Halmaha"] = { - https://www.wowhead.com/tbc/npc=27711/technician-halmaha
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 133 AND `item` = 5956; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 133 AND `item` = 2901; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 133 AND `item` = 4399; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 133 AND `item` = 4400; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 133 AND `item` = 2880; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 133 AND `item` = 3466; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 133 AND `item` = 10648; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 133 AND `item` = 10647; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 133 AND `item` = 4404; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 133 AND `item` = 4361; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 133 AND `item` = 4363; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 133 AND `item` = 4371; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 133 AND `item` = 4382; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 133 AND `item` = 4357; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 133 AND `item` = 4364; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 133 AND `item` = 4389; -- [11]

-- ["Nasmara Moonsong"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 22208 AND `item` = 21895; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 22208 AND `item` = 21916; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 22208 AND `item` = 21918; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 22208 AND `item` = 21917; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 22208 AND `item` = 21919; -- [5]

-- ["Viggz Shinesparked"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19661 AND `item` = 5956; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19661 AND `item` = 2901; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19661 AND `item` = 10648; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19661 AND `item` = 10647; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 19661 AND `item` = 32381; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 19661 AND `item` = 23799; -- [6]
UPDATE `npc_vendor` SET `slot` = 7, `incrtime` = 10800 WHERE `entry` = 19661 AND `item` = 23781; -- [6]
UPDATE `npc_vendor` SET `slot` = 8, `maxcount` = 2, `incrtime` = 10800 WHERE `entry` = 19661 AND `item` = 23783; -- [6]
UPDATE `npc_vendor` SET `slot` = 9, `maxcount` = 3, `incrtime` = 10800 WHERE `entry` = 19661 AND `item` = 23768; -- [6]
UPDATE `npc_vendor` SET `slot` = 10, `incrtime` = 10800 WHERE `entry` = 19661 AND `item` = 23736; -- [6]

-- ["Kaja"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3322; -- 311
DELETE FROM `npc_vendor` WHERE `entry` = 3322;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(3322, 5441, 1, 'Small Shot Pouch'),
(3322, 2509, 2, 'Ornate Blunderbuss'),
(3322, 2511, 3, 'Hunter\'s Boomstick'),
(3322, 2516, 4, 'Light Shot'),
(3322, 2519, 5, 'Heavy Shot'),
(3322, 3023, 6, 'Large Bore Blunderbuss'),
(3322, 3024, 7, 'BKP 2700 "Enforcer"'),
(3322, 3025, 8, 'BKP 42 "Ultra"'),
(3322, 3033, 9, 'Solid Shot'),
(3322, 11284, 10, 'Accurate Slugs'),
(3322, 28060, 11, 'Impact Shot');

UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 311 AND `item` = 2516; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 311 AND `item` = 2519; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 311 AND `item` = 3023; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 311 AND `item` = 3024; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 311 AND `item` = 3025; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 311 AND `item` = 3033; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 311 AND `item` = 11284; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 311 AND `item` = 28060; -- [11]

-- ["Quartermaster Urgronn"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 17585 AND `item` = 31359; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 17585 AND `item` = 25738; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 17585 AND `item` = 24006; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 17585 AND `item` = 24009; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 17585 AND `item` = 24000; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 17585 AND `item` = 24001; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 17585 AND `item` = 25739; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 17585 AND `item` = 31361; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 17585 AND `item` = 25823; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 17585 AND `item` = 29232; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 17585 AND `item` = 25740; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 17585 AND `item` = 29197; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 17585 AND `item` = 30637; -- [13] Flamewrought Key 185686
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 17585 AND `item` = 25824; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 17585 AND `item` = 24003; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 17585 AND `item` = 31358; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 17585 AND `item` = 32882; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 17585 AND `item` = 34201; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 17585 AND `item` = 29190; -- [19]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 17585 AND `item` = 29168; -- [20]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 17585 AND `item` = 29167; -- [21]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 17585 AND `item` = 24002; -- [22]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 17585 AND `item` = 31362; -- [23]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 17585 AND `item` = 33151; -- [24]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 17585 AND `item` = 29152; -- [25]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 17585 AND `item` = 29155; -- [26]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 17585 AND `item` = 29165; -- [27]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 17585 AND `item` = 24004; -- [28]
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 17585 AND `item` = 35337; -- [29]
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 17585 AND `item` = 35339; -- [30]
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 17585 AND `item` = 35343; -- [30]
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 17585 AND `item` = 35332; -- [30]
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 17585 AND `item` = 35366; -- [30]
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 17585 AND `item` = 35364; -- [30]
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 17585 AND `item` = 35371; -- [30]
UPDATE `npc_vendor` SET `slot` = 36 WHERE `entry` = 17585 AND `item` = 35360; -- [30]
UPDATE `npc_vendor` SET `slot` = 37 WHERE `entry` = 17585 AND `item` = 35377; -- [30]
UPDATE `npc_vendor` SET `slot` = 38 WHERE `entry` = 17585 AND `item` = 35392; -- [30]
UPDATE `npc_vendor` SET `slot` = 39 WHERE `entry` = 17585 AND `item` = 35386; -- [30]
UPDATE `npc_vendor` SET `slot` = 40 WHERE `entry` = 17585 AND `item` = 35383; -- [30]
UPDATE `npc_vendor` SET `slot` = 41 WHERE `entry` = 17585 AND `item` = 35413; -- [30]
UPDATE `npc_vendor` SET `slot` = 42 WHERE `entry` = 17585 AND `item` = 35406; -- [30]
UPDATE `npc_vendor` SET `slot` = 43 WHERE `entry` = 17585 AND `item` = 35409; -- [30]

-- https://www.wowhead.com/tbc/npc=17657/logistics-officer-ulrike
-- https://www.youtube.com/watch?v=evKnaTC_BE8
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 17657 AND `item` = 23142; -- Design: Enduring Deep Peridot
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 17657 AND `item` = 29213; -- Pattern: Felstalker Belt
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 17657 AND `item` = 24007; -- Footman's Waterskin
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 17657 AND `item` = 24008; -- Dried Mushroom Rations
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 17657 AND `item` = 22531; -- Formula: Enchant Bracer - Superior Healing
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 17657 AND `item` = 29719; -- Pattern: Cobrahide Leg Armor
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 17657 AND `item` = 22905; -- Recipe: Elixir of Major Agility
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 17657 AND `item` = 29214; -- Pattern: Felstalker Bracers
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 17657 AND `item` = 29215; -- Pattern: Felstalker Breastplate
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 17657 AND `item` = 25870; -- Recipe: Transmute Skyfire Diamond

UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 17657 AND `item` = 25825; -- Footman's Longsword
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 17657 AND `item` = 25826; -- Sage's Band
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 17657 AND `item` = 29196; -- Glyph of Fire Warding
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 17657 AND `item` = 30622; -- Flamewrought Key
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 17657 AND `item` = 22547; -- Formula: Enchant Chest - Exceptional Stats
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 17657 AND `item` = 24180; -- Design: Dawnstone Crab
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 17657 AND `item` = 32883; -- Felbane Slugs
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 17657 AND `item` = 34218; -- Pattern: Netherscale Ammo Pouch
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 17657 AND `item` = 29189; -- Glyph of Renewal
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 17657 AND `item` = 29166; -- Hellforged Halberd

UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 17657 AND `item` = 29169; -- Ring of Convalescence
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 17657 AND `item` = 29722; -- Pattern: Nethercobra Leg Armor
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 17657 AND `item` = 33150; -- Formula: Enchant Cloak - Subtlety
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 17657 AND `item` = 23619; -- Plans: Felsteel Shield Spike
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 17657 AND `item` = 23999; -- Honor Hold Tabard
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 17657 AND `item` = 29156; -- Honor's Call
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 17657 AND `item` = 29151; -- Veteran's Musket
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 17657 AND `item` = 29153; -- Blade of the Archmage
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 17657 AND `item` = 35467; -- Mooncloth Vestments
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 17657 AND `item` = 35466; -- Satin Hood

UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 17657 AND `item` = 35465; -- Evoker's Silk Amice
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 17657 AND `item` = 35464; -- Dreadweave Robe
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 17657 AND `item` = 35468; -- Opportunist's Leather Gloves
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 17657 AND `item` = 35469; -- Dragonhide Robe
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 17657 AND `item` = 35470; -- Kodohide Spaulders
UPDATE `npc_vendor` SET `slot` = 36 WHERE `entry` = 17657 AND `item` = 35471; -- Wyrmhide Gloves
UPDATE `npc_vendor` SET `slot` = 37 WHERE `entry` = 17657 AND `item` = 35475; -- Stalker's Chain Gauntlets
UPDATE `npc_vendor` SET `slot` = 38 WHERE `entry` = 17657 AND `item` = 35474; -- Seer's Linked Helm
UPDATE `npc_vendor` SET `slot` = 39 WHERE `entry` = 17657 AND `item` = 35472; -- Seer's Mail Armor
UPDATE `npc_vendor` SET `slot` = 40 WHERE `entry` = 17657 AND `item` = 35473; -- Seer's Ringmail Gloves

UPDATE `npc_vendor` SET `slot` = 41 WHERE `entry` = 17657 AND `item` = 35476; -- Crusader's Ornamented Spaulders
UPDATE `npc_vendor` SET `slot` = 42 WHERE `entry` = 17657 AND `item` = 35477; -- Crusader's Scaled Gauntlets
UPDATE `npc_vendor` SET `slot` = 43 WHERE `entry` = 17657 AND `item` = 35478; -- Savage Plate Helm

-- ["Eiin"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19213 AND `item` = 21893; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19213 AND `item` = 21892; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19213 AND `item` = 21897; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19213 AND `item` = 21896; -- [4]

-- ["Fyr Mistrunner"] = { - https://www.wowhead.com/tbc/npc=3003/fyr-mistrunner
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 447 AND `item` = 4540; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 447 AND `item` = 4541; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 447 AND `item` = 4542; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 447 AND `item` = 4544; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 447 AND `item` = 4601; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 447 AND `item` = 8950; -- [6]

-- ["Innkeeper Haelthol"] = { - https://www.wowhead.com/tbc/npc=19232/innkeeper-haelthol
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 416 AND `item` = 8950; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 416 AND `item` = 27855; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 416 AND `item` = 29449; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 416 AND `item` = 8953; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 416 AND `item` = 27856; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 416 AND `item` = 29450; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 416 AND `item` = 8932; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 416 AND `item` = 27857; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 416 AND `item` = 29448; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 416 AND `item` = 8766; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 416 AND `item` = 28399; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 416 AND `item` = 27860; -- [12]

-- ["Kelara"] = { - https://www.wowhead.com/tbc/npc=21906/kelara
-- ["Veynna Dawnstar"] = { - https://www.wowhead.com/tbc/npc=21905/veynna-dawnstar
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 30152; -- [1] Heal Head
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 506 AND `item` = 30161; -- [2] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 506 AND `item` = 30150; -- [3] Heal Chest
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 506 AND `item` = 30159; -- [4] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 506 AND `item` = 30153; -- [5] Heal Legs
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 506 AND `item` = 30162; -- [6] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 506 AND `item` = 30154; -- [7] Heal Shoulder
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 506 AND `item` = 30163; -- [8] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 506 AND `item` = 30151; -- [9] Heal Hands
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 506 AND `item` = 30160; -- [10] Dps Hands
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32015; -- [11] S2 Heal Hands - seemingly sells these in tbc classic, we dont have the space for that
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32016; -- [12] S2 Heal Head
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32017; -- [13] S2 Heal Legs
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32018; -- [14] S2 Heal Shoulder
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32019; -- [15] S2 Heal Chest
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32034; -- [16] S2 Dps Hands
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32035; -- [17] S2 Dps Head
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32036; -- [18] S2 Dps Legs
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32037; -- [19] S2 Dps Shoulder
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32038; -- [20] S2 Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `entry` = 506 AND `item` = 30206; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `entry` = 506 AND `item` = 30205; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `entry` = 506 AND `item` = 30207; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `entry` = 506 AND `item` = 30210; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `entry` = 506 AND `item` = 30196; -- [5] Dps Chest
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32047; -- [6] S2 Shoulder
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32048; -- [7] S2 Head
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32049; -- [8] S2 Hands
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32050; -- [9] S2 Chest
-- UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 506 AND `item` = 32051; -- [10] S2 Legs
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `entry` = 506 AND `item` = 30212; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `entry` = 506 AND `item` = 30211; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `entry` = 506 AND `item` = 30213; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `entry` = 506 AND `item` = 30215; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `entry` = 506 AND `item` = 30214; -- [5] Dps Chest
-- R
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `entry` = 506 AND `item` = 30146; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `entry` = 506 AND `item` = 30145; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `entry` = 506 AND `item` = 30148; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `entry` = 506 AND `item` = 30149; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `entry` = 506 AND `item` = 30144; -- [5] Dps Chest
-- D
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `entry` = 506 AND `item` = 30219; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `entry` = 506 AND `item` = 30217; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `entry` = 506 AND `item` = 30220; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `entry` = 506 AND `item` = 30221; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `entry` = 506 AND `item` = 30216; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `entry` = 506 AND `item` = 30233; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `entry` = 506 AND `item` = 30232; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `entry` = 506 AND `item` = 30234; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `entry` = 506 AND `item` = 30235; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `entry` = 506 AND `item` = 30231; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `entry` = 506 AND `item` = 30228; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `entry` = 506 AND `item` = 30223; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `entry` = 506 AND `item` = 30229; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `entry` = 506 AND `item` = 30230; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `entry` = 506 AND `item` = 30222; -- [5] Dps Chest
-- H
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `entry` = 506 AND `item` = 30141; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `entry` = 506 AND `item` = 30140; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `entry` = 506 AND `item` = 30142; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `entry` = 506 AND `item` = 30143; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `entry` = 506 AND `item` = 30139; -- [5] Dps Chest
-- S
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `entry` = 506 AND `item` = 30166; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `entry` = 506 AND `item` = 30165; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `entry` = 506 AND `item` = 30167; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `entry` = 506 AND `item` = 30168; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `entry` = 506 AND `item` = 30164; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `entry` = 506 AND `item` = 30171; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `entry` = 506 AND `item` = 30170; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `entry` = 506 AND `item` = 30172; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `entry` = 506 AND `item` = 30173; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `entry` = 506 AND `item` = 30169; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `entry` = 506 AND `item` = 30190; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `entry` = 506 AND `item` = 30189; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `entry` = 506 AND `item` = 30192; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `entry` = 506 AND `item` = 30194; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `entry` = 506 AND `item` = 30185; -- [5] Dps Chest
-- P
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `entry` = 506 AND `item` = 30136; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `entry` = 506 AND `item` = 30135; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `entry` = 506 AND `item` = 30137; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `entry` = 506 AND `item` = 30138; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `entry` = 506 AND `item` = 30134; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `entry` = 506 AND `item` = 30125; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `entry` = 506 AND `item` = 30124; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `entry` = 506 AND `item` = 30126; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `entry` = 506 AND `item` = 30127; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `entry` = 506 AND `item` = 30123; -- [5] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `entry` = 506 AND `item` = 30131; -- [1] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `entry` = 506 AND `item` = 30130; -- [2] Dps Hands
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `entry` = 506 AND `item` = 30132; -- [3] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `entry` = 506 AND `item` = 30133; -- [4] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `entry` = 506 AND `item` = 30129; -- [5] Dps Chest
-- W
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `entry` = 506 AND `item` = 30115; -- [1] Heal Head
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `entry` = 506 AND `item` = 30120; -- [2] Dps Head
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `entry` = 506 AND `item` = 30113; -- [3] Heal Chest
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `entry` = 506 AND `item` = 30118; -- [4] Dps Chest
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `entry` = 506 AND `item` = 30116; -- [5] Heal Legs
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `entry` = 506 AND `item` = 30121; -- [6] Dps Legs
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `entry` = 506 AND `item` = 30117; -- [7] Heal Shoulder
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `entry` = 506 AND `item` = 30122; -- [8] Dps Shoulder
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `entry` = 506 AND `item` = 30114; -- [9] Heal Hands
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `entry` = 506 AND `item` = 30119; -- [10] Dps Hands

-- ["Mortog Steamhead"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 23373; -- 124
DELETE FROM `npc_vendor` WHERE `entry` = 23373;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(23373, 32904, 0, 0, 1, 1963, 0, 'Cenarion Healing Salve'),
(23373, 32903, 0, 0, 2, 1963, 0, 'Cenarion Mana Salve'),
(23373, 28060, 0, 0, 14, 0, 0, 'Impact Shot'),
(23373, 28056, 0, 0, 12, 0, 0, 'Blackflight Arrow'),
(23373, 28053, 0, 0, 11, 0, 0, 'Wicked Arrow'),
(23373, 28061, 0, 0, 15, 0, 0, 'Ironbite Shell'),
(23373, 11284, 0, 0, 13, 0, 0, 'Accurate Slugs'),
(23373, 8925, 0, 0, 3, 0, 0, 'Crystal Vial'),
(23373, 8924, 0, 0, 6, 0, 0, 'Dust of Deterioration'),
(23373, 11285, 0, 0, 10, 0, 0, 'Jagged Arrow'),
(23373, 22148, 0, 0, 28, 0, 0, 'Wild Quillvine'),
(23373, 2931, 0, 0, 9, 0, 0, 'Maiden\'s Anguish'),
(23373, 3777, 0, 0, 5, 0, 0, 'Lethargy Root'),
(23373, 5140, 0, 0, 4, 0, 0, 'Flash Powder'),
(23373, 5173, 0, 0, 8, 0, 0, 'Deathweed'),
(23373, 5565, 0, 0, 29, 0, 0, 'Infernal Stone'),
(23373, 8923, 0, 0, 7, 0, 0, 'Essence of Agony'),
(23373, 16583, 0, 0, 30, 0, 0, 'Demonic Figurine'),
(23373, 17020, 0, 0, 21, 0, 0, 'Arcane Powder'),
(23373, 17021, 0, 0, 26, 0, 0, 'Wild Berries'),
(23373, 17026, 0, 0, 27, 0, 0, 'Wild Thornroot'),
(23373, 17028, 0, 0, 24, 0, 0, 'Holy Candle'),
(23373, 17029, 0, 0, 25, 0, 0, 'Sacred Candle'),
(23373, 17030, 0, 0, 22, 0, 0, 'Ankh'),
(23373, 17031, 0, 0, 19, 0, 0, 'Rune of Teleportation'),
(23373, 17032, 0, 0, 20, 0, 0, 'Rune of Portals'),
(23373, 17033, 0, 0, 23, 0, 0, 'Symbol of Divinity'),
(23373, 17037, 0, 0, 16, 0, 0, 'Hornbeam Seed'),
(23373, 17038, 0, 0, 17, 0, 0, 'Ironwood Seed'),
(23373, 21177, 0, 0, 31, 0, 0, 'Symbol of Kings'),
(23373, 22147, 0, 0, 18, 0, 0, 'Flintweed Seed');

-- ["Gidge Spellweaver"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 22213 AND `item` = 24316; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 22213 AND `item` = 21908; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 22213 AND `item` = 21909; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 22213 AND `item` = 21910; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 22213 AND `item` = 21911; -- [5]

-- ["Zungam"] = { - https://www.wowhead.com/tbc/npc=23897/zungam
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 322 AND `item` = 2528; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 322 AND `item` = 2529; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 322 AND `item` = 2530; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 322 AND `item` = 2531; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 322 AND `item` = 2532; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 322 AND `item` = 2533; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 322 AND `item` = 2534; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 322 AND `item` = 2535; -- [8]

-- ["Griftah"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19227 AND `item` = 27978; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19227 AND `item` = 27992; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19227 AND `item` = 27979; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 19227 AND `item` = 27945; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 19227 AND `item` = 27941; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 19227 AND `item` = 27976; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 19227 AND `item` = 27982; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 19227 AND `item` = 27944; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 19227 AND `item` = 27940; -- [9]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 19227 AND `item` = 34249; -- [10]

-- ["Stomper Kreeg"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 14322 AND `item` = 18287; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 14322 AND `item` = 18269; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 14322 AND `item` = 18284; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 14322 AND `item` = 18288; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 14322 AND `item` = 9260; -- [5]

-- ["Fantei"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 19678; -- 136
DELETE FROM `npc_vendor` WHERE `entry` = 19678;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(19678, 30823, 0, 0, 20, 0, 0, 'Demon Warding Totem'),
(19678, 17034, 0, 0, 1, 0, 0, 'Maple Seed'),
(19678, 17035, 0, 0, 2, 0, 0, 'Stranglethorn Seed'),
(19678, 17036, 0, 0, 3, 0, 0, 'Ashwood Seed'),
(19678, 17037, 0, 0, 4, 0, 0, 'Hornbeam Seed'),
(19678, 17038, 0, 0, 5, 0, 0, 'Ironwood Seed'),
(19678, 22147, 0, 0, 6, 0, 0, 'Flintweed Seed'),
(19678, 17031, 0, 0, 7, 0, 0, 'Rune of Teleportation'),
(19678, 17032, 0, 0, 8, 0, 0, 'Rune of Portals'),
(19678, 17020, 0, 0, 9, 0, 0, 'Arcane Powder'),
(19678, 17030, 0, 0, 10, 0, 0, 'Ankh'),
(19678, 17033, 0, 0, 11, 0, 0, 'Symbol of Divinity'),
(19678, 17028, 0, 0, 12, 0, 0, 'Holy Candle'),
(19678, 17029, 0, 0, 13, 0, 0, 'Sacred Candle'),
(19678, 17021, 0, 0, 14, 0, 0, 'Wild Berries'),
(19678, 17026, 0, 0, 15, 0, 0, 'Wild Thornroot'),
(19678, 22148, 0, 0, 16, 0, 0, 'Wild Quillvine'),
(19678, 5565, 0, 0, 17, 0, 0, 'Infernal Stone'),
(19678, 16583, 0, 0, 18, 0, 0, 'Demonic Figurine'),
(19678, 21177, 0, 0, 19, 0, 0, 'Symbol of Kings');

-- ["Nakodu"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 21655 AND `item` = 22910; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 21655 AND `item` = 30833; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 21655 AND `item` = 23138; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 21655 AND `item` = 24175; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 21655 AND `item` = 24179; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 21655 AND `item` = 22538; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 21655 AND `item` = 34200; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 21655 AND `item` = 29199; -- [8]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 21655 AND `item` = 30633; -- [9] 185691 Auchenai Key
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 21655 AND `item` = 30830; -- [10]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 21655 AND `item` = 30832; -- [11]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 21655 AND `item` = 30834; -- [12]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 21655 AND `item` = 30835; -- [13]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 21655 AND `item` = 30836; -- [14]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 21655 AND `item` = 30841; -- [15]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 21655 AND `item` = 30846; -- [16]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 21655 AND `item` = 31357; -- [17]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 21655 AND `item` = 33157; -- [18]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 21655 AND `item` = 33148; -- [19]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 21655 AND `item` = 31778; -- [20]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 21655 AND `item` = 35335; -- [21]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 21655 AND `item` = 35340; -- [22]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 21655 AND `item` = 35344; -- [22]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 21655 AND `item` = 35331; -- [22]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 21655 AND `item` = 35370; -- [22]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 21655 AND `item` = 35357; -- [22]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 21655 AND `item` = 35361; -- [22]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 21655 AND `item` = 35373; -- [22]
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 21655 AND `item` = 35378; -- [22]
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 21655 AND `item` = 35391; -- [22]
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 21655 AND `item` = 35382; -- [22]
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 21655 AND `item` = 35389; -- [22]
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 21655 AND `item` = 35412; -- [22]
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 21655 AND `item` = 35405; -- [22]
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 21655 AND `item` = 35411; -- [22]

-- ["Kerpow Blastwrench"] = { - https://www.wowhead.com/tbc/npc=22491/kerpow-blastwrench
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 312 AND `item` = 3025; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 312 AND `item` = 28060; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 312 AND `item` = 28061; -- [3]

-- ["Kor'geld"] = { - https://www.wowhead.com/tbc/npc=3348/korgeld
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 126 AND `item` = 3371; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 126 AND `item` = 3372; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 126 AND `item` = 8925; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 126 AND `item` = 18256; -- [4]

-- ["Narj Deepslice"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2814; -- 1200
DELETE FROM `npc_vendor` WHERE `entry` = 2814;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2814, 117, 0, 0, 1, 0, 0, 'Tough Jerky'),
(2814, 2287, 0, 0, 2, 0, 0, 'Haunch of Meat'),
(2814, 3770, 0, 0, 3, 0, 0, 'Mutton Chop'),
(2814, 3771, 0, 0, 4, 0, 0, 'Wild Hog Shank'),
(2814, 4599, 0, 0, 5, 0, 0, 'Cured Ham Steak'),
(2814, 8952, 0, 0, 6, 0, 0, 'Roasted Quail'),
(2814, 4609, 0, 0, 7, 0, 0, 'Recipe: Barbecued Buzzard Wing');

-- ["Hammon Karwn"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2810; -- 108
DELETE FROM `npc_vendor` WHERE `entry` = 2810;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2810, 12228, 0, 0, 1, 0, 0, 'Recipe: Roast Raptor'),
(2810, 5973, 1, 3600, 33, 0, 0, 'Pattern: Barbaric Leggings'),
(2810, 21942, 1, 3600, 34, 0, 0, 'Design: Ruby Crown of Restoration'),
-- (2810, 3777, 0, 0, 35, 0, 0, 'Lethargy Root'), -- stopped being sold
(2810, 2901, 0, 0, 6, 0, 0, 'Mining Pick'),
(2810, 7005, 0, 0, 2, 0, 0, 'Skinning Knife'),
(2810, 5956, 0, 0, 5, 0, 0, 'Blacksmith Hammer'),
(2810, 6256, 0, 0, 3, 0, 0, 'Fishing Pole'),
(2810, 2880, 0, 0, 15, 0, 0, 'Weak Flux'),
(2810, 6217, 0, 0, 3, 0, 0, 'Copper Rod'),
(2810, 3466, 0, 0, 16, 0, 0, 'Strong Flux'),
(2810, 3857, 0, 0, 17, 0, 0, 'Coal'),
(2810, 2320, 0, 0, 7, 0, 0, 'Coarse Thread'),
(2810, 2321, 0, 0, 8, 0, 0, 'Fine Thread'),
(2810, 4291, 0, 0, 9, 0, 0, 'Silken Thread'),
(2810, 8343, 0, 0, 10, 0, 0, 'Heavy Silken Thread'),
(2810, 14341, 0, 0, 11, 0, 0, 'Rune Thread'),
(2810, 2678, 0, 0, 12, 0, 0, 'Mild Spices'),
(2810, 2692, 0, 0, 13, 0, 0, 'Hot Spices'),
(2810, 3713, 0, 0, 14, 0, 0, 'Soothing Spices'),
(2810, 2928, 0, 0, 18, 0, 0, 'Dust of Decay'),
(2810, 2604, 0, 0, 19, 0, 0, 'Red Dye'),
(2810, 2325, 0, 0, 20, 0, 0, 'Black Dye'),
(2810, 4341, 0, 0, 21, 0, 0, 'Yellow Dye'),
(2810, 4342, 0, 0, 22, 0, 0, 'Purple Dye'),
(2810, 4340, 0, 0, 23, 0, 0, 'Gray Dye'),
(2810, 3371, 0, 0, 24, 0, 0, 'Empty Vial'),
(2810, 3372, 0, 0, 25, 0, 0, 'Leaded Vial'),
(2810, 8925, 0, 0, 26, 0, 0, 'Crystal Vial'),
(2810, 18256, 0, 0, 27, 0, 0, 'Imbued Vial'),
(2810, 4289, 0, 0, 28, 0, 0, 'Salt'),
(2810, 4399, 0, 0, 29, 0, 0, 'Wooden Stock'),
(2810, 4400, 0, 0, 30, 0, 0, 'Heavy Stock'),
(2810, 6530, 0, 0, 31, 0, 0, 'Nightcrawlers'),
(2810, 6532, 0, 0, 32, 0, 0, 'Bright Baubles');

-- ["Jannos Ironwill"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 1471; -- 318
DELETE FROM `npc_vendor` WHERE `entry` = 1471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(1471, 2524, 0, 0, 1, 0, 0, 'Truncheon'),
(1471, 2532, 0, 0, 2, 0, 0, 'Morning Star'),
(1471, 2525, 0, 0, 3, 0, 0, 'War Hammer'),
(1471, 2533, 0, 0, 4, 0, 0, 'War Maul'),
(1471, 2527, 0, 0, 5, 0, 0, 'Battle Staff'),
(1471, 2535, 0, 0, 6, 0, 0, 'War Staff'),
(1471, 10858, 1, 9000, 7, 0, 0, 'Plans: Solid Iron Maul');

-- ["Torq Ironblast"] = { - https://www.wowhead.com/tbc/npc=4889/torq-ironblast
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 309 AND `item` = 3023; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 309 AND `item` = 3024; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 309 AND `item` = 2516; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 309 AND `item` = 2519; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 309 AND `item` = 3033; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 309 AND `item` = 11284; -- [6]

-- ["Drovnar Strongbrew"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2812; -- 127
DELETE FROM `npc_vendor` WHERE `entry` = 2812;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- (127, 3385, 3, 7200, 0, 0, 0, 'Lesser Mana Potion'), - lots of vendors have these duplicated pots
-- (127, 858, 3, 7200, 0, 0, 0, 'Lesser Healing Potion'),
(2812, 3371, 0, 0, 1, 0, 0, 'Empty Vial'),
(2812, 3372, 0, 0, 2, 0, 0, 'Leaded Vial'),
(2812, 8925, 0, 0, 3, 0, 0, 'Crystal Vial'),
(2812, 18256, 0, 0, 4, 0, 0, 'Imbued Vial'),
(2812, 3827, 3, 7200, 5, 0, 0, 'Mana Potion'),
(2812, 1710, 3, 7200, 6, 0, 0, 'Greater Healing Potion'),
(2812, 6056, 1, 7200, 7, 0, 0, 'Recipe: Frost Protection Potion');

UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 127 AND `item` = 3371; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 127 AND `item` = 3372; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 127 AND `item` = 8925; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 127 AND `item` = 18256; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 127 AND `item` = 3827; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 127 AND `item` = 1710; -- [6]

DELETE FROM `npc_vendor_template` WHERE `entry` = 127 AND `item` IN (858,3385);
DELETE FROM `npc_vendor` WHERE `entry` = 3956 AND `item` = 3385;
DELETE FROM `npc_vendor` WHERE `entry` = 2481 AND `item` = 3385;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(3956, 3385, 3, 7200, 0, 0, 0, 'Lesser Mana Potion'),
(2481, 3385, 3, 7200, 0, 0, 0, 'Lesser Mana Potion');
DELETE FROM `npc_vendor` WHERE `entry` = 4226 AND `item` = 13477; -- thaught at trainer tbc+

-- ["Inscriber Veredis"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 20808 AND `item` = 28907; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 20808 AND `item` = 28908; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 20808 AND `item` = 28904; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 20808 AND `item` = 28903; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 20808 AND `item` = 28910; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 20808 AND `item` = 28911; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 20808 AND `item` = 28912; -- [7]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 20808 AND `item` = 28909; -- [8]

-- https://youtu.be/h62PiDQ-m0U?si=H-YaxxwGNDm4_jAg&t=20
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 20807 AND `item` = 28881; -- Inscription of Discipline
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 20807 AND `item` = 28878; -- Inscription of Faith
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 20807 AND `item` = 28885; -- Inscription of Vengeance
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 20807 AND `item` = 28882; -- Inscription of Warding
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 20807 AND `item` = 28886; -- Greater Inscription of Discipline
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 20807 AND `item` = 28887; -- Greater Inscription of Faith
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 20807 AND `item` = 28888; -- Greater Inscription of Vengeance
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 20807 AND `item` = 28889; -- Greater Inscription of Warding

-- ["Battlecryer Blackeye"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 18267 AND `item` = 28360; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 18267 AND `item` = 27777; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 18267 AND `item` = 27786; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 18267 AND `item` = 27785; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 18267 AND `item` = 27832; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 18267 AND `item` = 27830; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 18267 AND `item` = 24522; -- [7]

-- https://www.wowhead.com/tbc/npc=18266/warrant-officer-tracy-proudwell
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 18266 AND `item` = 28361; -- Mighty Blood Garnet
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 18266 AND `item` = 27812; -- Stark Blood Garnet
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 18266 AND `item` = 27809; -- Barbed Deep Peridot
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 18266 AND `item` = 27820; -- Notched Deep Peridot
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 18266 AND `item` = 27833; -- Band of the Victor
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 18266 AND `item` = 27834; -- Circlet of the Victor
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 18266 AND `item` = 24520; -- Honor Hold Favor

-- ["Dama Wildmane"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 20494 AND `item` = 25474; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 20494 AND `item` = 25475; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 20494 AND `item` = 25476; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 20494 AND `item` = 25531; -- [4]
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 20494 AND `item` = 25533; -- [5]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 20494 AND `item` = 25477; -- [6]
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 20494 AND `item` = 25532; -- [7]

-- ["Almaador"] = {
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 21432 AND `item` = 25904; -- [1]
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 21432 AND `item` = 28273; -- [2]
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 21432 AND `item` = 33155; -- [3]
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 21432 AND `item` = 29717; -- [4]
-- UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 21432 AND `item` = 185926; -- [5] Pattern: Greater Drums of Battle
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 21432 AND `item` = 29195; -- [6]
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 21432 AND `item` = 30634; -- [7] Warpforged Key 185692
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 21432 AND `item` = 22915; -- [8]
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 21432 AND `item` = 22537; -- [9]
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 21432 AND `item` = 30826; -- [10]
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 21432 AND `item` = 33159; -- [11]
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 21432 AND `item` = 24182; -- [12]
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 21432 AND `item` = 29180; -- [13]
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 21432 AND `item` = 29179; -- [14]
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 21432 AND `item` = 28281; -- [15]
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 21432 AND `item` = 13517; -- [16]
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 21432 AND `item` = 29191; -- [17]
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 21432 AND `item` = 31354; -- [18]
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 21432 AND `item` = 33153; -- [19]
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 21432 AND `item` = 29177; -- [20]
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 21432 AND `item` = 29176; -- [21]
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 21432 AND `item` = 29175; -- [22]
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 21432 AND `item` = 31781; -- [23]
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 21432 AND `item` = 35341; -- [24]
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 21432 AND `item` = 35333; -- [24]
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 21432 AND `item` = 35345; -- [24]
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 21432 AND `item` = 35330; -- [24]
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 21432 AND `item` = 35368; -- [24]
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 21432 AND `item` = 35362; -- [24]
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 21432 AND `item` = 35359; -- [24]
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 21432 AND `item` = 35375; -- [24]
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 21432 AND `item` = 35380; -- [24]
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 21432 AND `item` = 35381; -- [24]
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 21432 AND `item` = 35388; -- [24]
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 21432 AND `item` = 35395; -- [24]
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 21432 AND `item` = 35416; -- [24]
UPDATE `npc_vendor` SET `slot` = 36 WHERE `entry` = 21432 AND `item` = 35404; -- [24]
UPDATE `npc_vendor` SET `slot` = 37 WHERE `entry` = 21432 AND `item` = 35407; -- [24]

-- ["Ythyar"] = {
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 17518; -- 137
DELETE FROM `npc_vendor` WHERE `entry` = 17518;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(17518, 17037, 0, 0, 1, 0, 0, 'Hornbeam Seed'),
(17518, 17038, 0, 0, 2, 0, 0, 'Ironwood Seed'),
(17518, 22147, 0, 0, 3, 0, 0, 'Flintweed Seed'),
(17518, 17031, 0, 0, 4, 0, 0, 'Rune of Teleportation'),
(17518, 17032, 0, 0, 5, 0, 0, 'Rune of Portals'),
(17518, 17020, 0, 0, 6, 0, 0, 'Arcane Powder'),
(17518, 17030, 0, 0, 7, 0, 0, 'Ankh'),
(17518, 17033, 0, 0, 8, 0, 0, 'Symbol of Divinity'),
(17518, 17028, 0, 0, 9, 0, 0, 'Holy Candle'),
(17518, 17029, 0, 0, 10, 0, 0, 'Sacred Candle'),
(17518, 17021, 0, 0, 11, 0, 0, 'Wild Berries'),
(17518, 17026, 0, 0, 12, 0, 0, 'Wild Thornroot'),
(17518, 22148, 0, 0, 13, 0, 0, 'Wild Quillvine'),
(17518, 5565, 0, 0, 14, 0, 0, 'Infernal Stone'),
(17518, 16583, 0, 0, 15, 0, 0, 'Demonic Figurine'),
(17518, 21177, 0, 0, 16, 0, 0, 'Symbol of Kings'),
(17518, 25903, 0, 0, 18, 0, 0, 'Design: Bracing Earthstorm Diamond'),
(17518, 25902, 0, 0, 17, 0, 0, 'Design: Powerful Earthstorm Diamond'),
(17518, 22535, 0, 0, 19, 0, 0, 'Formula: Enchant Ring - Striking');

-- Fedryen Swiftspear
-- https://www.youtube.com/watch?v=-RmM53dI_gs
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 17904 AND `item` = 25737; -- Pattern: Heavy Clefthoof Boots
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 17904 AND `item` = 23814; -- Schematic: Green Smoke Flare
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 17904 AND `item` = 24429; -- Expedition Flare
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 17904 AND `item` = 24417; -- Scout's Arrow
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 17904 AND `item` = 25736; -- Pattern: Heavy Clefthoof Leggings
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 17904 AND `item` = 23618; -- Plans: Adamantite Sharpening Stone
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 17904 AND `item` = 28632; -- Plans: Adamantite Weightstone
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 17904 AND `item` = 25869; -- Recipe: Transmute Earthstorm Diamond
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 17904 AND `item` = 29720; -- Pattern: Clefthide Leg Armor
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 17904 AND `item` = 25526; -- Plans: Greater Rune of Warding
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 17904 AND `item` = 25836; -- Preserver's Cudgel
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 17904 AND `item` = 32070; -- Recipe: Earthen Elixir
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 17904 AND `item` = 25838; -- Warden's Hauberk
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 17904 AND `item` = 25835; -- Explorer's Walking Stick
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 17904 AND `item` = 29194; -- Glyph of Nature Warding
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 17904 AND `item` = 30623; -- Reservoir Key
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 17904 AND `item` = 24183; -- Design: Nightseye Panther
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 17904 AND `item` = 25735; -- Pattern: Heavy Clefthoof Vest
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 17904 AND `item` = 31949; -- Warden's Arrow
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 17904 AND `item` = 28271; -- Formula: Enchant Gloves - Spell Strike
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 17904 AND `item` = 22918; -- Recipe: Transmute Primal Water to Air
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 17904 AND `item` = 31392; -- Plans: Wildguard Helm
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 17904 AND `item` = 31391; -- Plans: Wildguard Leggings
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 17904 AND `item` = 29192; -- Glyph of Ferocity
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 17904 AND `item` = 29174; -- Watcher's Cowl
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 17904 AND `item` = 29173; -- Strength of the Untamed
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 17904 AND `item` = 22922; -- Recipe: Major Nature Protection Potion
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 17904 AND `item` = 31356; -- Recipe: Flask of Distilled Wisdom
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 17904 AND `item` = 31390; -- Plans: Wildguard Breastplate
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 17904 AND `item` = 29721; -- Pattern: Nethercleft Leg Armor
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 17904 AND `item` = 31402; -- Design: The Natural Ward
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 17904 AND `item` = 33149; -- Formula: Enchant Cloak - Stealth
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 17904 AND `item` = 29171; -- Earthwarden
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 17904 AND `item` = 29170; -- Windcaller's Orb
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 17904 AND `item` = 29172; -- Ashyen's Gift
UPDATE `npc_vendor` SET `slot` = 36 WHERE `entry` = 17904 AND `item` = 31804; -- Cenarion Expedition Tabard
UPDATE `npc_vendor` SET `slot` = 37 WHERE `entry` = 17904 AND `item` = 33999; -- Cenarion War Hippogryph
UPDATE `npc_vendor` SET `slot` = 38 WHERE `entry` = 17904 AND `item` = 35336; -- Mooncloth Shoulderpads
UPDATE `npc_vendor` SET `slot` = 39 WHERE `entry` = 17904 AND `item` = 35342; -- Satin Robe
UPDATE `npc_vendor` SET `slot` = 40 WHERE `entry` = 17904 AND `item` = 35347; -- Evoker's Silk Trousers
UPDATE `npc_vendor` SET `slot` = 41 WHERE `entry` = 17904 AND `item` = 35329; -- Dreadweave Hood
UPDATE `npc_vendor` SET `slot` = 42 WHERE `entry` = 17904 AND `item` = 35367; -- Opportunist's Leather Helm
UPDATE `npc_vendor` SET `slot` = 43 WHERE `entry` = 17904 AND `item` = 35365; -- Kodohide Robe
UPDATE `npc_vendor` SET `slot` = 44 WHERE `entry` = 17904 AND `item` = 35358; -- Dragonhide Legguards
UPDATE `npc_vendor` SET `slot` = 45 WHERE `entry` = 17904 AND `item` = 35374; -- Wyrmhide Spaulders
UPDATE `npc_vendor` SET `slot` = 46 WHERE `entry` = 17904 AND `item` = 35379; -- Stalker's Chain Leggings
UPDATE `npc_vendor` SET `slot` = 47 WHERE `entry` = 17904 AND `item` = 35385; -- Seer's Linked Spaulders
UPDATE `npc_vendor` SET `slot` = 48 WHERE `entry` = 17904 AND `item` = 35387; -- Seer's Mail Gauntlets
UPDATE `npc_vendor` SET `slot` = 49 WHERE `entry` = 17904 AND `item` = 35394; -- Seer's Ringmail Legguards
UPDATE `npc_vendor` SET `slot` = 50 WHERE `entry` = 17904 AND `item` = 35403; -- Crusader's Ornamented Gloves
UPDATE `npc_vendor` SET `slot` = 51 WHERE `entry` = 17904 AND `item` = 35415; -- Crusader's Scaled Legguards
UPDATE `npc_vendor` SET `slot` = 52 WHERE `entry` = 17904 AND `item` = 35408; -- Savage Plate Gauntlets

-- Alurmi
-- https://www.youtube.com/watch?v=-SOCPt839qU
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 21643 AND `item` = 25910; -- Design: Enigmatic Skyfire Diamond
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 21643 AND `item` = 33160; -- Design: Facet of Eternity
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 21643 AND `item` = 29198; -- Glyph of Frost Warding
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 21643 AND `item` = 30635; -- Key of Time
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 21643 AND `item` = 29713; -- Pattern: Drums of Panic
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 21643 AND `item` = 22536; -- Formula: Enchant Ring - Spellpower
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 21643 AND `item` = 28272; -- Formula: Enchant Gloves - Major Spellpower
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 21643 AND `item` = 24181; -- Design: Living Ruby Serpent
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 21643 AND `item` = 24174; -- Design: Pendant of Frozen Flame
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 21643 AND `item` = 33158; -- Design: Stone of Blades
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 21643 AND `item` = 29186; -- Glyph of the Defender
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 21643 AND `item` = 29184; -- Timewarden's Leggings
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 21643 AND `item` = 29185; -- Continuum Blade
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 21643 AND `item` = 31355; -- Recipe: Flask of Supreme Power
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 21643 AND `item` = 33152; -- Formula: Enchant Gloves - Superior Agility
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 21643 AND `item` = 29182; -- Riftmaker
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 21643 AND `item` = 29181; -- Timelapse Shard
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 21643 AND `item` = 29183; -- Bindings of the Timewalker
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 21643 AND `item` = 31777; -- Keepers of Time Tabard
UPDATE `npc_vendor` SET `slot` = 20, `condition_id` = 1477 WHERE `entry` = 21643 AND `item` = 31951; -- Toy Dragon (Event ID 10 Active = Childrensweek)
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 21643 AND `item` = 35338; -- Satin Gloves
UPDATE `npc_vendor` SET `slot` = 22 WHERE `entry` = 21643 AND `item` = 35334; -- Mooncloth Legguards
UPDATE `npc_vendor` SET `slot` = 23 WHERE `entry` = 21643 AND `item` = 35346; -- Evoker's Silk Raiment
UPDATE `npc_vendor` SET `slot` = 24 WHERE `entry` = 21643 AND `item` = 35328; -- Dreadweave Gloves
UPDATE `npc_vendor` SET `slot` = 25 WHERE `entry` = 21643 AND `item` = 35369; -- Opportunist's Leather Spaulders
UPDATE `npc_vendor` SET `slot` = 26 WHERE `entry` = 21643 AND `item` = 35372; -- Wyrmhide Helm
UPDATE `npc_vendor` SET `slot` = 27 WHERE `entry` = 21643 AND `item` = 35356; -- Dragonhide Gloves
UPDATE `npc_vendor` SET `slot` = 28 WHERE `entry` = 21643 AND `item` = 35363; -- Kodohide Legguards
UPDATE `npc_vendor` SET `slot` = 29 WHERE `entry` = 21643 AND `item` = 35376; -- Stalker's Chain Armor
UPDATE `npc_vendor` SET `slot` = 30 WHERE `entry` = 21643 AND `item` = 35393; -- Seer's Ringmail Headpiece
UPDATE `npc_vendor` SET `slot` = 31 WHERE `entry` = 21643 AND `item` = 35390; -- Seer's Mail Spaulders
UPDATE `npc_vendor` SET `slot` = 32 WHERE `entry` = 21643 AND `item` = 35384; -- Seer's Linked Leggings
UPDATE `npc_vendor` SET `slot` = 33 WHERE `entry` = 21643 AND `item` = 35414; -- Crusader's Scaled Helm
UPDATE `npc_vendor` SET `slot` = 34 WHERE `entry` = 21643 AND `item` = 35402; -- Crusader's Ornamented Chestplate
UPDATE `npc_vendor` SET `slot` = 35 WHERE `entry` = 21643 AND `item` = 35410; -- Savage Plate Legguards

-- ["Narina"] = { - guns missing
DELETE FROM `npc_vendor` WHERE `entry` = 16274;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(16274, 5439, 0, 0, 1, 0, 0, 'Small Quiver'),
(16274, 11362, 0, 0, 2, 0, 0, 'Medium Quiver'),
(16274, 2512, 0, 0, 3, 0, 0, 'Rough Arrow'),
(16274, 2515, 0, 0, 4, 0, 0, 'Sharp Arrow'),
(16274, 3030, 0, 0, 5, 0, 0, 'Razor Arrow'),
(16274, 2504, 0, 0, 6, 0, 0, 'Worn Shortbow'),
(16274, 2505, 0, 0, 7, 0, 0, 'Polished Shortbow'),
(16274, 2506, 0, 0, 8, 0, 0, 'Hornwood Recurve Bow'),
(16274, 2507, 0, 0, 9, 0, 0, 'Laminated Recurve Bow'),
(16274, 3026, 0, 0, 10, 0, 0, 'Reinforced Bow'),
(16274, 3027, 0, 0, 11, 0, 0, 'Heavy Recurve Bow'),
(16274, 5441, 0, 0, 12, 0, 0, 'Small Shot Pouch'),
(16274, 2509, 0, 0, 13, 0, 0, 'Ornate Blunderbuss'),
(16274, 2511, 0, 0, 14, 0, 0, 'Hunter''s Boomstick'),
(16274, 2516, 0, 0, 15, 0, 0, 'Light Shot'),
(16274, 2519, 0, 0, 16, 0, 0, 'Heavy Shot'),
(16274, 3023, 0, 0, 17, 0, 0, 'Large Bore Blunderbuss'),
(16274, 3033, 0, 0, 18, 0, 0, 'Solid Shot');

-- ["Craftsman Wilhelm"] = {
-- ["Gug"] = {
-- ["Samir"] = {
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 116 AND `item` = 2901; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 116 AND `item` = 5956; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 116 AND `item` = 2880; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 116 AND `item` = 3466; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 116 AND `item` = 3857; -- [5] 6 flipped?
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 116 AND `item` = 18567; -- [6] 5 flipped?

-- ["Heron Skygaze"] = { - already has unique template
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 17656; -- 419
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 419 AND `item` = 117; -- [1]
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 419 AND `item` = 2287; -- [2]
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 419 AND `item` = 3770; -- [3]
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 419 AND `item` = 3771; -- [4]
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 419 AND `item` = 4599; -- [5]
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 419 AND `item` = 8952; -- [6]
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 419 AND `item` = 787; -- [7]
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 419 AND `item` = 4592; -- [8]
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 419 AND `item` = 4593; -- [9]
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 419 AND `item` = 4594; -- [10]
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 419 AND `item` = 21552; -- [11]
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 419 AND `item` = 8957; -- [12]
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 419 AND `item` = 4604; -- [13]
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 419 AND `item` = 4605; -- [14]
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 419 AND `item` = 4606; -- [15]
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 419 AND `item` = 4607; -- [16]
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` = 419 AND `item` = 4608; -- [17]
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` = 419 AND `item` = 8948; -- [18]
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `entry` = 419 AND `item` = 159; -- [19]
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `entry` = 419 AND `item` = 1179; -- [20]
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `entry` = 419 AND `item` = 1205; -- [21]
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `entry` = 419 AND `item` = 1708; -- [22]
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `entry` = 419 AND `item` = 1645; -- [23]
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `entry` = 419 AND `item` = 8766; -- [24]

