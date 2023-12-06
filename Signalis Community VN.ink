//This File is For the Central Run That Stems out to Other Runs
//Encrer Currently doesnt seem to run side branches 

//This is the Collection of Variables Stored For runs
VAR adlerLove = 0
VAR falkeLove = 0
VAR HP = 100
VAR euleLove = 0
VAR call = 0 

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
~background("The Crash")
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
    Today has been exhausting, you decide to drift to bed.
    ->Day2

==Day2==
//Morning Scene 
The Next Morning, you see a little note left by Marz as to what you should do. 
    + 	{ adlerLove > 3} [See if Adler is Busy] 
        ->adlerRoom
        //AdlerBranch
    * [The Mynahs in Mining]
        For Now This Part of the Story isn't written, Check Back in Future Updates :D
        ->END
        //Mynah Branch
    * [The Stars and Storches in Investigation]
        For Now This Part of the Story isn't written, Check Back in Future Updates :D
        ->END
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
~background("TheElevator")
In the elevator you hit the button to go to the bottom of the mines. And the metallic cage groans loudly as it descends down the shaft. 
This groaning continues for a bit, and threatens the whole way through to give and plummet you to a sure death.
But no such breakage occurs and the elevator grinds to a stop as it reaches its intended destination.
The Door grinds open revealing a cramp, dark, and cold space. 
Taking a step out you feel as though the very walls are closing in around you with how tight the space is. And if had claustrophobia prior this venture would be impossible.
The grey is only lit by the dim lights that are scattered about the halls.
Making your way forward you recall the board in Adler's Room, and following the navigation it provided make your way towards where those fallen Replikas were.
Passing through the spaces you eventually find your mark. The unit depicted on the board still laying in its inert final spot.
Looking near it you see a object of interest a small black almost basalt rock. Depicted on its face is a carve of sorts with two lines.
The engraving reveals the interior of the rock, a fleshy red and strange substance that unnerves you.
It seemed so wrong, yet it felt so right. The rock seems to be calling for you and you find your hand being guided towards it.
*[I resisit]
    You try to pull your hand back but to no avail, the call is simply too tempting and you cannot resisit the urge.
*[I grab the rock]
-Grabbing Hold of the rock, you begin to feel faint before the whole world fades to black.
->ChaosScene
==ChaosScene==
~background("lost")
.
..
...
A vast field of black surrounds you in all directions.
Bar the return of thought to your brain you could easily covince yourself that you stay lay dormant.
You gaze out when you see someone in the distance.
You walk towards them, but each step forward is pointless as they dont get any closer.
=Chaos
*[Look Up]
    Looking up you gaze into the vast nothingness, your eyes try to acclimate to it but fail to do so.
    The vast nothingness above you makes you feel small, and sufficates you.
    How could you, a simple person matter in the grand scheme of the Universe.
    You were nothing more then a speck of starlight.
    There were things beyond you, and there always would be.
    ->Chaos
*[Look Forward]
    You look forward, determined to move towards the figure, sprinting towards it you see it too began to sprint.
    You stop and it mimics your action.
    You move your arm around and see it copies you.
    No matter how far you push you are always moving towards where you were.
    How can you move forward when you are stuck in a cycle.
    ->Chaos
*[Look Back]
    You gaze backwards and see the vast nothingness contine.
    There was no going back from here.
    The nothingness has delved into your soul distancing you from the reality you were so acclimated to.
    Even now you feel a stranger, 
    not to any particular thing.
    But to yourself.
    ->Chaos
-
    You look down, nowhere else to look after all and see a mess of liquid.
    Kneeling next to it you peer deep into it.
    The liquid is moving around bubbling at points.
    Rising and falling in a rythm as if it is alive.
    You plunge your hand into it and it easily pushes through. 
    Continuing your whole body gets through, and you emerge...
    Somewhere.
    
