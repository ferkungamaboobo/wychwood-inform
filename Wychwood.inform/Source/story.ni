"Wychwood" by Geoffrey Hans Larsen

Include Basic Screen Effects by Emily Short.
Release along with cover art ("A low-resolution black-and-white 1-bit image from the original game. An open concrete and metal gate leads to a lifted slab in front of a gothic mansion. Above it all is the title in a bat shape, reading Wychwood.").
The story headline is "Translated from Version E4 to Inform 7 by ferkung[line break]Originally".

Figure of Splash Screen is the file "title-splash.jpg" ("A low-resolution black-and-white 1-bit image from the original game. An open concrete and metal gate leads to a lifted slab in front of a gothic mansion. Above it all is the title in a bat shape, reading Wychwood.").

Volume 1 - Verbs

Book 1 - Existing Verbs

Part 1 - Understand

Understand "lift [something]" as pulling.
Understand "exam [something]" as examining.
Understand "kick [something]" as attacking.
Understand "stand [something]" as entering.
Understand "load" as restoring the game.

Part 2 - Instead

Instead of using:
	say "I can't do that."
	
Instead of sliding:
	say "I can't do that."
	
Instead of facing:
	say "I see nothing special."
	
Instead of attacking:
	say "Ouch!"
	
Instead of jumpdowning:
	say "I can't do that."

Instead of burning when the player has the lighter: 
	if the noun is the cigar:
		say "Sorry, I don't smoke.";
	otherwise:
		say "I can't do that.";

Instead of burning when the player does not have the lighter: 
	say "I can't do that.";

Book 2 - New Action

To say tab:
	say "        ".

Part 1 - Applying to Nothing

Jumpdowning is an action applying to nothing. Understand "jump down" as jumpdowning.
Gethelping is an action applying to nothing. Understand "help" as gethelping.

Instead of gethelping:
	say "YOU need help?? What about ME??";
	pause the game;
	say "To redescribe current location:[line break][tab]type [']L['].

Movement:[line break][tab]Movement through the game is usually effected by [']N['], [']S['], [']E['], [']W['], [']U['], and [']D['].

Inventory:[line break][tab]An inventory of your current possessions can be found by typing [']I['].

Commands:[line break][tab]Commands are entered in the usual verb-noun or verb format.

To save game position:[line break][tab]Type [']SAVE[']. The current state of play can then be resumed by typing [']LOAD['].";
	pause the game;
	try looking;
	

Part 2 - Applying to One Thing

Translating is an action applying to one visible thing. Understand "translate [something]" as translating.
Bending is an action applying to one visible thing. Understand "bend [something]" as bending.
Sliding is an action applying to one visible thing. Understand "slide [something]" as sliding.
Using is an action applying to one visible thing. Understand "use [something]" as using.
Facing is an action applying to one visible thing. Understand "look [direction]" as facing. 

Filling is an action applying to one visible thing. Understand "fill [something]" as filling.
Instead of filling something:
	if the noun is not the bucket:
		say "I can't do that."

Emptying is an action applying to one visible thing. Understand "empty [something]" as emptying.
Instead of emptying something:
	if the noun is the bucket and the bucket is filled:
		say "Sploosh! Nothing happens.";
	otherwise:
		say "I can't do that.";

Volume 2 - When Game Starts

Book 1 - Use

Use American dialect and the serial comma.

Book 2 - Rule for items list

Rule for listing nondescript items:
	say "I can also see:[line break]";
	[say "[the list of objects which are marked for listing]";]
	list the contents of the location, with newlines, not listing concealed items;
	[Before listing nondescript items:
list the list of objects which are marked for listing indented with newlines;]


Book 2 - Introduction

When play begins:
	now the story viewpoint is first person singular;
	display the Figure of Splash Screen;
	pause the game;
	say "You have served your six months['] sentence for burglary and now you hope to benefit from what you have learned.

Old Jones was a good mate to you. Mind you, Jonesy doesn't realise how much information was given away whilst asleep. Sleep talking is a fairly common occurrence I suppose.

The sly old devil. Pulled off a bank robbery three years ago and saw that the money was never recovered. A grand and a half stashed away where nobody would find it. Nobody except you, that is. Poor old Jones was arrested in the village of Lower Ashley SANS LOOT. The robbery had been from one of the banks in Greater Mudchester, ten miles south.";
	pause the game;
	say "Lying between the two, of course, is Wychwood. Good old Jonesy, Wychwood.

From what you have heard while the old codger was giving it zeds the money is stashed away in the vicinity of Wychwood Manor.

It could still take some finding of course but you know how old Jonesy thinks, don't you?

When you get to Wychwood your instinct should help you. Six months isn't long enough to dull your senses.

This car was easy enough to nick, huh? Don't care much for the colour but that is the least of your concerns.

Can't be much further now. ";
	pause the game;
	say "Ah, there's the turning for Wychwood. I'll park the car here. The road is quite off the beaten track and anyway nobody should be snooping around at this time of the morning.

Not even seven yet. Right, here goes...";
	now the time of day is 6:57 am;
	now the right hand status line is "[time of day]";

Book 3 - The Player

Part 1 - Player Description

A person can be up-the-chair or down-the-chair. The player is down-the-chair.

Part 2 - Player Starting Inventory

Volume 3 - Ending the Game

Book 1 - Timings

At 7:00 am: say "A distant church clock strikes 7."
At 8:00 am: say "A distant church clock strikes 8."
At 9:00 am: say "A distant church clock strikes 9."
At 10:00 am: say "A distant church clock strikes 10."
At 10:05 am: say "MEE MAW MEE MAW... Someone has called the police!"

Book 2 - Endings

At 10:10 am: 
say "[']Hold it![']

Two burly police officers grab hold of my arm.";
end the story saying "END OF GAME."

