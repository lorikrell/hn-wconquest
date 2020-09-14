--[[ structure:
    [uiMapID] = {
        [coord] = {
            label = [string],  -- label: text that'll be the label
            text = [string],  -- some text which might be helpful
            npc = [string],  -- primary npc at the location

         -- Alliance
            alliance = [boolean], -- ICON part of the alliance war effort
            astronghold = [boolean], -- ICON an Alliance keep or stronghold
            ainn = [boolean], -- ICON an Alliance inn
            tower = [boolean], -- ICON a tower
            roundtower = [boolean], -- ICON round high elf mage

         -- Horde
            horde = [boolean], -- ICON part of the horde war effort
            hstronghold = [boolean], -- ICON a Horde keep or stronghold
            hinn = [boolean], -- ICON a Horde inn
            hmagic = [boolean], -- ICON horde magic building

         -- Neutral
            neutral = [boolean], -- ICON for a neutral location
            nstronghold = [boolean]; -- ICON neutral stronghold

         -- Camp
            camp = [boolean], -- ICON official camp
            tent = [boolean], -- ICON tents 
            medic = [boolean], -- ICON location for medics
            leader = [boolean], -- ICON location for leadership
            supplies = [boolean], -- ICON 
            engineering = [boolean], -- ICON
            repairs = [boolean], -- ICON
            mining = [boolean], -- ICON
            alchemy = [boolean], -- ICON
            inn = [boolean], -- ICON
            magic = [boolean], -- ICON
            barracks = [boolean], -- ICON
            

         -- Villain
            skull = [boolean], -- villains
            ziggeraut = [boolean], -- ziggeraut floating or crashed
            boss = [boolean], -- large boss skull
            skullblood = [boolean], -- ICON boss with decor
            skullfrost = [boolean], -- ICON boss with decor
            skullshadow = [boolean], -- ICON boss with decor
            skullvoid = [boolean], -- ICON boss with decor
            abomination = [boolean], -- ICON boss with decor
            lich = [boolean], -- ICON boss with decor
            necromancer = [boolean], -- ICON boss with decor
            skeleton = [boolean], -- ICON boss with decor
            knight = [boolean], -- ICON boss with decor

         -- Events
            npc = "String", -- Dungeon Master name
            
            Pick only one of the following:
            event = [boolean], -- ICON event location
            battle = [boolean], -- ICON battle event location
            naval = [boolean], -- ICON water/vehicle fight location
            horror = [boolean], -- ICON horror event location
            magical = [boolean], -- ICON magical investigation event location
            medical = [boolean], -- ICON medical event location
            report = [boolean], -- ICON escort/report event location
            stealth = [boolean], -- ICON stealth/scout event location

            abattle = [boolean], -- ICON battle event location
            ahorror = [boolean], -- ICON horror event location
            amagical = [boolean], -- ICON magical investigation event location
            areport = [boolean], -- ICON escort/report event location
            astealth = [boolean], -- ICON stealth/scout event location

            hbattle = [boolean], -- ICON battle event location
            hhorror = [boolean], -- ICON horror event location
            hmagical = [boolean], -- ICON magical investigation event location
            hreport = [boolean], -- ICON escort/report event location
            hstealth = [boolean], -- ICON stealth/scout event location

            eventtype = "String", -- type of event: battle, scouting, medic, horror, etc
            attendee = [int], -- max number of attendees
            schedule = "String", -- date, time
            hevent = [boolean], -- Horde faction event
            aevent = [boolean], -- Alliance faction event
            nevent = [boolean], -- Neutral faction event
            phasing = "String.", -- provide phasing info

            campaigntype = "String.", description for larger continent
            wclogo = big logo for corners

         -- Vehicles
            ship = [enum],    -- ICON the size of the ship, LARGE, MEDIUM, SMALL, WRECK, BOAT, SAILBOAT, or LANDING
            allianceair = [boolean]  -- ICON airship
            hordeair = [boolean]  -- ICON airship
            docks = [boolean], -- ICON docks
            tank = [boolean], -- ICON tank

         -- modifiers
            empty = [boolean], -- if empty (no npcs at all)
            hostile = [boolean], -- if occupied by hostile NPCs
            closed = [boolean], -- if the door is closed / building not enterable
            novendor = [boolean], -- if there's no player-friendly vendor

         -- type of building (determines map icon)
            alcohol = [boolean], -- if a bar (serves alcohol)
            cuisine = [string],  -- if a restaurant, what kind of food?
            wares = [string],  -- if sells items, either IC or in game
            official = [boolean], -- if an official building
            basement = [boolean], -- if a basement or cellar

         -- counts (icons)
            beds = [int],     -- number of beds in the building, optional
            tables = [int],     -- number of empty tables, optional
            seats = [int],     -- number of empty seats, optional
            maxseats = [int],     -- size of the largest table
            animals = [int],     -- number of pettable animals
            floors = [int],     -- number of floors
            decks = [int],     -- number of decks on a ship

        },
    },
    --]]

-- -------------------------------------------------------------------------------------------------------------------
local myname, ns = ...

local C = ns.CONST;
local arrow = ns.textures.arrow;

