local myname, ns = ...

if not ns.textures      then ns.textures      = {}; end;
if not ns.textures.ship then ns.textures.ship = {}; end;
if not ns.textures.misc then ns.textures.misc = {}; end;

local     t = ns.textures;
local atlas = ns.utils.textures.atlas;

-- Image constants. To locate names for new images, see https://www.townlong-yak.com/framexml/live/Helix/AtlasInfo.lua or use the addon TextureAtlasViewer
t.spoilers      = atlas("ShipMissionIcon-Legendary-Map",                  2.50);
t.landmark      = atlas("Warfronts-FieldMapIcons-Neutral-Banner-Minimap", 1.50);
t.ship.LARGE    = atlas("Ships_DreadnaughtA-Map",                         4.00);
t.ship.MEDIUM   = atlas("Ships_Dreadnaught-Map",                          3.00);
t.ship.SMALL    = atlas("Ships_GalleonA-Map",                             2.75);
t.ship.WRECK    = atlas("MantidTowerDestroyed",                           2.00);
t.ship.SAILBOAT = atlas("Ships_TroopTransport-Map",                       2.00);
t.ship.BOAT     = atlas("FlightMasterFerry",                              1.60);
t.ship.LANDING  = atlas("ShipMissionIcon-SiegeA-Map",                     2.00);
t.allianceair   = atlas("Vehicle-Air-Alliance",                           2.00);
t.hordeair      = atlas("Vehicle-Air-Horde",                              2.00);
t.official      = atlas("ShipMissionIcon-Training-Map",                   1.85);
t.academy       = atlas("Profession",                                     1.65);
t.shop          = atlas("poi-town",                                       1.25);
t.alliance      = atlas("ShipMissionIcon-SiegeA-Map",                     2.00);
t.closed        = atlas("PlayerNeutral",                                  1.75);
t.default       = atlas("PlayerFriend",                                   1.75);
t.astronghold   = atlas("GarrBuilding_Barracks_2_A_Info",                 4.00);
t.hstronghold   = atlas("GarrBuilding_Barracks_3_H_Info",                 4.00);
t.ainn          = atlas("GarrBuilding_Inn_3_A_Info",                      3.10);
t.hinn          = atlas("GarrBuilding_Inn_2_H_Info",                      3.10);
t.roundtent     = atlas("GarrBuilding_MageTower_1_A_Info",                3.00);
t.tower         = atlas("GarrBuilding_MageTower_3_A_Info",                3.00);
t.hmagic        = atlas("GarrBuilding_Jewelcrafting_3_A_Info",            3.00);
t.horde         = atlas("ShipMissionIcon-SiegeH-Map",                     2.00);
t.camp          = atlas("GarrBuilding_Inn_1_A_Info",                      3.00);
t.skull         = atlas("nazjatar-nagaevent",                             2.50);
t.neutral       = atlas("ShipMissionIcon-Bonus-Map",                      3.00);
t.nstronghold   = atlas("GarrBuilding_Armory_1_A_Info",                   3.50);
--t.ziggeraut     = atlas("map-icon-deathknightclasshall",                  3.50);
t.boss          = atlas("BossBanner-SkullCircle",                         2.00);
t.supplies      = atlas("GarrMission_CurrencyIcon-Material",              1.50);
t.medic         = atlas("groupfinder-icon-role-large-heal",               1.30);
t.leader        = atlas("StoryHeader-CheevoIcon",                         1.30);
t.docks          = atlas("ShipMissionIcon-Training-Map",                  2.00);
t.alcohol       = atlas("Innkeeper",                                      2.00);
t.food          = atlas("Food",                                           1.50);
t.event         = atlas("QuestPortraitIcon-SandboxQuest",                 2.00);
-- t.battle        = atlas("ShipMissionIcon-Combat-MapBadge",                2.00);
-- t.naval         = atlas("ShipMissionIcon-Training-MapBadge",              2.00);

t.arrow         = 
  { up          = "poi-door-up",
    down        = "poi-door-down",
    left        = "poi-door-left",
    right       = "poi-door-right",
    scale       = 1.30, };

-- --------------------------------------------------------------------------------------------------------
-- Add custom images
-- Saves .tga targa files to ART folder.
-- Add line like below. DO NOT ADD t. to the icon name!
-- --------------------------------------------------------------------------------------------------------

tank = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\vehicle.tga", scale = 3.50,};
naval = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\naval.tga", scale = 3.50,};
battle = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\battle.tga", scale = 3.50,};
report = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\report.tga", scale = 3.50,};
horror = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\horror.tga", scale = 3.50,};
magic = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\magic.tga", scale = 3.50,};
medic = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\medic.tga", scale = 3.50,};
stealth = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\stealth.tga", scale = 3.50,};
ziggeraut = { icon = "Interface\\AddOns\\HandyNotes_WarcraftConquest\\Art\\v-ziggeraut.tga", scale = 4.25};

-- Currently ICONs not used:
-- Innkeeper
-- t.landmark      = atlas("collections-icon-favorites",         2.20);
-- t.basement      = atlas("poi-door-down",                                  1.35);
-- t.hostile       = atlas("PlayerEnemy",                                    1.75);
-- t.bed           = atlas("Vehicle-SilvershardMines-MineCart",              1.70);
-- t.npc           = atlas("groupfinder-waitdot",                            1.10);
-- t.arrow         = 
--   { up          = "NPE_ArrowUpGlow", 
--     down        = "NPE_ArrowDownGlow", 
--     left        = "NPE_ArrowLeftGlow",
--     right       = "NPE_ArrowRightGlow",
--     scale       = 1.30, };
