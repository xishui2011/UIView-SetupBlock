//
//  ViewController.m
//  UIViewSetUpDemo
//
//  Created by alan chen on 14-4-15.
//  Copyright (c) 2014年 HuJiang. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SetupBlock.h"

@interface ViewController ()
@property (nonatomic,strong)UIView *bottomView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
	
    self.bottomView = [UIView viewWithFrame:CGRectMake(0, 200, CGRectGetWidth(self.view.frame), 50) setupBlock:^(UIView *that) {
        UIButton *upBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 10, 80, 30)];
        [upBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [upBtn setTitle:@"Up" forState:UIControlStateNormal];
        [upBtn setBackgroundColor:[UIColor blackColor]];
        [upBtn addTarget:self action:@selector(upButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [that addSubview:upBtn];
        
        UIButton *downBtn = [[UIButton alloc]initWithFrame:CGRectMake(190, 10, 80, 30)];
        [downBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [downBtn setTitle:@"Down" forState:UIControlStateNormal];
        [downBtn setBackgroundColor:[UIColor blackColor]];
        [downBtn addTarget:self action:@selector(downButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [that addSubview:downBtn];
        
    }];
    self.bottomView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.bottomView];
}

- (void)upButtonPressed:(id)sender{
    [UIView animateWithDuration:0.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.y -= 50;
        self.bottomView.frame = rect;
    }];
}

- (void)downButtonPressed:(id)sender{
    [UIView animateWithDuration:0.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.y += 50;
        self.bottomView.frame = rect;
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
