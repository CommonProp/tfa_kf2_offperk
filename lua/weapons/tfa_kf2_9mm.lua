if CLIENT then
    killicon.Add( "tfa_kf2_9mm", "vgui/hud/tfa_kf2_9mm", Color( 225, 46, 46, 255 ) )
end 

SWEP.Base				= "tfa_kf2_base"
SWEP.Author				= "Jade, CommonProp, Global" --Author Tooltip
SWEP.Category			= "TFA Killing Floor 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.SubCategory        = "Off-Perk" -- Spawnmenu subcategory.
SWEP.Description        = "This is the standard 9mm pistol. Simple and cheap (very cheap, frankly, to you), it is the basic sidearm for all Horzine operatives."
SWEP.Type				= "Pistol"
SWEP.Purpose			= "Fire mode is semi-auto only." --Purpose Tooltip
SWEP.PrintName			= "9mm Pistol"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 1				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.Spawnable			= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
 
SWEP.MuzzleFlashEffect          = "kf2_muzzle_pistol"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("TFA_KF2.9MM.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.EchoFire = Sound("TFA_KF2.9MM.EchoFireB") -- This is the distant sound of the weapon, when you shoot. Yeah.
SWEP.Primary.PenetrationMultiplier = 10 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = (engine.ActiveGamemode() == "zombiesurvival" and 39) or 25 -- Damage, in standard damage points.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 300 -- This is in Rounds Per Minute / RPM

-- Selective Fire Stuff
SWEP.FireModes = {"Semi"}
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?

--Ammo Related
SWEP.Primary.ClipSize = 15 -- This is the size of a clip
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 5 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot

--Recoil Related
SWEP.Primary.KickUp = 0.27 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.1 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.2 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .3 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related
SWEP.Primary.Spread = .009 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
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
SWEP.ViewModel			= "models/weapons/tfa_kf2/9mm/c_kf2_9mm.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 80			-- This controls how big the viewmodel looks.  Less is more.
SWEP.IronViewModelFOV	    = 75		-- This controls how big the viewmodel looks.  Less is more.
SWEP.VMPos = Vector(4.72, 4.72, -2.36) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.CrouchPos = Vector(4.72, 4.72, -2.36) -- Defaults to nothing, use Vector(0, 0, 0) as starting point
SWEP.CrouchAng = Vector(0, 0, 0) -- Defaults to nothing, use Vector(0, 0, 0) as starting point

SWEP.ViewModelBoneMods = {
	["valvebiped.bip01_l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(2.395, 3.983, -0.885), angle = Angle(0, -18.674, 0) }
}

SWEP.HolsterSound = Sound("TFA_KF2.G18.Holster")

--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/tfa_kf2/9mm/w_kf2_9mm.mdl" --Wmodel path
SWEP.HoldType = "pistol" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(4.72, 4.72, -2.36)
SWEP.RunSightsAng = Vector(0, 0, 0)
SWEP.SafetyPos = Vector(4.72, 4.72, -2.36)
SWEP.SafetyAng = Vector(-10.143, 10.809, 0)

--[[IRONSIGHTS]]--
SWEP.Secondary.IronFOV = 77 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(0, 3.94, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)

--[[INSPECTION]]--
SWEP.InspectPos = Vector(7.811, -0.977, -2.481)
SWEP.InspectAng = Vector(15.036, 32.743, 4.546)

--Shell eject override
SWEP.MagModel = Model("models/weapons/tfa_kf2/9mm/9mm_mag.mdl")
SWEP.ShellModel = "models/weapons/tfa_kf2/shared/9mm_shell.mdl"
SWEP.ShellScale = 1.2

--[[ATTACHMENTS]]--
SWEP.Attachments = {
	[1] = { atts = { "skill_shared_tacticalreload" }, order = 1 },
}

--[[EVENT TABLE]]--
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0.01, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.06, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.Deploy")},
	},
	[ACT_VM_RELOAD] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.44, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.47, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1.79, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 0.07, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.3, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.6, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.9, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.39, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 1.6, type = "sound", value = Sound("TFA_KF2.9MM.SlideBack")},
		{time = 1.68, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 1.76, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
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
		{time = 0.03, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.24, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.6, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 0.7, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.11, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Reload_Empty_Elite"] = {
		{time = 0.01, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.4, type = "lua", value = function(wep,vm) wep:KF2DropMag(0) end, client = true, server = true }, -- 0 for right hand, 1 for left hand
		{time = 0.41, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.5, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 0.6, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
	},
	["Guncheck_v1"] = {
		{time = 0.04, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.2, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 1, type = "sound", value = Sound("TFA_KF2.9MM.MagInA")},
		{time = 1.3, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.53, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Guncheck_v2"] = {
		{time = 0.03, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.27, type = "sound", value = Sound("TFA_KF2.9MM.SlideBack")},
		{time = 0.69, type = "sound", value = Sound("TFA_KF2.9MM.SlideForward")},
		{time = 0.9, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Guncheck_v3"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.31, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.7, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Guncheck_v4"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.46, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.88, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.19, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Guncheck_v3_Empty"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.31, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 0.7, type = "sound", value = Sound("TFA_KF2.9MM.Rustle")},
		{time = 1.1, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
	["Guncheck_v4_Empty"] = {
		{time = 0.02, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
		{time = 0.46, type = "sound", value = Sound("TFA_KF2.9MM.MagOut")},
		{time = 0.88, type = "sound", value = Sound("TFA_KF2.9MM.MagInB")},
		{time = 1.19, type = "sound", value = Sound("TFA_KF2.Generic.ClothDefault")},
	},
}

SWEP.StatusLengthOverride = {
	["Reload_Half"] = 1.3,
	["Reload_Half_Elite"] = 0.95,
	["Reload_Empty"] = 1.87,
	["Reload_Empty_Elite"] = 1.2,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW] = 0.5,
	[ACT_VM_DRAW_EMPTY] = 0.5,
	["Reload_Half"] = 2.17,
	["Reload_Half_Elite"] = 1.53,
	["Reload_Empty"] = 2.13,
	["Reload_Empty_Elite"] = 1.23,
}

DEFINE_BASECLASS(SWEP.Base)