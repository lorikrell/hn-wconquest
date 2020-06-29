local myname, ns = ...

if not ns.CONST       then ns.CONST       = {}; end;
if not ns.CONST.LINK  then ns.CONST.LINK  = {}; end;

local C         = ns.CONST;
local fmt       = string.format;
local meta      = GetAddOnMetadata;

local invite_base    = "https://worldofwarcraft.com/en-us/invite/%s?region=US&faction=Alliance";

C.LINK.City_Prefix  = "https://gamerchic.org/warcraft-conquest/addon.html";
C.LINK.City         = "";
C.LINK.City_URL     = "https://gamerchic.org/warcraft-conquest/warcraft-conquest.html";
C.LINK.City_Label   = "Warcraft Conquest Sites";
C.LINK.City_Help    = fmt("SLASH [[link Website]] - %s - [%s%s]", C.LINK.City_Label, C.LINK.City_Prefix, C.LINK.City);

C.LINK.Discord      = "/discord";
C.LINK.Discord_Code = "gsbdHE9";
C.LINK.Discord_URL  = "https://discord.gg/gsbdHE9/";
C.LINK.Discord_Label = "Warcraft Conquest Discord";
C.LINK.Discord_Help = fmt("SLASH [[invite discord]] - %s - [%s]", C.LINK.Discord_Label, C.LINK.Discord_Code);

C.LINK.RPSpots      = "/addon";
C.LINK.RPSpots_URL  = "https://wow.curseforge.com/projects/handynotes-warcraft-conquest";
C.LINK.RPSpots_Label = "HandyNotes: Warcraft Conquest";
C.LINK.RPSpots_Help = fmt("SLASH [[link Addon]] - %s - [%s%s]", C.LINK.RPSpots_Label, C.LINK.City_Prefix, C.LINK.RPSpots);

C.LINK.Twitter      = "/twitter";
C.LINK.Twitter_URL  = "http://twitter.com/lorioliodraws";
C.LINK.Twitter_Label = "Sonceri - Creator Twitter";
C.LINK.Twitter_Help = fmt("SLASH [[link Twitter]] - %s - [%s%s]", C.LINK.Twitter_Label, C.LINK.City_Prefix, C.LINK.Twitter);

C.LINK.Links = C.LINK.City_Help    .. "\n" ..
               C.LINK.RPSpots_Help .. "\n" .. 
               C.LINK.Twitter_Help;

C.LINK.Invites = C.LINK.Discord_Help; 

C.LINK.output_format =  [==[
[=Invite Codes=]
%s

[=Web Links=]
%s
]==];

C.LINK.Help = fmt(C.LINK.output_format, C.LINK.Invites, C.LINK.Links);

C.LINK.instruct_both = "\nCopy the code or URL field, then paste it into your web browser.";
C.LINK.instruct_code = "\nCopy the code, then paste it into the Join Community field.";
C.LINK.instruct_url  = "\nCopy the URL, then paste it into your web browser.";