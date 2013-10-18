//
//  TTWinVC.m
//  Trick or Treat Candy Grab
//
//  Created by Michael Revell on 10/17/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import "TTWinVC.h"

@interface TTWinVC ()

@end

@implementation TTWinVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)nextLevel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