You see Adler at his desk, his head in his hands as he stares at a journal. The Adler before you seems...
different.
But you can't place what it is.
You at first seem hesitant to go closer but something compels you, and you listen.
Gazing closer you see his neat hand writing articulated across the page.
"Is what I feel Real?" #speaker: Adler
"Is it love, or am I just falling for an ideal" 
"Where do I begin, and my model end."
"Why do I care about this"
He rips the page out, crumbles it up and throws it away. #speaker:
Whatever was going on across his mind mattered little to him in this moment.
For there was a mystery before him, and that was what he was concerned with.
You feel the world begin to fade, as slowly you wake up from this trance like state
->EuleAttack

==EuleAttack==
//Lead in
You feel dizzy as you slowly regain your senses and return to reality.
As you do so you see a figure moving to your right and before you can do anything it lunges towards you.
{adlerLove > 5:
    Before it can make contact a loud round rings out and the figure is blasted across the room.
    You look over to the orign of the shoot and see Adler standing with the raised Rifle. #portrait: AdlerAngry
    ->AdlerSaves
    -else:
    ~HP -= 40
    A sharp pain jumps across your arm as the figure impales you with a sharp knife.
    You exclaim in pain and then jump back, and see the figure that attacked you. 
    Now getting a better look at it you can make out what it is.
    The corpse from earlier now moved yet again and seemed clearly intent on attacking you.
    It prepares for a second attack when a loud bang fills the room, and the corpse is again reduced to a pile on the ground. 
    ->AdlerisLate
}

==AdlerSaves==
You Okay? #speaker: Adler
*["Yeah"] 
    "Good, I was a bit worried." 
    He seems relieved that you are okay #speaker: 
*["Meow"]
    "Hm you must still be a little shaken, its going to be okay"
    He walks over and gives you the most awkward half hug you've ever had #speaker: 
    ~adlerLove++
*["What does it look like Genius?"]
    "You shouldn't have come here." 
    He looks angered at seeing you, yet happy that you are unharmed #speaker: 
    ~adlerLove--
*[Silence]
    You stare, frozen, at the mangled husk of a humanoid figure oozes by your feet. You slowly process the question. #speaker: 
    But when you open your mouth to answer, the only sound that escapes is a started wheeze.
    "Its going to be okay" #speaker: Adler
    He walks over and gives you the most awkward half hug you've ever had #speaker: 
    ~adlerLove++
