//
//  ViewController1.m
//  TEST_Rotate
//
//  Created by dianyi jiang on 29/04/16.
//  Copyright © 2016 dianyi jiang. All rights reserved.
//

#import "PushedViewController.h"
#import <objc/message.h>

@interface PushedViewController ()
@property (assign, nonatomic, getter=isFullScreen) BOOL fullScreen;
@end

@implementation PushedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return UIInterfaceOrientationMaskLandscape;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft;
}

- (BOOL)shouldAutorotate {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return YES;
}


@end
