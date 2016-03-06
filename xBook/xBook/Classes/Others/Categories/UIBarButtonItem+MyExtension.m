//
//  UIBarButtonItem+MyExtension.m
//  百思不得姐
//
//  Created by Detailscool on 16/2/18.
//  Copyright © 2016年 Detailscool. All rights reserved.
//

#import "UIBarButtonItem+MyExtension.h"

@implementation UIBarButtonItem (MyExtension)

+ (instancetype)itemWithBackgroundImageName:(NSString *)image highlightImageName:(NSString *)highlightImage target:(id)target action:(SEL)action {
    
    UIButton * button = [[UIButton alloc]init];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    button.bounds = CGRectMake(0,0,button.currentBackgroundImage.size.width,button.currentBackgroundImage.size.height);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc]initWithCustomView:button];
}
@end
