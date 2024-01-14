if CLIENT then
    killicon.Add( "tfa_kf2_dual_9mm", "vgui/hud/tfa_kf2_dual_9mm", Color( 225, 46, 46, 255 ) )
end 

SWEP.Base				= "tfa_kf2_akimbo_base"
SWEP.Author				= "Jade, CommonProp, Global" --Author Tooltip
SWEP.Category			= "TFA Killing Floor 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.SubCategory        = "Off-Perk" -- Spawnmenu subcategory.
SWEP.Description        = "This is a pair of standard 9mm pistols."
SWEP.Type				= "Pistol"
SWEP.Purpose			= "Fire mode is semi-auto only." --Purpose Tooltip
SWEP.PrintName			= "Dual 9mm Pistols"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 1				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.Spawnable			= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.

SWEP.MuzzleFlashEffect          = "kf2_muzzle_pistol"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_KF2.9MM.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.EchoFire = Sound("TFA_KF2.9MM.EchoFire") -- This is the distant sound of the weapon, when you shoot. Yeah.
SWEP.Primary.PenetrationMultiplier = 10 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = (engine.ActiveGamemode() == "zombiesurvival" and 39) or 25 -- Damage, in standard damage points.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 500 -- This is in Rounds Per Minute / RPM

-- Selective Fire Stuff
SWEP.FireModes = {"Semi"}
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?

--Ammo Related
SWEP.Primary.ClipSize = 30 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 5 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot

--Recoil Related
SWEP.Primary.KickUp = 0.34 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.1 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.2 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .3 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related
SWEP.Primary.Spread = .015 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = SWEP.Primary.Spread / 3 -- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.65 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4.9 --How much the spread recovers, per second. Example val: 3

--Misc
SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.8 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

--Bash
SWEP.Secondary.BashLength = 45
SWEP.Secondary.BashEnd = 0.97
SWEP.Secondary.BashDamage = 20
SWEP.Secondary.BashDelay = 0.28

--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/tfa_kf2/9mm/c_kf2_dual_9mm.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 80			-- This controls how big the viewmodel looks.  Less is more.
SWEP.IronViewModelFOV	    = 75		-- This controls how big the viewmodel looks.  Less is more.
SWEP.VMPos = Vector(0, 1.97, -1.97) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CrouchPos = Vector(0, 1.97, -1.97) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.CrouchAng = Vector(0, 0, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point

SWEP.HolsterSound = Sound("TFA_KF2.G18.Holster")

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_kf2/9mm/w_kf2_dual_9mm.mdl" --Wmodel path
SWEP.HoldType = "duel" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(0, 1.97, -1.97)
SWEP.RunSightsAng = Vector(0, 0, 0)
SWEP.SafetyPos = Vector(0, 1.97, -1.97)
SWEP.SafetyAng = Vector(-10.143, 10.809, 0)

--[[IRONSIGHTS]]--
SWEP.Secondary.IronFOV = 77 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(0, -1.18, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)

--[[INSPECTION]]--
SWEP.InspectPos = Vector(0, -9, -7)
SWEP.InspectAng = Vector(60, 0, 0)

--Shell eject override
SWEP.MagModel = Model("models/weapons/tfa_kf2/9mm/9mm_mag.mdl")
SWEP.ShellModel = "models/weapons/tfa_kf2/shared/9mm_shell.mdl"

--[[ATTACHMENTS]]--
SWEP.Attachments = {
	[1] = { atts = { "skill_shared_tacticalreload" }, order = 1 },
	[2] = { atts = { "skill_akimbo_sighttoggle" }, order = 1 },
}

--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0.01, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.06, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.Deploy")},
	},
	[ACT_VM_RELOAD] = {
		{time = 0.01, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.1, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.51, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.2, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.6, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 1.77, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2.2, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2.5, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 2.6, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 3, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	[ACT_VM_RELOAD_EMPTY] = { 
		{time = 0.1, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.18, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(1) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.38, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1.07, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.5, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.65, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 2.3, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 2.7, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
	},
	["Bash"] = {
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.24, type = "sound", value = Sound("TFA_KF2.Generic.Bash")},
	},
	["Bash_Empty"] = {
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.24, type = "sound", value = Sound("TFA_KF2.Generic.Bash")},
	},
	["Reload_Half_Elite"] = {
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.085, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.23, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.31, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.8, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 0.9, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.2, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 1.5, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1.9, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 2, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 2.6, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Reload_Empty_Half"] = {
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.09, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.1, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.48, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.88, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.06, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.56, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 2.08, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 2.1, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2.5, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2.62, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 2.88, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
	},
	["Reload_Empty_Half_Elite"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.08, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.3, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.6, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 1.47, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1.5, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 2.3, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 2.4, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 2.5, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 2.7, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Reload_Empty_Elite"] = {
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.24, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.34, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.35, type = "lua", value = function(wep,vm) wep:KF2DropMag(1) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.66, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.73, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.89, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 0.9, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 1.05, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 1.8, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 2, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v1"] = {
		{time = 0.03, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.68, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.4, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
	},
	["Guncheck_v2"] = {
		{time = 0.03, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.31, type = "sound", value = Sound("TFA_KF2.9MM.SlideBack")},
		{time = 0.7, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 1.4, type = "sound", value = Sound("TFA_KF2.9MM.SlideBack")},
		{time = 1.66, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 2, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v3"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.63, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
	["Guncheck_v3"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.63, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
	},
}

SWEP.StatusLengthOverride = {
	["Reload_Half"] = 2.7,
	["Reload_Half_Elite"] = 2.2,
	["Reload_Empty_Half"] = 3,
	["Reload_Empty_Half_Elite"] = 2.65,
	["Reload_Empty"] = 1.87,
	["Reload_Empty_Elite"] = 1,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW] = 0.5,
	[ACT_VM_DRAW_EMPTY] = 0.5,
	["Reload_Half"] = 3.09,
	["Reload_Half_Elite"] = 2.41,
	["Reload_Empty_Half"] = 3.41,
	["Reload_Empty_Half_Elite"] = 3.01,
	["Reload_Empty"] = 3.09,
	["Reload_Empty_Elite"] = 2.25,
}

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_In", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_In",
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_Loop", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_Loop",
		["is_idle"] = true
	}, -- looping animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Sprint_Out", -- Number for act, String/Number for sequence
		["value_empty"] = "Sprint_Out",
		["transition"] = true
	} -- Outward transition
}

SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
		["value"] = ACT_DOD_PRIMARYATTACK_PRONE_DEPLOYED_RIFLE, -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Idle_Iron", -- Number for act, String/Number for sequence
		["value_empty"] = "Idle_Iron",
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
		["value"] = ACT_DOD_PRIMARYATTACK_PRONE_RIFLE, -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Outward transition
}

SWEP.AkimboShootAnimation = {
	["left"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "Shoot_LW", -- Number for act, String/Number for sequence
	 	["value_empty"] = "Shoot_LW_Last", -- Number for act, String/Number for sequence
	 }, 
	["left_is"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "Shoot_Iron_LW", -- Number for act, String/Number for sequence
	 	["value_empty"] = "Shoot_Iron_LW_Last", -- Number for act, String/Number for sequence
	 },
	["right"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "Shoot_RW", -- Number for act, String/Number for sequence
	 	["value_empty"] = "Shoot_RW_Last", -- Number for act, String/Number for sequence
	 }, 
	["right_is"] = {
	 	["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
	 	["value"] = ACT_DOD_PRIMARYATTACK_C96, -- Number for act, String/Number for sequence
	 	["value_empty"] = ACT_DOD_PRIMARYATTACK_PRONE_C96, -- Number for act, String/Number for sequence
	 }, 	 
	["left_isog"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "Shoot_IronOG_LW", -- Number for act, String/Number for sequence
	 	["value_empty"] = "Shoot_IronOG_LW_Last", -- Number for act, String/Number for sequence
	 }, 
	["right_isog"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, -- Sequence or act
	 	["value"] = ACT_DOD_PRIMARYATTACK_PISTOL, -- Number for act, String/Number for sequence
	 	["value_empty"] = ACT_DOD_PRIMARYATTACK_PRONE_PISTOL, -- Number for act, String/Number for sequence
	}, 
}

SWEP.ReloadAnimation = {
	["half"] = {
	 	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	 	["value"] = "Reload_Half", -- Number for act, String/Number for sequence
	 	["value_elite"] = "Reload_Half_Elite", -- Number for act, String/Number for sequence
	 }, 
	["empty_half"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Reload_Empty_Half", -- Number for act, String/Number for sequence,
		["value_elite"] = "Reload_Empty_Half_Elite", -- Number for act, String/Number for sequence,
	}, 
	["empty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Reload_Empty", -- Number for act, String/Number for sequence
		["value_elite"] = "Reload_Empty_Elite", -- Number for act, String/Number for sequence
	}, 
}

SWEP.WalkAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "Walk", -- Number for act, String/Number for sequence
		["value_empty"] = "Walk",
		["is_idle"] = true
	} -- looping animation
}

SWEP.Akimbo = true
SWEP.Akimbo_Inverted = true
SWEP.AnimCycle = 1

DEFINE_BASECLASS(SWEP.Base)