-- Adjust chest maxcount similar to old pooling system data.
-- sum(spawngroups)/4, but a >minimum of old value(Master Chest Pool), due to missing area spawn_groups
-- 31004 1 Teldrassil (Shadowthread Cave) - Chest Pool
-- 31005 1 Teldrassil (Shadowglen) - Chest Pool
-- 31267 1 Teldrassil (The Oracle Glade) - Chest Pool
-- 31268 1 Teldrassil - Chest Pool
-- 31328 1 Teldrassil (Fel Rock) - Chest Pool
-- 31329 1 Teldrassil (Ban'ethil Barrow Den) - Chest Pool
-- 31344 1 Teldrassil (The Oracle Glade) - Chest Pool
-- 39904 7 Teldrassil - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Battered Chest(2843) - Teldrassil' AND `id`=11000; -- only 6
UPDATE `spawn_group` SET `maxcount`=7 WHERE `name`='Battered Chest(106318) - Teldrassil' AND `id`=11016; -- sum 34/4
-- 31000 1 Tirisfal Glades (Deathknell) - Chest Pool
-- 31001 1 Tirisfal Glades (Night Web's Hollow) - Chest Pool
-- 31264 1 Tirisfal Glades (The North Coast) - Chest Pool
-- 31265 1 Tirisfal Glades (Garren's Haunt) - Chest Pool
-- 31266 1 Tirisfal Glades (Agamand Mills) - Chest Pool
-- 31325 1 Tirisfal Glades (Crusader's Outpost) - Chest Pool
-- 31326 1 Tirisfal Glades (Balnir Farmstead) - Chest Pool
-- 31327 1 Tirisfal Glades (Whispering Shore) - Chest Pool
-- 31335 1 Tirisfal Glades (Solliden Farmstead) - Chest Pool
-- 31342 1 Tirisfal Glades - Chest Pool
-- 39905 9 Tirisfal Glades - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Battered Chest(2843) - Tirisfal Glades' AND `id`=11001; -- only 5
UPDATE `spawn_group` SET `maxcount`=8 WHERE `name`='Battered Chest(106318) - Tirisfal Glades' AND `id`=11012; -- 14
-- 31002 1 Dun Morogh (Coldridge Valley Cave) - Chest Pool
-- 31003 1 Dun Morogh (Coldridge Valley) - Chest Pool
-- 31236 1 Dun Morogh (Gnomeregan) - Chest Pool
-- 31237 1 Dun Morogh (Frostmane Hold) - Chest Pool
-- 31240 1 Dun Morogh (Gol'Bolar Quarry) - Chest Pool
-- 31241 1 Dun Morogh (Helm's Bed Lake) - Chest Pool
-- 31242 1 Dun Morogh (Ironband's Compound) - Chest Pool
-- 31243 1 Dun Morogh (Iceflow Lake) - Chest Pool
-- 31322 1 Dun Morogh (The Grizzled Den) - Chest Pool
-- 31323 1 Dun Morogh (Gol'Bolar Quarry Mine) - Chest Pool
-- 31330 1 Dun Morogh (Shimmer Ridge) - Chest Pool
-- 39900 13 Dun Morogh - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Battered Chest(2843) - Dun Morogh' AND `id`=11002; -- only 7
UPDATE `spawn_group` SET `maxcount`=12 WHERE `name`='Battered Chest(106318) - Dun Morogh' AND `id`=11015; -- 39
-- 31006 1 Elwynn Forest (Echo Ridge Mine) - Chest Pool
-- 31007 1 Elwynn Forest (Northshire Vineyards) - Chest Pool
-- 31244 1 Elwynn Forest - Chest Pool
-- 31245 1 Elwynn Forest (Northshire Valley) - Chest Pool
-- 31246 1 Elwynn Forest (Crystal Lake) - Chest Pool
-- 31247 1 Elwynn Forest (Forest's Edge) - Chest Pool
-- 31248 1 Elwynn Forest (Jerod's Landing) - Chest Pool
-- 31249 1 Elwynn Forest (Brackwell Pumpkin Patch) - Chest Pool
-- 31250 1 Elwynn Forest (Stone Cairn Lake) - Chest Pool
-- 31251 1 Elwynn Forest (Heroes' Vigil) - Chest Pool
-- 31252 1 Elwynn Forest (Jasperlode Mine) - Chest Pool
-- 31253 1 Elwynn Forest (Fargodeep Mine) - Chest Pool
-- 31254 1 Elwynn Forest (Thunder Falls) - Chest Pool
-- 31324 1 Elwynn Forest (Mirror Lake Orchard) - Chest Pool
-- 39902 14 Elwynn Forest - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Battered Chest(2843) - Elwynn Forest' AND `id`=11003; -- only 7
UPDATE `spawn_group` SET `maxcount`=12 WHERE `name`='Battered Chest(106318) - Elwynn Forest' AND `id`=11013; -- 49
-- 31206 1 Loch Modan (The Loch) - Chest Pool
-- 31207 1 Loch Modan (Ironband's Excavation Site) - Chest Pool
-- 31208 1 Loch Modan (Mo'grosh Stronghold) - Chest Pool
-- 31209 1 Loch Modan (Stonesplinter Valley) - Chest Pool
-- 31210 1 Loch Modan - Chest Pool
-- 31211 1 Loch Modan (Silver Stream Mine) - Chest Pool
-- 31316 1 Loch Modan (Stonewrought Dam) - Chest Pool
-- 39907 7 Loch Modan - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Battered Chest(2849) - Loch Modan' AND `id`=11004; -- 14
UPDATE `spawn_group` SET `maxcount`=9 WHERE `name`='Battered Chest(106319) - Loch Modan' AND `id`=11018; -- 25
-- 31171 1 Darkshore (Twilight Vale) - Chest Pool
-- 31172 1 Darkshore (The Master's Glaive) - Chest Pool
-- 31173 1 Darkshore (Tower of Althalaxx) - Chest Pool
-- 31174 1 Darkshore (Ruins of Mathystra) - Chest Pool
-- 31175 1 Darkshore (Ameth'Aran) - Chest Pool
-- 31176 1 Darkshore (Bashal'Aran) - Chest Pool
-- 31178 1 Darkshore (Cliffspring River) - Chest Pool
-- 31309 1 Darkshore (Remtravel's Excavation) - Chest Pool
-- 31310 1 Darkshore (Mist's Edge) - Chest Pool
-- 31311 1 Darkshore (Cliffspring Falls) - Chest Pool
-- 31338 1 Darkshore (Twilight Shore) - Chest Pool
-- 31339 1 Darkshore (The Long Wash) - Chest Pool
-- 39906 13 Darkshore - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=9 WHERE `name`='Battered Chest(2849) - Darkshore' AND `id`=11005; -- 21
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Battered Chest(106319) - Darkshore' AND `id`=11021; -- 14
-- 31154 1 Ashenvale (The Zoram Strand) - Chest Pool
-- 31155 1 Ashenvale - Chest Pool
-- 31156 1 Ashenvale (Mystral Lake) - Chest Pool
-- 31157 1 Ashenvale (Thistlefur Village) - Chest Pool
-- 31158 1 Ashenvale (Greenpaw Village) - Chest Pool
-- 31159 1 Ashenvale (The Ruins of Stardust) - Chest Pool
-- 31160 1 Ashenvale (Night Run) - Chest Pool
-- 31161 1 Ashenvale (Xavian) - Chest Pool
-- 31162 1 Ashenvale (The Dor'Danil Barrow Den) - Chest Pool
-- 31163 1 Ashenvale (Satyrnaar) - Chest Pool
-- 31307 1 Ashenvale (Thistlefur Hold) - Chest Pool
-- 39913 11 Ashenvale - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Battered Chest(2849) - Ashenvale' AND `id`=11006; -- 9
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Solid Chest(2850) - Ashenvale' AND `id`=11036; -- 18
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2852) - Ashenvale' AND `id`=11039; -- 14
-- 31212 1 The Barrens (The Dry Hills) - Chest Pool
-- 31213 1 The Barrens (Agama'gor) - Chest Pool
-- 31214 1 The Barrens (Bramblescar) - Chest Pool
-- 31215 1 The Barrens (Boulder Lode Mine) - Chest Pool
-- 31216 1 The Barrens (Blackthorn Ridge) - Chest Pool
-- 31219 1 The Barrens (Dreadmist Peak) - Chest Pool
-- 31220 1 The Barrens (The Stagnant Oasis) - Chest Pool
-- 31221 1 The Barrens - Chest Pool
-- 31222 1 The Barrens (Lushwater Oasis) - Chest Pool
-- 31223 1 The Barrens (The Forgotten Pools) - Chest Pool
-- 31224 1 The Barrens (Thorn Hill) - Chest Pool
-- 31225 1 The Barrens (The Merchant Coast) - Chest Pool
-- 31317 1 The Barrens (Northwatch Hold) - Chest Pool
-- 31318 1 The Barrens (The Sludge Fen) - Chest Pool
-- 31319 1 The Barrens (Bael Modan) - Chest Pool
-- 31320 1 The Barrens (Bael'dun Keep) - Chest Pool
-- 31331 1 The Barrens (The Tidus Stair) - Chest Pool
-- 31341 1 The Barrens (The Crossroads & Ratchet) - Chest Pool - 18
UPDATE `spawn_group` SET `maxcount`=6 WHERE `name`='Battered Chest(2849) - The Barrens' AND `id`=11007; -- 18
UPDATE `spawn_group` SET `maxcount`=12 WHERE `name`='Battered Chest(106319) - The Barrens' AND `id`=11020; -- 31
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Tattered Chest(3715) - The Barrens' AND `id`=11024; -- only 3
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Tattered Chest(111095) - The Barrens' AND `id`=11031; -- only 3
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Solid Chest(2850) - The Barrens' AND `id`=11037; -- only 4
-- 31150 1 Stonetalon Mountains (Greatwood Vale) - Chest Pool
-- 31151 1 Stonetalon Mountains (Windshear Mine) - Chest Pool
-- 31152 1 Stonetalon Mountains (Mirkfallon Lake) - Chest Pool
-- 31153 1 Stonetalon Mountains (The Charred Vale) - Chest Pool
-- 31306 1 Stonetalon Mountains (The Talon Den) - Chest Pool
-- 31333 1 Stonetalon Mountains (Camp Aparaje) - Chest Pool
-- 31334 1 Stonetalon Mountains (Cragpool Lake) - Chest Pool
-- 31340 1 Stonetalon Mountains (Windshear Crag) - Chest Pool
-- 39912 8 Stonetalon Mountains - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Battered Chest(2849) - Stonetalon Mountains' AND `id`=11008; -- 17
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Tattered Chest(3715) - Stonetalon Mountains' AND `id`=11023; -- 8
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Solid Chest(2850) - Stonetalon Mountains' AND `id`=11033; -- 8
-- 31194 1 Redridge Mountains (Lake Everstill) - Chest Pool
-- 31195 1 Redridge Mountains (Lakeridge Highway) - Chest Pool
-- 31196 1 Redridge Mountains (Redridge Canyons) - Chest Pool
-- 31198 1 Redridge Mountains (Three Corners) - Chest Pool
-- 31199 1 Redridge Mountains (Stonewatch Falls) - Chest Pool
-- 31200 1 Redridge Mountains (Galardell Valley) - Chest Pool
-- 31201 1 Redridge Mountains (Stonewatch) - Chest Pool
-- 31202 1 Redridge Mountains (Render's Camp) - Chest Pool
-- 31203 1 Redridge Mountains (Stonewatch Tower) - Chest Pool
-- 31204 1 Redridge Mountains (Render's Rock) - Chest Pool
-- 31205 1 Redridge Mountains (Render's Valley) - Chest Pool
-- 31313 1 Redridge Mountains (Alther's Mill) - Chest Pool
-- 31314 1 Redridge Mountains (Rethban Caverns) - Chest Pool
-- 31315 1 Redridge Mountains (Stonewatch Keep) - Chest Pool
-- 39911 15 Redridge Mountains - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=6 WHERE `name`='Battered Chest(2849) - Redridge Mountains' AND `id`=11009; -- 20
UPDATE `spawn_group` SET `maxcount`=10 WHERE `name`='Solid Chest(2850) - Redridge Mountains' AND `id`=11035; -- 49
-- 31179 1 Silverpine Forest (The Dawning Isles) - Chest Pool
-- 31180 1 Silverpine Forest - Chest Pool
-- 31181 1 Silverpine Forest (Fenris Keep) - Chest Pool
-- 31182 1 Silverpine Forest (Pyrewood Village) - Chest Pool
-- 31183 1 Silverpine Forest (The Shining Strand) - Chest Pool
-- 31184 1 Silverpine Forest (North Tide's Hollow) - Chest Pool
-- 31185 1 Silverpine Forest (Valgan's Field) - Chest Pool
-- 31186 1 Silverpine Forest (The Dead Field) - Chest Pool
-- 31187 1 Silverpine Forest (Olsen's Farthing) - Chest Pool
-- 31312 1 Silverpine Forest (Ambermill) - Chest Pool
-- 31332 1 Silverpine Forest (Beren's Peril) - Chest Pool
-- 39908 11 Silverpine Forest - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Battered Chest(2849) - Silverpine Forest' AND `id`=11010; -- 12
UPDATE `spawn_group` SET `maxcount`=6 WHERE `name`='Battered Chest(106319) - Silverpine Forest' AND `id`=11022; -- 26
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Tattered Chest(111095) - Silverpine Forest' AND `id`=11030; -- 11
-- 31086 1 Westfall (The Dagger Hills) - Chest Pool
-- 31087 1 Westfall (The Dust Plains) - Chest Pool
-- 31088 1 Westfall (Moonbrook) - Chest Pool
-- 31089 1 Westfall (Gold Coast Quarry) - Chest Pool
-- 31090 1 Westfall (Jangolode Mine) - Chest Pool
-- 31091 1 Westfall - Chest Pool
-- 31092 1 Westfall (The Dead Acre) - Chest Pool
-- 31093 1 Westfall (Longshore) - Chest Pool
-- 31094 1 Westfall (Alexston Farmstead) - Chest Pool
-- 31095 1 Westfall (The Jansen Stead) - Chest Pool
-- 31096 1 Westfall (Stendel's Pond) - Chest Pool
-- 31287 1 Westfall (The Deadmines - Defias Hideout) - Chest Pool
-- 31288 1 Westfall (The Deadmines) - Chest Pool
-- 39909 13 Westfall - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Battered Chest(2849) - Westfall' AND `id`=11011; -- 11
UPDATE `spawn_group` SET `maxcount`=11 WHERE `name`='Battered Chest(106319) - Westfall' AND `id`=11019; -- 37
-- 31226 1 Durotar (Razorwind Canyon) - Chest Pool
-- 31227 1 Durotar (Razormane Grounds) - Chest Pool
-- 31228 1 Durotar (Kolkar Crag) - Chest Pool
-- 31229 1 Durotar (Thunder Ridge) - Chest Pool
-- 31230 1 Durotar - Chest Pool
-- 31231 1 Durotar (Scuttle Coast) - Chest Pool
-- 31232 1 Durotar (Drygulch Ravine) - Chest Pool
-- 31233 1 Durotar (Skull Rock) - Chest Pool
-- 31234 1 Durotar (Tiragarde Keep) - Chest Pool
-- 31235 1 Durotar (Echo Isles) - Chest Pool
-- 31321 1 Durotar (Dustwind Cave) - Chest Pool
-- 39901 11 Durotar - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=11 WHERE `name`='Battered Chest(106318) - Durotar' AND `id`=11014; -- 41
-- 31164 1 Mulgore - Chest Pool
-- 31165 1 Mulgore (The Golden Plains) - Chest Pool
-- 31166 1 Mulgore (Bael'dun Digsite) - Chest Pool
-- 31167 1 Mulgore (Palemane Rock) - Chest Pool
-- 31168 1 Mulgore (Ravaged Caravan) - Chest Pool
-- 31169 1 Mulgore (The Venture Co. Mine) - Chest Pool
-- 31170 1 Mulgore (The Rolling Plains) - Chest Pool
-- 31343 1 Mulgore (Windfury Ridge) - Chest Pool
-- 39903 7 Mulgore - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=10 WHERE `name`='Battered Chest(106318) - Mulgore' AND `id`=11017; -- 38
-- 31127 1 Hillsbrad Foothills (Durnholde Keep) - Chest Pool
-- 31128 1 Hillsbrad Foothills (Western Strand) - Chest Pool
-- 31129 1 Hillsbrad Foothills (Nethander Stead) - Chest Pool
-- 31296 1 Hillsbrad Foothills (Darrow Hill) - Chest Pool
-- 31297 1 Hillsbrad Foothills (Hillsbrad Fields) - Chest Pool
-- 31298 1 Hillsbrad Foothills (Dun Garok) - Chest Pool
-- 31299 1 Hillsbrad Foothills (Azurelode Mine) - Chest Pool
-- 39915 7 Hillsbrad Foothills - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Tattered Chest(3715) - Hillsbrad Foothills' AND `id`=11025; -- 8
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Tattered Chest(4096) - Hillsbrad Foothills' AND `id`=11026; -- 8
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Solid Chest(2850) - Hillsbrad Foothills' AND `id`=11038; -- (Durnholde Keep) only 4
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Solid Chest(2852) - Hillsbrad Foothills' AND `id`=11043; -- only 7
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Solid Chest(2855) - Hillsbrad Foothills' AND `id`=11048; -- 8
-- 31097 1 Arathi Highlands (Witherbark Village) - Chest Pool
-- 31098 1 Arathi Highlands (Northfold Manor) - Chest Pool
-- 31099 1 Arathi Highlands (Stromgarde Keep) - Chest Pool
-- 31100 1 Arathi Highlands (The Drowned Reef) - Chest Pool
-- 31101 1 Arathi Highlands (Boulderfist Hall) - Chest Pool
-- 31103 1 Arathi Highlands (Drywhisker Gorge) - Chest Pool
-- 31289 1 Arathi Highlands (Go'Shek Farm) - Chest Pool
-- 31290 1 Arathi Highlands (Dabyrie's Farmstead) - Chest Pool
-- 39919 9 Arathi Highlands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Tattered Chest(105578) - Arathi Highlands' AND `id`=11027; -- only 4
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Tattered Chest(105579) - Arathi Highlands' AND `id`=11029; -- only 4
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(2855) - Arathi Highlands' AND `id`=11046; -- 11
UPDATE `spawn_group` SET `maxcount`=7 WHERE `name`='Solid Chest(2857) - Arathi Highlands' AND `id`=11055; -- 22
-- 31082 1 Alterac Mountains (Strahnbrad) - Chest Pool
-- 31083 1 Alterac Mountains (Ruins of Alterac) - Chest Pool
-- 31084 1 Alterac Mountains (The Uplands) - Chest Pool
-- 31085 1 Alterac Mountains (Dandred's Fold) - Chest Pool
-- 31286 1 Alterac Mountains (Dalaran) - Chest Pool
-- 39918 6 Alterac Mountains - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Tattered Chest(105579/105570) - Alterac Mountains' AND `id`=11028; -- 8 (Dalaran)
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2855) - Alterac Mountains' AND `id`=11047; -- 15
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2857) - Alterac Mountains' AND `id`=11052; -- 14
-- 31038 1 Wetlands - Chest Pool
-- 31039 1 Wetlands (The Lost Fleet) - Chest Pool
-- 31040 1 Wetlands (Mosshide Fen) - Chest Pool
-- 31041 1 Wetlands (Bluegill Marsh) - Chest Pool
-- 31042 1 Wetlands (Dun Algaz) - Chest Pool
-- 31043 1 Wetlands (Angerfang Encampment) - Chest Pool
-- 31044 1 Wetlands (Direforge Hill) - Chest Pool
-- 31045 1 Wetlands (Dun Modr) - Chest Pool
-- 31046 1 Wetlands (The Green Belt) - Chest Pool
-- 31047 1 Wetlands (Sundown Marsh) - Chest Pool
-- 31271 1 Wetlands (Thelgen Rock) - Chest Pool
-- 31272 1 Wetlands (Raptor Ridge) - Chest Pool
-- 39916 12 Wetlands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=10 WHERE `name`='Solid Chest(2850) - Wetlands' AND `id`=11032; -- 38
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2852) - Wetlands' AND `id`=11040; -- 18
-- 31027 1 Duskwood (Addle's Stead) - Chest Pool
-- 31028 1 Duskwood - Chest Pool
-- 31029 1 Duskwood (Brightwood Grove) - Chest Pool
-- 31031 1 Duskwood (The Yorgen Farmstead) - Chest Pool
-- 31032 1 Duskwood (The Rotting Orchard) - Chest Pool
-- 31033 1 Duskwood (Vul'Gol Ogre Mound) - Chest Pool
-- 31034 1 Duskwood (Tranquil Gardens Cemetery) - Chest Pool
-- 31035 1 Duskwood (The Darkened Bank) - Chest Pool
-- 31036 1 Duskwood (Manor Mistmantle) - Chest Pool
-- 31037 1 Duskwood (Raven Hill Cemetery) - Chest Pool
-- 31270 1 Duskwood (Dawning Wood Catacombs) - Chest Pool
-- 39914 12 Duskwood - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Solid Chest(2850) - Duskwood' AND `id`=11034; -- 21
UPDATE `spawn_group` SET `maxcount`=9 WHERE `name`='Solid Chest(2852) - Duskwood' AND `id`=11041; -- 32
-- 31131 1 Thousand Needles (Camp E'thok) - Chest Pool
-- 31132 1 Thousand Needles (Highperch) - Chest Pool
-- 31133 1 Thousand Needles (Splithoof Crag) - Chest Pool
-- 31134 1 Thousand Needles (The Rustmaul Dig Site) - Chest Pool
-- 31300 1 Thousand Needles (Roguefeather Den) - Chest Pool
-- 31301 1 Thousand Needles (Splithoof Hold) - Chest Pool
-- 39917 7 Thousand Needles - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Solid Chest(2852) - Thousand Needles' AND `id`=11042; -- 20
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Solid Chest(2855) - Thousand Needles' AND `id`=11044; -- only 4
-- 31065 1 Stranglethorn Vale (Venture Co. Base Camp) - Chest Pool
-- 31066 1 Stranglethorn Vale (Kurzen's Compound) - Chest Pool
-- 31067 1 Stranglethorn Vale (Ruins of Zul'Kunda) - Chest Pool
-- 31068 1 Stranglethorn Vale (Kal'ai Ruins) - Chest Pool
-- 31069 1 Stranglethorn Vale (Ruins of Zul'Mamwe) - Chest Pool
-- 31070 1 Stranglethorn Vale (Wild Shore) - Chest Pool
-- 31071 1 Stranglethorn Vale (Jaguero Isle) - Chest Pool
-- 31072 1 Stranglethorn Vale (Mosh'Ogg Ogre Mound) - Chest Pool
-- 31073 1 Stranglethorn Vale - Chest Pool
-- 31074 1 Stranglethorn Vale (Ruins of Jubuwal) - Chest Pool
-- 31075 1 Stranglethorn Vale (Nek'mani Wellspring) - Chest Pool
-- 31076 1 Stranglethorn Vale (Crystalvein Mine) - Chest Pool
-- 31077 1 Stranglethorn Vale (The Vile Reef) - Chest Pool
-- 31078 1 Stranglethorn Vale (Mizjah Ruins) - Chest Pool
-- 31079 1 Stranglethorn Vale (Ziata'jai Ruins) - Chest Pool
-- 31278 1 Stranglethorn Vale (The Stockpile) - Chest Pool
-- 31279 1 Stranglethorn Vale (Venture Co. Operations Center) - Chest Pool
-- 31280 1 Stranglethorn Vale (Southern Savage Coast) - Chest Pool
-- 31281 1 Stranglethorn Vale (Tkashi Ruins) - Chest Pool
-- 31282 1 Stranglethorn Vale (Bal'lal Ruins) - Chest Pool
-- 31283 1 Stranglethorn Vale (Zuuldaia Ruins) - Chest Pool
-- 31284 1 Stranglethorn Vale (Balia'mah Ruins) - Chest Pool
-- 31285 1 Stranglethorn Vale (Ruins of Aboraz) - Chest Pool
-- 39921 24 Stranglethorn Vale - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2855) - Stranglethorn Vale' AND `id`=11045; -- 14
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(2857) - Stranglethorn Vale' AND `id`=11051; -- 15
UPDATE `spawn_group` SET `maxcount`=10 WHERE `name`='Solid Chest(4149) - Stranglethorn Vale' AND `id`=11059; -- 36
-- 31135 1 Desolace (Kolkar Village) - Chest Pool
-- 31136 1 Desolace (Thunder Axe Fortress) - Chest Pool
-- 31137 1 Desolace (Sargeron) - Chest Pool
-- 31139 1 Desolace (Valley of Spears) - Chest Pool
-- 31140 1 Desolace (Magram Village) - Chest Pool
-- 31302 1 Desolace (Bolgan's Hole) - Chest Pool
-- 31303 1 Desolace (Gelkis Village) - Chest Pool
-- 39920 8 Desolace - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(2855) - Desolace' AND `id`=11049; -- 12
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Solid Chest(2857) - Desolace' AND `id`=11050; -- 16
-- 31048 1 Dustwallow Marsh (Dreadmurk Shore) - Chest Pool
-- 31049 1 Dustwallow Marsh (Tidefury Cove) - Chest Pool
-- 31051 1 Dustwallow Marsh (Stonemaul Ruins) - Chest Pool
-- 31052 1 Dustwallow Marsh (The Dragonmurk) - Chest Pool
-- 31053 1 Dustwallow Marsh (Dustwallow Bay) - Chest Pool
-- 31054 1 Dustwallow Marsh (The Den of Flame) - Chest Pool
-- 31273 1 Dustwallow Marsh (Darkmist Cavern) - Chest Pool
-- 31274 1 Dustwallow Marsh (Wyrmbog) - Chest Pool
-- 31275 1 Dustwallow Marsh (Emberstrife's Den) - Chest Pool
-- 39922 10 Dustwallow Marsh - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(2857) - Dustwallow Marsh' AND `id`=11053; -- 15
UPDATE `spawn_group` SET `maxcount`=7 WHERE `name`='Solid Chest(4149) - Dustwallow Marsh' AND `id`=11058; -- 20
-- 31012 1 Badlands (Hammertoe's Digsite) - Chest Pool
-- 31013 1 Badlands (Angor Fortress) - Chest Pool
-- 31014 1 Badlands (Agmond's End) - Chest Pool
-- 31015 1 Badlands (Camp Wurg) - Chest Pool
-- 31016 1 Badlands (Camp Boff) - Chest Pool
-- 31017 1 Badlands (Camp Cagg) - Chest Pool
-- 31018 1 Badlands (Dustbelch Grotto) - Chest Pool
-- 39923 7 Badlands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(2857) - Badlands' AND `id`=11054; -- 10
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Solid Chest(4149) - Badlands' AND `id`=11061; -- only 4
-- 31022 1 Swamp of Sorrows (Fallow Sanctuary) - Chest Pool
-- 31023 1 Swamp of Sorrows (Itharius's Cave) - Chest Pool
-- 31024 1 Swamp of Sorrows - Chest Pool
-- 31025 1 Swamp of Sorrows (Misty Reed Strand) - Chest Pool
-- 31026 1 Swamp of Sorrows (Misty Valley) - Chest Pool
-- 31269 1 Swamp of Sorrows (Stagalbog Cave) - Chest Pool
-- 39924 6 Swamp of Sorrows - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(2857) - Swamp of Sorrows' AND `id`=11056; -- 12
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(4149) - Swamp of Sorrows' AND `id`=11057; -- 14
-- 31112 1 Searing Gorge - Chest Pool
-- 31113 1 Searing Gorge (The Cauldron) - Chest Pool
-- 31114 1 Searing Gorge (The Sea of Cinders) - Chest Pool
-- 31115 1 Searing Gorge (Firewatch Ridge) - Chest Pool
-- 31294 1 Searing Gorge (Grimesilt Dig Site) - Chest Pool
-- 31295 1 Searing Gorge (The Slag Pit) - Chest Pool
-- 39928 6 Searing Gorge - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=6 WHERE `name`='Solid Chest(4149) - Searing Gorge' AND `id`=11060; -- 16
-- 31104 1 The Hinterlands (Shadra'Alor) - Chest Pool
-- 31105 1 The Hinterlands (Bogen's Ledge) - Chest Pool
-- 31106 1 The Hinterlands (The Altar of Zul) - Chest Pool
-- 31107 1 The Hinterlands (Jintha'Alor) - Chest Pool
-- 31108 1 The Hinterlands (Skulk Rock) - Chest Pool
-- 31109 1 The Hinterlands - Chest Pool
-- 31110 1 The Hinterlands (Agol'watha) - Chest Pool
-- 31111 1 The Hinterlands (The Creeping Ruin) - Chest Pool
-- 31291 1 The Hinterlands (Hiri'watha) - Chest Pool
-- 31292 1 The Hinterlands (Valorwind Lake) - Chest Pool
-- 31293 1 The Hinterlands (Zun'watha) - Chest Pool
-- 39926 11 The Hinterlands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(4149) - The Hinterlands' AND `id`=11062; -- 10
UPDATE `spawn_group` SET `maxcount`=8 WHERE `name`='Solid Chest(153451) - The Hinterlands' AND `id`=11064; -- 22
-- 31141 1 Tanaris (Waterspring Field) - Chest Pool
-- 31142 1 Tanaris (Lost Rigger Cove) - Chest Pool
-- 31143 1 Tanaris (Dunemaul Compound) - Chest Pool
-- 31304 1 Tanaris (Sandsorrow Watch) - Chest Pool
-- 31305 1 Tanaris (Wavestrider Beach) - Chest Pool
-- 39927 5 Tanaris - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(4149) - Tanaris' AND `id`=11063; -- 14
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Solid Chest(153451) - Tanaris' AND `id`=11066; -- 14
-- 31055 1 Azshara - Chest Pool
-- 31056 1 Azshara (Ruins of Eldarath) - Chest Pool
-- 31057 1 Azshara (Bear's Head) - Chest Pool
-- 31058 1 Azshara (Temple of Arkkoran) - Chest Pool
-- 31059 1 Azshara (Lake Mennar) - Chest Pool
-- 31060 1 Azshara (Rethress Sanctum) - Chest Pool
-- 31061 1 Azshara (Ursolan) - Chest Pool
-- 31062 1 Azshara (Legash Encampment) - Chest Pool
-- 31063 1 Azshara (Haldarr Encampment) - Chest Pool
-- 31064 1 Azshara (Temple of Zin-Malor) - Chest Pool
-- 31276 1 Azshara (Timbermaw Hold) - Chest Pool
-- 31277 1 Azshara (Shadowsong Shrine) - Chest Pool
-- 31336 1 Azshara (The Shattered Strand) - Chest Pool
-- 31337 1 Azshara (Thalassian Base Camp) - Chest Pool
-- 39929 14 Azshara - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(153451) - Azshara' AND `id`=11065; -- 15
UPDATE `spawn_group` SET `maxcount`=6 WHERE `name`='Solid Chest(153453) - Azshara' AND `id`=11068; -- 20
-- 31255 1 Western Plaguelands (Ruins of Andorhal) - Chest Pool
-- 31256 1 Western Plaguelands (Gahrron's Withering) - Chest Pool
-- 31257 1 Western Plaguelands (Dalson's Tears) - Chest Pool
-- 31258 1 Western Plaguelands - Chest Pool
-- 31259 1 Western Plaguelands (Hearthglen) - Chest Pool
-- 31260 1 Western Plaguelands (Felstone Field) - Chest Pool
-- 31261 1 Western Plaguelands (Northridge Lumber Camp) - Chest Pool
-- 31262 1 Western Plaguelands (The Writhing Haunt) - Chest Pool
-- 39934 11 Western Plaguelands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(153453) - Western Plaguelands' AND `id`=11067; -- 15
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Large Solid Chest(153463) - Western Plaguelands' AND `id`=11074; -- only 3
-- 31188 1 Burning Steppes - Chest Pool
-- 31189 1 Burning Steppes (Blackrock Stronghold) - Chest Pool
-- 31190 1 Burning Steppes (Dreadmaul Rock) - Chest Pool
-- 31191 1 Burning Steppes (Blackrock Mountain) - Chest Pool
-- 31192 1 Burning Steppes (The Pillar of Ash) - Chest Pool
-- 31193 1 Burning Steppes (Terror Wing Path) - Chest Pool
-- 39933 6 Burning Steppes - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=5 WHERE `name`='Solid Chest(153453) - Burning Steppes' AND `id`=11069; -- 19
-- 31116 1 Eastern Plaguelands (Plaguewood) - Chest Pool
-- 31117 1 Eastern Plaguelands (Crown Guard Tower) - Chest Pool
-- 31118 1 Eastern Plaguelands (Corin's Crossing) - Chest Pool
-- 31119 1 Eastern Plaguelands (Zul'Mashar) - Chest Pool
-- 31120 1 Eastern Plaguelands (The Fungal Vale) - Chest Pool
-- 31121 1 Eastern Plaguelands (The Noxious Glade) - Chest Pool
-- 31122 1 Eastern Plaguelands (Tyr's Hand) - Chest Pool
-- 31123 1 Eastern Plaguelands (Northdale) - Chest Pool
-- 31124 1 Eastern Plaguelands (Darrowshire) - Chest Pool
-- 31125 1 Eastern Plaguelands (The Undercroft) - Chest Pool
-- 31126 1 Eastern Plaguelands (Eastwall Tower) - Chest Pool
-- 39936 11 Eastern Plaguelands - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=3 WHERE `name`='Solid Chest(153453) - Eastern Plaguelands' AND `id`=11070; -- 8
UPDATE `spawn_group` SET `maxcount`=7 WHERE `name`='Solid Chest(153454) - Eastern Plaguelands' AND `id`=11071; -- 19
-- 31144 1 Winterspring (The Ruins of Kel'Theril) - Chest Pool
-- 31145 1 Winterspring (Timbermaw Post) - Chest Pool
-- 31146 1 Winterspring (Frostfire Hot Springs) - Chest Pool
-- 31147 1 Winterspring (Winterfall Village) - Chest Pool
-- 31148 1 Winterspring - Chest Pool
-- 31149 1 Winterspring (Lake Kel'Theril) - Chest Pool
-- 39937 6 Winterspring - Master Chest Pool
UPDATE `spawn_group` SET `maxcount`=4 WHERE `name`='Solid Chest(153454) - Winterspring' AND `id`=11072; -- 12
-- Blasted Lands - two nodes are already done in other spawn_group (Serpent Coil & Dreadmaul Hold)
UPDATE `spawn_group` SET `maxcount`=1 WHERE `name`='Alliance Strongbox(3714) - The Barrens' AND `id`=11073; -- only 4
UPDATE `spawn_group` SET `maxcount`=14 WHERE `name`='Azsharite Formation(152631,152622)' AND `id`=11076; -- 54
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Azsharite Formation(152620)' AND `id`=11077; -- 9
UPDATE `spawn_group` SET `maxcount`=2 WHERE `name`='Azsharite Formation(152621)' AND `id`=11078; -- 9

-- preserve old tbc+ pool data
-- 25552 1 Bloodmyst Isle - Tattered Chest - Pool 1
-- 25553 1 Bloodmyst Isle - Tattered Chest - Pool 2
-- 25554 1 Bloodmyst Isle - Tattered Chest - Pool 3
-- 25555 1 Bloodmyst Isle - Tattered Chest - Pool 4
-- 25556 1 Bloodmyst Isle - Tattered Chest - Pool 5
-- 25557 1 Bloodmyst Isle - Tattered Chest - Pool 6
-- 25558 1 Bloodmyst Isle - Tattered Chest - Pool 7
-- 39910 20 Barrens - Master Chest Pool
-- 39940 3 Azuremyst Isle - Master Chest Pool
-- 39941 8 Eversong Woods - Master Chest Pool
-- 39942 1 Bloodmyst Isle - Master Chest Pool
-- 39943 9 Ghostlands - Master Chest Pool
-- 39944 8 Hellfire Peninsula - Master Chest Pool
-- 39945 7 Zangarmarsh - Master Chest Pool
-- 39946 9 Terokkar Forest - Master Chest Pool
-- 39947 8 Nagrand - Master Chest Pool
-- 39948 7 Blade's Edge Mountains - Master Chest Pool
-- 39949 5 Netherstorm - Master Chest Pool
-- 39950 6 Shadowmoon Valley - Master Chest Pool

