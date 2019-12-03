//
//  ViewController.m
//  StoryBoardTest
//
//  Created by 杨俊杰 on 2019/11/26.
//  Copyright © 2019 杨俊杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)backController:(UIStoryboardSegue *)sender{
    NSLog(@"页面返回");
}

@end
