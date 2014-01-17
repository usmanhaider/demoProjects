//
//  scienceFactsViewController.m
//  shakeNshare
//
//  Created by Blue Horn on 10/25/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import "scienceFactsViewController.h"
#import <Social/Social.h>

@interface scienceFactsViewController ()

@end

@implementation scienceFactsViewController
@synthesize scienceFacts;
@synthesize outLabel;
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
    self.scienceFacts = [[NSArray alloc] initWithObjects:
                         @"Dead sea is so dense with salt, you can easily float on it without drowning.",
                         @"A dogs heart beats 40 times faster than yours",
                         @"The hotest planet in the solar system is Venus with an temprature of 864F.",
                         @"There is enough energy in one bolt of lightning o power a home for two weeks",
                         @"The average distance between the Earth and the Moon is 238,857 miles(384,392 km)",
                         @"Termites cant digest wood, the protozoa in their stomach actually are the devourers of the wood.",
                         @"Air becomes liquid at about minus 190 degrees Celsius",
                         @"The ears of a cricket are located on the front legs, just below the knee.",
                         @"Some species of earthworm can have as many as 10 hearts.",
                         @"When baby giraffes are born, they drop six feet to the groud and land on their heads.",
                         @"The shark has to keep moving to stay alive",
                         @"To avoid predators, a mother Slow Loris licks its offspring with poison before sending them off to search for food",
                         @"A mole can dig a tunnel 300 feet long in just one night",
                         @"40 to 50 percent of body heat can be lost through the head(no hat) as a result of its extensive circulatory network",
                         @"The Earth orbits the sun at an average speed of 107,220 kms per hour.",
                         @"There is enough gold in the Earth's crust to cover the entire land surface knee-deep",
                         @"The microwave was invented after a researcher walked by a radar tube and a chocolate bar melted in his pocket.",
                         @"THe human eye blinks an average of 4,200,000 times each year.",
                         @"In your lifetime your body will produce more that 25,000 quarts of saliva",
                         @"You can convert graphite into diamond by applying a temprature of 3000 Celsius and pressure of 100,000 atm",
                         @"The average person falls asleep in 7 minutes",
                         @"Mosquitoes like the scent of estrogen, hence, women get bitten by mosuitoes more often than men do",
                         @"A new born blue whale measures 20-26 feet long and weighs up to 6,614 pounds",
                         @"While hibernating, frogs breathe through their skin",
                         @"If given the same mass, our body would actually be hotter than the sun.",
                         @"Gold is the only metal that doesn't rust, even if it is burried in the ground of thousands of years.",
                         @"An ostrich's eye is bigger than its brain.",
                         @"The sky is blue because when sunlight collides with our atmosphere, colors of the shortest wavelengths (violet and blue) are scattered and our eyes are more sensitive to see blue.",
                         @"In a life time, your heart will pump about 50,000,000 gallons. That's enough to fill 2,500 rail road cars 21 miles long.",
                         @"The deepest location on Earth is Mariana Trench, about 11 km deep in the North Pacific ocean.",
                         @"A zebra is white with black stripes",
                         @"Shrip's hearts are in their heads.",
                         @"Ten minutes of one hurricane contains enough energy to match the nuclear stockpiles of the world.",
                         @"Using satellite-surveying techniques, scientists have determined that Los Angeles, California is moving east, At the rate estimated to be about one-fifth on an inch per year, the city is moving closer to San Gabriel Mountains",
                         @"Studies have found that right handed people tend to scratch with their left hand and visa-versa",
                         @"Talc is the softest known substance.",
                         @"A space vehicle must move at a rate of at least 27.35km (17 miles) per second to escape Earth's gravity.",
                         @"Liauid air looks like water with a bluish tint.",
                         @"Rain falls at an average speed of 22 mph.",
                         @"The human body has less muscles in it than a caterpillar.",
                         @"Lobsters have blue blood.",
                         @"The average person has 100,000 hair on his/her head. Each hair grows about 5 inches (12.7 cm) every year.",
                         @"Pluto is no longer considered a planet. It is now known as a Dwarf Planet",
                         @"The lightest organ in the human body is the lung.",
                         @"A person would die if all of the toxic ingredients of one cigarette were directly injected into the bloodstream.",
                         @"The noble gas Xenon lasers can cut through even diamond tipped blades will not cut.",
                         @"Just twenty seconds worth of fuel remained when Apollo 11's lunar module landed on the moon.",
                         @"On average, Elephants sleep for about 2 hours per day.",
                         @"The Pistol Star is the most luminous star known -10 million times the power of the Sun and as big as the size of Earth's entire orbit around the Sun.",
                         @"Interstellar space is not complete vacuuum: there are a few hydrogen atoms per cubic centimeter.",
                         @"Earthworms have 5 hearts.",
                         @"The average ocean floor is 12,000 feet.",
                         @"Most people blink about 17,000 times a day.",
                         @"The ant can lift 50 times its own weight, and can pull 30 times its own weight.",
                         @"It is estimated that plastic container can resist decomposition for as long as 50,000 years.",
                         @"The surface speed record on the moon is 10.56 miles per hour. It was set with lunar rover.",
                         @"The surface area of a human lung is equal to that of tennis court.",
                         @"Men have more blood in their circulatory system than women and more red blood cells.",
                         @"A fish never closes its eyes.",
                         @"Honey does not spoil.",
                         @"The largest iceberg ever found was 208 miles long and 60 miles wide.",
                         @"Minus 40 degrees Celsius is exactly the same temperature as minus 40 degrees Fahrenheit.",
                         @"In an average lifetime a person will walk the equivilant of three times around the world.",
                         @"Giraffes have the same number of neck bones as humans:Seven.",
                         @"The Roller Coaster was invented in the 17th century in Russia.",
                         @"A neutron star has such a density that a teaspoonful of its matter would weigh more than all the people on Earth.",
                         @"While we are awake, our brain generates enough power to illuminate a light bulb of 25 watts.",
                         @"Human jaw muscles can generate a force of 200 pounds (90.8 kilograms) on the molars.",
                         @"There are 206 bones in the adult human body and there are 300 in children(as they grow some of the bones fuse together).",
                         @"Its impossible to sneeze with your eyes open.",
                         @"The largest state in the world, Western Australia covers one-third of the Australian continent. It spans over 2.5 million square kilometers (1 Million square miles).",
                         @"An Astronaut can be up to 2 inches taller returning from space. The cartilage disks in the spine expand in the absence of gravity.",
                         @"Saturn isn't the only planet with rings: Jupitar, Uranus and Neptune have them too.",
                         @"Penguins can jump as high as 6 feet in the air.",
                         @"A large sunspot can last for about a week.",
                         @"Bees flap their wings 300 times a second.",
                         @"When you blush, your stomach lining also reddens.",
                         @"A squirrel lives about 9 years.",
                         @"Over 1000 birds a year die from smashing into windows.",
                         @"If a person or an animal is born colorblind, they instantly have excellent night vision.",
                         @"The planet Saturn has a desnity lower than water. So, if placed in water it would float.",
                         @"Muscles are made up of bundles from about 5 in the eyelid to about 200 in the buttock muscle.",
                         @"More than 20,000,000 seahorses are harvested each year for folk medicinal purposes.",
                         @"A stroke of lightning discharges from 10 to 100 million volts and 30,000 amperes of electricity.",
                         @"The original name for the butterfly was flutterby!.",
                         @"There are more psycho-analysts per capita in Buenos Aires than any other place in the world.",
                         @"20/20 vision means the eye can see normally at 20 feet. 20/15 is better; the eye can see at 20 feet what another eye sees at 15 feet.",
                         @"The placement of a donkeys eyes in its heads enables it to see all four feet at the all tiems!",
                         @"Antarctica is the only continent that does not have land areas below sea level.",
                         @"The planet Venus does not tilt as it goes around the Sun, so consequently, it has no seasons.",
                         @"The sun is about 149 million kms(93 million miles) from earth yet it's 270,000 times closer than the next nearest star, which is 4.3 light years away.",
                         @"In the Andes, time is often measured by how long it takes to smoke a cigarette.",
                         @"A mosquito has 47 teeth.",
                         @"South Africa produces two-thirds of the world's gold.",
                         @"Thomas Edison, light bulb inventor, was afraid of the dark.",
                         @"The tongue of a blue whale is bigger than a taxi cab, and can weigh as much as an elephant.",
                         @"If all major forms of cardiovascular disease were eliminated, human life expectance would increase by 9.78 years.",
                         @"The mass of our entire atmosphere is estimated to be some 5.5 quadrillion tons.",
                         @"If you take one pound of cob webs and spread them out in one straight line, it will go around the earth 2 times.",
                         @"A teaspoonful of soil may contain 100 million bacteria.",
                         @"Voyager 1 spacecraft is the farthest human-made object in the universe.",
                         @"The Reticulated Pythons are the world's longest snake and also the longest reptile.",
                         @"Right handed people live, on average, nine years longer than left handed people do.",
                         @"Mars is red because its soil is very rusty (iron oxide).",
                         @"Gallium is a metal which melts on palm of the hand, due to its low melting point (29.76 Celsius).",
                         @"Natural gas has no odour. The smell is added artificially so that leaks can be detected.",
                         @"Belzoni is the Catfish Capital of the world.",
                         @"Men can read smaller print than women;women can hear better.",
                         @"The Earth weighs around 6,588,000,000,000,000,000,000,000 tons.",
                         @"A day on the planet Mercury is twice as long as its year. Mercury rotates very slowly but revolves around the Sun in slightly less than 88 days.",
                         @"The human brain is 80% water.",
                         @"Murphys Oil Soap is the chemical most commonly used to clean elephants.",
                         @"The Galileo spacecraft traveled to Jupiter at a speed of 107,000 mph; fast enough to cross the U.S. in 85 seconds.",
                         @"Hydrogen gas is the least dense substance.",
                         @"House flies have a lifespan of two weeks.",
                         @"There are between 100,000,000,000 and 1,000.000.000.000 stars in a normal galaxy.",
                         @"When you get goosebumps and your hair stands, the hair helps to trap air, making you feel warmer by keeping in your body heat.",
                         @"The only letter not appearing on the Periodic Table is the letter J.",
                         @"Armadillos spend about 80% of their lives asleep.",
                         @"Fish are the only vertebrates that outnumber birds.",
                         @"A U.S. backed government study found that pigs can become alcoholics.",
                         @"Your brain is capable of storing more than 100 billion bits of information.",
                         @"Sharks are immune to cancer.",
                         @"One acre of trees absorbs enough carbon dioxide per year to match that emitted by driving a car 26,000 miles.",
                         @"Most cows give more milk when they listen to music.",
                         @"Researchers recently sprouted a lotus seed known to be 1,288 years old, making it the oldest seed ever germinated.",
                         @"There are no poisonous snakes in Maine.",
                         @"It is estimated that millions of trees in the world are accidentally planted by squirrels who bury nuts and then forget where they hid them.",
                         @"It takes 70% less energy to produce a ton of paper from recycled paper than from trees.",
                         @"The Sun travels at a speed of 250km (155 miles) per second, but it still takes 230 million years for it to complete a single reovlution of the galaxy.",
                         @"It takes approximately 12 hours for food to entirely digest",
                         @"A camel has straight spine, despite of its hump!",
                         @"If your mouth was completely dry, you would not be able to distinguish the taste of anything.",
                         @"The wristwatch was invented in 1904 by Louis Cartier.",
                         @"Diamonds are the hardest known substance.",
                         @"Starfish dont have brains.",
                         @"There are more bacteria and microbes in our body than actual cells that makeup the body.",
                         @"The amount of water beneath our ground soil is 50 times as much as all the water in the rivers and lakes combined.",
                         @"The seeds of an Indian Lotus tree remain viable for 300 to 400 years.",
                         @"When the glass breaks, the cracks move at speeds of up to 3,000 miles per hour.",
                         @"The canopy of a rainforest is so thick, only one percent of the sunlight reaches the ground.",
                         @"The first electronic digital computer(called ENIAC - the Electronic Numerical Integrator and Calculator) was developed in 1946 and contained over 18,000 vacuum tubes.",
                         @"The leg bones of a bat are so thin that no bat can walk.",
                         @"Flying from London to New York by Concord, due to the time zones crossed, you can arrive 2 hours before you leave.",
                         @"A dog can understand between 35 to 40 commands.",
                         @"There is enough fuel in a full tank of a Jumbo jet to drive an average car four times around the world.",
                         @"The longest living cells in the body are brain cells which can live an entire lifetime.",
                         @"85% of all the plants and animals live in the sea.",
                         @"A hummingbird weighs less than a penny.",
                         @"The waste produced by one chicken in its lifetime can supply enough electricity to run a 100 watt bulb for five hours."
                         , nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)shareit:(id)sender;{

    
    UIActionSheet *share = [[UIActionSheet alloc] initWithTitle:@"Sharing Pridiction" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Tweet!",@"Facebook It...!",nil];
    [share showInView:self.view];
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (actionSheet.tag == 0) {
        
        
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *tweetsheet = [SLComposeViewController
                                                   composeViewControllerForServiceType:SLServiceTypeTwitter];
            [tweetsheet setInitialText:self.outLabel.text];
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
            [facesheet setInitialText:self.outLabel.text];
            
            [self presentViewController:facesheet animated:YES completion:nil];
            
            
        }else{
            
            UIAlertView * alertview = [[UIAlertView alloc]initWithTitle:@"Sorry" message:@"You cannot Send Massege Right Now" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertview show];
            
            
        }}
    


}



- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}
-(BOOL) canBecomeFirstResponder{
    return YES;
}
-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Began");
}
-(void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Canceld");
}
-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSUInteger index= arc4random_uniform(self.scienceFacts.count);
    
    self.outLabel.text = [self.scienceFacts objectAtIndex:index];
}
@end
