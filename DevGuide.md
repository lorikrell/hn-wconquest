# Guide to Modifying this Addon

Created and maintained by Sonceri. This is not perfect or a pro developer guide. But it does track how to update and add content.
Preview this file with a markdown viewer for easier to read.

**Recommended Addons:** 

* TextureAtlasViewer (/tav) - Provides a quick way to find image options accessible by HandyNotes, searchable
* Coordinates addon - I recommend Coordinates by TomCat's Tours.

**Recommended Macro:** 

To make life easier, create a macro in WoW and add it to your bars to get the coords of your precise location. Here is the macro:

`/run z = C_Map.GetBestMapForUnit("player"); pos = C_Map.GetPlayerMapPosition(z,"player"); print(C_Map.GetMapInfo(z).name, math.ceil(pos.x*10000)/100, math.ceil(pos.y*10000)/100)`

When clicked, it will display coordinates and zone. For example: Dragonblight 46.34 69.49. This is important later.

## Add Map Icon

You will need to update the following files:

* *const\const-icons.lua* - Add the image here with a `point.name` and scale. This sets the icon as a point at the coordinates when you use `name = true,` in the entry.
* *utils\utils-points.lua* - Add entries to associate the `point.name` with a `show_XXXX` entry. This affects loading the icon in the minimap and main map. You can reuse the new icon name as a new show entry. For example: `point.alliance` is a marker, `show_alliance` has all alliance markers associated to it.
* *const\const-options.lua* - Add an entry for the new `show_XXXX` you added. You do not need to change this file if you associated the new icon to an existing show entry.

You also need an Atlas icon entry. Use square images as HandyNotes will force resize all images into a square shape.

