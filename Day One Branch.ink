
==Leng==
//This controls the leng node of the main branch
You stir, slowly waking up, the ringing in your ears dulling to give way to the roar of the frozen winds which only lay interupted by the steady beeping of the emergency distress beacon.
Your ship has crashed. Its engine had been failing for some time and this was inevitable. But something being inevitable doesnt make it any easier, and your aching body reminded you of the impact you felt earlier as the ship touched down.
You pulled yourself up, the exerted effort stung at your already battered body but you knew that this ship you once called home now lay only as a pit of death.
You climbed out the exit hatch and gazed out into this alien world.
A vast sea of white in every direction, a frozen and uncaring tundra.
In the distance you can see the faint outline of something. 
A gate of some sorts? Whatever it was it seemed not natural and you wagered it was as good a place to go for help as any.
//More Details go here
//Blah blah they enter S-23
"Now then follow me, we have a place for you to stay while we figure out a solution to your situation"
->s23entrence

==s23entrence==
"Welcome to S-23 our humble little facility"
//This Controls the S23 Entrence Node of the Main Branch
{adlerLove > 0: "Thank you for being agreable" | "Regardless of your attitude"} #speaker: Adler
"I will talk to the commander for you, and see what can be done to help you" #speaker: Adler
"For now head to the Eule Dorm, follow the signs on the wall they will lead you there" #speaker: Adler
    *"Thank you for the help"
        ~adlerLove += 1
        {adlerLove > 3 :
            "Ah, well thank you for the complement" #speaker: Adler
        -else:
            "mhm"
        }
    *"Wow can't even take me yourself?
        ~adlerLove -= 1
        "No I have things to do" #speaker: Adler
-He heads off.
->s23euledorm

==s23euledorm==
//this controls the S23 Eule Dorm Node of the Main Branch
"Oh! A new Gestalt! It's been a while since we had one of you here!"
"Hi! I'm Marz!"
*Hi Nice to Meet You.
    The Eule gives you a big smile before jumping up on her bed.
    ~euleLove++
*Yeaaahhh. I've already introduced myself enough.
    The Eule seems to ignore your comment before jumping up on the bed.
    ~euleLove--
-Well Welcome to our Facility, and I saw our Adminstrator already greated you. What did you think about him?
{  adlerLove:
    -0: "I dont really like that Adler too Much
    -1: "Adler is kinda cool I guess"
    -2: "Adler is cool, I like him"
    -3: "Adler...yeah hes cool"
    -4: You blush a bit "Hes...cool"
    -else: "I don't like adler"
}
-You find yourself replying to the Eule.
"I mean you've only just met him, so i guess it makes sense you don't have a strong opinion yet."
"Well for now I think you should do a tour of the facility. Where would you like to go?"
->roomcontrol

==s23Library==
You arrive in the Library
Entering into the Library you hear a heavy sigh, instinctively for some reason you hop behind a shelf and peak around it to see the source"
"This is no good at all, between the Gestalt landing here and the Commander's strange behavior lately the whole facility is in a buzz" #speaker: Adler
He puts his head in his hands
"Its not as though i hate her, its just..."
"i want things to go back to how it was."
*How what was?
    "Oh.. you were listening"
    "..in the past this facility was different
    now something is..."
    "...wrong"
        **What is Wrong?,
            That is the thing...
            ...I dont even know"
            "But that doesn't concern you why are you here "
        **Damn that sounds boring. ",
            "Of course you would say that, you failure of a pilot. "
            So why are you bothering me?"
    --
*You Hate Me?
    "Oh.. you were listening
    I... don't hate you
    I just...
    I dont know
    and it doesn't matter why are you here?"

*Remain Silent
    You stay silent and the Replika sits in silence
    Having said what he wanted the room is awkward for a bit until eventually your fatigue causes you to lean against the bookshelf 
    A book tumbles and he looks over."
    Who is there?
    Oh it's you the Failed Pilot.
    Why are you here?"
-
    *...Let me Help You
        "You? Help Me?"
        He chuckles for a second seemingly finding that funny before stopping himself.
    *I like reading
        "It is fun isn't it"
    *I hoping to see a KLBR
        "Kolibri are rather cool little friends aren't they"
        He seems to be thinking fondly of someone 
    *Why Not?
        "...of course why would i assume you have direction or reason to your actions."
-"Well regardless, you have spent enough time here, go now and bother someone else"
->roomcontrol

==s23Cafeteria==
You arrive in the cafeteria.
Looking around the cafeteria you see a Star.

//Cafeteria Plot
Where do you go next?
->roomcontrol

==s23Classroom==
    You arrive in the Classrooms
	You look around and see a Tall Stoic Replika Staring at the Blackboard "
	I pray God will curse the writer, as the writer has cursed the world with this beautiful, stupendous creation
	She notices your presence and turns to look at you
	A Visitor
	Who are you?
	*___
	    "hm the quiet type are you"
	*Ariane, A New Gestalt to the Facility",
		"Thank you for getting straight to the point. "
-"State Your Purpose."
	*Just exploring the facility
	   "Well i am sure you have been finding everything up to par"
	*Looking for someone
		"If you need help with that I am sure the facilities staff will do there best to help you. "
        She seems to be thinking about something else
        As if your question interested her in some way"
    *Like I Need to Tell You. 
		"As the head of this facility you should have more respect when adressing me
	*I may have gotten lost..
		This facility is rather large
		There are maps posted on our elevators, try to check one of those next time you find yourself lost. 
-Falke seems to be disinterested in talking to you further. 
You figure it's about time that you leave"
->roomcontrol

==s23euledorm2==
    ->Day2