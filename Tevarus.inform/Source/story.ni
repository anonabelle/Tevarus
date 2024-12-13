"Tevarus" by anonabelle

Include Epistemology by Eric Eve.
Include Basic Help Menu by Emily Short.

The release number is 1. The story creation year is 2010. The story headline is "An attempt at IF". The story genre is "Fantasy". The story description is "An attempt at IF within the World of Tevarus".

Release along with a website and an interpreter.

Section 1 - Testing descriptions - Not for release
	
When play begins: 
	repeat with item running through things:
		if description of the item is "":
			say "[item] has no description."

Section 2 - Story

[Customized Help Menu]

The help request rule is not listed in any rulebook.
Carry out asking for help:
     now the current menu is the Table of Help;
     carry out the displaying activity;
     clear the screen;
     try looking;
     stop the action.

Table of Help
title	subtable	description	toggle
"About"	--	"An interactive fiction experiment created by Anabelle Laureola."	--
"Contacting the Author"	--	"If you have any difficulties with [story title], you can contact the author at anonabelle.art@gmail.com"	--
"How to Play"	--	"Try to EXAMINE or LOOK at anything in the room. [paragraph break]You can CONSIDER a topic if you're at a loss on what to do next. [paragraph break]You can also try INTERACTING with Tevarus."	--

[considering topics - temporary until I can figure out how to implement the THINK command]

Understand "consider [text]" as considering.

Considering is an action applying to one topic.

Carry out considering:
	say "There is nothing to consider.".
	
Instead of considering a topic listed in the Table of Collected Thoughts:
	say "[response entry][paragraph break]".
	
Table of Collected Thoughts
Topic	Response
"Tevarus"	"The ghost who haunts this tower apparently."
"Archives"	"It's kind of filthy in a way that makes you itch, even if you've barely touched anything. You should start cleaning up soon."
"tower"	"This is one of the older towers of the castle, obvious in how long it's gone neglected."



Chapter 1 - A Transparent Meeting

When play begins: 
say "[italic type]You are a newly appointed historian and your first job is to clean up the archives. This is where you stumble upon the ghost of Tevarus of Tanner, a former aristocrat with very little recorded history to his name. The only thing you remember about him is the fact that he died a traitor's death.[paragraph break]He does not seem dangerous and neither does he appear to have noticed you.[roman type][paragraph break][paragraph break]"

The Archives is a room. "The archives are located near the top of one of the smaller towers. Shelves high as the ceiling line the cylindrical walls, each of them crammed with records that are centuries old - and smells it. Maybe you should air out the room."

The player is in the Archives.


[objects set up]

The shelves are a supporter in the Archives. 
They are scenery. 
The description of the shelves is "They look like they haven't been touched in years."

The table is a supporter in the Archives. 
It is scenery. 
The description of the table is "It is made of wood and is circular in dimension, more like the tables set out in the gardens than one used for extensive studying. It has a single chair[if we have not greeted Tevarus], which Tevarus is occupying. [otherwise]. [end if]"

Understand "desk" as the table. 

The chair is an enterable supporter in the Archives. 
It is scenery. 
The description of the chair is "It is fancy looking, guilded with leaves and intricate designs. [if we have examined the table]Again, unlike the kind used for studying.[end if] [if we have not greeted Tevarus]Tevarus is currently occupying it, though you have no idea how this is possible as he is somewhat transparent.[end if]"

Instead of entering chair, say "[if we have not greeted Tevarus]It already seems to be occupied. Though Tevarus is a ghost I doubt it would be good manners to slide right through him to take the seat.[otherwise]Tevarus is looking at you with surprise. Instead of sitting down, perhaps it would be best to continue speaking with him.[end if]"

The window is scenery in the Archives.
The window can be openable. The window can be open. It is openable and closed.
The description of the window is "A single window with a stained glass pane hangs above the lone table in the room.[if open] You can feel a cool breeze filter into the room. Feels less stuffy around here now.[otherwise] It's shut tight.[end if]"

Instead of opening window, say "[if we have not greeted Tevarus]Tevarus is directly in the way. Maybe you should talk to him first.[otherwise]Maybe you can air out the room when Tevarus is not standing in between you and the window.[end if]"

After opening the window for the first time: say "Ah, that's better."

The stained glass pane is a supporter in the Archives.
It is scenery.
The description of the stained glass pane is "It is very colorful."

Understand "stained glass" as the stained glass pane.
Understand "window pane" as the stained glass pane.

The wall is a supporter in the Archives.
It is scenery.
The description of the wall is "Solid stone bricks. They've got a weathered, century-old look about them that you've seen in similar old, hidden-away rooms."

Understand "walls" as the wall.

Records are in the Archives.
They are scenery.
The description of records is "They are everywhere and coated in a thick layer of dust."


[character set up]

Tevarus is a man in the Archives. "[if we have not greeted Tevarus]Seated at the single table by the window is Tevarus.[otherwise]Tevarus is standing by the lone table in the room, watching you curiously.[end if]"

The description of Tevarus is "[if we have greeted Tevarus]Tevarus is looking at you curiously.[otherwise]He does not appear to have noticed you, his pensive gaze trained outside the window.[end if] [if we have greeted Tevarus][otherwise if we have examined Tevarus]Maybe you should try to get his attention.[end if]". 

Understand "Tev" as Tevarus. 


[character interactions]

Greeting is an action applying to one visible thing.

Understand "hello [someone]" as greeting.
Understand "greet [someone]" as greeting.

After greeting:
	say "'Ho, young miss! You startled me!' [paragraph break]The ghost leaps to his feet in an instant. He doesn't float but stands at ease. Other than a semi-transparent glow, there is nothing peculiar about him. This is what raises the alarm bells in your head.";
	
Scream is an action applying to one visible thing.

Understand "scream at [someone]" as scream.

After scream:
	say "Your eyes widen and your heartbeat speeds up. Before you realize it, a blood-curdling scream rips out of your throat.[no line break][paragraph break][if we have not greeted Tevarus]Tevarus is startled out of his seat, his surprised gaze intent on you.[no line break][otherwise]Tevarus's surprised expression turns into one of confusion and concern.[no line break][end if] When you look back on this moment when you are significantly calmer, you think that he might have tried to say something to you. Right now, you are too hopped up on adrenaline to think about anything except that [italic type]there is a ghost in the Archives.[roman type][paragraph break]
In a thrice, you are out of there and in the middle of the courtyard, clinging to your superiors and babbling about hauntings.[paragraph break]
Instead of sharing your horror, they sigh and reassign you to a different task.";
	end the story finally saying "You have completed the Scared ending".

Instead of asking Tevarus about "ghost", 
	say "Tevarus looks apologetic. 'I dont know how I came to be like this. I just know that I've been this way for a very long time.'"
