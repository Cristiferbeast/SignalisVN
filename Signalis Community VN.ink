//This File is For the Central Run That Stems out to Other Runs
//Encrer Currently doesnt seem to run side branches 

//This is the Collection of Variables Stored For runs
VAR adlerLove = 0
VAR falkeLove = 0
VAR euleLove = 0

//This is External Encrer Library Functions
EXTERNAL background(string)
EXTERNAL playEmote(emoteName)
EXTERNAL portraitstate(state)

//This is start line
->Leng

//This is Internal Encrer Library Functions
=== function maybe(list, chance)
    ~ return RANDOM(1, chance) == 1

//This is Where We Store Functions
==roomcontrol==
*[The Library]
    ->s23Library
*[The Cafeteria ]
    ->s23Cafeteria
*[The Classrooms]
    ->s23Classroom
* -> 
    I guess it's time to head back to the dorm 
    ->s23euledorm2


==Leng==
//This controls the leng node of the main branch
You stir, slowly waking up, the ringing in your ears dulling to give way to the roar of the frozen winds which only lay interupted by the steady beeping of the emergency distress beacon. #speaker: 
Your ship has crashed. Its engine had been failing for some time and this was inevitable. But something being inevitable doesnt make it any easier, and your aching body reminded you of the impact you felt earlier as the ship touched down.
You pulled yourself up, the exerted effort stung at your already battered body but you knew that this ship you once called home now lay only as a pit of death.
You climbed out the exit hatch and gazed out into this alien world.
A vast sea of white in every direction, a frozen and uncaring tundra.
In the distance you can see the faint outline of something. 
A gate of some sorts? Whatever it was it seemed not natural and you wagered it was as good a place to go for help as any.
You lean against the pillars to regain your breath when a voice barks out from the snow.
"Who are you, state your purpose" #portrait: AdlerAva
    *["I'm a Lost Gestalt"]
        "We felt the vibrations of your ships crash, Are you okay?"
            **["Yeah"]
                "Good, The Nation Trains strong Pilots i'm proud of you"
                ~adlerLove++
            **["I'm a bit shook up"]
                "Hm we can have you checked in Medical if you feel that is apt, otherwise we are busy enough doing our own things"
        --"My Name is Adler, Im the Replika who helps run things around here" #speaker: Adler
    *[remain silent]
        ~adlerLove--
        "What else could i expect from a pilot who can't even fly their ship correctly"
        "My name is Adler, and you will listen to me else betray the nation" #speaker: Adler
-"Now then follow me, we have a place for you to stay while we figure out a solution to your situation"
->s23entrence

