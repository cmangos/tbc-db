-- Add page_text for
-- 177204	9	4671	Sorrow of the Earthmother (2298 - 2300)
-- 177207	9	4672	Mists of Dawn (2295 - 2297)
-- 177208	9	4672	The White Stag and the Moon (2301 - 2304)
-- 177209	9	4672	Hatred of the Centaur (2308 - 2310)
DELETE FROM `page_text` WHERE `entry` IN (79,2295,2296,2297,2298,2299,2300,2301,2302,2303,2304,2308,2309,2310,9999);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
-- "The Collector," -> "The Collector", -- classic-db align
(79, 'Below is the process and schedule of Defias gold collection from the mines of Elwynn to our headquarters in Westfall.$B$BCollection Schedule:$B$BSunday: 12:30pm$BWednesday: 12:30pm$B$BBy each specified day, gold gained from the Elwynn mines will be gathered at the Brackwell pumpkin patch.  The agent in charge of these gatherings, "The Collector", will be known by the engraved ring he possesses.  A ring I gave him.', 250),

(2295, 'Before the Age of Memory, the gentle Earthmother breathed upon the golden mists of dawn. Where the amber clouds came to rest, there were endless fields of flowing wheat and barley. This was the basin of her works - the great basket of life and hope.', 2296),
(2296, 'The Earthmother\'s eyes shone down upon the lands she had breathed into creation. Her right eye, An\'she (the sun), gave warmth and light to the land. Her left eye, Mu\'sha (the moon), gave peace and sleep to the stirring creatures of the dawning. Such was the power of her gaze that the Earthmother closed one dreaming eye for every turning of the sky. Thus, her loving gaze turned day into night for the first dawning of the world.', 2297),
(2297, 'While the right eye shone down upon the golden dawn, the Earthmother\'s gentle hands spread out across the golden plains. Wherever the shadow of her arms passed, a noble people arose from the rich soil. The Shu\'halo (the tauren) arose to give thanks and prayer to their loving mother. There, in the endless fields of dawn, the children of the earth swore themselves to her grace and vowed to bless her name until the final darkening of the world.', 0),

(2298, 'As the children of the earth roamed the fields of dawn, they harkened to dark whispers from deep beneath the world. The whispers told the children of the arts of war and deceit. Many of the Shu\'halo fell under the shadow\'s sway and embraced the ways of malice and wickedness. They turned upon their pure brethren and left their innocence to drift upon the plains.', 2299),
(2299, 'The Earthmother, her heart heavy with her children\'s plight, could not bear to watch them fall from grace. In her grief, she tore out her eyes and set them spinning across the endless, starry skies. An\'she and Mu\'sha, seeking to ease the other\'s sorrow, could only chase each other\'s faint glow across the sky. The twins still chase one another with every turning of the world.', 2300),
(2300, 'Though sightless, the Earthmother could not long stray from the world of her heart. She kept her ear to the winds and listened to all that transpired across the fields of the dawn. Her great heart was always with her children - and her loving wisdom never fled from them.', 0),

(2301, 'Into the brave hearts of her pure children, the Earthmother placed the love of the hunt. For the creatures of the first dawn were savage and fierce. They hid from the Earthmother, finding solace in the shadows and the wild places of the land. The Shu\'halo hunted these beasts wherever they could be found and tamed them with the Earthmother\'s blessing.', 2302),
(2302, 'One great spirit eluded them, however. Apa\'ro (known as Malorne to the night elves), was a proud stag of snow white fur. His antlers scraped the roof of the heavens and his mighty hooves stamped out the deep places of the world. The Shu\'halo hunted Apa\'ro to the corners of the dawning world - and closed in to snare the proud stag.', 2303),
(2303, 'Seeking to escape, the great stag leapt into the sky. Yet, as his escape seemed assured, his mighty antlers tangled in the stars which held him fast. Though he kicked and struggled, Apa\'ro could not loose himself from the heavens. It was then that Mu\'sha found him as she chased her brother, An\'she, towards the dawn. Mu\'sha saw the mighty stag as he struggled and fell in love with him immediately.', 2304),
(2304, 'The clever moon made a bargain with the great stag - she would set him free from the snare of the stars if he would love her and end her loneliness.$BMu\'sha loved Apa\'ro and conceived a child by him. The child, a demigod some would claim, was born in the shadowed forests of the night. He would be called Cenarius, and walk the starry path between the waking world and the kingdom of the heavens.', 0),

(2308, 'As the mists of dawn faded and the Age of Memory advanced, the demigod, Cenarius, went his own way through the fields of the world. The Shu\'halo (tauren) were sorrowful at his passing and forgot much of the druidism he had taught them. As the generations passed, they forgot how to speak with the trees and the wild things of the land. The dark whispers from the deeps of the world drifted up to their ears once again.', 2309),
(2309, 'Though the children of the earth closed out the evil whisperings, a terrible curse befell their roaming tribes. Out of the black lands of the west came a horde of murderous creatures - the centaur. Cannibals and ravagers, the centaur fell upon the Shu\'halo like a plague. Though the braves and hunters fought with the Earthmother\'s blessing in their hearts, the centaur could not be defeated.', 2310),
(2310, 'The Shu\'halo were forced to leave their ancestral holdings behind, and roam the endless plains as nomads forever after. It was held that one day hope would return - and the scattered tribes of the Shu\'halo would find a new home under the loving arms of the Earthmother.', 0),

-- extra needed for all dbs in some form
(9999, 'Howdy! You have found a loot bug. We are terribly sorry about that, we will fix it just as soon as possible. However, You need to help us first. Please go to https://github.com/cmangos/issues/issues/ and fill out a "New issue", with the location you found this message and we will resolve the issue. Continued-MaNGOS Team', 0);
 
-- (2294, 'Lady Mara Fordragon
-- High Clerist of Stormwind
-- Patron of the Refugees who fled to Lordaeron after the First War.
-- She was the bright mother of our future. May she rest in the Light.
-- ', 0); -- 2304
 
-- 2310 -> 2307
-- Cenarius taught the children of the earth to speak to the trees and plants. The Shu'halo became druids and worked great deeds of magic to nurse the land to health. For many generations the Shu'halo hunted with Cenarius and kept the world safe from the shadows that stirred beneath it. 