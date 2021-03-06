//
//  DemoSplashScreenViewController.m
//  DemoSplashScreen
//
//  Created by Bruno Macedo on 19/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import "DemoSplashScreenViewController.h"

@implementation DemoSplashScreenViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

/**
 * Splash Screen
 **/
@synthesize splashViewController;

- (void)showSplash
{
    self.splashViewController = [[SplashScreenViewController alloc] init];
    [self presentModalViewController: splashViewController animated:NO];
    [self performSelector:@selector(hideSplash) withObject:nil afterDelay: SPLASH_HIDE_DELAY];
}


- (void)hideSplash
{
    [[self splashViewController] dismissModalViewControllerAnimated: YES];
}


#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
