---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global


local tyche_params = {
    godName = "Tyche",
    godType  = "GOD",
    SpawnLikeHermes  = false,
    Gender = "F",
    FlavorTextIds = { "TycheUpgrade_FlavorText01", "TycheUpgrade_FlavorText02", "TycheUpgrade_FlavorText03" },

    Traits = game.EnemyData.NPC_Athena_01.Traits,

    Color = { 255, 90, 140, 255 },
    LightingColor = { 250, 165, 190, 190 },
    LootColor = { 255, 90, 140, 180 },
}

local tyche_olympian_params = {
    godName = "Tyche",
    godType = "god",
    skipBoonSelectSymbol = false,
    boonSelectSymbolPath = "DET-DivineExpansion\\Tyche\\Tyche_Boon",
    iconSpinPath = "DET-DivineExpansion\\Tyche\\Tyche_Boon",
    previewPath = "DET-DivineExpansion\\Tyche\\Tyche_Boon",
    BoonDropIconScale = 1.0,
    colorA = { Red = 1.00, Green = 0.35, Blue = 0.55 },
    colorB = { Red = 0.35, Green = 0.87, Blue = 1.00 },
    colorC = { Red = 1.00, Green = 1.00, Blue = 1.00 },
    portraitData = {
        skipNeutralPortrait = false,
        NeutralPortraitFilePath = "DET-DivineExpansion\\Tyche\\Portrait_Tyche_Default_01",
        AnnoyedPortraitFilePath = "DET-DivineExpansion\\Tyche\\Portrait_Tyche_Default_01",
        SeriousPortraitFilePath = "DET-DivineExpansion\\Tyche\\Portrait_Tyche_Default_01",
    },
}

gods.InitializeGod(tyche_params)

gods.CreateOlympianSJSONData(tyche_olympian_params)

