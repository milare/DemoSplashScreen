//
//  DemoSplashScreenViewController.h
//  DemoSplashScreen
//
//  Created by Bruno Macedo on 19/04/11.
//  Copyright 2011 home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashScreenViewController.h"

#define SPLASH_HIDE_DELAY    1.0f

@interface DemoSplashScreenViewController : UIViewController {
    // Splash Screen
    SplashScreenViewController *splashViewController;
}
@property (retain, nonatomic) SplashScreenViewController *splashViewController;


/**
 * Splash Screen
 **/
- (void)showSplash;
- (void)hideSplash;


@end
