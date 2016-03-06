//
//  UIBarButtonItem+MyExtension.h
//  百思不得姐
//
//  Created by Detailscool on 16/2/18.
//  Copyright © 2016年 Detailscool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MyExtension)

+ (instancetype)itemWithBackgroundImageName:(NSString *)image highlightImageName:(NSString *)highlightImage target:(id)target action:(SEL)action;

@end