if not ns.points then ns.points = {} end;
-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.DRAGONBLIGHT] = { -- Dragonblight

   [15508270] = { label = "Warcraft Conquest Campaign",         wclogo = true, text = "This map has Warcraft Conquest campaign information. Hover over icons for camps and events. Use /wconquest to find links for more information.", },

-- -------------------------------------------------------------------------------------------------------------------
-- Events Dragonblight    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------
-- sunday 20th
   [59606894] = { label = "Scouting the Shore",                 abattle = true, npc = "Marevra", text = "The Alliance begins to scout the path forward, but what rests between their landing and Icecrown?", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
   [82016843] = { label = "Forgotten Memories",                 abattle = true, npc = "Zaria", text = "The heroes of the Alliance make landfall upon the Forgotten Shore. Their first enemy? The restless souls of the past are disturbed by Scourge meddling. Undo them.", eventtype = "Battle", attendee = 40, schedule = "Sunday, Sept 20th", aevent = true, },    
   [82907952] = { label = "Landing on the Forgotten Shore",     naval = true, npc = "Vehicle Battle Team", text = "The Alliance, Horde, and what remains of the Argent Crusade shall land on the Forgotten Shore in order to relieve those fighting the scourge in Dragonblight. The ghosts of Arthas’ betrayal linger here among the dead.", eventtype = "Vehicle, Discord", attendee = 30, schedule = "Sunday, Sept 20th", nevent = true, },
   [49027442] = { label = "Moa'ki Diplomacy",                   hbattle = true, npc = "Virsandir", text = "The path to Agmar’s Hammer is already occupied by the Tuskarr of Moa’ki Harbor. It’s up to the Horde to secure the harbor and a path from the sea to the base, whether by blade or words.", eventtype = "Battle, Diplomacy", attendee = "Any", schedule = "Sunday, Sept 20th", hevent = true, },
-- monday 21st
   [55434416] = { label = "The Risen Onslaught",               abattle = true, npc = "Altrek", text = "As the Alliance sends patrols out into Dragonblight to get a feel of the land they come across another patrol, their members garbed in red. Are they allies...or are they foes?", eventtype = "Battle, Scouting", attendee = "10-15", schedule = "Monday, Sept 21st", aevent = true, },
   [53463805] = { label = "Scouting the Shore",                hreport = true, npc = "Ithric", text = "The Horde begins to scout the path forward, but what rests between their Agmar’s Hammer and Icecrown?", eventtype = "Scouting", attendee = "Any", schedule = "Monday, Sept 21st", hevent = true, },
   [79107140] = { label = "The Restless Dead, Awaken...",      horror = true, npc = "Tyrinade", text = "The Souls of the restless First Legion will never find peace, their souls cursed to wander the wastes for ever. Our enemies seek to steal those souls for themselves. We must stop them from claiming the anguished and either put them to rest or claim them for ourselves.", eventtype = "Battle, Magic, Horror", attendee = 20, schedule = "Monday, Sept 21st", nevent = true, },
-- tuesday 22nd
   [25744860] = { label = "Old Allies",                        ahorror = true, npc = "Vince", text = "Many years have passed since the reign of Arthas and the true fate of the living Nerubian resistance remains a mystery, what is clear is that they failed to fully quell the might of their fallen Anub'ar kin. Seeking to close the Nerubian tunnel network beneath Dragonblight, an Alliance force will enter the catacombs to plant explosive charges and attempt to uncover the fate of the Azjol-anak. ", eventtype = "Battle, Horror, Diplomacy", attendee = "10-20", schedule = "Tuesday, Sept 22nd", aevent = true, },
   [68104688] = { label = "Ride for JUSTICE!",                 abattle = true, npc = "Hildira", text = "The Scourge march on our position, streaming through the Crystal Vice! Led by the knights of the Silver Hand, Alliance cavalry must mount up and ride from Wintergarde to face their forces head-on. Destroy the vile undead, for JUSTICE!", eventtype = "War", attendee = 40, schedule = "Tuesday, Sept 22nd", aevent = true, },
   [62201930] = { label = "Battle for the Crystal Vice",       abattle = true, npc = "Marevra", text = "The Scourge marches on the Crystal Vice. The forces of the Alliance move to meet them at the frozen wasteland and quash the undead before they can overrun the coalition positions!", eventtype = "War", attendee = "Any", schedule = "Tuesday, Sept 22nd", aevent = true, },
   [66402420] = { label = "Let the Hammer Fall",               hbattle = true, npc = "Virsandir", text = "Whilst the Alliance fights the infantry on the ground, the Horde takes to the air! Launching from Agmar’s Hammer, they’ll be taking out objectives to secure the ground army’s safe passage through to Crystalsong Forest.", eventtype = "Aerial Combat", attendee = "Any", schedule = "Tuesday, Sept 22nd", hevent = true, },
   [74407300] = { label = "Warriors of the Spirit Realm",      hbattle = true, npc = "Gotosh", text = "Struck with a horrible vision of the near future, a shaman reaches out to his allies. Souls are being abused by a fanatical band of Loyalists seeking to harm the spirit plane as well as the physical one. Band together with your fellow Horde in stopping this ritual before it’s too late. However, it seems you may not just be facing the Loyalists...but the very spirits themselves.", eventtype = "Spiritual, Battle", attendee = "10-15", schedule = "Tuesday, Sept 22nd", hevent = true, },
   [63402070] = { label = "Stronger Together",                 battle = true, npc = "Zaria", text = "The forces of the Alliance and Horde band together to stop the flow of enemies pouring out from the vice. The heroes venture across the lip of the vice to bring down ice and snow on the Scourge from above the canyon.", eventtype = "Battle", attendee = 40, schedule = "Tuesday, Sept 22nd", nevent = true, },
   [62703000] = { label = "Battle for the Crystal Vice",       tank = true, npc = "Vehicle Battle Team", text = "Undead spew from the Crystal Vice, swarming across Dragonblight. The Alliance, Horde, and Argent Crusade must stem the tide, bringing their armored vehicles to bear upon the Scourge.", eventtype = "Vehicle, Discord", attendee = 30, schedule = "Sunday, Sept 20th", nevent = true, },
-- wednesday 23rd
   [47204880] = { label = "Choosing a Path", amagical = true, npc = "Lyraeni", text = "At the call of the Wyrmrest Guardians, soldiers of the Alliance are called to defend the Ruby Dragonshrine from the encroaching scourge, and gain their favour in return!", eventtype = "Battle, Magic", attendee = 15, schedule = "Wednesday, Sept 23rd", aevent = true, },
   [73952421] = { label = "Trying to Protect You, From It", horror = true, npc = "Tyrinade", text = "Once the Prince took up the cursed blade his fate was sealed, the site now stands as a testament to that fateful moment. The Revenants stir once more and have begun raging throughout the cavern. It falls upon the keepers of the dead to stem their rampage and secure the location before the Cult of the Damned can take it.", eventtype = "Horror", attendee = 10, schedule = "Wednesday, Sept 23rd", nevent = true, },
-- thursday 24th
   [67685192] = { label = "Armaments of the Dragons", abattle = true, npc = "Lyraeni", text = "With the Dragonshrine saved, the Cult sets its eyes on the great wyrm within the Mirror of Dawn. Keep the scourge from claiming its corpse, and receive further gifts from your Draconic Patrons.", eventtype = "Battle", attendee = 15, schedule = "Thursday, Sept 24th", aevent = true, },
   [81605064] = { label = "Cultmasters", amagical = true, npc = "Wardom", text = "You have sensed it for days now, an unease around certain individuals in the camp. You do not remember their faces, for they are not your allies. The Cult of the Damned has always been known to hide in plain sight. The suspicious characters have had their movements tracked to Wintergarde Mausoleum, where they plot beneath our very feet. It does not matter what they scheme, only that you put an end to it.", eventtype = "Magic, Battle", attendee = 10, schedule = "Thursday, Sept 24th", aevent = true, },
   [71577252] = { label = "Bleeding Scarlet", hbattle = true, npc = "Keirras, Mokron", text = "A lead has been given, alerting of a Scourge presence within New Hearthglen, suggesting that the bodies of Scarlet Crusaders are being raised to serve the undead ranks by an unknown source. Band together, and bring your strength and wits, to strike at the heart of the dark power source directly!", eventtype = "Battle", attendee = 25, schedule = "Thursday, Sept 24th", hevent = true, },
-- friday 25th
   [88704430] = { label = "The Spider's Den", ahorror = true, npc = "Vince", text = "Following up on the information gained during the expedition in the tunnels of Azjol Nerub, an Alliance force will enter Naxxramas and head into the spider wing to destroy the Broodmother of the Anub’ar and her attendants, cutting the Anub’ar off from any future reinforcements while extracting what information they can from her.", eventtype = "Battle, Horror", attendee = "10-20", schedule = "Friday, Sept 25th", aevent = true, },
   [27004900] = { label = "Battle of the Az'jol Deeps", tank = true, npc = "Vehicle Battle Team", text = "In order to fully relieve the Azjol-anak so that they might aid the coalition, the Alliance, Horde, and Argent Crusade must delve into the Az’jol Deeps to contend with the remaining undead Nerubians. Mole machines will lead the charge into the depths where unliving horrors await.", eventtype = "Vehicle, Discord", attendee = 30, schedule = "Friday, Sept 25th", nevent = true, },
-- saturday 26th
   [36003200] = { label = "Power of the Flights", amagical = true, npc = "Lyraeni", text = "While we stopped the initial ritual, the Lich has retreated to the cult-infested tunnels of the Obsidian Dragonshrine. Carve a path through that hellish cavern, and put a stop to his blasphemous defilement of the Dragons.", eventtype = "Battle, Magic", attendee = 15, schedule = "Saturday, Sept 26th", aevent = true, },

-- -------------------------------------------------------------------------------------------------------------------
-- Neutral Locations
-- -------------------------------------------------------------------------------------------------------------------
   [83392647] = { label = "Light's Trust",                      neutral = true, text = "The Argent Crusade stands in this small camp", npc = "Crusader Valus", },

-- -------------------------------------------------------------------------------------------------------------------
-- Alliance Locations
-- -------------------------------------------------------------------------------------------------------------------
   [77174615] = { label = "Wintergarde Keep",                    acamp = true, floors = 3, seats = 7, tables = 2, maxseats = 4, text = "Alliance war headquarters with meeting hall and jail.", npc = "Commander Eligor Dawnbringer", },
   [77415140] = { label = "Wintergarde Inn",                     food = true, floors = 3, seats = 8, beds = 4, tables = 5, maxseats = 3, text = "Inn with a bar, kitchen, and beds.", phasing = "Complete Naxxramas and the Fall of Wintergarde.", },
   [77905026] = { label = "Repairs",                             repairs = true, npc = "Siege Engineer Quarterflash", text = "Repairs for armor, weapons, and more.", },
   [77204855] = { label = "Medical",                             medic = true, text = "Located in the stronghold left side 1st floor, medics and healers. Follow medic orders for critical and minor.", npc = "C'thonia", beds = 12, },
--   [78974532] = { label = "Circle of Battlemagi",                magic = true, floors = 1, text = "Center of magic", npc = "Vas the Unstable", },
--   [89684670] = { label = "Cannons",                             text = "Line of cannons ready to fight", atlas = "Vehicle-Ground-Occupied", scale = 1.50,},
--   [39032704] = { label = "Fordragon Hold",                      astronghold = true, text = "Battlecamp of the Alliance with towers and camp", },
--   [37202540] = { label = "Alliance Camps",                      camp = true, text = "Tents and provisions in a camp",},
--   [39722452] = { label = "Cannons",                             text = "Line of cannons ready to fight", atlas = "Vehicle-Ground-Occupied", scale = 1.50,},
--   [29005626] = { label = "Star's Rest",                         roundtent = true, text = "Night elven outpost set in ruins", npc = "Commander Saia Azuresteel", },
--   [29515496] = { label = "Glaive Throwers",                     alliance = true, text = "Glaives set to defend the post", npc = "Sentinel Amberline", atlas = "Vehicle-Ground-Occupied", scale = 1.50,},
-- -------------------------------------------------------------------------------------------------------------------
-- Horde Locations
-- -------------------------------------------------------------------------------------------------------------------
   [38894661] = { label = "Agmar's Hammer Stronghold",           hcamp = true, floors = 3, text = "Horde headquarters with war hall, barracks, and tower.", npc = "Overlord Agmar", },
   [36424872] = { label = "Horde Supplies",                      supplies = true, text = "Horde supplies for expeditions and battle, General goods, herbs, poisons, and more.", },
   [36914686] = { label = "Blacksmithing",                       repairs = true, trainer = "Blacksmithing", npc = "Borus Ironbender",  text = "Repairs for armor, weapons, and more.", },
   [36414729] = { label = "Mining",                              mining = true, text = "Smelting and mining goods for repairs.", },
   [36014646] = { label = "Engineering",                         engineering = true, text = "Gearheads and mechanics for engineering.", },
   [36624607] = { label = "Meals",                               food = true, text = "Food stalls, carts, and hearty meals to keep you warm.", },
   [37654631] = { label = "Medical Central",                     medic = true, text = "Located in the stronghold, medics and healers. Follow medic orders for critical and minor.", npc = "Syeris", beds = 12, },
   [35384653] = { label = "Medical Overflow",                    medic = true, text = "Additional area for the wounded to receive healing.", beds = 5, },
   [36284489] = { label = "Medical Overflow",                    medic = true, text = "Additional area for the wounded to receive healing.", beds = 6, },
--   [36544934] = { label = "Apothecaries",                        alchemy = true, npc = "Dr. Sintar Malefious", text = "Alchemists and blight of the Horde", },
   [35814838] = { label = "Barracks",                            barracks = true, npc = "Captain Gort", text = "Tower of additional barracks for soldiers.", },
--   [41811634] = { label = "Kor'kron Vanguard",                   hstronghold = true, text = "Battlecamp of the Horde with towers and camp", },
--   [41181863] = { label = "Kor'Kron Catapults",                  horde = true, text = "Catapults and buzzsaw weapons", atlas = "Vehicle-Ground-Occupied", scale = 1.50, },
--   [76096136] = { label = "Venomspite",                          horde = true, text = "Village of Venomespite, held by the Forsaken", npc = "High Executor Wroth", atlas = "GarrBuilding_Alchemy_3_H_Info", scale = 2.0, floors = 2, beds = 1, },
--   [77006280] = { label = "Vile Tower",                          alchemy = true, npc = "Chief Plaguebringer Middleton", text = "Alchemists and blight of the Horde", floors = 2, },
--   [78256084] = { label = "Venomspite Catapults",                horde = true, text = "Catapults and blight throwers", atlas = "Vehicle-Ground-Occupied", scale = 1.50, },
--   [13374761] = { label = "Westwind Refugee Camp",               horde = true, text = "Taunka village with 5 buildings, some tents, and fortifications", atlas = "GarrBuilding_MageTower_2_H_Info", scale = 2.30, },

-- -------------------------------------------------------------------------------------------------------------------
-- Villain Locations
-- -------------------------------------------------------------------------------------------------------------------
--   [71577252] = { label = "New Hearthglen",                      scarlet = true, npc = "High Abbot Landgren, High General Abbendus", text = "Height of the Scarlet Onslaught, the walled outpost includes a cathedral, stronghold, and support to wage a bloody war.", },
--   [70967726] = { label = "High General",                        skull = true, text = "Cathedral of the Scarlet Onslaught.", },
--   [73437439] = { label = "High Abbot",                          skull = true, text = "Inner cloister of the Scarlet Onslaught.", },
--   [70197198] = { label = "Scarlet Command",                     skull = true, text = "Stronghold of the Scarlet Onslaught.", },
--   [72198230] = { label = "Scarlet Docks",                       docks = true, text = "Secured docks for the Scarlet Onslaught.", },
--   [82016843] = { label = "The Forgotten Shore",                 skullfrost = true, text = "The dead patrol these shores, marked by the drowned and damned", },
--   [83365122] = { label = "The Carrion Fields",                  abomination = true, text = "The risen dead continue to patrol and toil towards unknown goals", npc = "Turgid the Vile", },
--   [88992720] = { label = "Jintha'kalar",                        necromancer = true, text = "Necromancers raise the dead in unhold ceremonies", npc = "Overseer Deathgaze", },
--   [54393153] = { label = "Thiassi The Lightning Bringer",       skullshadow = true, text = "Flesh hangs from the risen brother of Gymer, king of storm giants.", },
--   [78605287] = { label = "Wintergarde Crypt",                   necromancer = true, text = "Depths of darkness and whispers yawns into the earth, tombs broken, and the dead risen.", npc = "Necrolord Amarion", },

}; -- /Dragonblight
-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.ICECROWN] = { -- Icecrown
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Icecrown    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------
-- wednesday 23rd
   [53708200] = { label = "The Forge of Souls", amagical = true, npc = "Hildira", proxy = "Icecrown Raid is a proxy.", text = "Deep within the caverns of Icecrown Glacier, the Forge of Souls created the Scourge’s most powerful weapons. At the new Lich King’s command, it worked once more to arm them once again to counter the rising power of death- amassing all manner of famed blades within the frozen halls beneath the citadel. While these weapons are raw and unfinished, the Ebon Grasp claims that they possess incredible potential. If they could be secured, the Azerothian forces could turn them against their former owners...", eventtype = "Supply, Magic", attendee = 25, schedule = "Wednesday, Sept 23rd", aevent = true, },
-- thursday 24th
   [74703800] = { label = "Frost", abattle = true, npc = "Straita", text = "Azeroth’s skies have been choked by frost wyrms in great number, and commanding them is a malevolent presence from beyond the veil. The Azerothian forces must make an assault on their icy perch and bring the wyrms down with the power held by their new weapons!", eventtype = "Battle", attendee = 40, schedule = "Thursday, Sept 24th", aevent = true, },
-- friday 25th
   [46007600] = { label = "Blood", amagical = true, npc = "Hildira", text = "The Cult of the Damned have returned along with the Scourge, and they wield terrifying magic never before seen on Azeroth. These maddened cultists serve sinister, winged entities that have come from beyond the veil with a fervor not seen since the height of the Lich King’s power. The Ebon Grasp demands that we find their largest outpost and learn where their powers come from... and put an end to as many cultists as possible.", eventtype = "Battle, Magic", attendee = 25, schedule = "Friday, Sept 25th", aevent = true, },
   [62706203] = { label = "Collecting the Keys, Part 1", hstealth = true, npc = "Ithric", text = "In order to defeat the Scourge, the gates throughout Icecrown must be opened. Kill the Gatekeepers or steal their keys!", eventtype = "Battle, Stealth", attendee = "Any", schedule = "Friday, Sept 25th", hevent = true, },
-- saturday 26th
   [55007700] = { label = "Checkmate", ahorror = true, npc = "Vince", text = "Nowhere left to run, nowhere left to hide. Having tracked down and cornered the Cryptking and his elite guards beneath Icecrown Citadel, the Alliance forces will attempt to put an end to his reign once and for all, freeing the Azjol’anak from his tyranny and securing them as an ally in the battles to come.", eventtype = "Battle, Horror", attendee = "10-25", schedule = "Sunday, Sept 20th", aevent = true, phasing = "Complete Icecrown questing.", },
   [48006900] = { label = "Matters of the Soul", amagical = true, npc = "Wardom", proxy = "Corp'rethar is a proxy for the Wrathgate.", text = "Some sort of beacon at the border of Icecrown has been drawing in the souls of the dead. The spirits of the slain howl in the wind as they are forced towards some unknown purpose. Our enemies must be denied at every turn. Eliminate the cause and try not to lose your skin doing it.", eventtype = "Battle, Magic", attendee = 10, schedule = "Saturday, Sept 26th", aevent = true, },

-- -------------------------------------------------------------------------------------------------------------------
-- Coalition Locations
-- -------------------------------------------------------------------------------------------------------------------
   [86877683] = { label = "Medical",                             medic = true, text = "Medics tents and facilities.", npc = "C'thonia and Syeris", beds = 16,  },
   [87187537] = { label = "Repairs",                             repairs = true, text = "Smelting and anvils to repair armor, weapons, and more.", },
   [86497631] = { label = "Food Carts",                          food = true, text = "Food carts, soup cauldrons, hot meals...sorely needed in the cold.", },
   [85977721] = { label = "Ballista",                            text = "Two ballista ready to fight", atlas = "Vehicle-Ground-Occupied", scale = 1.50, },
   [87217913] = { label = "Drakes and stables",                  text = "Stables of drakes and horses ready for battle", atlas = "Vehicle-Ground-Occupied", scale = 1.50, },
   [79257238] = { label = "Crusader's Pinnacle",                 ncamp = true, text = "Forward position for Neutral forces with tents, a tower, and cannons.", phasing = "Complete quests starting from Tirion Fordring, until the Pinnacle is unlocked.", floors = 2, },
   [87747938] = { label = "Argent Vanguard",                     ncamp = true, text = "Coalition camp for Alliance, Horde, and Neutrals in Icecrown.", phasing = "Complete quests starting from Tirion Fordring.", },
   [87887789] = { label = "Supplies",                            supplies = true, text = "Wagons, crates, stores for the camp.", },

   [44622051] = { label = "The Shadow Vault",                    vault = true, text = "Claimed by the Ebon Blade, the chambers provide sancturary and a battle front for the death knights of Icecrown. It holds runeforges, goods, and a base.", npc = "Baron Silver",  },

-- -------------------------------------------------------------------------------------------------------------------
-- Villain Locations
-- -------------------------------------------------------------------------------------------------------------------
   [80086118] = { label = "Scourgeholme Temple",                 skull = true, text = "Ziggeraut of death, with a large chamber for a boss or event", phasing = "Argent Crusade quests phase this area.", },
   [77296190] = { label = "Scourgeholme Chamber",                skull = true, text = "Grand chamber of the scourge, with a large chamber for a boss or event", phasing = "Argent Crusade quests phase this area.", },
   [79306418] = { label = "Scourgeholme Priest",                 skull = true, text = "Single chamber with a death priest", phasing = "Argent Crusade quests phase this area.", },
   [77286810] = { label = "Scourgeholme Priest",                 skull = true, text = "Single chamber with a death priest", phasing = "Argent Crusade quests phase this area.", },

   [77446526] = { label = "Scourgeholme Altar",                  skull = true, text = "Summoning altar of the scourge", atlas = "ArtifactsFX-Whirls-Purple", scale = 1.75, phasing = "Argent Crusade quests phase this area.", },
   [77446528] = { label = "Scourgeholme Altar",                  skull = true, text = "Summoning altar of the scourge", atlas = "Rune-06-purple", scale = 1.50, phasing = "Argent Crusade quests phase this area.", },

--   [62706203] = { label = "Mord'rethar: The Death Gate",         skullvoid = true, text = "Grand chamber of death, plague, and corpse machines. It stands as the first line of Scourage power and defense.",  },
--   [43387837] = { label = "Cathedral of Darkness",               skullblood = true, text = "A terrifying cathedral of blood sacrifice and chosen zealots offering faith to the night.", npc = " High Invoker Basaleph", },
   [54143045] = { label = "Dark Summoning Circle",               skullfel = true, text = "Mass summoning circle of darkness, surrounded by channelers and summoners.",  },
   [49303374] = { label = "Dark Plague and Alchemists",          skullfel = true, text = "Plague cauldrons, alchemists, and dark apothecaries toil endlessly.", },
   [51942875] = { label = "Aldur'thar: The Desolation Gate",     skullshadow = true, text = "Grand altars and sacrifices, surrounded by shadow channelers, researchers, and libraries", },

   [61502303] = { label = "The Black Knight",                    knight = true, text = "The cults seek to regain one of their champions clad in blackened armor.", },

   [61432035] = { label = "Deathspeaker's Watch",                skull = true, text = "The Cult of the Damned gather, pray, and practice their dark arts. Prisoners wallow in cages, awaiting their turn upon the pyres.", atlas = "ArtifactsFX-Whirls-Purple", scale = 1.75,},
   [61432033] = { label = "Deathspeaker's Watch",                skull = true, text = "The Cult of the Damned gather, pray, and practice their dark arts. Prisoners wallow in cages, awaiting their turn upon the pyres.", atlas = "Rune-06-purple", scale = 1.50,},

   [38843921] = { label = "Weeping Quarry",                      mining = true, text = "Saronite and stone mining manned by the Scourge. They have dug deep, perhaps too far.", },

   [33776897] = { label = "The Fleshwerks",                      skullblood = true, text = "The Scourge use this large facility to craft Abominations and Flesh Giants.", phasing = "He's Gone to Pieces quest puts this in a phase. Blackwatch quest hub.", },

   [36786779] = { label = "Sanctum of Reanimation",              skull = true, text = "In the depths of a cave, labratories and altars knit together the dead.", phasing = "He's Gone to Pieces quest puts this in a phase. Blackwatch quest hub.", },
}; -- Icecrown
-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.BOREANTUNDRA] = { -- Borean Tundra
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Borean Tundra    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------

   [69501260] = { label = "We are the Flame", ahorror = true, npc = "Mordrime", proxy = "Talramas Borean Tundra is a proxy.", text = "A necropolis was shot down by the Wyrmrest Accord not long after the Battle of the Crystal vice. Before they were driven off, the dragons reported a great deal of fresh Alliance, Horde, and Argent corpses spilling out from the hull, likely our fallen from recent battles. A task group must be dispatched to burn the bodies and clear out the necropolis, not just to deny the Scourge more resources, but to give our comrades a modicum of the last rites they deserve.", eventtype = "Battle, Horror, Scout", attendee = 15, schedule = "Wednesday, Sept 23rd", aevent = true, },
   [64001800] = { label = "Borean Battlebot Beatdown", areport = true, npc = "Wey-Chung, Bakazun", text = "A super-powered strain of the Plague threatens to escape from a nightmarish lab established in the crashed necropolis of Talramas. Such a foul sickness can't be confronted head-on, and materials can’t be spared in the march on Icecrown - a contingent of the Alliance will have to construct and pilot bots of recovered scrap from the Geyser Fields in order to battle its fiendish creator! You need a Blue Crashin' Thrashin' Racer Controller from Stormwind.", eventtype = "Scouting, Battle", attendee = "15-20", schedule = "Thursday, Sept 24th", aevent = true, },
   [31002700] = { label = "On Scaled Wings", amagical = true, npc = "Lyraeni", text = "A powerful Lich has been spotted above the Nexus, harnessing its energies for an unknown ritual. Fight alongside the brood of your patrons, take the fight to him, and stop his ritual before he gathers enough ley energies for his dark task.", eventtype = "Battle, Magic", attendee = 15, schedule = "Friday, Sept 25th", aevent = true, },
   [85002400] = { label = "The Sleeper Awakens", horror = true, npc = "Tyrinade", text = "One location identified by the Blood Princess Tyrinade as being the site of several dangerous San’layn artifacts; Blood Orbs, San’layn Weapons, and Nerubian tokens. Items of such dangerous power must not be allowed into the hands of our enemies. We shall claim them for ourselves and direct their vampiric wrath against those standing against us.", eventtype = "Battle, Horror, Magic", attendee = 20, schedule = "Friday, Sept 25th", nevent = true, },

-- -------------------------------------------------------------------------------------------------------------------
-- Alliance Locations
-- -------------------------------------------------------------------------------------------------------------------
   [56707150] = { label = "Valiance Keep",                       astronghold = true, floors = 3, seats = 7, tables = 2, maxseats = 4, text = "Alliance war headquarters with meeting hall, brig, and dock.", },
   [58527000] = { label = "Valiant Rest",                        inn = true, floors = 3, seats = 8, beds = 4, tables = 5, maxseats = 3, text = "Inn with a bar, kitchen, and beds.", },
   [57256648] = { label = "Strongstout Smithy",                  repairs = true, trainer = "Blacksmithing", npc = "Argo Strongstout", text = "Repairs for armor, weapons, and more.", },
   [58246613] = { label = "Practice Yard",                       alliance = true, atlas = "worldquest-icon-pvp-ffa", scale = 1.10, text = "Practice yards for melee and ranged.", },
   [60416984] = { label = "Valiant Docks",                       docks = true, text = "Alliance docks and harbor.", },
   [57555913] = { label = "Farshire",                            alliance = true, atlas = "GarrBuilding_TownHall_2_A_Info", scale = 2.00, text = "Townhall, lighthouse, farms, and mines to aid the Alliance.", seats = 3, floors = 2, },
   [57501901] = { label = "Fizzcrank Airstrip",                  text = "Alliance engineering corps and airstrip.", atlas = "GarrBuilding_Workshop_1_A_Info", scale = 2.0, },
   [56452001] = { label = "Chief Engineer Galpen Rolltie",       engineering = true, trainer = "Engineering",  text = "Master chief of engineering", },

-- -------------------------------------------------------------------------------------------------------------------
-- Horde Locations
-- -------------------------------------------------------------------------------------------------------------------
   [40305190] = { label = "Warsong Hold",                        hstronghold = true, floors = 3, text = "Horde headquarters with war hall, brig, and zepplin", },
   [42625294] = { label = "Warsong Engineering Bay",             engineering = true, npc = "Chief Engineer Leveny", text = "Metalworking, engineering, and bombs, lower floor of Warsong Hold.", },
   [41005557] = { label = "Warsong Smithy",                      repairs = true, trainer = "Blacksmithing", npc = "Armorer Orkuruk", text = "Repairs for armor, weapons, and more", },
   [40185510] = { label = "Warsong Stables",                     horde = true, npc = "Durkot Wolfbrother",  atlas = "WildBattlePet",  scale = 1.1, text = "Worgs for the Horde", },
   [49531027] = { label = "Bor'gorok Outpost",                   horde = true, text = "Horde outpost with provisions and wolf riders", atlas = "GarrBuilding_TownHall_2_H_Info", scale = 2.0, },
   [75783680] = { label = "Taunka'le Village",                   horde = true, text = "Taunka village with a central, stable, shaman, and druid halls.", npc = "Chieftain Wintergale", atlas = "GarrBuilding_MageTower_2_H_Info", scale = 2.00, },
   [77593680] = { label = "Druid Hall",                          horde = true, text = "Druid hall", npc = "Greatmother Taiga", atlas = "groupfinder-icon-class-druid", scale = 1.40,},
   [77383915] = { label = "Shaman Hall",                         horde = true, text = "Shaman hall of elements", npc = "Sage of Earth and Sky", atlas = "groupfinder-icon-class-shaman",  scale = 1.40, },
   
-- -------------------------------------------------------------------------------------------------------------------
-- Villain Locations
-- -------------------------------------------------------------------------------------------------------------------
   [88092093] = { label = "Spire of Blood",                      skull = true, text = "Terrifying temple and altar of blood, filled with the cries of the dying and hungering.",  },
   [83892053] = { label = "Spire of Decay",                      skull = true, text = "Terrifying temple and altar of undeath, whispering with howls of the forgotten and lost.",   },
   [88832838] = { label = "Spire of Pain",                       skull = true, text = "Terrifying temple and altar of pain, ravaged by the bent and broken.",  },
--   [86932998] = { label = "Ziggeraut of En'kilah",               ziggeraut = true, text = "Floating ziggeraut with a summoning portal on top, no access within.", },
   [69331500] = { label = "Talramas",                            ziggeraut = true, text = "Crashed ziggeraut teeming with the unhollowed, piecing together brethren from the fallen.", npc = "Lich Lord Chillwinter", floors = 3, },
   [84684086] = { label = "The Wailing Ziggeraut",               ziggeraut = true, text = "Terrifying ziggeraut of cultists and death.", },

}; -- Borean Tundra

