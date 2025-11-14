-- Creating the boon functions itself
TycheAttackBoon = game.TraitData.TycheAttackBoon
game.TraitData.TycheAttackBoon = {
    InheritFrom = { "BaseTrait", "EarthBoon" },
    Elements = { "Earth" }, -- Need to add this even if you inherit,
    Name = "Tyche_Attack_Boon",
    BoonInfoTitle = "Tyche_Attack_",
    Icon = "Boon_Aphrodite_27",
    Slot = "Melee",
    TraitOrderingValueCache = 50,
  Cost = 30,
   BlockStacking = false,
  RarityLevels = {
     Common = {
            Multiplier = 1.00,
      },
       Rare = {
         Multiplier = 1.50,
      },
       Epic = {
           Multiplier = 2.00,
       },
      Heroic = {
           Multiplier = 2.50,
       },
		AddOutgoingDamageModifiers =
		{
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

local TycheTraitDictionary = {
	TycheAttackBoon = true,
}

game.ScreenData.BoonInfo.TraitDictionary.TycheUpgrade = TycheTraitDictionary

-- I had to comment this out to prevent errors during load. Not sure exactly how to do this part of the mod, I'm pretty sure that's why the traits aren't loading properly.
-- game.TraitData.TycheUpgrade = TycheTraitDictionary
-- game.LootData.TycheUpgrade.TraitIndex = TycheTraitDictionary

