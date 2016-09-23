//
//  ViewController.m
//  MJ_ExtensitonExample
//
//  Created by chuanglong02 on 16/9/23.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LBHTTPTool.h"
#import "Model.h"
#import <MJExtension.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *url = @"http://192.168.10.200:8080/lbjy-project/showCarts.action?custId=c01";
    [LBHTTPTool get:url params:nil success:^(id responseObject) {
        
        Model *list =[Model mj_objectWithKeyValues:responseObject];
        NSLog(@"%ld",list.OrgBeanList.count);
    } failure:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
