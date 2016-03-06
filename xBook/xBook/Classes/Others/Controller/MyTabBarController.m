//
//  MyTabBarController.m
//
//  Created by Detailscool on 16/2/17.
//  Copyright © 2016年 Detailscool. All rights reserved.
//

#import "MyTabBarController.h"
#import "MyNavigationViewController.h"

#import "PushViewController.h"
#import "RankViewController.h"
#import "CircleViewController.h"
#import "SearchViewController.h"
#import "MoreViewController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController
+ (void)initialize {
    
    // 获得全局TabBarItem
    UITabBarItem * tabBarItem = [UITabBarItem appearance];
    
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],
                                         NSForegroundColorAttributeName:[UIColor lightGrayColor]} forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],
                                         NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

//    [self setupWith:[[MyEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
//    
//    [self setupWith:[[MyNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
//    
//    [self setupWith:[[MyFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
//    
//    [self setupWith:[[MyMineViewController alloc]initWithStyle:UITableViewStyleGrouped] title:@"我" image:@"tabBar_me_icon"selectedImage:@"tabBar_me_click_icon"];

}

- (void)setupWith:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    [self addChildViewController:[[MyNavigationViewController alloc]initWithRootViewController:vc]];
}


@end
