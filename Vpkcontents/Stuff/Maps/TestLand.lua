function MapDispose()
	FreeTileset(0);
	Event01=nil;
	Event02=nil;
	Event03=nil;
	Event04=nil;
	Event05=nil;
	Event06=nil;
	Event07=nil;
	Event08=nil;
	Event09=nil;
	Event10=nil;
	Event11=nil;
end

-- Piece of paper
function Event11()
	tempPort = LoadPNG(FixString("Stuff/Portraits/Note.png"));

	ShowMessageWithPortrait("What are you stil doing here? You have to go and fight BigFoot to get our potatoes back!",false,tempPort,0);

	UnloadTexture(tempPort);
	tempPort=nil;
end

-- Angry tree
function Event07()
	StartWildBattle();
end


tileset0=LoadPNG(FixString("Stuff/Tilesets/TestLand.png"));
SetTileset(tileset0,0);
tileset0=nil;

--
battleEnemyLoadId=0;
dofile(FixString("Stuff/BattleLua/Slime.lua"));
SetEncounterRate(999);
