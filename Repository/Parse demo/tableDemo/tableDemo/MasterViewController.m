//
//  MasterViewController.m
//  tableDemo
//
//  Created by Blue Horn on 12/9/13.
//  Copyright (c) 2013 bluehorn. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
 //   NSMutableArray *_objects;
    NSMutableArray *_detailObjects;
    NSMutableArray *_thumbnailImage;
}
@end

@implementation MasterViewController

@synthesize horoscope;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title= @"Zodiac List";
    
//    _objects = [[NSMutableArray alloc] initWithObjects:
//                @"Aries March21-April 19",
//                @"Taurus April 20-May 20",
//                @"Gemini May 21-June 20",
//                @"Cancer June 21-July 22",
//                @"Leo July 23-August 22",
//                @"Virgo August 23-September22",
//                @"Libra September23-October 22",
//                @"Scorpio Ocotober 23-November 21",
//                @"Sagittarius November 22-December 21",
//                @"Capricon December 22-January 19",
//                @"Aquarius January 20-February 18",
//                @"Pisces February19-Marach 20"
//                ,nil];
//    _detailObjects = [[NSMutableArray alloc] initWithObjects:
//                      @"Aries are fire signs and those born under this element are regarded in astrology as adventurous, active and outgoing. It won't matter where you go or how remote or unusual it is - from the Outback to the Antarctic - you can be sure that an Aries has been there before you (or at the very least you will meet one along the way!) Aries is a uniquely naive sign. ",
//                      
//                      @"Underneath their cool, calm and collected exterior, Taureans differ greatly from all the other signs of the zodiac. Taureans manage to discreetly stay apart from the crowd, even though they have a well-earned reputation for being socialisers. They will let others get close, but only so close as they want them. Some claim that trying to get your point across to a Taurean, should they not want to hear you, is rather similar to talking to the trees – they simply won't budge. And, there is no such thing as an open-book Taurean. Their feelings, fears and desires often run far deeper than anyone around them would guess.",
//                      
//                      @"In ancient Greek mythology, Gemini's ruler - Mercury, was the light-footed messenger of the gods who darted back and forth across the heavens delivering news - which might explain why those born under the sign of the 'Twins' are always on the move; thirsty for knowledge and new experiences. Terminally curious and sometimes even mischievous, Geminis are multi-faceted souls who enjoy knowing a little bit of everything but generally not too much about one particular subject. It's just that variety is the spice of their lives!",
//                      
//                      @"Those born under the sign of Cancer, ruled by the mysterious Moon, are one of the zodiac's enigmas. It is fair to say that most Cancers are a bundle of contradictions. Compassionate and caring with friends, family and lovers, yet they can cut to the bone with their jealous remarks and ever-changing moods. Endearingly eccentric on one hand, and on the other, insecure about how others see them. Like their astrological symbol - the Crab - Cancers can appear hard and insensitive on the outside. However, for those of us who know and love a 'Moon Child', we understand that deep below lies a softness and sensitivity that makes them so very special... ",
//                      
//                      @"Love triumphs over all for Leo, which is ruled by the heart and operates from this dimension too. Leo's are born fortunate. Charismatic and positive-thinking they attract not only an abundance of friends and opportunities, but manage to survive life's stormy times with style and good humour.Once a Lion is committed to a relationship, they are totally devoted and faithful. Should their heart or trust be broken they never forgive or forget. When a relationship breaks down (even a long standing one) they can disappear into the sunset without a backward look.",
//                      
//                      @" Virgos are often put down badly by many astrologers and written up as being fussy and narrow-minded. But when a Virgo shines, there is practically no sign to match their inner light. An in-tune Virgo is a treat to meet. When a Virgo is confident within themselves they are the most successful, structured and creative of all the signs.Many Virgos can be found working in the 'service to others' industries, ranging from welfare work, doctors, school-teachers through to practising natural forms of healing like massage, herbal remedies etc. ",
//                      
//                      @"Every adolescent Libran's fantasy is to find the Prince or Princess of their dreams. As their lives unfold, the experiences, false starts, dramas, broken hearts and disillusionment they encounter seeking this personal Holy Grail, often shapes their futures in the most extra-ordinary manner. Love and love-lost makes a big difference to the Libran although their often happy-go-lucky appearance against all kinds of odds may not reveal this as fact.Librans can switch off from the world around then and during these periods much more occurs on the deep innermost levels of the Libran's psyche, than their closest companions imagine. ",
//                      
//                      @"Reputed to be the 'most powerful' sign of the zodiac, Scorpios lead fate filled lives and have intense and dramatic personal relationships. Even as children Scorpios are often found to be wise beyond their years. Many astrologers call this the sign of the 'oldest souls'. Old and wise beyond the average, Scorpios often know all the answers, except sometimes; they too often have difficulty finding what they need to develop their own happiness. Passion, desire and power go hand in hand for Scorpios. Their biggest challenge and test in life is choosing between the power of love and the love of power. Coming to grips with their extraordinary emotional depths and sensitivity isn't easy for those around them. ",
//                      
//                      @"Ruled by the benefic planet Jupiter, Sagittarians possess a natural exuberance, sense of adventure and love of life that makes them one of the most optimistic zodiac signs of all. Like their astrological symbol - the Archer - Sagittarians are renowned for aiming their sights towards whatever it is they find alluring - a love partner, dream job, vacation - and making it their own. They believe that anything is possible - and because of this belief system, Sagittarians are adept at seeking out their very own pot of gold at the end of the rainbow.But sometimes trying to tie down these free-spirited individuals is frustrating for those around them. Sagittarians are happiest on the move - exploring new cultures and ideas and many are attracted to occupations related to travel, the media, outdoor work and philosophical pursuits.",
//                      
//                      @"The sign of the high roller, Capricorn is regarded as the zodiac’s top, but also quiet, life and business achievers. But, there are two very different types of Capricorns.The first is represented by the mountain goat, always climbing higher and higher; never content until reaching the top. The second is the garden goat, with little adventurous spirit or ambition-happy to remain within a small domain, refusing to budge unless it is pushed. Either type of Capricorn, however, is patient and persevering. They reach their goals because they know the longest journey commences with a single step and that the first step is always the most difficult. ",
//                      
//                      @"Special note for Aquarians: With the new Millennium heralding the Dawn of the Age of Aquarius, at this time, ready or not, your sign is regarded as the zodiac's leader. You are the trendsetter for the future and because of this high responsibility, many under born your sign will be undergoing at this time, as we approach the Millennium, the pressure of personal change (particularly in your values and what makes you content and happy). Yours has always been a philanthropic sign. Now more than ever these qualities will be highlighted.Those born under the sign of Aquarius not only march to a different drummer, they make up new music as they go along. ",
//                      
//                      @"Mysterious and alluring individuals, most Pisces are extremely talented, but even though they are gifted in many ways, they still manage to spend most of their lives battling 'confusing' conditions. Pisces is the sign symbolised by the image of two fish. Their symbol depicts one fish heading upward, the other pulling downward. This mirrors how Pisceans are frequently torn between two pathways in life, or actually do live two very different existences at the same time.The number 2, is a very powerful number for them. This zodiac sign is acknowledged as being the Saint and the Sinner rolled into one; the trendsetter of fashion or art, the lost soul, the philosopher and the psychotic and the visionary. "
//                      
//                      , nil];
    
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return _objects.count;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
//
//    NSDate *object = _objects[indexPath.row];
//    cell.textLabel.text = [object description];
//    return cell;
//}