-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.GRIZZLYHILLS] = { -- Grizzly Hills
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Grizzly Hills    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------

   [14608160] = { label = "We can build it...", tank = true, npc = "Sonceri, Maxen", text = "We’ve landed in Northrend, battled through the shore, and smashed a ziggurat. Before our tanks, flights, and men continue towards Icecrown, we need repairs and maybe a bit of building. Engineers, magitech crafters, munitions experts, siege lords, and nerds come together to repair and build additions for our units!", eventtype = "Vehicle, Crafting", attendee = "20+", schedule = "Monday, Sept 21st", nevent = true, },
   [85302400] = { label = "The Cycles of Guilt", ahorror = true, npc = "Julien, Mig", text = "The forces of the Grand Alliance have tracked the lich Erasmus to a tower of the coast of Grizzly Hills. However, reports state that a rogue element has emerged, and that a lone death knight empowered by the Maw has taken to besieging the tower themselves. Is the lich aligned with the Mawsworn, or do the Jailer’s forces seek to stop some ritual? Whatever the case is, time is of the essence, and the Alliance forces need to act quickly. ", eventtype = "Battle, Horror, Boss", attendee = 15, schedule = "Thursday, Sept 24th", aevent = true, },
}; -- Grizzly Hills

-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.HOWLINGFJORD] = { -- Howling Fjord
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Howling Fjord    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------

   [68802550] = { label = "The Cycles of Guilt", ahorror = true, npc = "Julien, Mig", text = "The forces of the Holy Inquisition, backed by the aid of the Grand Alliance, hunt down an old foe of theirs: Erasmus the Elegiac. Following up on a possibly dubious report on the lich’s location, the party heads out in hopes of finally eliminating this fierce foe. Will the coasts of Northrend be the lich’s final resting place? There is only one way to find out.", eventtype = "Battle, Horror", attendee = 15, schedule = "Sunday, Sept 23rd", aevent = true, },

}; -- Howling Fjord

