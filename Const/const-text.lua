local myname, ns = ...

if not ns.CONST       then ns.CONST       = {}; end;

local C         = ns.CONST;
local fmt       = string.format;
local meta      = GetAddOnMetadata;

-- Add zone information from const-zones.lua
C.ZONES         =
  { DALARAN      = 125,
  DRAGONBLIGHT = 115,
  BOREANTUNDRA = 114,
  ICECROWN     = 118,
  GRIZZLYHILLS = 116,
  HOWLINGFJORD = 117, 
  SHOLAZARBASIN= 119,
  THESTORMPEAKS= 120,
  ZULDRAK      = 121,
  };

C.ZONENAMES     = 
  { [125]    = "Dalaran City",
  [115]      = "Dragonblight",
  [114]      = "Borean Tundra",
  [118]      = "Icecrown",
  [116]      = "Grizzly Hills",
  [117]      = "Howling Fjord",
  [119]      = "Sholazar Basin",
  [120]      = "The Storm Peaks",
  [121]      = "Zul'Drak",
  };

C.ZONE          = C.ZONES.DALARAN;

C.APPNAME       = "WarcraftConquest Campaigns";
C.VERSION       = meta("HandyNotes_WarcraftConquest", "Version");
C.SLASH_WCONQUEST    = "/wconquest";
C.INDENT        = "     "; -- five spaces

C.WCONQUEST     = fmt("[%s%s|r]", C.COLOR.APP, C.APPNAME);
C.SLASH         = fmt("%s%s|r",   C.COLOR.ORANGE, C.SLASH_WCONQUEST);

C.HELP          = [==[[=Links and Info=]
SLASH [[link]] [Addon/WConquest/Twitter] - Copy/paste a web link
SLASH [[inv]] [Discord] - Copy/paste an invite code
SLASH [[config]] - Configure APPNAME ]==];