Every turn when the squib was fireful and the player has the squib:
	now the squib is dangerous;
	
Every turn when the squib was dangerous and the player has the squib:
	say "BOOM!";
	end the story saying "END OF GAME."

Every turn when the black bull was close and the bull is chasing:
	say "The bull gets me.";
	end the story saying "END OF GAME."
	
Instead of examining the wad of notes:
	say "They are old pound notes, no longer legal tender. Any reward for recovering them would be offset by my theft of the car.

My only consolation is that I have completed this Adventure!";
	end the story saying "END OF GAME."


Volume 4 - The Game 

Book 1 - Parking Area

The Parking Area is a region.

Part 1 - Parked

The Parked is a room in the Parking Area. The Parked is west of the T-Junction. "The car is parked in a country lane which leads East. The sound of singing birds fills the crisp fresh air of an early Autumn morning."

The parked car is scenery in The Parked. The description is "I've already searched the car. There's nothing inside of any use."

Instead of searching the parked car:
	say "I've already searched the car. There's nothing inside of any use.";

Part 2 - T-Junction

The T-Junction is a room in the Parking Area.  "A splashing sound comes from the East. The T-Junction leads North, East & West."

Part 3 - Mansion Lane

The Mansion Lane is north of the T-Junction. The Mansion Lane is in the Parking Area. "The lane leads North towards a large rambling mansion in the distance."

Part 4 - Outside the House

The Outside the House is east of the T-Junction and west of the Northern Pond. The Outside the House is in the Parking Area. "A lovely house overlooks a small pond of lilies. The lane turns away to the North and East. The junction is West."

Instead of going north when the player is in the Outside the House:
	now the player is in the Northern Pond.

Book 2 - Pond

The Pond Area is a region.

Part 1 - Southern Pond

The Southern Pond is east of Outside the House. The Southern Pond is in the Pond Area. "The pond appears to be deeper here and rising bubbles indicate the presense of pond-life. The house lies west and the lane bends North."

Instead of filling the bucket when the player is in the Southern pond:
	say "OK.";
	now the bucket is filled;
	now the printed name of the bucket is "bucket of water".

Part 2 - Northern Pond

The Northern Pond is north of the Southern Pond. The Northern Pond is in the Pond Area. "Here a notice stands beside the pond. The lane bends East/West around the water."

Instead of going east in the Northern Pond:
	try going south;

The posted notice is scenery in the Northern Pond. "NO DUMPING". The printed name is "notice".
The big pond is scenery in the Northern Pond. Understand "pond" as the big pond.

The steel piping is a thing that is nowhere. Understand "pipi" as the steel piping.

Instead of examining the big pond:
	if the steel piping is nowhere:
		say "I can see a steel piping here.";
		now the steel piping is in the Northern Pond;
	otherwise:
		say "I see nothing special."
	
Instead of searching the big pond:
	if the steel piping is nowhere:
		say "I can see a steel piping here.";
		now the steel piping is in the Northern Pond;
	otherwise:
		say "I see nothing special."
		
Instead of filling the bucket when the player is in the Northern pond:
	say "The water is not deep enough."

Book 3 - The Cabins

The Cabins Area is a region.

Part 1 - Narrow Dirt Roads

The Narrow Dirt Roads is north of the Mansion Lane. The Narrow Dirt Roads is in the Cabins Area. "I am South of the mansion with narrow dirt roads to either side of me."

Part 2 - Outside the East Cabin

The Outside the East Cabin is east of the Narrow Dirt Roads. The Outside the East Cabin is in the Cabins Area. "I am outside a windowless portable cabin. Footprints are visible in the dry, dusty earth.[if cabin-door-east is open][paragraph break]I can also see:
[line break]an open door[end if]"

The footprints are scenery in the Outside the East Cabin. "Unusual!"

The east-cabin is scenery in the Outside the East Cabin. "It's locked." The printed name is "east cabin". Understand "cabin" as east-cabin. Understand "east cabin" as east-cabin.

Instead of entering east-cabin in Outside the East Cabin:
	try going east.

Part 3 - The East Cabin Door

The cabin-door-east is a door. The cabin-door-east is closed and openable. The cabin-door-east is locked. The cabin-door-east is scenery. The cabin-door-east is west of Inside the East Cabin and east of Outside the East Cabin. The printed name of the cabin-door-east is "cabin door". Understand "door" as cabin-door-east.

Instead of using the card:
	say "The card allows access to the cabin.";
	now the cabin-door-east is unlocked;
	now the cabin-door-east is open;
	try looking;
	
Instead of entering east-cabin in Outside the West Cabin:
	try going west.
	
Part 4 - Inside the East Cabin

The Inside the East Cabin is in the Cabins Area. "Inside the cabin is a large crate marked 'FX' There is a wall mirror beside which stands a mannequin."

The mannequin is scenery in the Inside the East Cabin.

Instead of examining the mannequin:
	if the black cloak is nowhere:
		now the black cloak is in the Inside the East Cabin;
		say "I can also see:[line break]a black cloak[line break]";
	otherwise:
		say "I see nothing special.";

The large crate is scenery in the Inside the East Cabin.

Instead of examining the large crate:
	if the squib is nowhere:
		now the squib is in the Inside the East Cabin;
		say "I can also see:[line break]a squib[line break]";
	otherwise:
		say "I see nothing special."
		
Instead of searching the large crate:
	if the squib is nowhere:
		now the squib is in the Inside the East Cabin;
		say "I can also see:[line break]a squib[line break]";
	otherwise:
		say "I see nothing special.";

The clapperboard is a thing in the Inside the East Cabin. Understand "clap" as the clapperboard.

The squib is a thing. The squib is nowhere. The squib can be fireful or unfireful. The squib is unfireful. The squib can be dangerous or undangerous. The squib is undangerous;

