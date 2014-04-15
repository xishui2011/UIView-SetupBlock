//
//  UIView+SetupBlock.h
//  HJSongs
//
//  Created by alan chen on 14-1-12.
//  Copyright (c) 2013年 HuJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SetupBlock)

+(instancetype)viewWithFrame:(CGRect)frame setupBlock:(void(^)(UIView *that))setupBlock;

@end
