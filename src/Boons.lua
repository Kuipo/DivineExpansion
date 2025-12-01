gods.CreateBoon({
	pluginGUID = _PLUGIN.guid,
	internalBoonName = "TycheWeaponBoon",  -- eg TycheWeaponBoon
	isLegendary = false,
    Elements = {"Air"},
    characterName = "Tyche",
	addToExistingGod = { boonPosition = 1 },
	--[[addToExistingGod = { boonPosition = 2 }, -- OR true // Allows you to insert traits into Olympains (Zeus etc) and Daedalus Hammers (characterName = Weapon) --- Chaos and Selene NOT supported ATM.]]
    --[[? Everything below is an Optional field]]

    -- "Melee" or "Secondary" or "Ranged" or "Rush" or "Mana", doesn't need to be passed if not a core boon.
    Slot = "Special", 
    BlockStacking = false, -- Can't be upgraded with poms
   -- refer to traits, or make your own from extra fields
    displayName = "Awesome!",
    description = "Awesome Description!",
    flavourText = "Legendary Flavour Text!",
    reusingBaseIcons = false, -- Optional, allows you to reuse icons in base game, you still need to pass in paths
    boonIconPath = "DET-DivineExpansion\\Tyche\\Tyche_Boon",
    RarityLevels = {
        Common = { Multiplier = 1.0 },
        Rare = { Multiplier = 1.5 },
        Epic = { Multiplier = 2.0 },
        Heroic = { Multiplier = 2.5 },
    },

    --[[
    This is basically where you do all your funky stuff that you want the boon to do, there are a -
        lot of fields you can look at by using existing traits, or even make your own new ones.
    ]]
	ExtraFields = { 
		AddOutgoingDamageModifiers = {
			ValidWeapons = WeaponSets.HeroPrimaryWeapons,
			ConditionalValidWeapon = 
			{
				TraitName = "TransformPrimaryTalent",
				WeaponName = "WeaponTransformAttack"
			},
			ProximityThreshold = 430,
			ProximityThresholdExclusionBoon = "AllCloseBoon",
			ProximityMultiplier = 
			{ 
				BaseValue = 5.0,
				SourceIsMultiplier = true,

				AbsoluteStackValues =
				{
					[1] = 1.25,
					[2] = 1.15,
					[3] = 1.10,
				},
			},
			ReportValues = 
			{ 
				ReportedWeaponMultiplier = "ProximityMultiplier",
			},
		},
		StatLines =
		{
			"NearbyDamageStatDisplay1",
		},
		ExtractValues =
		{
			{
					Key = "ReportedWeaponMultiplier",
					ExtractAs = "TooltipDamageBonus",
					Format = "PercentDelta",
			},
		},
		WeaponDataOverride = 
		{
			WeaponSuitCharged = 
			{
				BlockGraphic = "SuitDeflect_Aphrodite",
			}
		},
	}	
} 
   )
