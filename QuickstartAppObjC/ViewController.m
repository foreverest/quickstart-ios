//
//  ViewController.m
//  QuickstartAppObjC
//
//  Created by Ela Malani on 3/15/17.
//  Copyright © 2017 Microsoft. All rights reserved.
//

#import "ViewController.h"
@import MobileCenterCrashes;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view, typically from a nib.
    // Add Crash Me button
    
    UIButton *button= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor = UIColor.grayColor;
    
    [button setFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"Crash Me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) crashAction:(UIButton*)sender {
    [MSCrashes generateTestCrash];
}


@end
