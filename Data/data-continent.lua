local myname, ns = ...

local C = ns.CONST;
local arrow = ns.textures.arrow;

if not ns.points then ns.points = {} end;
-- -------------------------------------------------------------------------------------------------------------------

ns.points[C.ZONES.NORTHREND] = { -- Northrend continent

  [50505240] = { label = "WC - In Death's Shadow",       wclogo = true, campaigntype = "In Death's Shadow", text = "Forces seek and make landfall in Dragonblight to set up camp and press back the Scourge.",  },
  [26105990] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Borean Tundra.",  },
  [68204370] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Zul'Drak.",  },
  [39603340] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Onward into Icecrown, forces war towards Icecrown Citadel to end the risen!",  },
  [71005500] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Grizzly Hills.",  },
  [75007200] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Howling Fjord.",  },
  [54002600] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Storm Peaks.",  },
  [30004100] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Sholazar Basin.",  },
  [52004200] = { label = "WC - In Death's Shadow",       campaign = true, campaigntype = "In Death's Shadow", text = "Forces answer the call for aid, tracking and ending the Scourge in Crystalsong Forest.",  },
};

-- -------------------------------------------------------------------------------------------------------------------
-- Make Indices
-- -------------------------------------------------------------------------------------------------------------------
if not ns.index then ns.index = {} end;
ns.index[C.ZONES.NORTHREND] = ns.utils.points.index(ns.points[C.ZONES.NORTHREND]);