To add a new map icon entry using an [Atlas image](#art-references):

1. Open *const\const-icons.lua*.
2. In the `-- Image constants.` section, add an entry with an icon name, atlas image name, and scale:
    `t.name    = atlas("atlas-file-name",   #.##);`
    For example:
    `t.neutral    = atlas("ShipMissionIcon-Bonus-Map",   3.00);`

    When you use the icon for an entry, you just enter `name = true,`. For example: `neutral = true,`

3. Save changes. 
4. Open *utils\utils-points.lua*.
5. Go to the `-- ADD ICON` comment in code.
6. Add an entry for your `t.name` with a point and a show. The point sets this as a location to show on the map. The show adds an option for a player to select in the addon to show those icons on the map! 

    Use the following format:

    `elseif point.name        and (ns.db.show_name  or custom)         then texture = t.name`

    This example adds the naval icon and associates it to show_event:

    `elseif point.naval        and (ns.db.show_event  or custom)         then texture = t.naval`

7. Go to the `-- SHOWING ICONS` comment in code. Time to show the icon! 
8. Add an entry using the following format:

    `if ns.db.show_name   and point.name   then show = true; end;`

    For example, a naval icon location loads if `show_event` (player has this selected as showing) and `point.naval`  are true. 

    `if ns.db.show_event   and point.naval   then show = true; end;`

9. In the `if ns.db.show_misc` lines, add an entry to not show it as part of `misc`. For example: `and not point.naval`.
10. Save changes.

If you added a new show entry, like adding an option for players to display a set of icons for Fortifications, then also do the following:

1. Open *const\const-options.lua*.
2. In the `-- default value table` section, set the default behavior for the `show_name` entry you created. If true, it will display on maps as default. For example: `show_event = true,` will display all icons associated with events.
3. In the `-- Locations to show ` section, add an entry for the UI option to display your group. Here is an example for events:

    `show_event    = { type = "toggle", name = "Events",   order = 427, desc = "Show event locations for campaigns",  },`

    Make sure to update the order, which controls where it displays in the Addon window in WoW. Players will see a selector using the `name` and `desc`.

4. Save changes.

## Add a Map Marker

Time to do the FUN stuff! Adding entries is so much fun! You will edit files saved in the *data* folder. For this example, I am using the *data-northrend.lua* file. You can add more, but that will require more additions and code updates (see [Add New Map File](#add-new-map-file)).

1. Come up with a location, or find one that already exists in game! For this example, I am adding an event entry.
2. Log in to WoW and roam to a place you want to use. I head to the Carrion Fields of Dragonblight. There is a ruined keep with a horrid abomination inside. Great place to hold an event!
3. Come up with event specifics: name, number of people attending, date/time, etc. 
4. Click the coordinates macro. I get 85.66 47.35. Time to add the event.
5. Scroll to Dragonblight section of code, under the Events group. You want to add the following content:

    * 8 digit coordinates - Location to display the icon on the map
    * label - Name of the event
    * icon for event - Add an event icon as true
    * npc - Name(s) of the Dungeon Master
    * eventtype - What the event is
    * attendee - Number size for the event
    * schedule - Date and time
    * text - Description for the event
    * phasing - Any phasing they need to know about
    * aevent / hevent / nevent - Indicates the faction and adds a color to the DM name

6. I start with coords. Just enter the numbers across as shown when using the macro: 85.66 47.35 becomes `[85664735]`. It's a battle event (so add `battle = true`), run by Sonceri, in game. Some horror will be involved, so let's warn players. 

    ```
    [85664735] = { label = "Culling of Carrion",     battle = true, npc = "Sonceri, Horde", text = "Within the hollows of Carrion Fields, a fetid lord and its spies watch too closely. End their forces and learn what you can of their plans.", eventtype = "Battle, scouting, and horror", attendee = 10, schedule = "Monday, Sept 7th, 8pm", },
    ```

7. If I want to change the icon, I can add a different one by adding an atlas and scale to the entry. But to keep things easy for players, not doing that.

Here are a few examples!

```
[48787824] = { label = "Risen Kraken of Moa'ki",    naval = true, npc = "Vehicle Battle Team", text = "(Example) Coalition forces seek landfall in the bay, facing off with risen dead and krakens.", eventtype = "Vehicle battle, Discord", attendee = 15, schedule = "Monday, Sept 7th, 8pm", nevent= true,},

[85664735] = { label = "Culling of Carrion",        battle = true, npc = "Sellony", text = "(Example) Within the hollows of Carrion Fields, a fetid lord and its spies watch too closely. End their forces and learn what you can of their plans.", eventtype = "Battle, scouting", attendee = 10, schedule = "Tuesday, Sept 8th, 8pm", aevent = true, },

[55853751] = { label = "Frost Wyrm Flights",        battle = true, npc = "Sonceri", text = "(Example) For the coming battles, we need stronger forces. Rally and collect the bones of dragons, and protect the necromancers to raise a legion of flights!", eventtype = "Battle, supplies, escort", attendee = 20, schedule = "Wednesday, Sept 9th, 8pm", hevent = true, },
```

## Add New Map File

Files affected:

* *data\load_data.xml* - Add the new file to this one to load
* *const\const-zones.lua* - Add new zone names and numbers. See https://wow.gamepedia.com/UiMapID for ids.
* *const\const-text.lua* - Add zone info from const-zones.lua here

To add a new file for a Continent:

1. Create a new file in the *data* folder. For example: *data-pandaria.lua*.
2. You can copy and paste the content from the *data-northrend.lua* file and just edit that content. Each section of entries will be grouped by zone. You will need to edit the logic at the end for the new zones, or if adding a zone. Add entries later.
3. Open *data\load_data.xml* and add the file to be loaded. Save changes.
4. Open *data\const-zones.lua* and add the zone IDs for the new locations. See https://wow.gamepedia.com/UiMapID for ids and review the file for examples. Save changes.
5. Open *const\const-text.lua* and copy/paste the zone changes in this file from *const-zones.lua*. Save changes.

More coming soon!

## Art References

These are a few images to consider using if not using the set icons in const-icons.lua. To use these, add the following code per entry: `atlas = "atlas-code", scale 2.00,`  You may want to verify the scaling size and change as needed to view in game.

Adding custom images coming soon!

### Atlas buildings
Alternate looks, search TIER in /tav for the artist rendering of garrison buildings. 

Garrison look:

| Description | Atlas Code |
| :-- | :-- |
| neutral ship | Ships_EnemyDreadnaughtA-Portrait , Ships_TroopTransport-Portrait |
| neutral tower | GarrBuilding_MageTower_2_A_Info |
| cabin |GarrBuilding_TradingPost_2_A_Info , GarrBuilding_TradingPost_3_A_Info |
| mine entrance | GarrBuilding_Mine_1_A_Info |
| horde supplies | GarrBuilding_PetStable_1_H_Info |
| horde engineering |GarrBuilding_Workshop_2_H_Info , GarrBuilding_Workshop_3_H_Info |
| horde base | GarrBuilding_TownHall_3_H_Info |
| alliance engineering | GarrBuilding_Workshop_1_A_Info |
| alliance supplies | GarrBuilding_TradingPost_1_A_Info |
| alliance town hall | GarrBuilding_TownHall_2_A_Info |

### Faction Markers

| Description | Atlas Code |
| :-- | :-- |
| horde standing banner | LegionMissionIcon-ZoneSupportHorde-Map |
| horde emblem large | QuestPortraitIcon-Horde |
| horde emblem large crossed swords | HordeEmblem |
| alliance emblem large | QuestPortraitIcon-Alliance |
| alliance emblem large | AllianceEmblem |
| alliance flags | nameplates-icon-flag-alliance , tournamentarena-flag-large-blue |
| horde flags | nameplates-icon-flag-horde ,  tournamentarena-flag-large-red |
| white flag | nameplates-icon-flag-neutral |
| tiny alliance | poi-alliance |
| tiny alliance unit sizes | Warfront-AllianceWave1 , Warfront-AllianceWave2 , Warfront-AllianceWave3 |
| tiny horde | poi-horde |
| tiny horde unit sizes | Warfront-HordeWave1 , Warfront-HordeWave2 , Warfront-HordeWave3 |
| horde alliance crossed flags | CrossedFlags |
| neutral star | ShipMissionIcon-Bonus-Map |
| wax seal | Quest-Alliance-WaxSeal, Quest-Horde-WaxSeal |

### Event Markers

| Description | Atlas Code sm | Atlas Code lg |
| :-- | :-- | :-- |
| naval | ShipMissionIcon-Training-MapBadge |
| land battle | ShipMissionIcon-Combat-MapBadge | Mobile-CombatBadgeIcon |
| stealth | | GarrMission_ClassIcon-Rogue-Subtlety | 
| supplies | ShipMissionIcon-Treasure-MapBadge  | Mobile-TreasureIcon |
| horde | ShipMissionIcon-SiegeH-MapBadge |
| alliance | ShipMissionIcon-SiegeA-MapBadge |
| neutral | ShipMissionIcon-Bonus-MapBadge | Mobile-BonusIcon |
| objective | | Mobile-QuestIcon |
| medic | UI-Frame-HealerIcon | Mobile-FirstAid |
| travel | hud-microbutton-Mounts-Up | |
| research, report | minortalents-icon-book | adventureguide-icon-whatsnew |
| leadership | StoryHeader-CheevoIcon | | 
| scouting | None communities-icon-searchmagnifyingglass | GarrMission_MissionIcon-Patrol|


### Location Markers

| Description | Atlas Code |
| :-- | :-- |
| quest ! on shield | QuestPortraitIcon-SandboxQuest |
| crate | GarrMission_CurrencyIcon-Material |
| tri pointed marker gold | FlightMaster_Argus-TaxiNode_Neutral |
| blue small pvp banner | Warfronts-FieldMapIcons-Alliance-Banner-Minimap  |
| red small pvp banner | Warfronts-FieldMapIcons-Horde-Banner-Minimap |
| yellow small pvp banner | Warfronts-FieldMapIcons-Neutral-Banner-Minimap |
| tiny house | poi-town |
| numbered | Garr_LevelBadge_1 , Garr_LevelBadge_2 , Garr_LevelBadge_3 |
| red axes | GarrLanding-MinimapIcon-Horde-Up |
| blue swords | GarrLanding-MinimapIcon-Alliance-Up |
| demon portal | legioninvasion-map-icon-portal , legioninvasion-map-icon-portal-large |
| mining  | worldquest-icon-mining  Mobile-Mining |
| alchemy  | worldquest-icon-alchemy Mobile-Alchemy |
| herbs  | worldquest-icon-herbalism Mobile-Herbalism |
| lumber  |  |
| fuel  | ShipMission_CurrencyIcon-Oil ShipMissionIcon-Oil-Mission |
| boxes  | GarrMission_CurrencyIcon-Material |
| blacksmithing  | GarrMission_MissionIcon-Blacksmithing Mobile-Blacksmithing |
| engineering  | Mobile-Enginnering |
| skinning |  Mobile-Skinning |
| digging |  Mobile-Archeology |
| danger | services-icon-warning |
| x marks spot | Islands-MarkedArea |
| red dot | PlayerEnemy |
| blue dot | PartyMember |
| trap | Vehicle-Trap-Gold |

### Event Vehicle Markers

| Description | Atlas Code |
| :-- | :-- |
| cart | Vehicle-HordeCart ,  Vehicle-AllianceCart |
| airship | Vehicle-Air-Alliance , Vehicle-Air-Horde |
| wagon | Vehicle-Carriage |
| ziggeraut | map-icon-deathknightclasshall |
| catapult/cannon/other | Vehicle-Air-Occupied Vehicle-Ground-Occupied | 

### Villain Markers

| Description | Atlas Code |
| :-- | :-- |
| dragon | nameplates-icon-elite-gold , nameplates-icon-elite-silver |
| small red skull | Warfront-HordeHero  DK-Blood-Rune-Ready |
| small purple skull | nazjatar-nagaevent |
| purple eyed fanged skull | islands-queue-difficultyselector-3 | 
| boss skull | BossBanner-SkullCircle  |
| red eyed skull crossbones | islands-queue-difficultyselector-2  |
| small blue skull | Warfront-AllianceHero DK-Frost-Rune-Ready |
| small white skull | Islands-AzeriteBoss |
| small green skull | DK-Blood-Rune-Ready |
| small black skull | DK-Rune-CD |
| skull star | VignetteKillElite |

### Effects Markers
See the Artifacts list in /tav, search runes

| Description | Atlas Code |
| :-- | :-- |
| arcane purple | Relic-Arcane-TraitBG Relic-Arcane-TraitGlow |
| shadow purple | Relic-Shadow-TraitBG Relic-Shadow-TraitGlow |
| fel green | Relic-Fel-TraitGlow Relic-Fel-TraitBG |
| frost | Relic-Frost-TraitBG Relic-Frost-TraitGlow |
| holy | Relic-Holy-TraitGlow Relic-Holy-TraitBG |
| life green | Relic-Life-TraitGlow Relic-Life-TraitBG |
| water | Relic-Water-TraitGlow Relic-Water-TraitBG |
| blood | Relic-Blood-TraitBG Relic-Blood-TraitGlow |
| fire | Relic-Fire-TraitGlow Relic-Fire-TraitBG |
| metal | Relic-Iron-TraitGlow Relic-Iron-TraitBG |
| BIG gold arcane circle | Artifacts-CrestRune-Gold |
| purple whirls | ArtifactsFX-Whirls-Purple , ArtifactsFX-SpinningGlowys-Purple |
| gold whirls | ArtifactsFX-Whirls-Neutral |
| pale gold runes | Rune-01-neutral to Rune-06-neutral |
| purple runes | Rune-01-purple  to Rune-06-purple |
| shadow runes | Rune-01-dark to Rune-11-dark |
| gold runes | Rune-01-light to Rune-11-light |
| gold blade | Lightlink-active|
| purple blade | Darklink-active |
| blue glow marks | ChallengeMode-Runes-T-Glow , ChallengeMode-Runes-BL-Glow , ChallengeMode-Runes-BR-Glow , ChallengeMode-Runes-R-Glow , ChallengeMode-Runes-L-Glow |
| blue rune circle | ChallengeMode-Runes-GlowSmall |
| blue circle | ChallengeMode-Runes-InnerCircleGlow |
| blue rune | heartofazeroth-slot-minor-unactivated-rune |