-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.ZULDRAK] = { -- ZulDrak
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events ZulDrak    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------

   [26007000] = { label = "A Thousand Fangs", hbattle = true, npc = "Virsandir", text = "The Zandalari trolls have called on the Horde to aid in Zul'drak after the Scourge-risen Drakkari have become active again. The Horde must fight their way through Zul'drak to secure a path to the temples!", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 23rd", hevent = true, },
   [46905700] = { label = "Ambush at the Amphitheatre", hbattle = true, npc = "Virsandir", text = "Upon a meeting with the uncorrupted Drakkari, they find that the Scourge are rampaging across Zul'drak and defiling graves. In order to prove themselves, the Horde must fight the champions of the remaining Loa to prove themselves worthy of their divine power.", eventtype = "Gladiatorial Battles", attendee = "Any", schedule = "Thursday, Sept 24th", hevent = true, },
   [58005900] = { label = "Who Needs Gods?", hbattle = true, npc = "Virsandir", text = "The God-Drinker, the troll behind the Scourge Loa, played his hand at the Amphitheatre and revealed his plan. The Scourge are raising the bodies of the fallen Loa and infusing them with necromantic power and the energy of their divine essence to bend them to their will. They could prove to be some of the strongest minions of the Scourge yet! It’s up to the Horde to put a stop to his vile plan.", eventtype = "Battle", attendee = "Any", schedule = "Friday, Sept 25th", hevent = true, },
   [60007800] = { label = "Rising Necropolis", hbattle = true, npc = "Mokron", text = "The Cult of the Damned have taken an interest to reconstruct a fallen necropolis within the area to use as another base of operations and to tighten their grip within the region. Assemble a force and deny the enemy a potential asset!", eventtype = "Battle", attendee = 15, schedule = "Friday, Sept 25th", hevent = true, },
}; -- ZulDrak

-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.THESTORMPEAKS] = { -- Storm Peaks
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Storm Peaks    
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------

   [33005500] = { label = "Cascade of the Makers", amagical = true, npc = "Garion", text = "With the Scourge reappearing in droves the need for volatile and destructive weapons rapidly increases. The prospect of higher quality weapons and a stockpile of Mortar and Artillery Shells sound all the more enticing even more so with the name ‘Titan’ involved. A small strike team of Alliance Soldiers will make an attempt to break into a Titanforged Stockpile for the sole purpose of arming the coalition with more effective arms.", eventtype = "Battle, Magic, Supply", attendee = 15, schedule = "Friday, Sept 25th", aevent = true, },

}; -- Storm Peaks

