// since there is only one of this option, i just set the global for game fps here
global.gameFPS = game_get_speed(gamespeed_fps);

// getting the viewport width
viewportWidth = view_wport[0];

/// IF YOU WANT TO CREATE YOUR OWN DIALOGUE, FOLLOW THIS FORMAT
/// ONCE CREATED, ADD IT TO THE MAP USING THE FUNCTION BELOW
// the order of the structs (each thing enclosed by curly brackets) matters, as its the order of the dialogue
// FOR NOW, the talker variable doesnt really do much,
// but if you add any, add to this list of talkers for later: diana, gaia
var testDialogue = [
	{
		text: "test text 1",
		talker: "diana"
	},
	{
		text: "test text 2",
		talker: "gaia"
	}
];
var deadWood = [
	{
		text: "Oh no...this poor trees life has reached it's end",
		talker: "diana"
	},
	{
		text: "If only I had a way to set it's spirit free.",
		talker: "diana"
	}
];
var introFuture = [
	{
		text: "Arise my child. What brings you here?",
		talker: "gaia"
	},
	{
		text: "Dear Goddess Gaia, our forest's life has been drained. Trees dead and grass wilted...is there anything I can do?",
		talker: "diana"
	},
	{
		text: "Hmm...I see.",
		talker: "gaia"
	},
		{
		text: "Worry not, for I have an idea. You see many years ago your ancestors built shines for these mysterious stones that fell from the sky.",
		talker: "gaia"
	},
		{
		text: "They thought these stones were gifts from the stars. How wrong they were...",
		talker: "gaia"
	},
		{
		text: "These stone drained our forests essence before leaving to where they came.",
		talker: "gaia"
	},
	{
		text: "Diana, my child. I will grant you the power to travel between now and the past.",
		talker: "gaia"
	},
		{
		text: "Collect all three stones and bring them back to me, I will destroy them.",
		talker: "gaia"
	},
		{
		text: "You can travel through time by pressing [Z]. Good luck my child.",
		talker: "gaia"
	}
];
var introPast = [
	{
		text: "Good luck my child.",
		talker: "gaia"
	}
];

// create the dialogue options map
dialogueOptions = ds_map_create();

/// ADD YOUR DIALOGUE USING THIS FUNCTION
ds_map_set(dialogueOptions, "testDialogue", testDialogue);
ds_map_set(dialogueOptions, "deadWood", deadWood);
ds_map_set(dialogueOptions, "introFuture", introFuture);
ds_map_set(dialogueOptions, "introPast", introPast);

// all dialogue variables
currentDialogue = [];
currentDialogueIndex = 0;
currentLetterCount = 0;
currentTextLength = 0;
talking = false;