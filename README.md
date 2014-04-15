
### Combin Methord
#####1.toggle the UIView+SetupBlock.h & UIView+SetupBlock.m into you project
#####2.add 
	#import "UIView+SetupBlock.h"

##### to where you want to use the category
#####3.you can use it as 

	self.bottomView = [UIView viewWithFrame:CGRectMake(0, 200, CGRectGetWidth(self.view.frame), 50) setupBlock:^(UIView *that) {
		that.backgroundColor  = [UIColor grayColor];
		// do some thing you want 
              
        UIButton *downBtn = [[UIButton alloc]initWithFrame:CGRectMake(190, 10, 80, 30)];
        [downBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [downBtn setTitle:@"Down" forState:UIControlStateNormal];
        [downBtn setBackgroundColor:[UIColor blackColor]];
        [downBtn addTarget:self action:@selector(downButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [that addSubview:downBtn];
        
    }];
    [self.view addSubview:self.bottomView]; 

#####4. the most convenient of this category is you needn't you Obviously know  what kinds of views you have add to the parentView.if you to create a class of ParentUIView and you add the subviews in the 
	-(id)init;
	-(id)initWithFrame
#####mthords ,when you use the parentView ,you have always go to ParentView class ,and to find what kind UI I have add to the parentView or what name of the subviews .but the category help you solve the question quickly.
