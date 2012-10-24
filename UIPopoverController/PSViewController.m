//
//  PSViewController.m
//  UIPopoverController
//
//  Created by Karl on 23/10/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PSViewController.h"

@interface PSViewController ()

@property (strong, nonatomic) PSReuseViewController *reuseViewController;
@property (strong, nonatomic) PSReuseViewController *anotherReuseViewController;

@end

@implementation PSViewController
@synthesize placeholder = _placeholder;
@synthesize anotherPlaceholder = _anotherPlaceholder;

@synthesize reuseViewController=_reuseViewController;
@synthesize anotherReuseViewController=_anotherReuseViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.reuseViewController = [[PSReuseViewController alloc] init];
    
    NSArray *firstDataSource = [[NSArray alloc] initWithObjects:@"YES", @"NO", nil];
    
    [self.reuseViewController setDataSpurce:firstDataSource];
    [self.reuseViewController loadView];
    [self.reuseViewController viewDidLoad];
    
    
    [self.placeholder addSubview:self.reuseViewController.view];
    

    [self.reuseViewController viewDidAppear:YES];
    
    
    self.anotherReuseViewController = [[PSReuseViewController alloc] init];
    
    NSArray *secondDataSource = [[NSArray alloc] initWithObjects:@"Item 1", @"Item 2", @"Item 3", @"Item 4", nil];
    
    [self.anotherReuseViewController setDataSpurce:secondDataSource];
    [self.anotherReuseViewController loadView];
    [self.anotherReuseViewController viewDidLoad];
    
    [self.anotherPlaceholder addSubview:self.anotherReuseViewController.view];
    
    [self.anotherReuseViewController viewDidAppear:YES];
    
}

- (void)viewDidUnload
{
    [self setPlaceholder:nil];
    [self setAnotherPlaceholder:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
