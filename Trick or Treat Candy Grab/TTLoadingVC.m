//
//  TTLoadingVC.m
//  Trick or Treat Candy Grab
//
//  Created by Michael Revell on 10/16/13.
//  Copyright (c) 2013 Michael Revell. All rights reserved.
//

#import "TTLoadingVC.h"
#import "TTLevelVC.h"

@interface TTLoadingVC ()

@end

@implementation TTLoadingVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)begin:(id)sender {
    TTLevelVC *level = [[TTLevelVC alloc] initWithNibName:@"TTLevelVC" bundle:nil];
    [self presentViewController:level animated:YES completion:nil];
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
