//
//  ViewController.m
//  textviewplaceholddemo
//
//  Created by bb_coder on 14-11-21.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "ViewController.h"
#import "BBTextView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BBTextView * textView = [[BBTextView alloc]initWithFrame:CGRectMake(10, 100, 300, 300)];
    textView.backgroundColor = [UIColor greenColor];
    textView.font = [UIFont systemFontOfSize:20];
    textView.placeholder = @"This is placeholder!";
    [self.view addSubview:textView];
    
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(10, 420, 300, 44)];
    field.backgroundColor = [UIColor brownColor];
    field.placeholder = @"This is placeholder!";
    [self.view addSubview:field];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
