//
//  SUBNavgationController.m
//  TEST_Rotate
//
//  Created by dianyi jiang on 29/04/16.
//  Copyright © 2016 dianyi jiang. All rights reserved.
//

#import "SUBNavgationController.h"

@interface SUBNavgationController ()

@end

@implementation SUBNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return [self.topViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return [self.topViewController shouldAutorotate];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}



@end