-
"You Should Get Out of Here" #speaker: Adler
"Whatever is going on here, its too dangerous for you, get out of here while you still can" 
*[Can't you see you fucked up things are"]
    "It doesnt matter, not like you could do anything to fix it."
    ~adlerLove--
    "But if i could stop you from trying I guess you wouldn't be down here"
    "So let's just go, what we are looking for lies at the bottom of the mines"
    ->TheKing
*["There is something happening here, and until I know what I can't leave"] 
    He looks disappointed at your response, but understanding #speaker: 
    "Well then, whatever is causing this needs to be stopped" #speaker: Adler
    "And i have a feeling that the root of all this, will only be found by going deeper" 
    With a nod, you two begin to descend deeper towards the root of the chaos #speaker:
    ->TheKing
*["It's been real"]
    You throw up your hands and exit the mines, who the fuck knows what happened down there. And honestly who really cares you aint paid enough for all that #speaker: 
    You also do a backflip, its badass.
    Also Adler Probably Explodes Cause he is a L 
    ~adlerLove--
    ->END
-
->DONE

==AdlerisLate==
"Are you-" #speaker: Adler
He sees your injury and stops his inquiry #speaker:
"You shouldn't have been here" #speaker:
*["I know, but I need to know whats happening here"]
    He looks annoyed, but seems to slightly understand 
    "Well just don't get in my way" #speaker: Adler
*["Where Else Can I Go"]
    "Back Upstairs, its safe up there" #speaker: Adler
    You head back up the elevator and never look back
    ~adlerLove--
    ->END
*[You look Adler dead in the eyes and press up against his nose...]
    You bring your forehead against his and tell him
    "Im going to soak you in the milk over and over again" #speaker: You
    "And throw you into the wall over and over again"
    Adler looks at you unamused and pushes you. #speaker:
    In your weakened state you easily fall over.
    "Do not get in my way" #speaker: Adler 
    You pathetically stand back up #speaker: 
    ~adlerLove =- 4
*["That isn't your call to make, you have no control here"]
    He first seems to try to object to your reponse but seems to find some truth in it.
    ~adlerLove++
    "Fair enough I guess. Noone really has control anymore" #speaker: Adler
    
*["I do what i want-bleh"]
    "I'm aware.." 
    He seems disappointed in you and quite annoyed 
    ~adlerLove--
-
"Regardless what your going to do, Im heading deeper into the mines, I want answers" #speaker: Adler
He pushes past you and begins heading deeper, and you resolve to follow him #speaker:
->TheKing

==TheKing==
The grey rock walls blended in you mind, and by all acounts one could call you lost, yet you powered on.
Forward was a direction, and forward for long enough would result in something.
Eventually that something materalized, A Large Hatch usually used to seperate the lower layers from above. Yet now it lay propped open.
A welcoming invintation to continue your descent, an invintation you answered.
...
You awake in a dark place.
The Smell of Oxident sharply bit at your nose, and the liquid that you lay in coated your lower side in a sinister chill.
You were here.
The only place you could find answers.
Nowhere.
You looked around and saw before you a beating heart.
It was massive easily larger then you.
Its slow beat was tranquilizng, a pulse of order in the endless chaos that you had went through.
Adler stood in front of you, between you and the flesh before you and reached out towards it, as if it was a source of enlightenment.
That sense of enlightenment pulled at you too, taunting you to answer its call, yet at the same time it felt wrong though you couldnt quite place why.
*[Answer its Call]
    ~call++
    ~adlerLove--
    You reach towards it too, after all how could something that enthralled you so be bad?
    You walked forward with each step the hearts beating growing louder till it tuned at a deafening pulse.
    {adlerLove < 2: 
        You reach out towards the flesh yet. it seems uninterested in you.
        Your steps are out of beat with its pulse.
        And you are not a part of its song.
        You fall down in pain as red blood seeps from your ears.
        and eyes.
        and soul.
        You feel it reach inside you and rip you apart piece by piece.
        till you are render inert, simply flesh for the flesh to feed upon.
        ->END
    }
    {adlerLove > 2 && adlerLove < 4:
        You reach out towards it and press your hand up against the heart. 
        A great peace harmonizes across your being as you do so and you feel at rest.
        Adler also matches your motion and you feel him through this being.
        Whatever it is it has granted you a connection to Adler unlike any other. And every feeling he feels passes through you.
        And you through him.
        In this state you are truly intertwined.
        Combined in Flesh and Mind into One Being.
        -> END
    }
    {adlerLove > 4:
        You reach out towards it eager to answer its call, when something disrupts you.
        You look around in anger to see what would disrupt your happiness and see something standing between you and tranquility.
        You open your mouth to demand it to move, yet you hear a thrill shriek echo drown you out.
        This thing before you must be one of those corpses.
        {HP == 100:
            You sprint towards the corpse and shove it aside onto the ground
            It falls onto the ground but doesnt give up lunging at your legs.
            You turn to stomp it and stop its efforts to stall you when you hear a soft crying.
        }
        {HP != 100:
            You sprint towards the corpse to try and shove it to the ground and it pushes back putting you beneath it.
            You look up into the empty maw of the corpse before you and struggle to throw it off when droplets fall onto your face.
            At first you cast it as simply the drool of the beast but upon closer inspection it is clearly tears.
        }
        "This isn't you" #speaker: The Beast
        Novel coming from a creature. #speaker: 
        "Please snap out of it" #speaker: The Beast
        Snap out of what? #speaker:
    }
    **[Listen]
        You listen to the Creature, Despite how illogical such a decision seems.
        And slowly its figure makes more sense, for it was no beast.
        It was Adler.
        Who now lays in your arms softly crying seeing you come to your senses.
        ~adlerLove++
        ->LaFinale
    **[Find Peace]
        You ignore it, and throw it aside. 
        No beast will stop you from tranquility.
        You sprint into the heart, and let yourself become one with it.
        A Part of the Endless Flesh, A Drop of Water in a Sea of Souls
        ->END
    --
*[Refuse]
    You refuse its call, Whatever this thing was it must be the root of the pain.
    It was this that made the corpses walk again, and had corrupted those Replikas.
    So how could you possibly give it power?
    You turned to see Adler, his hand against the heart now. With each beat his body began to change. Corrupted from its original form becoming something he wasnt.
    You had to stop him.
    {adlerLove < 2 :
        But you couldn't. How could you, you barely knew who he was and he barely cared about you.
        With a feeble attempt you jumped forward to try and pry his hand from the flesh.
        You were too late, he interceptted your intention and threw you to the ground.
        You felt heavy, like the air was sufficating you.
        Weakly you looked up at him as he stood over you.
        "Noone will get in the way of my love" #speaker: Adler
        He raised his leg, and brought it down onto your head #speaker: 
        THE END.
        ->END
    }
    {adlerLove > 2 && adlerLove < 4:
    Sprinting towards him you would do your best to stop him from succumbing to this creature.
        {HP == 100: 
            He pulls out his rifle eager to try and blast you with it.
            But you are ready, dodging to the left he struggles to get you back in his sights, granting you the opportunity to try and take his weapon from him.
            He staggers backwards and the weapon clatters to the ground.
            You sprint over and knock him over, landing on top of him. 
            You stare into the mess of meat beneath you and see through it the softness of Adler's Eyes. 
            He's still in there.
            He struggles beanth you but you embrace him closer hugging him and softly telling him that its okay.
            He struggles a bit more before slowing to a stop.
            Wrapping his arms around you you feel the meat slowly reharden back to his frame.
            Whatever was ailing him has subsided, He is back.
            ->LaFinale
        }
        {HP != 100:
            But you were injured, and he knew this. As you ran towards him he drew his rifle.
            And before you could dodge out of the way the round sunk into your side quickly ripping through your flesh.
            You collapse to the ground, feeling the pain of the wound go numb as your body fails you.
            Your last view is of Adler standing over you, fully lost to the beast.
            THE END 
            ->END
        }
    }
    {adlerLove > 4:
        You sprint forward towards him, and tackle him to the ground.
        You pull him close and squeeze him tightly.
        He's warm and fleshy, and your shirt is stained with his oxidant but he is the one you love, and you weren't going to lose him.
        The Oxidant hardens, the shell reforms, and he matches your hug.
        ~adlerLove++
        ->LaFinale
    }
-

->LaFinale

==LaFinale==
You and Adler both take a moment to hold each other, and let the tears dry up. #speaker:
But the time for reconciling isnt now. This touching moment would have to wait.
Adler gets up and extends a hand to help you do the same.
He kisses your forehead before saying 
"Let me Handle this" #speaker: Adler
He walks defiantly towards the heart, picking up his rifle as he does. #speaker:
"I am Adler." #speaker: Adler
"I am an Eagle."
He raised the Rifle. #speaker: 
The Heart Beat Cold, and Silent
"And I wear no Mask." #speaker: Adler
The shot rang out, and the beating silenced.
You both were free, at least for now.
You walked over to Adler who stared at the corpse.
"I love you" #speaker: Adler
{call == 0:
    You attempt to repeat his touching statement but he continues #speaker:
    "But our time together is now short. It spoke to me, it told me things." #speaker: Adler
    "And I understand now"
    "When we meet again, know i may not remember you"
    "But I will always love you."
    "So don't forget about me"
->Reality
}
{call != 0:
    ->Dream
}
->DONE

==Reality==
*[I won't]
    He smiles and then collapses in your arms #speaker:
    THE END
-
->END

==Dream==
*[I love you too]
        He smiles and leans in for a kiss. #speaker:
        And you kiss amongst the flesh, the rot and the oxidant.
        You kiss.
        The End
-
->END

