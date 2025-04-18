#!/bin/bash

# Array of jokes
jokes=(
    "Why don't scientists trust atoms? Because they make up everything!"
    "What do you call fake spaghetti? An impasta!"
    "Why was the math book sad? It had too many problems."
    "Why do programmers hate nature? Too many bugs."
    "Why do cows wear bells? Because their horns don't work!"
    "Parallel lines have so much in common. It’s a shame they’ll never meet."
    "Why did the scarecrow win an award? Because he was outstanding in his field!"
    "Why did the coffee file a police report? It got mugged."
    "I told my computer I needed a break, and it said 'no problem, I'll go to sleep.'"
    "Why did the chicken join a band? Because it had the drumsticks."
    "Why don’t skeletons fight each other? They don’t have the guts."
    "How does a penguin build its house? Igloos it together."
    "Why can’t you trust stairs? They’re always up to something."
    "Did you hear about the claustrophobic astronaut? He needed a little space."
    "Why do ducks have feathers? To cover their butt quacks!"
    "I would avoid the sushi if I were you. It’s a little fishy."
    "Why did the tomato turn red? Because it saw the salad dressing!"
    "What do you call a can opener that doesn’t work? A can’t opener!"
    "I used to play piano by ear, but now I use my hands."
    "Why did the golfer bring two pairs of pants? In case he got a hole in one."
    "Why was the stadium so cold? Because it was filled with fans!"
    "How do you organize a space party? You planet."
    "What do you call a bear with no teeth? A gummy bear."
    "Why did the bicycle fall over? Because it was two-tired."
    "I told my wife she was drawing her eyebrows too high. She looked surprised."
    "What do you call cheese that isn't yours? Nacho cheese!"
    "How does a taco say grace? Lettuce pray."
    "Why are ghosts bad at lying? Because you can see right through them."
    "I ordered a chicken and an egg from Amazon. I’ll let you know."
    "Why don’t eggs tell jokes? They’d crack each other up."
    "Why did the computer catch a cold? It left its Windows open!"
    "What’s orange and sounds like a parrot? A carrot."
    "Why was the broom late? It swept in."
    "Why can’t your nose be 12 inches long? Because then it would be a foot."
    "Why was Cinderella so bad at soccer? She kept running away from the ball."
    "What do you call a dinosaur with an extensive vocabulary? A thesaurus."
    "What do you call a fake noodle? An Impasta."

"I would avoid the sushi if I was you. It’s a little fishy."

"Want to hear a joke about paper? Nevermind it’s tearable."

"Why did the cookie cry? Because his father was a wafer so long!"

"I used to work in a shoe recycling shop. It was sole destroying."

"What do you call a belt with a watch on it? A waist of time."

"How do you organize an outer space party? You planet."

"I went to a seafood disco last week... and pulled a mussel."

"Do you know where you can get chicken broth in bulk? The stock market."

"I cut my finger chopping cheese, but I think that I may have greater problems."

"My cat was just sick on the carpet, I don’t think it’s feline well."

"Why did the octopus beat the shark in a fight? Because it was well armed."

"How much does a hipster weigh? An instagram."

"What did daddy spider say to baby spider? You spend too much time on the web."

"Atheism is a non-prophet organisation."

"There’s a new type of broom out, it’s sweeping the nation."

"What cheese can never be yours? Nacho cheese."

"What did the Buffalo say to his little boy when he dropped him off at school? Bison."

"Have you ever heard of a music group called Cellophane? They mostly wrap."

"Why does Superman gets invited to dinners? Because he is a Supperhero."

"How was Rome split in two? With a pair of Ceasars."

"The shovel was a ground breaking invention."

"A scarecrow says, \"This job isn't for everyone, but hay, it's in my jeans.\""

"A Buddhist walks up to a hot dog stand and says, \"Make me one with everything.\""

"Did you hear about the guy who lost the left side of his body? He's alright now."

"What do you call a girl with one leg that's shorter than the other? Ilene."

"I did a theatrical performance on puns. It was a play on words."

"What do you do with a dead chemist? You barium."

"I bet the person who created the door knocker won a Nobel prize."

"Towels can’t tell jokes. They have a dry sense of humor."

"Two birds are sitting on a perch and one says \"Do you smell fish?\""

"Do you know sign language? You should learn it, it’s pretty handy."

"What do you call a beautiful pumpkin? GOURDgeous."

"Why did one banana spy on the other? Because she was appealing."

"What do you call a cow with no legs? Ground beef."

"What do you call a cow with two legs? Lean beef."

"What do you call a cow with all of its legs? High steaks."

"A cross eyed teacher couldn’t control his pupils."

"After the accident, the juggler didn’t have the balls to do it."

"I used to be afraid of hurdles, but I got over it."

"To write with a broken pencil is pointless."

"I read a book on anti-gravity. I couldn’t put it down."

"I couldn’t remember how to throw a boomerang but it came back to me."

"What should you do if you are cold? Stand in the corner. It’s 90 degrees."

"How does Moses make coffee? Hebrews it."

"The energizer bunny went to jail. He was charged with battery."

"What did the alien say to the pitcher of water? Take me to your liter."

"What happens when you eat too many spaghettiOs? You have a vowel movement."

"The soldier who survived mustard gas and pepper spray was a seasoned veteran."

"Sausage puns are the wurst."

"What do you call a bear with no teeth? A gummy bear."

"Why shouldn’t you trust atoms? They make up everything."

"What’s it called when you have too many aliens? Extraterrestrials."

"Want to hear a pizza joke? Nevermind, it’s too cheesy."

"What do cows tell each other at bedtime? Dairy tales."

"Why can’t you take inventory in Afghanistan? Because of the tally ban."

"Why didn’t the lion win the race? Because he was racing a cheetah."

"What happens to nitrogen when the sun comes up? It becomes daytrogen."

"What’s it called when you put a cow in an elevator? Raising the steaks."

"What’s america’s favorite soda? Mini soda."

"Why did the tomato turn red? Because it saw the salad dressing."

"What kind of car does a sheep drive? Their SuBAHHru."

"What do you call a french pig? Porque."

"What do you call a line of rabbits marching backwards? A receding hairline."

"Why don’t vampires go to barbecues? They don’t like steak."

"How do trees access the internet? They log on."

"Why should you never trust a train? They have loco motives."

"Is your refrigerator running? Better go catch it."

"The future,the present and the past walked into a bar.Things got a little tense."

"I saw an ad for burial plots, and thought to myself this is the last thing I need."

"I just found out I'm colorblind. The diagnosis came completely out of the purple."

"I'd tell you a chemistry joke but I know I wouldn't get a reaction."

"Have you ever tried to eat a clock? It's very time consuming."

"I wondered why the baseball was getting bigger. Then it hit me."

"Read enough of our funny puns, and you'll be punstoppable."

"Yesterday a clown held the door for me. It was a nice jester."

"I used to go fishing with Skrillex but he kept dropping the bass."

"The wedding was so emotional even the cake was in tiers."

"What does a house wear? A dress."

"Why can't bicycles stand up on their own? Since they are 2 tired."

"I owe a lot to the sidewalks. They’ve been keeping me off the streets for years."

"Imagine if alarm clocks hit you back in the morning.It would be truly alarming."

"Why is a skeleton a bad liar? You can see right through it."

"What do you receive when you ask a lemon for help? Lemonaid."

"A man sued an airline company after it lost his luggage. Sadly, he lost his case."

"What does a dog say when he sits down on a piece of sandpaper? Ruff!"

"What do you call crystal clear urine? 1080pee."

"At my boxing club there is only one punch bag. I hate waiting for the punch line!"

"An untalented gymast walks into a bar."

"Einstein developed a theory about space, and it was about time too."

"I was accused of being a plagiarist, their word not mine."

"My friends say they don’t like skeleton puns. I should put more backbone into them."

"Let me FILL you in on my trip to the dentist."

"Why does the singer of Cheap Thrills not want us to Sia?"

"Traveling on a flying carpet is a rugged experience."

"Cartoonist found dead in home. Details are sketchy."

"The old woman who lived in a shoe wasn’t the sole owner,there were strings attached."

"Did you hear about the crime in the parking garage? It was wrong on so many levels."

"My new diet consists of aircraft, its a bit plane."

"Have you ever tried to milk a cow which has been cut in half? Udder madness."

"Why are there fences on graveyards? Because people are dying to get in."

"Why do trees have so many friends? They branch out."

"Models of dragons are not to scale."

"Never discuss infinity with a mathematician, they can go on about it forever."

"Why don’t some couples go to the gym? Because some relationships don’t work out."

"Don’t trust people that do acupuncture, they’re back stabbers."

"A persistent banker wouldn’t stop hitting on me so I asked him to leave me a loan."

"I ordered a book of puns last week, but i didn't get it."

"People say i look better without glasses but i just can't see it."

"Don’t judge a meal by the look of the first course. It’s very souperficial."

"I heard Donald Trump is going to ban shredded cheese, and make America grate again."

"I relish the fact that you’ve mustard the strength to ketchup to me."

"What do you call a young musician? A minor."

"Police were called to a daycare yesterday, where a 2-year-old was resisting a rest."

"If artists wear sketchers do linguists wear converse?"

"I changed my iPod name to Titanic. It’s syncing now."

"Jill broke her finger today, but on the other hand she was completely fine."

"I smeared some ketchup all over my eyes once. It was a bad idea in Heinz- sight."

"I flipped a coin over an issue the other day, it was quite the toss-up."

"I got hit in the head with a can of soda? Luckily it was a soft drink."

"I heard that the post office was a male dominated industry."

"Why isn’t suntanning an Olympic sport? Because the best you can ever get is bronze."

"What do you mean June is over? Julying."

"Why is Kylo Ren so angry? Beause he’s always Ben Solo."

"These reversing cameras are great. Since I got one I haven’t looked back."

"The candle quit his job because he felt burned out."

"Our maintenance guy lost his legs on the job, now he’s just a handyman."

"Going to bed with music on gave him sound sleep."

"A magic tractor drove down the road and turned into a field!"

"I met some aliens from outer space. They were pretty down to earth."

"The plane flight brought my acrophobia to new heights."

"My phone has to wear glasses ever since it lost its contacts."

"I, for one, like Roman numerals."

"How do mountains see? They peak."

"The show was called Spongebob Squarepants but everyone knows the star was Patrick."

"This is not alcohol, water you thinking?!"

"Novice pirates make terrible singers because they can’t hit the high seas."

"I told my friend she drew her eyebrows too high. She seemed surprised."

"The earth's rotation really makes my day."

"If I buy a bigger bed will I have more or less bedroom?"

"Two peanuts were walking in a tough neighborhood and one of them was a-salted."

"Two ropes were walking in a tough neighborhood and one of them was a-frayed."

"What kind of shoes do ninjas wear? Sneakers."

"I got a master’s degree in being ignored; no one seems to care."

"After eating the ship, the sea monster said, I can’t believe I ate the hull thing."

"Smaller babies may be delivered by stork but the heavier ones need a crane."

"A bartender broke up with her boyfriend, but he kept asking her for another shot."

"I had a pun about insanity but then I lost it."

"He couldn’t work out how to fix the washing machine so he threw in the towel."

"Why does the man want to buy nine rackets? Cause tennis too many."

"Why don’t cannibals eat clowns? Because they taste funny."

"If I got paid in lots of Pennes I would make loads of pasta."

"I thought I saw a spider on my laptop, but my friend said it was just a bug."

"A doctor broke his leg while auditioning for a play.Luckily he still made the cast."

"The tale of the haunted refrigerator was chilling."

"Why are frogs so happy? They eat whatever bugs them."

"If you wear cowboy clothes are you ranch dressing?"

"I was addicted to the hokey pokey but I turned myself around."

"Simba, you're falling behind. I must ask you to Mufasa."

"I bought a wooden whistle but it wooden whistle."

"The bomb didn't want to go off. So it refused."

"The sore mummy needed a Cairo-practor"

"I feel sorry for shopping carts. They’re always getting pushed around."

"The display of still-life art was not at all moving!"

"On Halloween October is nearly Octover."

"Pig puns are so boaring."

"Why couldn’t the dead car drive into the cluttered garage? Lack of vroom."

"What do you call Samsung's security guards? Guardians of the Galaxy."

"What does Superman have in his drink? Just ice."

"How does a penguin build it’s house? Igloos it together."

"Time flies like an arrow. Fruit flies like a banana."

"The safe was invented by a cop and a robber. It was quite a combination."

"What do you do when balloons are hurt? You helium."

"One hat says to the other, \"You stay here, I’ll go on a head.\""

"How many tickles does it take to make an octopus laugh? Ten tickles."

"When does a farmer dance? When he drops the beet."

"When the scientist wanted to clone a deer, he bought a doe it yourself kit."

"If people ask how many puns I made in Germany I reply, \"nein\""

"Did you hear about the invention of the white board? It was remarkable."

"If Donald Trump becomes president, America is going toupee."

"Can February March? No, but April May."

"I hate Russian Dolls, they are so full of themselves."

"What do you do to an open wardrobe? You closet."

"The magazine about ceiling fans went out of business due to low circulation."

"So what if I don’t know what apocalypse means? It’s not the end of the world!"

"Some aquatic mammals at the zoo escaped. It was otter chaos."

"A backwards poem writes inverse."

"Getting the ability to fly would be so uplifting."

"I asked my friend, Nick, if he had 5 cents I could borrow. But he was Nicholas."

"The soundtrack for Blackfish was orcastrated."

"Where do you imprison a skeleton? In a rib cage."

"There’s a fine line between the numerator and the denominator."

"I used to work at a hairdresser but i just wasn’t cut out for it."

"Why is metal and a microwave a match made in heaven? When they met, sparks flew."

"The lumberjack loved his new computer. He especially enjoyed logging in."

"Garbage collectors are rubbish drivers!"

"When the church relocated it had an organ transplant."

"Lettuce take a moment to appreciate this salad pun."

"The scarecrow get promoted because he was outstanding in his field."

"Sleeping comes so naturally to me, I could do it with my eyes closed."

"I never understood odorless chemicals, they never make scents."

"What do prisoners use to call each other? Cell phones."

"Why was dumbo sad? He felt irrelephant."

"When a clock is hungry, it goes back four seconds."

"Old skiers never die. They just go down hill."

"Did you hear about the pun that was actually funny? Neither have we."

"You know why I like egg puns? They crack me up!"

"Want to hear a pun about ghosts? That's the spirit!"

"I used to make clown shoes… which was no small feat."

"Did you hear about the human cannonball? Too bad he got fired!"

"What happened when the magician got mad? She pulled her hare out!"

"Did you hear about the circus that caught on fire? It was in tents."

"The one day of the week that eggs are definitely afraid of is Fry-day."

"A hen will always leave her house through the proper eggs-it."

"The man who ate too many eggs was considered to be an egg-oholic."

"All the hens consider the chef to be very mean because he beats the eggs."

"Eskimos keep all of their chilled eggs inside of the egg-loo."

"Under the doctor’s advice, the hen is laying off eggs for a few weeks."

"I had a real problem making a hard-boiled egg this morning until I cracked it."

"The best time of day to eat eggs is at the crack of dawn."

"The chicken coop only had 2 doors since if it had 4 doors it would be a sedan."

"Crossing a cement mixer and a chicken will result in you getting a brick layer."

"That reckless little egg always seems to egg-celerate when he sees the light turn yellow."

"Hopefully this egg pun doesn't make your brain too fried or scrambled."

"Don't ever have multiple people wash dishes together. It's hard for them to stay in sink."

"People using umbrellas always seem to be under the weather."

"I dissected an iris today. It was an eye-opening experience."

"What was Forrest Gump’s email password? 1forrest1."

"What planet is like a circus? Saturn, it has three rings!"

"Before my father died he worked in a circus as a stilt walker. I used to look up to him."

"Why did the lion eat the tightrope walker? He wanted a well-balanced meal!"

"I really look up to my tall friends."

"I hate negative numbers and will stop at nothing to avoid them."

"Long fairy tales have a tendency to dragon."

"It takes guts to make a sausage."


    
)

# Get a random index
random_index=$(( RANDOM % ${#jokes[@]} ))

# Print a random joke
echo "${jokes[$random_index]}"