-- -------------------------------------------------------------------------------------------------------------------
ns.points[C.ZONES.CRYSTALSONGFOREST] = { -- Crystalsong Forest
-- -------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------
-- Events Crystalsong Forest   
-- [123] = { label = "name", battle = true, npc = "name", text = "text", eventtype = "Battle", attendee = "Any", schedule = "Sunday, Sept 20th", aevent = true, },
-- -------------------------------------------------------------------------------------------------------------------
   [56705190] = { label = "Sword in the Stone", hbattle = true, npc = "Ithric", text = "A legendary sword lays somewhere in Crystalsong Forest, rumoured to answer to the call of a true hero.", eventtype = "Battle", attendee = "Any", schedule = "Wednesday, Sept 23rd", hevent = true, },
   [75006200] = { label = "The Great Equalizer", battle = true, npc = "Luneth", text = "Split down faction lines, Crystalsong has always been a source of contention between the Quel’dorei and Sin’dorei as they fought for possession of the ancient Highborne relics there. With dark forces taking advantage of the elves squabbling, the Shandaral spirits there have been driven mad into siphoning all the latent mana that's saturating the earth of Crystalsong into one massive anti-air mana-canon; thus making flight over Crystalsong suddenly virtually impossible. Infiltrate the Ruins of Shandaral on foot to shut down the spell and uncover who corrupted the spirits!", eventtype = "Puzzles, Diplomacy, Battle", attendee = "Any", schedule = "Sunday, Sept 20th", nevent = true, },

}; -- Crystalsong Forest

