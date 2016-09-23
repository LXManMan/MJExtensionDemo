//
//  CustomerCourses.h
//  DemoSummary
//
//  Created by chuanglong02 on 16/9/23.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import <Foundation/Foundation.h>

@class courseType;
@class Course;
@interface CustomerCourses : NSObject
@property(nonatomic,strong)NSString *organizationId;

@property(nonatomic,strong)NSString *totalPrice;

@property(nonatomic,strong)NSString *amount;
@property(nonatomic,strong)courseType *courseType;
@property(nonatomic,strong)Course *course;
@end