==s23entrence==
"Welcome to S-23 our humble little facility"
//This Controls the S23 Entrence Node of the Main Branch
{adlerLove > 0: "Thank you for being agreable, | "Regardless of your attitude,} <>
I will talk to the commander for you, and see what can be done to help you" 
"For now head to the Eule Dorm, follow the signs on the wall they will lead you there" 
    *["Thank you for the help"]
        ~adlerLove ++
        {adlerLove >= 2 :
            "Ah, well thank you for the complement" 
        -else:
            "mhm"
        }
    *["Wow can't even take me yourself?]
        ~adlerLove -= 1
        "No I have things to do" 
-He heads off. #speaker: 
->s23euledorm

==s23euledorm==
//this controls the S23 Eule Dorm Node of the Main Branch
"Oh! A new Gestalt! It's been a while since we had one of you here!" #portrait: Marz
"Hi! I'm Marz!" #speaker: Marz
*[Hi Nice to Meet You.]
    The Eule gives you a big smile before jumping up on her bed.
    ~euleLove++
*[Yeaaahhh. I've already introduced myself enough.]
    The Eule seems to ignore your comment before jumping up on the bed.
    ~euleLove--
-Well Welcome to our Facility, and I saw our Adminstrator already greated you. What did you think about him?
{  adlerLove:
    -0: "I dont really like that Adler too Much" <>
    -1: "Adler is kinda cool I guess"<>
    -2: "Adler is cool, I like him"<>
}
-You find yourself replying to the Eule. #speaker: You
"I mean you've only just met him, so i guess it makes sense you don't have a strong opinion yet." #speaker: Marz
"Well for now I think you should do a tour of the facility. Where would you like to go?"
->roomcontrol

==s23Library==
You arrive in the Library
Entering into the Library you hear a heavy sigh, instinctively for some reason you hop behind a shelf and peak around it to see the source
"This is no good at all, between the Gestalt landing here and the Commander's strange behavior lately the whole facility is in a buzz" #speaker: Adler
He puts his head in his hands #portrait: AdlerSadHands
"Its not as though i hate her, its just..."
"i want things to go back to how it was."
*[How what was?]
    "Oh.. you were listening" #portrait: AdlerShocked
    "..in the past this facility was different #potrait: AdlerSad
    now something is..."
    "...wrong"
        **["What is Wrong?"]
            That is the thing... 
            ...I dont even know"
            ~adlerLove++
            "But that doesn't concern you why are you here?" #portrait: Adler
        **["Damn that sounds boring."]
            "Of course you would say that, you failure of a pilot. " #portrait: AdlerAngery
            So why are you bothering me?" #portrait: Adler
            ~adlerLove--
    --
*[You Hate Me?]
    "Oh.. you were listening #portrait: AdlerShocked
    I... don't hate you #portrait: AdlerSad
    I just...
    I dont know
    and it doesn't matter why are you here?" #portrait: Adler

*[Remain Silent]
    You stay silent and the Replika sits in silence #speaker: 
    Having said what he wanted the room is awkward for a bit until eventually your fatigue causes you to lean against the bookshelf 
    A book tumbles and he looks over. #portrait: AdlerShocked
    "Who is there?" #speaker: Adler
    "Oh it's you the Failed Pilot." #portrait: AdlerAngry
    "Why are you here?"" 
    ~adlerLove--
-
    *["...Let me Help You"]
        "You? Help Me?" #portrait: AdlerSad
        He chuckles for a second seemingly finding that funny before stopping himself.
        ~adlerLove++
    *[I like reading]
        "It is fun isn't it" #portrait: AdlerHappy
        ~adlerLove++
    *[I hoping to see a KLBR]
        "Kolibri are rather cool little friends aren't they" #AdlerHappy
        He seems to be thinking fondly of someone 
        ~adlerLove++
    *[Why Not?]
        "...of course why would i assume you have direction or reason to your actions."
        ~adlerLove--
-"Well regardless, you have spent enough time here, go now and bother someone else" 
~portraitstate(false)
    
->roomcontrol

==s23Cafeteria==
~background("Cafeteria")
You arrive in the cafeteria. #speaker: 
Looking around the cafeteria you see a Star.

//Cafeteria Plot
Where do you go next?
->roomcontrol

==s23Classroom==
You arrive in the Classrooms
~background("Classrooms")
You look around and see a Tall Stoic Replika Staring at the Blackboard Written Upon it is a phrase. #portrait: Falke
I pray God will curse the writer, as the writer has cursed the world with this beautiful, stupendous creation.
The Replika notices your presence and turns to look at you.
"A Visitor" #speaker: Tall Replika
"Who are you?"
	*[___]
	    "hm the quiet type are you"
	*[Ariane, A New Gestalt to the Facility",]
		"Thank you for getting straight to the point. "
-"State Your Purpose."
	*[Just exploring the facility]
	   "Well i am sure you have been finding everything up to par"
    *[Like I Need to Tell You. ]
		"As the head of this facility you should have more respect when adressing me
		~falkeLove--
	*[I may have gotten lost..]
		This facility is rather large
		There are maps posted on our elevators, try to check one of those next time you find yourself lost. 
		~falkeLove--
-Falke seems to be disinterested in talking to you further. #speaker: 
You figure it's about time that you leave
->roomcontrol

==s23euledorm2==
    For Now This Part of the Story isn't written, Check Back in Future Updates :D
    ->Day2

==Day2==
//Morning Scene 
Looking at the options you decide that it'd be best to work with.
    + 	{ adlerLove > 3} [See if Adler is Busy] 
        ->adlerRoom
        //AdlerBranch
    * [The Mynahs in Mining]
        For Now This Part of the Story isn't written, Check Back in Future Updates :D
        //Mynah Branch
    * [The Stars and Storches in Investigation]
        For Now This Part of the Story isn't written, Check Back in Future Updates :D
        //Star Storch Branch
- 
->DONE

==adlerRoom==
You head down the Elevator to the Protektor's Floor, getting off you take a left to Adler's Room.
~background("AdlersRoom")
You see the door is slightly open, allowing you to push it the rest of the way and enter his room. 
Beyond his room proper which consists of just a bed and some bookshelves lies the door to his office, which is also noteably cracked open.
Pushing that too free you venture into his workspace.
This room is certainly a work room, with papers spread about all around in a chaotic yet seemingly organized fashion. 
In the back of the room you see a large investigative board with scattered details and pictures demarked on it.
Peering closer you gaze into one of these pictures and see its a brutal scene. At first you couldnt demark what exactly it was,
But now you can tell, A broken and disturbed Replika, its flesh clearly decayed and hanging to its frame only loosely.
Darting your eyes around the board the other images tell a similar story. Just what was happening here?
You see in the center of the chart a image of a strange looking rock. with the text "in the Mines" above it.
Whatever was happening here, it had to be down below.
With this knowledge you<>
*Continue Looking around Seeing if you can Learn more
    "You decide to stick around and looking around you see a book laying open on Adler's Desk.
    Glancing down you began to read.
    So passed his life, one day like another, save when the storms uttered the wrath of an offended god. 
    Then Haita cowered in his cave, his face hidden in his hands, and prayed that he alone might be punished for his sins and the world saved from destruction. 
    Sometimes when there was a great rain, and the stream came out of its banks, compelling him to urge his terrified flock to the uplands.
    he interceded for the people in the cities which he had been told lay in the plain beyond the two blue hills forming the gateway of his valley."
    You promptly decide <>
    **The Book Is Interesting, And You Keep Reading
         "'It is kind of thee, O Hastur,' so he prayed, 'to give me mountains so near to my dwelling and my fold that I and my sheep can escape the angry torrents;
         but the rest of the world thou must thyself deliver in some way that I know not of, or I will no longer worship thee.'"
         Your reading is interupted by someone clearing their throat in the doorway.
         ~adlerLove--
         "What are you doing here?" #speaker: Adler.
         "This is my room, get out right now!" #portrait: AdlerAngry
         You sprint out of the room, worried to invoke more of his anger, and dart towards the elevator, you would find the truth of this mystery. #speaker: 
         ->theMinesAdler
    **The Book is Boring[, So you leave ]
        You leave the Room and head to the elevator, eager to find the truth behind these notes.
        ~adlerLove++
        ->theMinesAdler
    //Add More Adler Lore
    ->theMinesAdler
*Go to the Mines Immediately
    You decide to get out of there immediately, and dart towards the elevator.
    ->theMinesAdler

==theMinesAdler==
~background("TheDeepMines")
->DONE






