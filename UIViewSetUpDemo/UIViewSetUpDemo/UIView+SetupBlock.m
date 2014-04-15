//
//  UIView+SetupBlock.m
//  HJSongs
//
//  Created by alan chen on 13-12-16.
//  Copyright (c) 2013年 HuJiang. All rights reserved.
//

#import "UIView+SetupBlock.h"

@implementation UIView (SetupBlock)

+(instancetype)viewWithFrame:(CGRect)frame setupBlock:(void(^)(UIView *that))setupBlock{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    if(setupBlock){
        setupBlock(view);
    }
    return view;
}

@end
