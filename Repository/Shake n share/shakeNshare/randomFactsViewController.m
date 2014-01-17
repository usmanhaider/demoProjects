//
//  randomFactsViewController.m
//  shakeNshare
//
//  Created by Blue Horn on 10/13/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import "randomFactsViewController.h"
#import <Social/Social.h>


@interface randomFactsViewController ()

@end

@implementation randomFactsViewController
@synthesize randomFactOut;
@synthesize randomFactsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.randomFactsArray = [[NSArray alloc] initWithObjects:
                             @"Humans have a type of super memory that is easily activated when experiencing something that causes both emotional or physical pain.",
                             @"One elevator ding means it's going up and two means it's going down.",
                             @"The brain of a person who is being ignored shows stimulated activity in the region of the brain responsible for physical pain.",
                             @"Psychology says, when you finally let go of the past, something better comes along.",
                             @"Mosquitos are more attracted to the color blue than any other color",
                             @"Pretending not to care is often an emotional test, an attempt to see if that person will make an effort & care more.",
                             @"Rewarding yourself by shopping relieves stress, improves self esteem & reduces depression risk due to improved mood.",
                             @"90% of the time, your significant other will often accuse you of doing the things that they're doing in secret. Guilty conscious!",
                             @"Whispering is harder and more straining on your voice than talking normally.",
                             @"You usually argue with those you care about. People avoid fights completely when they're no longer interested emotionally.",
                             @"Creative people are more likely to develop insomnia. Their brains process easier during the night, early morning.",
                             @"Psychology says: When both people feel comfortable expressing their needs, fears, and desires, trust and bonds are strengthened.",
                             @"Spiders take down and recycle their webs by eating them when unfavorable weather conditions arise.",
                             @"Most difficult time to fall asleep, 1 to 3 am, the brain naturally restarts, mentally preparing you for the next day.",
                             @"The amount of time you spend getting ready is proportionate to the number of attractive people you will see that day!",
                             @"A person who cheats is constantly questioning you & frequently accusing you of inappropriate behavior or being flirtatious.",
                             @"People generally find comfort in what's convenient & familiar, making it difficult to leave behind someone who hurts us constantly!",
                             @"The inventor of the machine gun, Hiram Maxim, also invented the hair curling iron!",
                             @"“I’m sorry” is a statement. “I won’t do it again” is a promise. “How do I make it up to you?” is a responsibility!",
                             @"People who over think are known for secretive, strategist and reflective tendencies.",
                             @"Methylchloroisothiazolinonephobia is the fear of texting and or texting people first..",
                             @"Some women choose to have more male than female friends in attempt to avoid excessive drama and unwanted stress.",
                             @"Women are biologically wired to be territorial which is why most women have difficulty being nice or making friends with other women.",
                             @"''Pistanthrophobia'' is the common fear of trusting people due to past experiences with relationships gone bad!",
                             @"A Scorpio is considered to be one of the most loyal signs but can later become your worst nightmare due to betrayal.",
                             @"There's a 95% chance that at one time or another you were featured as a stranger in the background of someone's photo!",
                             @"Women are automatically more attracted to guys who make an effort to start the conversation, showing initiative & consistency.",
                             @"If New Orleans were a country, its gun homicide rate would rank second highest in the world.",
                             @"The purpose of dreaming is to help clean up the clutter from the mind and provide a temporary relief from a stressful life...",
                             @"The cell phone camera shutter sound was created to discourage up-skirt shots & photos taken by stalkers.",
                             @"Many people who read the word yawn or yawning begin to feel the urge to yawn.",
                             @"Don't trust other people to do important things for you. You have to do things yourself to control the quality of the results.",
                             @"Men and women who choose to remain single value their freedom & peace of mind. High standards prevent them from settling.",
                             @"No matter where you are or what time it is, you will always cringe when you hear the sound of an alarm clock.",
                             @"Every time you read a statistic that states it's physically impossible to do something you immediately try it.",
                             @"People who over think tend to have a higher survival rate because of the time in which they spend thinking of all potential outcomes!",
                             @"Psychology Says - Be mindful of what you toss away, be careful of what you push away, and think hard before you walk away.",
                             @"Psychology Says - You cannot change the people around you, but you can change the people you choose to be around.",
                             @"Smiling as well as laughing while hurt can actually numb & or relieve the emotional pain in which you're experiencing!",
                             @"Depression thrives and strengthens in clutter. Keeping your home clean can help reduce the sadness you feel!",
                             @"Psychologically, It hurts the most when the person who made you feel so special yesterday, makes you feel so unwanted today.",
                             @"Dinomania - the intense desire and or urge to dance.",
                             @"The cigarette lighter was invented before the match.",
                             @"Disappointment destroys trust and causes a person to become less emotionally available & distant.",
                             @"A jiffy is the scientific name for 1/100th of a second.",
                             @"A cow gives nearly 750,000 glasses of milk in her lifetime.",
                             @"Being taken for granted causes emotional stress & fatigue. No matter how much a person loves you, they'll grow tired & leave.",
                             @"Being taken for granted causes emotional stress & fatigue. No matter how much a person loves you, they'll grow tired & leave.",
                             @"People generally mistake silence for ignorance, calmness for acceptance and kindness for weakness.",
                             @"Behind everyone's favorite song is an unexpressed emotion.",
                             @"Psychology says, sometimes when you hold out for everything, you walk away with nothing.",
                             @"Men find women who are not easily impressed as more attractive and literally irresistible!",
                             @"Don't trust other people to do important things for you. You have to do things yourself to control the quality of the results!",
                             @"Psychology says, true loss is losing something that you love more than yourself",
                             @"In France, it is against the law to sell an “E.T” doll. They have a law forbidding the sale of dolls that do not have human faces.",
                             @"Paintball guns, before the game was invented, were used to mark cows ready for slaughter and trees ready to be cut down.",
                             @"The popular video chat program Skype is short for Sky and peer-to-peer.",
                             @"The things you do for yourself are gone when you are gone, but the things you do for others remain as your legacy.",
                             @"The harder you concentrate on falling asleep, the harder it becomes to actually fall asleep..",
                             @"Identifying who or what is draining you & removing those things & or people from your life can add at least 5 yrs to your lifespan!",
                             @"Ancient Rome had a 4 story tall shopping mall. With 150 shops and offices.",
                             @"Lip balm is addictive and contains substances such as Phenol and salicylic acid which kill bacteria and eat away at living tissue.",
                             @"Ugg boots were invented by surfers to keep their feet warm after leaving the cold ocean.",
                             @"Stethoscopes were invented because doctors found it embarrassing to put their ears against women's chests.",
                             @"The longer you wait & expect something to happen, the greater the psychological pain you experience when things don't go as planned.",
                             @"Ring Pops were invented as an alternative to thumb sucking.",
                             @"Some people can see & hear magnetic waves called infrasound which causes hallucinations that are explained to be ghost.",
                             @"Laying down while extremely tired on your back with your hands to your side completely still can help you control your dreams.",
                             @"Eating peaches reduces acne, dark circles around the eyes and wrinkles!",
                             @"The word slang actually stands for Shortened language.",
                             @"One serving of chocolate ice cream calms nerves, eases the mind and reduces both emotional and physical pain.",
                             @"Psychology says, what hurts you today, makes you stronger tomorrow.",
                             @"You are less likely to experience a nightmare when sharing your bed with someone you trust.",
                             @"Marry someone who makes you laugh when you really don't want to smile. You'll live healthier and longer.",
                             @"Teachers who are unhappy with their personal life are more likely to give students more homework during the week & or weekend.",
                             @"Twitter addict, someone who doesn't bother to log out, checks it first thing every morning & spends more than 8 hrs a day on Twitter.",
                             @"Allowing students to sleep in and begin school around 10 to 11a.m. would significantly improve test scores & GPA.",
                             @"Disturbed sleep is linked to psychosis. Waking someone up out of their sleep can literally drive them temporarily insane.",
                             @"Reading and or hearing the words I miss you can instantly alter & improve your mood for an entire day.",
                             @"A crush can be developed in as little as 25 minutes of meeting someone new & usually last at least 4 months.",
                             @"Life experience and the increase of our maturity level causes us to outgrow certain people and relationships.",
                             @"The best marriage starts as a friendship. Marrying someone you consider a close friend reduces divorce risk by 80%.",
                             @"87% of people would rather remain quiet than to open up to those who may not truly care about what they're going through!",
                             @"Unhappy individuals generally require more sleep than those who are satisfied with their lives.",
                             @"The popular candy Twix gets its name from a combination of the words Twin & Sticks.",
                             @"Due to the amount of blinking, you miss an average of 15 to 20 minutes during a movie lasting an hour and 50 minutes.",
                             @"The downside of being shy is that people misjudge you as thinking you're better than others just because you're quiet.",
                             @"Retail therapy eases the mind, reduces stress and lowers risk of heart disease. Rewarding yourself is beneficial to your health!",
                             @"It takes 2 to 4 yrs to completely get to know someone. Couples who wait this length before marriage are less likely to divorce.",
                             @"People with brown eyes are generally viewed as more honest, non-judgmental and reliable!",
                             @"A clean home is linked to happiness & self esteem. Cleaning your home regularly improves mood & makes people feel more confident.",
                             @"The people who are meant to be in your life will always gravitate back towards you, no matter how far they wander!",
                             @"Listening to music while working out helps the body burn more calories, this also increases overall strength & stamina.",
                             @"Single people tend to overlook the flaws within the relationships of others. When you're single, all you see is happy couples...",
                             @"Dancing improves memory, concentration and alertness. Dancing regular also reduces heart disease risk.",
                             @"We generally allow those whom we love the most to get away with constantly causing emotional stress and disappointment.",
                             @"The sentence Pack my box with five dozen liquor jugs.contains every single letter from the English alphabet.",
                             @"Women have an intuitive sense of when a man feels “inferior” to her. Women don’t want a man who feels he is below her.",
                             @"People who marry someone they considered a best friend before marriage tend to react less negatively to stress.",
                             @"Starting your day with 5 minutes of silence can alter and improve your mood set for the entire day.",
                             @"Depression thrives and strengthens in clutter. Keeping your home clean can help reduce the sadness you feel.",
                             @"People who over think tend to have a higher survival rate because of the time in which they spend thinking of all potential outcomes.",
                             @"You can fight anxious thoughts in advance by preparing for the day ahead. Being organized reduces anxiety & depression.",
                             @"Dehydration is linked to worrying and or over thinking. While dehydrated, you are more likely to worry obsessively.",
                             @"Sticks & stones may break your bones ....but words leave psychological wounds that will never heal.",
                             @"Laughing out loud strengthens the abdomen muscles, improves metabolism and enhances long term memory.",
                             @"People generally say that's crazy during a conversation when they're not really paying attention to what that person is saying.",
                             @"People with a high IQ tend to worry and over think at a higher rate.",
                             @"Being called Baby has a positive effect on the female brain, causing instant emotional stress relief.",
                             @"Atelophobia describes a person who fears that they'll never be good enough for the person they care about.",
                             @"Ages 23 and or 69 are considered the most happiest ages for both men and women.",
                             @"Black tea reduces cancer risk and may also add 5 to 7 years to your lifespan.",
                             @"Creative people are more likely to have a harder time falling asleep during the night.",
                             @"Sometimes people don’t want to hear the truth because they don’t want their illusions destroyed.",
                             @"Seaweed is a very important ingredient in ice cream, it helps it to become thick & it also helps reduce colon cancer.",
                             @"Children with high IQ's are more likely to experiment with marijuana as teens up into their adult years.",
                             @"The Walking Dead crew helped out with the special effects for Gus Fring's death in the Breaking Bad episode Face Off.",
                             @"Biochemically, being in love is similar to having a severe case of obsessive compulsive disorder.",
                             @"The people who are meant to be in your life will always gravitate back towards you, no matter how far they wander.",
                             @"The butterflies you feel in your stomach when seeing your crush is just a natural reaction to stress hormones and fear.",
                             @"The smarter you are, the easier it is to pull an all nighter and still function mentally the next day without sleep.",
                             @"Single people tend to overlook the flaws within the relationships of others. When you're single, all you see is happy couples.",
                             @"Holding in the tears and pretending to be okay puts a lot of stress on your mind as well as your heart. Crying keeps you healthy.",
                             @"The desire to cry or an overwhelming feeling of sadness for no apparent reason is linked to emotional stress caused by missing someone.",
                             @"Giving money away generally makes people happier, less stressed and significantly reduces depression risk.",
                             @"Your emotions can alter your dreams. Dreaming of someone, reflects either the happiness or pain they've caused you to feel!",
                             @"People with a good sense of humor & or those who spend a lot of time laughing are more likely to live for 90 to 100 yrs.",
                             @"Coffee not only enhances alertness but also makes it easier to sense impending danger & or tell when someone's lying.",
                             @"While missing someone, your emotions are more likely to go from happiness to sadness instantly.",
                             @"Candles will burn longer and drip less if they are placed in the freezer for a few hours before using.",
                             @"Monday mornings are so depressing you won't crack a smile until 11:16 am, a study finds",
                             @"The purpose of dreaming is to help clean up the clutter from the mind and provide a temporary relief from a stressful life.",
                             @"In the future we will be able to change the channel using our minds. Scientist are currently working on this as you Shake.",
                             @"Hakuna Matata is a Swahili phrase that literally translates to There are no worries.",
                             @"The last words from Bob Marley were Money can't buy you life",
                             @"The world is running out of chocolate, cocoa farmers are resisting to work because they only get paid 80 cents a day to farm for hours.",
                             @"In Denmark it is illegal to burn foreign flags, but perfectly legal to burn the Danish flag.",
                             @"Once you begin to dislike someone, everything they do tends to annoy you.",
                             @"There is a Hug Me Coca-Cola machine in Singapore which gives you a can of coke each time you hug it.",
                             @"Time seems to go by a lot slower when you miss the one you love.",
                             @"80% of people claim to be  on their way  when they haven't even left yet.",
                             @"Couples who spend at least 10 minutes a day laughing together are more likely to have a stronger relationship.",
                             @"All the characters from Winnie the Pooh have mental disorders, Winnie the Pooh actually has an eating disorder.",
                             @"Drinking a cold glass of water in the morning will wake you faster than a cup of coffee.",
                             @"In the early 1900s, peanut butter was considered a delicacy and only served in New York City's finest tearooms.",
                             @"It is illegal for a teacher to keep the class after the bell as punishment.",
                             @"Writing down your negative thoughts and tossing them in the garbage can actually help to erase your bad mood.",
                             @"Whispering is harder and more straining on your voice than talking normally.",
                             @"The funniest people are often also the most depressed.",
                             @"Music affects your emotions based on the type of music you’re listening to.",
                             @"By 2020, depression will be one of the leading causes of death and disability.",
                             @"The reason people find it hard to be happy is because they always see the past better than it was.",
                             @"88% of people feel tired when they're upset or depressed.",
                             @"Hurricanes were originally named after politicians a weatherman didn't like.",
                             @"Iced tea and or lemonade has been proven to significantly reduce cancer risk.",
                             @"Feeling your phone vibrate when it hasn't is a type of OCD.",
                             @"86% of people use music to escape from their daily stress.",
                             @"Don’t be afraid of death, be afraid of an unlived life.",
                             @"Your immune system destroys at least one cell every day that would have become cancer if it lived.",
                             @"Tip: If you ever want to call a family meeting, just turn off the WiFi router and wait in the room in which its located",
                             @"A bite of someone else's food will always be the best thing you've ever tasted.",
                             @"Taking a quick nap after learning something new can help strengthen your memory.",
                             @"Dim lighting can improve creativity and free thinking.",
                             @"Video games help train your brain to make faster real-life decisions.",
                             @"'Made in China' stickers are made in Korea.",
                             @"One of the hardest tasks for the human mind is convincing yourself that you no longer care.",
                             @"Sometimes, people who are thousands of miles away can make you feel better than the ones right beside you.",
                             @"You can’t hum while holding your nose closed.",
                             @"Your brain alters the way you hear yourself when speaking which is why you sound different when you hear yourself via recording.",
                             @"Plants actually have complex social interactions with each other - They will grow more aggressively when next to unrelated plants.",
                             @"Rats laugh when you tickle them.",
                             @"Psychology claims, that If two past lovers can remain just friends, its either they are still in love, or never were.",
                             @"90% of the time it's not the person you miss, it's the feelings and moments you had when you were with them.",
                             @"Everyone has a song in their playlist which they always skip, but never delete.",
                             @"It takes only 7 seconds to determine another person's attractiveness.",
                             @"If you're hungry, your stomach is technically not growling. It's wambling.",
                             @"If a friendship lasts longer than 7 years, psychologists say it will last a lifetime.",
                             @"Only 2% of the world's population has green eyes.",
                             @"A Japanese soldier stayed hidden for 29 years after WWII ended because he didn't know the war was over.",
                             @"People who spend more time in the sun are more likely to be happier.",
                             @"Turning the faucet off while brushing your teeth can save up to 5 gallons of water.",
                             @"Psychology says, It takes a second to make a mistake, but a lifetime to try and forget it was your fault.",
                             @"Women with higher IQ's have a harder time finding a mate. Intelligent women would rather remain single than be with the wrong person.",
                             @"Alexithymia - deficiency in understanding, processing, or describing emotions.",
                             @"Fasting for 16 hours will reset your body’s natural sleep/wake cycle and is considered an effective way to overcome jetlag.",
                             @"It's possible to turn peanut butter into diamonds.",
                             @"A good laugh and a long sleep are the two best cures for anything!",
                             @"Psychology says, just because a person says they'll always be there for you, doesn't mean you can just take them for granted.",
                             @"Spongebob Squarepants is the only Nicktoon from the 1990s that hasn't ended yet.",
                             @"If the amount of water in your body is reduced by just 1%, youll feel thirsty. If its reduced by 10%, youll die.",
                             @"In Germany there are parking spaces just for women.",
                             @"Eating pineapples can help relieve physical pain.",
                             @"Sometimes you have to go through the worst in order to get to the best.",
                             @"The world's poorest president is of the country of Uruguay because he donates 90% of his salary to charity.",
                             @"The area that surrounds Chernobyl will not be safe for human life again for about, another 20,000 years.",
                             @"Sleep paralysis is when your body is still sleeping while your mind is awake.",
                             @"Before sleeping, 90% of your mind begins to imagine stuff you'd like to happen",
                             @"Social media causes what is referred to as FOMO -- The fear of missing out. Psychologists say this may heighten anxiety and depression.",
                             @"The total amount of data humankind has ever collected up to 2003, is now collected every two days.",
                             @"The more you have to wait for something, the more you appreciate it when you get it."
                            , nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}


