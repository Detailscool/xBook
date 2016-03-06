//
//  MyNavigationViewController.m
//
//  Created by Detailscool on 16/2/18.
//  Copyright © 2016年 Detailscool. All rights reserved.
//

#import "MyNavigationViewController.h"

@interface MyNavigationViewController ()

@end

@implementation MyNavigationViewController

+ (void)initialize {
    
    UINavigationBar * bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    
//    UIBarButtonItem * item = [UIBarButtonItem appearance];
//    NSMutableDictionary * attrs = [NSMutableDictionary dictionary];
//    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:18];
//    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
//    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
//    
//    NSMutableDictionary * attrs2 = [NSMutableDictionary dictionary];
//    attrs2[NSFontAttributeName] = [UIFont systemFontOfSize:18];
//    attrs2[NSForegroundColorAttributeName] = [UIColor grayColor];
//    [item setTitleTextAttributes:attrs2 forState:UIControlStateDisabled];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        
        UIButton * button = [[UIButton alloc]init];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.frame = CGRectMake(0, 0, 44, 44);
//        button.backgroundColor = [UIColor greenColor];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        
    }
    
    [super pushViewController:viewController animated:YES];
}

- (void)backClick {
    [self popViewControllerAnimated:YES];
}

@end
