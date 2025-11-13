-- Creating the boon functions itself
--game.TraitData.Tyche_Boon = {
    --InheritFrom = { "BaseTrait", "EarthBoon" },
    --Elements = { "Earth" }, -- Need to add this even if you inherit
    --Name = "Tyche_Attack_Boon",
    --BoonInfoTitle = "Tyche_Attack_",
   -- Icon = "Boon_Tyche_TycheWeaponBoon",
   -- Slot = "Melee",
   -- TraitOrderingValueCache = 50,
  --  Cost = 30,
  --  BlockStacking = false,
  --  RarityLevels = {
  --      Common = {
   --         Multiplier = 1.00,
   --     },
   --     Rare = {
   --         Multiplier = 1.50,
   --     },
   --     Epic = {
   --         Multiplier = 2.00,
    --    },
   --     Heroic = {
   --         Multiplier = 2.50,
   --     },

local TycheTraitDictionary = {
	SupportingFireBoon = true,
	CritBonusBoon = true,
	DashOmegaBuffBoon = true,
	HighHealthCritBoon = true,
	InsideCastCritBoon = true,
	OmegaCastVolleyBoon = true,
	TimedCritVulnerabilityBoon = true,
	-- New Boons
	ArtemisWeaponBoon = true,
	ArtemisSpecialBoon = true,
	ArtemisCriticalBoon = true,
	ArtemisArmourBoon = true,
}

game.ScreenData.BoonInfo.TraitDictionary.TycheUpgrade = ArtemisTraitDictionary
game.LootData.TycheUpgrade.TraitIndex = TycheTraitDictionary