-(IBAction)shareIt:(id)sender;{



    UIActionSheet *share = [[UIActionSheet alloc] initWithTitle:@"Sharing Pridiction" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Tweet It...!",@"Facebook It...!",nil];
    [share showInView:self.view];
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (actionSheet.tag == 0) {
        
        
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *tweetsheet = [SLComposeViewController
                                                   composeViewControllerForServiceType:SLServiceTypeTwitter];
            [tweetsheet setInitialText:self.randomFactOut.text];
            
            [self presentViewController:tweetsheet animated:YES completion:nil];
            
            
        }else{
            
            UIAlertView * alertview = [[UIAlertView alloc]initWithTitle:@"Sorry" message:@"You cannot Send Massege Right Now" delegate:self cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil, nil];
            [alertview show];
            
        }
        
        
    }else if (actionSheet.tag == 1)
    {
        
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController *facesheet = [SLComposeViewController
                                                  composeViewControllerForServiceType:SLServiceTypeFacebook];
            [facesheet setInitialText:self.randomFactOut.text];
            
            [self presentViewController:facesheet animated:YES completion:nil];
            
            
        }else{
            
            UIAlertView * alertview = [[UIAlertView alloc]initWithTitle:@"Sorry" message:@"You cannot Send Massege Right Now" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertview show];
            
            
        }}
    
}



-(IBAction)exit:(id)sender;{

 [randomFactOut resignFirstResponder];


}



-(BOOL) canBecomeFirstResponder{
    return YES;
}

-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Began");
}
-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSUInteger index= arc4random_uniform(self.randomFactsArray.count);
    
    self.randomFactOut.text = [self.randomFactsArray objectAtIndex:index];
    
}
-(void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Cancelled");
}
@end
