//
//  TTLevelVC.m
//  Trick or Treat Candy Grab
//
//  Created by Michael Revell on 10/16/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import "TTLevelVC.h"
#import "TTWinVC.h"

@interface TTLevelVC ()

@property (strong, nonatomic) NSMutableArray *candies;
@property int score;
@property int max_score;
@property int max_time;
@property int level;

@end

@implementation TTLevelVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.level = 1;
    }
    return self;
}
- (void)candyClicked: (id) sender
{
    UIButton *button = (UIButton*) sender;
    NSLog(@"kitten, %@", button.titleLabel.text);
    [button removeFromSuperview];
    self.score++;
    self.scoreLabel.text = [NSString stringWithFormat:@"%d / %d", self.score, self.max_score];
    if (self.score == self.max_score) {
        self.level++;
        TTWinVC *win = [[TTWinVC alloc] initWithNibName:@"TTWinVC" bundle:nil];
        [self presentViewController:win animated:YES completion:nil];
        
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.score = 0;
    self.levelLabel.text = [NSString stringWithFormat:@"Level: %d", self.level];
    [self resetLevel:self.level];
}

- (void) resetLevel:(int)level {
    self.score = 0;
    self.max_score = level * 10;
    self.scoreLabel.text = [NSString stringWithFormat:@"%d / %d", self.score, self.max_score];
    
    for (int i = 0; i < level * 10; i++) {
        [self performSelector:@selector(addCandy)  withObject:nil afterDelay:((arc4random() % 10000)/ 2000) ];
    }
    
}

-(void)addCandy {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
    // Do any additional setup after loading the view from its nib.
    int x = arc4random() % 200 + 50;
    int y = arc4random() % 300 + 100;
    UIButton *b = [[UIButton alloc] initWithFrame:CGRectMake(x, y, 20, 20)];
    [b setEnabled:YES];
    b.titleLabel.text = @"Test";
    //b.titleLabel.text = [NSString stringWithFormat:@"%d", i];
    
    b.backgroundColor = color;
    //b.titleLabel.TextColor = UIColor;
    [self.view addSubview:b];
    [b addTarget:self action:@selector(candyClicked:) forControlEvents:UIControlEventTouchDown];
    //[self.candies addObject:b];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