The black cloak is a thing. The black cloak is wearable. The black cloak is nowhere. The description is "It looks spooky!"

Instead of exiting in Inside the East Cabin:
	try going west.

Part 5 - Outside the West Cabin

The Outside the West Cabin is west of the Narrow Dirt Roads. The Outside the West Cabin is in the Cabins Area. "I am outside a portable cabin. A small window looks East.[if cabin-door-west is open][paragraph break]I can also see:
[line break]an open door[end if]".

The west-cabin is scenery in the Outside the West Cabin. "It's unlocked." The printed name is "west cabin". Understand "cabin" as west-cabin. Understand "west cabin" as west-cabin.

Instead of entering west-cabin in Outside the West Cabin:
	try going west.

Part 6 - The West Cabin Door

The cabin-door-west is a door. The cabin-door-west is closed and openable. The cabin-door-west is scenery. The cabin-door-west is west of Outside the West Cabin and east of Inside the West Cabin. The printed name of the cabin-door-west is "cabin door". Understand "door" as cabin-door-west.

Part 7 - Inside the West Cabin

The Inside the West Cabin is in the Cabins Area.

Instead of exiting in Inside the West Cabin:
	try going east.

The description of Inside the West Cabin is "Inside the cabin is a table and a drawer and a motto hangs on the wall.[if drawer is open][paragraph break]I can also see:
[line break]a paper-clip
[line break]a note[end if]".

The drawer is a closed, openable container in Inside the West Cabin. The drawer is a scenery.

The west cabin table is scenery in Inside the West Cabin. "I see nothing special." The printed name is "table".

A motto is scenery in Inside the West Cabin. "Says: 'Look before you leap.'"

A paper-clip is a thing. The paper-clip is in the drawer. The paper-clip can be bent or unbent. The paper-clip is unbent. Understand "paper clip" as the paper-clip. Understand "paperclip" as the paper-clip. Understand "clip" as the paper-clip. Understand "wire" as the paper-clip. Understand "pape" as the paper-clip.

Instead of bending the paper-clip:
	if the paper-clip is unbent:
		say "OK.";
		now the paper-clip is bent;
		now the printed name is "short wire";
	otherwise if the paper-clip is bent:
		say "OK.";
		now the paper-clip is unbent;
		now the printed name is "paper-clip";

The note is a thing. The note is in the drawer. The description is "Game originally written with the use of the Quill, rewritten with respect with the use of Inform 7."