-(id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        ///classname to query on goes here the one created on parse.com
        self.parseClassName =@"horoscope";
        
        //the key where the data is stored on parse.com
        self.textKey= @"name";
        
        self.pullToRefreshEnabled= NO;
        
        self.paginationEnabled = NO;
    }
    return self;
}

-(PFQuery *) queryForTable{
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    
    query.cachePolicy = kPFCachePolicyCacheThenNetwork;
    
    return query;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.textLabel.text = [object objectForKey:@"name"];
    return cell;
   
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSMutableArray *object = _detailObjects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
//    }

    if ([segue.identifier isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        
       // PFObject *object = [self.objects objectsAtIndexes:indexPath.row];
       
        
    }
    
    
//    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        RecipeDetailViewController *destViewController = segue.destinationViewController;
    
//    PFObject *object = [self.objects objectAtIndex:indexPath.row];
//    Recipe *recipe = [[Recipe alloc] init];
//    recipe.name = [object objectForKey:@"name"];
//    recipe.imageFile = [object objectForKey:@"imageFile"];
//    recipe.prepTime = [object objectForKey:@"prepTime"];
//    recipe.ingredients = [object objectForKey:@"ingredients"];
//    destViewController.recipe = recipe;
    
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        DetailViewController *destViewController = segue.destinationViewController;
//        
//        PFObject *object = [self.objects objectAtIndex:indexPath.row];
//        

        
    }


@end
