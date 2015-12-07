//
//  ViewController.m
//  Null的区别 nil,Nil,NULL,NSNull
//
//  Created by 温敬亮 on 15/12/7.
//  Copyright © 2015年 wenjl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // nil表示oc对象为空
    UIView *v = nil;
    
    // NULL : C语言各种数据类型指针为空的表示。
    int *intp = NULL;
    
    // Nil是Class的一种
    Class aClass = Nil;
    Class bClass = [NSString class];
    NSLog(@"a:%@",aClass);
    NSLog(@"a:%@",bClass);
 
    
//    NSNull : 主要用户集合类型，因为集合类型不能存放nil值，存放nil，会忽略该元素
//    NSArray、NSSet和NSDictionary 需要判断元素是否为NSNull，否则会有不可估计的错误（例子3）
    
    [self testNSNull];
    
    [self testNSNull2];


    
    
    
}

/**
 *  
 说明两点：
     1.obj4 == nil;
     2.数组里面有nil ，不进行算
 */
- (void)testNSNull
{
    NSObject *obj1 = [[NSObject alloc] init];
    NSObject *obj2 = [NSNull null];
    NSObject *obj3 = [NSObject new];
    NSObject *obj4;
    NSArray *arr1 = [NSArray arrayWithObjects:obj1, obj2, obj3, obj4, nil];
    NSLog(@"arr1 count: %ld", [arr1 count]);    //arr1 count: 3
}

/**
 *      
 说明：
 nil，是初始化数组的结束符。在nil后面都忽略
 */
- (void)testNSNull2
{
    NSObject *obj1;
    NSObject *obj2 = [[NSObject alloc] init];
    NSObject *obj3 = [NSNull null];
    NSObject *obj4 = [NSObject new];
    NSArray *arr2 = [NSArray arrayWithObjects:obj1, obj2, obj3, obj4, nil];
    NSLog(@"arr2 count: %ld", [arr2 count]);   //arr2 count: 0
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
