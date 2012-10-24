//
//  PSReuseViewController.m
//  UIPopoverController
//
//  Created by Karl on 23/10/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PSReuseViewController.h"

@interface PSReuseViewController ()

@property (strong, nonatomic) UIPopoverController *popover;


@end

@implementation PSReuseViewController
@synthesize popover=_popover;
@synthesize dataSpurce=_dataSpurce;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)Touch_ShowPopover:(id)sender {
    
    PSPopoverViewController *popoverView = [[PSPopoverViewController alloc] init];
    self.popover = [[UIPopoverController alloc] initWithContentViewController:popoverView];    
    [popoverView setDataSource:self.dataSpurce];
    
    UIButton* senderButton = (UIButton*)sender;
    
    [self.popover setPopoverContentSize:CGSizeMake(300, 200)];
    [self.popover presentPopoverFromRect:senderButton.bounds inView:senderButton permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    
}
@end