-- -------------------------------------------------------------------------------------------------------------------
-- Make Indices
-- -------------------------------------------------------------------------------------------------------------------
if not ns.index then ns.index = {} end;
ns.index[C.ZONES.DRAGONBLIGHT] = ns.utils.points.index(ns.points[C.ZONES.DRAGONBLIGHT]);
ns.index[C.ZONES.ICECROWN] = ns.utils.points.index(ns.points[C.ZONES.ICECROWN]);
ns.index[C.ZONES.BOREANTUNDRA]  = ns.utils.points.index(ns.points[C.ZONES.BOREANTUNDRA]);
ns.index[C.ZONES.GRIZZLYHILLS]  = ns.utils.points.index(ns.points[C.ZONES.GRIZZLYHILLS]);
ns.index[C.ZONES.HOWLINGFJORD]  = ns.utils.points.index(ns.points[C.ZONES.HOWLINGFJORD]);
ns.index[C.ZONES.ZULDRAK]  = ns.utils.points.index(ns.points[C.ZONES.ZULDRAK]);
ns.index[C.ZONES.THESTORMPEAKS]  = ns.utils.points.index(ns.points[C.ZONES.THESTORMPEAKS]);
ns.index[C.ZONES.CRYSTALSONGFOREST]  = ns.utils.points.index(ns.points[C.ZONES.CRYSTALSONGFOREST]);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Dalaran map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA],  C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS],  C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD],  C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK],  C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS],  C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Dragonblight map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA],  C.ZONES.BOREANTUNDRA, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS],  C.ZONES.GRIZZLYHILLS, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD],  C.ZONES.HOWLINGFJORD, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK],  C.ZONES.ZULDRAK, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS],  C.ZONES.THESTORMPEAKS, C.ZONES.DRAGONBLIGHT);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.DRAGONBLIGHT);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Icecrown map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA],  C.ZONES.BOREANTUNDRA,  C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS],  C.ZONES.GRIZZLYHILLS,  C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD],  C.ZONES.HOWLINGFJORD,  C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK],  C.ZONES.ZULDRAK,  C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS],  C.ZONES.THESTORMPEAKS,  C.ZONES.ICECROWN);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.ICECROWN);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Borean Tundra map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS], C.ZONES.GRIZZLYHILLS, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD], C.ZONES.HOWLINGFJORD, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK], C.ZONES.ZULDRAK, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS], C.ZONES.THESTORMPEAKS, C.ZONES.BOREANTUNDRA);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.BOREANTUNDRA);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Grizzly Hills map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA], C.ZONES.BOREANTUNDRA, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD], C.ZONES.HOWLINGFJORD, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK], C.ZONES.ZULDRAK, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS], C.ZONES.THESTORMPEAKS, C.ZONES.GRIZZLYHILLS);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.GRIZZLYHILLS);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Howling Fjord map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS], C.ZONES.GRIZZLYHILLS, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA], C.ZONES.BOREANTUNDRA, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK], C.ZONES.ZULDRAK, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS], C.ZONES.THESTORMPEAKS, C.ZONES.HOWLINGFJORD);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.HOWLINGFJORD);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the ZulDrak map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS], C.ZONES.GRIZZLYHILLS, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD], C.ZONES.HOWLINGFJORD, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA], C.ZONES.BOREANTUNDRA, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS], C.ZONES.THESTORMPEAKS, C.ZONES.ZULDRAK);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.ZULDRAK);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Storm Peaks map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS], C.ZONES.GRIZZLYHILLS, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD], C.ZONES.HOWLINGFJORD, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK], C.ZONES.ZULDRAK, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA], C.ZONES.BOREANTUNDRA, C.ZONES.THESTORMPEAKS);
ns.utils.points.translate(ns.points[C.ZONES.CRYSTALSONGFOREST],  C.ZONES.CRYSTALSONGFOREST, C.ZONES.THESTORMPEAKS);
-- -------------------------------------------------------------------------------------------------------------------
-- Check if any points belong on the Crystalsong map
-- -------------------------------------------------------------------------------------------------------------------
ns.utils.points.translate(ns.points[C.ZONES.DRAGONBLIGHT], C.ZONES.DRAGONBLIGHT, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.ICECROWN], C.ZONES.ICECROWN, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.GRIZZLYHILLS], C.ZONES.GRIZZLYHILLS, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.HOWLINGFJORD], C.ZONES.HOWLINGFJORD, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.ZULDRAK], C.ZONES.ZULDRAK, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.BOREANTUNDRA], C.ZONES.BOREANTUNDRA, C.ZONES.CRYSTALSONGFOREST);
ns.utils.points.translate(ns.points[C.ZONES.THESTORMPEAKS],  C.ZONES.THESTORMPEAKS, C.ZONES.CRYSTALSONGFOREST);