---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

local textLineSets = {
	TycheChat01 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				Path = { "GameState", "GamePhase" },
				Comparison = "==",
				Value = 1,
			},
		},
		{ Cue = "/VO/Artemis_0010", UseEventEndSound = true, Text = "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." },
	},
    TycheChat02 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "G" },
			},
		},
		{ Cue = "/VO/Artemis_0011", UseEventEndSound = true, Text = "Ut enim ad minim veniam, quis nostrud exercitation." },
	},
    TycheChat03 = {
		PlayFirst = true,
		UseableOffSource = true,
		GameStateRequirements = {
			{
				PathTrue = { "CurrentRun", "BiomesReached", "F" },
			},
		},
		{ Cue = "/VO/Artemis_0012", UseEventEndSound = true, Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit." },
	},
}
-- This is required to give the text line sets their names
for k, v in pairs(textLineSets) do
    if not v.Name then
        v.Name = k
    end
end



  gods.InitializeGod( {
		godName = "Tyche",
    godType  = "GOD",
    SpawnLikeHermes  = false,
    Gender = "F",
    LoadPackages = { "DET-DivineExpansion" },
    FlavorTextIds = { "TycheUpgrade_FlavorText01", "TycheUpgrade_FlavorText02", "TycheUpgrade_FlavorText03" },

    Traits = game.TraitData.TycheUpgrade,

    Color = { 255, 90, 140, 255 },
    LightingColor = { 250, 165, 190, 190 },
    LootColor = { 255, 90, 140, 180 },

    FirstSpawnVoiceLines = {
		PreLineWait = 0.7,
		GameStateRequirements = {
			{
				Path = { "CurrentRun", "CurrentRoom", "RoomSetName" },
				IsNone = { "H" },
			},
		},
		{ Cue = "/VO/MelinoeField_2808", Text = "It's her..." },
	},

    OnSpawnVoiceLines = {
		BreakIfPlayed = true,
		RandomRemaining = true,
		PlayOnceFromTableThisRun = true,
		PreLineWait = 0.85,
		SuccessiveChanceToPlay = 0.25,
		GameStateRequirements = {
			NamedRequirements = { "OlympianOnSpawnVoiceLinesAllowed" },
		},

		{
			Cue = "/VO/Melinoe_1472",
			Text = "It's her.",
		},
		{
			Cue = "/VO/Melinoe_1477",
			Text = "She's back.",
		},
		{
			Cue = "/VO/ArtemisKeepsake_0214",
			Text = "Hey Sister.",
		},
	},

    InteractTextLineSets = textLineSets,
})

gods.CreateOlympianSJSONData({
    pluginGUID = _PLUGIN.guid,
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
})