[Can't actually "open drawer" in original can only "exam drawer" - Deemed OK 12/20/22]

Instead of examining the drawer:
	if the drawer is closed:
		try opening the drawer;
	otherwise:
		say "I can also see:
[line break]a paper-clip
[line break]a note[line break]";
	
Instead of searching the drawer:
	if the drawer is closed:
		try opening the drawer;
	otherwise:
		say "I can also see:
[line break]a paper-clip
[line break]a note[line break]";

Instead of opening the drawer:
	if the drawer is closed:
		say "I can also see:
[line break]A paper-clip
[line break]a note[line break]";
		now the drawer is open;

Book 4 - The Front Lawn

The Outside the Mansion is a region.

Part 1 -  Front Lawn
		
The Front Lawn is north of the Narrow Dirt Roads. The Front Lawn is in the Outside the Mansion. "I am inside the gateway of the mansion. The path leads North and a side path curves west."

Part 2 - Garden Pathway

The garden-pathway is north of the Front Lawn and south of the outside-the-front-door. The garden-pathway is in the Outside the Mansion. "The ornate garden pathway neatly divides the front lawn. Paw prints cross the path from one side to the other. A garden swing creaks in the morning breeze[note-disappear details]." The printed name is "Garden Pathway."

To say note-disappear details:
	if the player carries the note:
		say ". A strong breeze carries the note away";
		now the note is nowhere;
	otherwise:
		say "";
		
Part 3 - Outside the Front Door

The outside-the-front-door is a room north of the garden-pathway. The outside-the-front-door is in the Outside the Mansion. "I am outside the front door. Above the keyhole is a notice and a carved figure head forms the door-knocker. The base of the door has clawed scratches across it and the morning breeze sighs wistfully as it blows through a small gap below the door.[if the front door is unlocked][paragraph break]I can also see:
[line break]an open door". The printed name is "Outside the Front Door"

The front door is a door. The front door is north of outside-the-front-door and south of the Front Hallway. The front door is scenery. The front door is locked. The brass key unlocks the front door.

The mansion notice is scenery in the outside-the-front-door. The description is "Trevor, We have gone to the airport to meet Jeremy. Have asked the pumber to call at 10 A.M. Will see you then. Sue & Andy." The printed name is "notice".

The keyhole is scenery in outside-the-front-door. The description is "The key seems to have been left in the other side of the door."

The brass key is a thing. The brass key is nowhere. The brass key can be fallen or unfallen. The brass key is unfallen. Understand "bras" as the brass key.

Instead of sliding the old newspaper when the player is in the outside-the-front-door:
	if the old newspaper is unslid:
		now the old newspaper is in outside-the-front-door;
		now the old newspaper is slid;
		say "OK.";
		now the printed name is "newspaper under the door";
	otherwise:
		say "I can't do that."
		
Instead of taking the old newspaper:
	if the old newspaper is slid:
		say "It's not here.";
	otherwise:
		say "Taken.";
		now the player carries the old newspaper;

Instead of pulling the old newspaper:
	if the old newspaper is slid and the brass key is unfallen:
		say "OK.";
		now the printed name is "old newspaper";
		now the newspaper is unslid;
	otherwise if the old newspaper is slid and the brass key is fallen:
		say "I can also see:
[line break]an old newspaper[line break]a brass key[line break]";
		now the printed name is "old newspaper";
		now the brass key is in outside-the-front-door;
		now the newspaper is unslid;
	otherwise:
		say "Nothing obvious happens.";

Instead of using the paper-clip:
	if the paper-clip is bent and the old newspaper is slid:
		say "The key falls from the other side of the door.";
		now the brass key is fallen;
	otherwise if the paper-clip is bent and the old newspaper is unslid:
		say "The key falls from the other side of the door.";
		[game is soft-locked - as originally designed - deemed ok 12/20/22]
	otherwise:
		say "I can't do that."

After taking the brass key for the first time:
	say "OK."

Does the player mean unlocking the front door with the brass key: it is very likely;

Instead of unlocking the front door with the brass key:
	if the player has the brass key:
		now the front door is unlocked;
		now the front door is open;
		say "I can also see:
[line break]an open door[line break]";
	otherwise:
		say "With what?"

After opening the front door:
	now the brass key is nowhere;
	
Book 5 - The Slab

The Tunnels Area is a region.

Part 1 - West of the Front Lawn

The West of the Front Lawn is west of the Front Lawn. The West of the Front Lawn is in the The Tunnels Area. "I am West of the front lawn. A heavy stone slab lies on the ground.[if the slab is revealed]

I can also see:
[line break]steps Down[end if]".

The slab is scenery in the West of the Front Lawn. The slab can be revealed or unrevealed. The slab is unrevealed. The slab can be batted or unbatted. The slab is batted.

Instead of pushing the slab:
	if the slab is unrevealed and the slab is batted:
		say "A bat swoops out past me.

I can also see:
[line break]steps Down[line break]";
		now the slab is unbatted; 
		now the slab is revealed;
	otherwise if the slab is unrevealed and the slab is unbatted:
		say "I can also see:
[line break]steps Down[line break]";
		now the slab is revealed;
	otherwise if the slab is revealed:
		say "I can't do that."

Instead of pulling the slab:
	if the slab is revealed:
		say "You pull the slab back.";
		now the slab is unrevealed;
	otherwise if the slab is unrevealed:
		say "I can't do that."
		
Instead of going down in the West of the Front Lawn:
	if the slab is revealed:
		continue the action;
	otherwise:
		say "I can't go in that direction."

Part 2 - Bottom of the Stone Steps

The Bottom of the Stone Steps is down from the West of the Front Lawn. The Bottom of the Stone Steps is in the The Tunnels Area. "I am at the bottom of the stone steps beside a heavy, wooden door[if the wooden door is open][paragraph break]I can also see:[line break]a tunnel[end if]".

The wooden door is a door. The door is scenery. The wooden door is closed and openable. The wooden door is down from The Bottom of the Stone Steps and up from the Tunnel Entrance. Understand "tunnel" as the wooden door. 

Instead of opening the wooden door:
	say "I can also see:[line break]a tunnel[line break]";
	now the wooden door is open;

Part 3 - Tunnel Entrance

The Tunnel Entrance is a room. The Tunnel Entrance is in the The Tunnels Area. "In the dim light, I can barely see that a small low tunnel leads North away from the door."

Part 4 - Inside the Tunnel

The Inside the Tunnel is north of the Tunnel Entrance. The Inside the Tunnel is in the The Tunnels Area. "Stone steps lead Down. The stone walls are dripping water and a dank smell hangs heavy in the air."


Part 5 - Deep Steps

The Deep Steps is down from the Inside the Tunnel. The Deep Steps is in the The Tunnels Area. "I am on stone steps above a trap door. [If the trap door is open]

I can also see:[line break]steps Down[end if]".

Part 6 - Trap Door

The trap door is a door. The door is scenery. The trap door is closed and openable. The trap door is down from the Deep Steps and up from Circular Room.

Instead of opening the trap door:
	say "How?"
	
Instead of pulling the trap door:
	now the trap door is open;
	say "I can also see:[line break]steps Down[line break]"

Part 7 - Circular Room

The Circular Room is a room. The Circular Room is in the The Tunnels Area.  "[if cord is unpulled]Everything's dark, I can't see.[otherwise if cord is pulled]I am in a small, circular room. Beside the bed and cupboard is a circle of strange symbols marked on the floor. Beneath a shelf is a small table.[end if]"

Does the player mean touching the cord: it is very likely;

Instead of touching:
	if the player is in The Circular Room:
		say "I feel a cord in front of me.";
	otherwise:
		continue the action;
	
The cord is scenery in the circular room. The cord can be pulled or unpulled. The cord is unpulled.

Instead of pulling the cord:
	say "CLICK![paragraph break]";
	if the cord is unpulled:
		now the cord is pulled;
		say "I am in a small, circular room. Beside the bed and cupboard is a circle of strange symbols marked on the floor. Beneath a shelf is a small table.";
	otherwise if the cord is pulled:
		now the cord is unpulled;
		say "Everything's dark, I can't see.";
		
The hidden bed is scenery in the Circular Room. The printed name is "bed".

The spooky table is scenery in the Circular Room. The spooky table is a supporter. The printed name is "table".

The cupboard is scenery in the Circular Room.

The shelf is scenery in the Circular Room. The shelf is a supporter.
The symbols are scenery in the Circular Room. The description is "There are 8 symbols arranged in a circle which obviously have some meaning." Understand "runes" as the symbols.

The lighter is a thing that is nowhere.

A fat cigar is a thing that is nowhere.

An old newspaper is a thing that is nowhere. An old newspaper can be slid or unslid. An old newspaper is unslid. The description is "The leading story tells of mysterious lights which have been seen in the sky. Unusual footprints have been seen near Wychwood Manor coinciding with the arrival of a film crew documenting the supernatural." Understand "news" as the old newspaper. Understand "paper" as the old newspaper. Understand "newspaper" as the old newspaper.

A book of the occult is a thing that is nowhere. The description is "The book is a treasury of witchcraft and demonology. That's interesting! There is a chapter devoted to the translation of runes and symbols."

Instead of examining the hidden bed:
	say "I can also see:[line break]a lighter[line break]";
	now the lighter is in the circular room.
	
Instead of searching the bed:
	say "I can also see:[line break]a lighter[line break]";
	now the lighter is in the circular room.
	
Instead of examining the table:
	say "I can also see:[line break]a fat cigar
[line break]an old newspaper[line break]";
	if the fat cigar is nowhere:
		now the fat cigar is on the spooky table;
	if the old newspaper is nowhere:	
		now the old newspaper is on the spooky table.
	
Instead of searching the table:
	say "I can also see:[line break]a fat cigar
[line break]an old newspaper[line break]";
	if the fat cigar is nowhere:
		now the fat cigar is on the spooky table;
	if the old newspaper is nowhere:	
		now the old newspaper is on the spooky table.
	
Instead of examining the shelf:
	say "I can also see:[line break]a book of the occult[line break]";
	if the book of the occult is nowhere:	
		now the book of the occult is on the shelf.
	
Instead of searching the shelf:
	say "I can also see:

A book of the occult[line break]";
	if the book of the occult is nowhere:	
		now the book of the occult is on the shelf.
		
Instead of translating the symbols:
	say "A.P.O.L.L.Y.O.N.";
	
After going up from the Circular Room:
	say "CLICK![line break]";
	now the cord is unpulled;
	now the trap door is closed;
	try looking;
	
Book 6 - Wychwood Manor Downstairs

Mansion Downstairs is a region.

Part 1 - Front Hallway

The Front Hallway is a room. The Front Hallway is east of The Lounge and west of The Dining Room. The Front Hallway is in the Mansion Downstairs. "I am in the front hallway at the bottom of a staircase. The dining room is East and the lounge is West. A painting of Stonehenge hangs on the wall and the front door is South."

The stairs are scenery in the Front Hallway.

After going south from the Front Hallway:
	say "The door slams behind me.";
	now the front door is closed;
	now the front door is locked;
	try looking;
	
Instead of climbing the stairs in the Front Hallway:
	try going up;

Part 2 - Dining Room

The Dining Room is a room. The Dining Room is in the Mansion Downstairs. "I am in the dining room. An ornate chandelier hangs from the ceiling and a brass candelabrum sits on a thick, wooden mantelshelf.[if the opening is unlocked][paragraph break]I can also see:[line break]an opening[line break][end if]"

The candelabrum is scenery in The Dining Room. "The candelabrum feels loose." Understand "candle" as candelabrum. Understand "cand" as candelabrum.

Instead of pulling the candelabrum:
	say "I hear a creaking sound...";
	say "[line break]I can also see:[line break]an opening[line break]";
	now the opening is unlocked;
	now the opening is open;

The fruit is a thing in the Dining Room. The printed name is "bowl of fruit".

Instead of eating the fruit:
	say "Ugh!";
	
The opening is a door. The opening is north of the dining room and south of the Secret Room. The opening is scenery. The opening is locked.

Instead of entering the opening:
	try going north.
	
Part 3 - The Secret Room

The Secret Room is a room. The Secret Room is in the Mansion Downstairs. "I am within a small scret room. Several photographs of leading Communists hang on the wall."

A Russian flag is a thing in the Secret Room. The description is "It shows a hammer and sickle."

A diary is a thing in the secret room. The description is "Diary contains names and addresses."

The memo pad is a thing in the secret room. The description is "It says: 'Don't miss Larsoft's Adventure Number 4: The Nine Dancers

Or try ferkung's Lost Enterprise.'"

Instead of exiting in The Secret Room:
	try going south.

Carry out going south in the Secret Room:
	say "The panel closes up behind me.";
	now the opening is closed;
	now the opening is locked..
	
Part 4 - The Lounge

The Lounge is a room. The Lounge is in the Mansion Downstairs. "The lounge contains several glass cases displaying mounted fish. Amonst many photgraphs of game fish is a portrait of a man, woman, and child. The smell of fresh paint comes from the North."

The rod-and-line is a thing in the Lounge. The rod-and-line can be hooked or unhooked. The rod-and-line is unhooked. Understand "rod" as the rod-and-line. The printed name is "rod and line". 

The fish is scenery in the Lounge. The description is "Very large fish."

Part 5 - The Back Room

The Back Room is a room. The Back Room is north of the lounge. The Back Room is in the Mansion Downstairs.  The Back Room is west of the Back Hallway. "The recently-decorated back room overlooks an immaculate lawn. Exits are East and South."

Part 6 - The Back Hallway

The Back Hallway is a room. The Back Hallway is north of the Front Hallway. The Back Hallway is west of the Kitchen. The Back Hallway is in the Mansion Downstairs.  "At the back of the hallway, a door leads into the garden. The kitchen is East and the front door is south."

Part 7 - The Kitchen

The Kitchen is a room. The Kitchen is in the Mansion Downstairs. "I am in a modern-styled kitchen. The door is West."

Part 8 - The Garden Door

The garden-door is a door. The garden-door is north of the Back Hallway and south of the Garden. The garden-door is scenery. Understand "door" as the garden-door. The printed name is "door."

AFter opening the garden-door:
	say "The door shuts behind me.";
	try going north;
	now the garden-door is closed.
	
Part 9 - The Garden

The Garden is a room. The Garden is in the Mansion Downstairs. "The superb back garden is surrounded by a ten feet high wall."

Section 1 - The Dog

A fierce dog is an animal in the Garden. The description is "A Doberman pinscher."

Section 2 - The Shed

A wooden shed is a thing in the Garden. The wooden shed can be fireful or unfireful. The wooden shed is unfireful.

Instead of entering the shed:
	if the fierce dog is in the garden:
		say "Dog snarls at me. Won't let me in.";
	otherwise:
		now the player is in Inside-the-Shed;

Section 3 - The Pile of Grass

A pile of grass is a thing in the Garden. The pile of grass can be fireful or unfireful. The pile of grass is unfireful. The pile of grass can be wet or dry. The pile of grass is dry.

Section 4 - The Squib

Instead of burning the squib:
	say "OK.";
	now the squib is fireful;
	
Instead of dropping the squib when the player is in the Garden:
	if the squib is fireful:
		now the squib is nowhere;
		now the fierce dog is nowhere;
		say "BOOM![line break]The dog scurries away through a small hole in the wall.[line break]a stray spark set the grass alight.";
		now the printed name of the pile of grass is "burning grass";
		say "[line break]I can also see:[line break]Burning grass[line break]a wooden shed[line break]The grass burns fiercely[line break]";
		now the pile of grass is fireful;
	otherwise:
		say "I can't do that."

Instead of emptying the bucket when the player is in the Garden:
	if the pile of grass is fireful:
		now the pile of grass is unfireful;
		now the pile of grass is wet;
		now the wooden shed is unfireful;
		now the pile of grass is nowhere;
		say "I can also see:[line break]a wooden shed[line break]";
		now the bucket is empty;
	otherwise:
		say "Sploosh! Nothing happens.";

Every turn when the pile of grass was fireful and the wooden shed was unfireful and the pile of grass is dry:
	say "The burning grass sets fire to the shed.";
	now the wooden shed is fireful;
	
Every turn when the wooden shed was fireful and the pile of grass is dry:
	say "Something that flashed really quickly.";
	now the pile of grass is unfireful;
	now the wooden shed is unfireful;
	now the pile of grass is nowhere;
	now the wooden shed is nowhere;
	
Section 5 - The Wall

The wall is a thing in the Garden. The wall is scenery.

Does the player mean climbing the step-ladder: it is very likely;

Instead of climbing the wall in the Garden:
	if the step-ladder is in the Garden:
		now the player is in the top-of-garden-wall;
	otherwise:
		say "I can't do that."

Instead of climbing the step-ladder in the Garden:
	if the step-ladder is in the Garden:
		now the player is in the top-of-garden-wall;
	otherwise:
		say "I can't do that."
		
Part 10 - Inside the Shed

The Inside-the-Shed is a room. The Inside-the-Shed is in the Mansion Downstairs. The printed name is "Inside the Shed". "Neatly stacked inside the shed are several garden utilities."

The step-ladder is a thing in the inside-the-shed. Understand "step" as the step-ladder. Understand "ladder" as the step-ladder.

Instead of exiting in the Inside-the-Shed:
	now the player is in the Garden;
	
Part 11 - Top of Garden Wall

Top-of-garden-wall is a room. The Top-of-garden-wall is in the Mansion Downstairs. The printed name is "Top of Garden Wall". "I am standing on the top of the garden wall overlooking a field. The garden is Down below me." 

Instead of going down in the top-of-garden-wall:
	now the player is in the Garden;

Instead of jumpdowning in the top-of-garden-wall:
	now the player is in the Small-Field;

Instead of jumping in the top-of-garden-wall:
	now the player is in the Small-Field;
	
Book 7 - Wychwood Manor Upstairs

The Mansion Upstairs is a region.

Part 1 - Top of the Stairs

The Top of the Stairs is a room. The Top of the Stairs is above the Front Hallway. The Top of the Stairs is in the Mansion Upstairs. "I am at the top of the stairs with exits North, East, West, and Down.[top-of-stairs-desc details]"

to say top-of-stairs-desc details:
	if the player is up-the-chair or the ceiling panel is found:
		say "[paragraph break]I can also see:";
	if the ceiling panel is found:
		say "[line break]a panel in the ceiling";
	if the player is up-the-chair:
		say "[line break]I'm on a chair";

Instead of entering the chair:
	if the player is down-the-chair:
		say "I can also see:[if the ceiling panel is found][line break]a panel in the ceiling[end if][line break]I'm on a chair[line break]";
		now the chair is scenery;
		now the player is up-the-chair;
	otherwise:
		say "I can't do that."

Instead of going down when the player is up-the-chair:
	now the player is down-the-chair;
	now the chair is not scenery;
	try looking;

Instead of facing up when the player is in The Top of the Stairs:
	now the ceiling panel is found;
	if the player is up-the-chair:
		say "I can also see:[line break]a panel in the ceiling[line break]I'm on a chair[line break]";
	otherwise:
		say "I can also see:[line break]a panel in the ceiling[line break]";
		
The ceiling panel is a door. The ceiling panel is up from The Top of the Stairs and down from The Loft. The ceiling panel is openable. The ceiling panel is closed. The ceiling panel can be found or unfound. The ceiling panel is unfound.

Instead of opening the ceiling panel:
	if the player is down-the-chair:
		say "Can't reach!";
	otherwise:
		now the panel is open;
		say "I can also see:[line break]an open panel[line break]I'm on a chair[line break]";
		
Instead of entering the ceiling panel:
	if the player is down-the-chair:
		say "I can't go in that direction.";
	otherwise:
		now the player is in The Loft;

Part 2 - East Bedroom

The east-bedroom is east of the Top of the Stairs. The east-bedroom is in the Mansion Upstairs. "I am in the East bedroom. Beneath the window is a large bed and a cabinet stands against one wall." The printed name is "East Bedroom."

The east-cabinet is scenery in the east-bedroom. Understand "cabinet" as the east-cabinet. The printed name is "cabinet".

The east-bed is scenery in the east-bedroom. Understand "bed" as the east-bed. The printed name is "bed".

Part 3 - West Bedroom

The west-bedroom is west of the Top of the Stairs. The west-bedroom is in the Mansion Upstairs. "I am in the West bedroom. The floor is covered by a thick-pile carpet and a chest of drawers and double bed make up the main items of furniture." The printed name is "West Bedroom."

The credit card is a thing. The credit card is nowhere. The description is "It expires soon."

The west-bed is scenery in the west-bedroom. Understand "bed" as the west-bed. The printed name is "bed".

Instead of examining the west-bed:
	if the credit card is nowhere:
		say "I can also see:[line break]a credit card[line break]";
		now the credit card is in the west-bedroom;
	otherwise:
		say "I see nothing special."
	
Instead of searching the west-bed:
	if the credit card is nowhere:
		say "I can also see:[line break]a credit card[line break]";
		now the credit card is in the west-bedroom;
	otherwise:
		say "I see nothing special."
		
Part 4 - Bathroom

The Bathroom is north of the Top of the Stairs. The Bathroom is in the Mansion Upstairs. "The bathroom window overlooks a village to the North and a full-length mirror hangs on one wall."

The chair is a thing in the bathroom. The chair is a supporter. The chair is portable.

After going south from the bathroom for the first time:
	say "I walk through the door then hear a scuttling sound above me.";
	try looking.

The mirror is scenery in the bathroom.

Instead of examining the mirror for the first time:
	say "Is that something standing behind me?";

Part 5 - The Loft

The loft is a room. The loft is in the Mansion Upstairs. "I am within the loft. One corner appears dark and foreboding. The stairs are Down below me."

The bucket is a thing in the loft. The bucket can be filled or empty. The bucket is empty. Understand "buck" as the bucket.

Book 8 - Away from the Mansion

The South Fields is a region.
The North Fields is a region.

Part 1 - The Small Field

The Small-Field is a room. The Small-Field is in the South Fields. "I am in a small field with a gate to the North." The printed name is "Small Field".

The field gate is a door. The field gate is north of the Small-Field and south of the Wooden Platform. The field gate is closed and locked. The description is "It's locked." Understand "gate" as the field gate. 

Instead of climbing the gate:
	now the player is in The Wooden Platform.
	
Part 2 - The Wooden Platform

The Wooden Platform is a room. The Wooden Platform is south of the Large-Field. The Wooden Platform is in the South Fields. "I am on a wooden platform spanning a ditch between two fields."

Part 3 - The Large Field

The Large-Field is a room. The Large-Field is in the South Fields. "In the middle of this field is a tree surrounded by signs of digging. On the tree is a plaque. Exits are East, West, and South." The printed name is "Large Field."

The plaque is a thing in the Large-Field. The description is "To all treasure hunters: Farmer brown as asked me to point out that the bejewelled hare is not buried in this field: Kit Williams."

Part 4 - The East Field

The East-Field is a room. The East-Field is east of the Large-Field and south of the North-East-Field. The East-Field is in the South Fields. "This field has exits North and West." The printed name is "East Field".

Part 5 - The North-East Field

The North-East-Field is a room. The North-East-Field is in the North Fields. "A solitary scarecrow hands, with arms outstretched, upon a pole. A tree stands beside a footpath leading north." The printed name is "Northeast Field".

The scarecrow is a thing in the North-East-Field. The scarecrow is scenery. Understand "scare" as the scarecrow. Understand "scar" as the scarecrow. The description is "Looks like Jon Pertwee."

The tree is a thing in the North-East-Field. The tree is scenery.

Part 6 - The Bridlepath

The Bridlepath is a room. The Bridlepath is north of the North-East-Field. The Bridlepath is in the North Fields. "I am on an East/West bridlepath between two fields."

Part 7 - The West Field

The West-Field is a room. The West-Field is west of the Large-Field and north of the Mole-hills. The West-Field is in the South Fields. "In the middle of this field is a tree." The printed name is "West Field".

The lonely tree is scenery in the West-Field. The printed name is "tree".

Part 8 - The Mole-hills

The Mole-hills is a room. The Mole-hills is in the South Fields. "Mole-hills abound within this field. Another field is north."

The mole is scenery in the Mole-hills. Understand "molehills" as the mole. Understand "mole-hills" as the mole. Understand "molehill" as the mole. Understand "mole-hill" as the mole. The printed name is "mole-hills".

Part 9 - Outside the Church

The Outside-the-Church is a room. The Outside-the-Church is east of the Bridlepath. The Outside-the-Church is in the North Fields. "I am outside the village church at the end of a road leading North." The printed name is "Outside the Church".

A church is a thing in the outside-the-church. The church is scenery.

Instead of entering the church:
		now the player is in Inside-the-Church;

Part 10 - The Church

The Inside-the-Church is a room. The Inside-the-Church is in the North Fields. "Inside the church, several villagers are attending matins. The vicar is giving the sermon." The printed name is "The Church".

The vicar is scenery in Inside-the-Church. The vicar can be listened or unlistened. The vicar is unlistened.
The villagers are scenery in Inside-the-Church. Understand "villager" as the villagers.

Instead of listening:
	if the player is in Inside-the-Church and the vicar is unlistened:
		say "'Do not be as swift in anger as the raging bull.'";
		now the vicar is listened;
	otherwise:
		say "I hear nothing special.";

Instead of exiting in Inside-the-Church:
	now the player is in Outside-the-Church.

Part 11 - North of the Church

The North-of-Church is a room. The North-of-Church is north of the Outside-the-Church. The North-of-Church is in the North Fields. "The North/South road passes a field to the West." The printed name is "North of the Church".

Part 12 - End of the Road

The End-of-Road is a room. The End-of-Road is north of the North-of-Church. The End-of-Road is in the North Fields. "The road meanders Northwards towards Lower Ashley. I should return South."

Part 13 - Tractor Field

The Tractor-Field is a room. The Tractor-Field is west of the North-of-Church. The Tractor-Field is in the North Fields. "A tractor is stationary in a corner of this field." The printed name is "North Field".

The tractor is a thing in the Tractor-Field. The tractor is scenery. 

Instead of examining the tractor:
	say "I can also see:
[line break]a flask of tea[line break]";
	now the flask of tea is in the Tractor-Field;
	
Instead of searching the tractor:
	say "I can also see:
[line break]a flask of tea[line break]";
	now the flask of tea is in the Tractor-Field;

The flask of tea is a thing. Understand "flas" as the flask of tea. The flask of tea is nowhere.

Part 14 - North of the Stream

The North-of-Stream is a room. The North-of-Stream is west of the Bridlepath. The North-of-Stream is in the North Fields. "To the North is a large field and the sound of running water comes form the south." The printed name is "North of the Stream".

Instead of dropping the flag in the North-of-Stream:
	if the black bull is chasing:
		say "The bull charges after the flag and disappears.";
		now the black bull is nowhere;
		now the black bull is calm;
		now the Russian flag is nowhere;
	otherwise:
		say "Dropped.";
		now the Russian flag is in the North-of-Stream.

Part 15 - The Stream

The Stream is a room. The Stream is south of the North-of-Stream. The Stream is in the North Fields.  "I am standing beside a clear stream. A man sits alone fishing. Beside him is an empty basket."

The fisherman is a male person in the Stream. The description is "He looks cold and miserable." Understand "man" as the fisherman.

The basket is scenery in the Stream. The description is "It's empty."

The hook is a thing. The hook is nowhere.

Instead of giving the flask of tea to the fisherman:
	say "The man smiles gratefully.";
	now the tea is nowhere;
	if the player has the rod-and-line:
		say "Here, try this strong hook if you're after a LARGE fish.";
		now the hook is in the Stream;
		now the fisherman is nowhere;
		try looking;


Does the player mean tying the hook to the rod-and-line: it is very likely.

Instead of tying the hook to the rod-and-line:
	say "OK.";
	now the rod-and-line is hooked;
	now the hook is nowhere;
	now the printed name of the rod-and-line is "rod, line and hook"
	


Part 16 - Oak Field

The Oakfield is a room. The Oakfield is north of the North-of-Stream. The Oakfield is in the North Fields. "A tall oak tree stands proudly with its golden-brown leaves rustling softly. Scattered around the base of the tree are fallen leaves, victims of the onslaught of Autumn[if the leaves are cleared].

I can also see:[line break]a hollow[line break][end if]". The printed name is "Oak Field".

The oak tree is scenery in the Oakfield.
The leaves are scenery in the Oakfield. The leaves can be cleared or dirty. The leaves are dirty.
The bottom-hollow is scenery in the Oakfield. Understand "hollow" as the bottom-hollow.

The small key is a thing. The small key is nowhere. Understand "smal" as the small key.
The wad of notes is a thing. The wad of notes is nowhere. Understand "notes" as the wad of notes.

Instead of waving the Russian flag when the player is in the Oakfield:
	say "The bull moves towards me.";
	now the black bull is chasing.
	
The black bull is a male animal in the oakfield. The black bull can be chasing or calm. The black bull is calm. The black bull can be close or far. The black bull is far.[2:10:22 in playthrough]

Every turn when the black bull is chasing:
	if the location of the black bull is not the location of the player:
		let the way be the best route from the location of the black bull to the location of the player;
		try the black bull going the way;
		say "The bull moves towards me";
		now the bull is close;

Instead of climbing the oak tree:
	try going up.
	
Instead of pushing the leaves for the first time:
	say "[line break]I can also see:[line break]a hollow[line break]";
	now the leaves are cleared;
	
Instead of examining the bottom-hollow for the first time:
	say "[line break]I can also see:[line break]a small key[line break]a hollow[line break]";
	now the small key is in the Oakfield;

Does the player mean unlocking the metal box with the small key: it is very likely.

Instead of unlocking the metal box with the small key:
	if the player has the small key:
		say "OK.";
		now the box is unlocked;
	otherwise:
		say "I can't do that."
		
Instead of examining the metal box:
	if the box is unlocked:
		say "[line break]I can also see:[line break]a hollow[line break]a wad of notes[line break]";
		now the wad of notes is in the Oakfield; 
	otherwise:
		say "I see nothing special about the box.";
		
Part 17 - In the Tree

In-the-Tree is a room. The In-the-Tree is up from the Oakfield. The In-the-Tree is in the North Fields. "I am within the tree about ten feet above the ground. There is a fairly large hollow here." The printed name is "Up the Tree".

The metal box is a thing. A metal box is a container. The metal box is lockable and locked. The metal box can be reachable or unreachable. The metal box is unreachable.

The tree-metal box is scenery in the In-the-Tree. Understand "box" as the tree-metal box. The printed name is "metal box".

The tree-itself is scenery in the In-the-Tree. Understand "tree" as the tree-itself. The printed name is "tree".
The top-hollow is scenery in the In-the-Tree. Understand "hollow" as the top-hollow. The description is "I see a metal box with a handle on the lid."

Instead of using the rod-and-line in the In-the-Tree:
	if the metal box is nowhere and the rod-and-line is hooked:
		say "Got it... Oh, no... A key falls from the lock back into the hollow.";
		now the metal box is reachable;
		now the metal box is in the In-the-Tree;
	otherwise:
		say "I can't do that.";

Instead of taking the tree-metal box:
	if the metal box is unreachable:
		say "Can't reach!";
	otherwise:
		say "OK.";
		now the player has the metal box;
		now the tree-metal box is nowhere;
