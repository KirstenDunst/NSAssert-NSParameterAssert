//
//  ViewController.m
//  NSAssert
//
//  Created by CSX on 2017/2/28.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "ViewController.h"
#import "MyAssertHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //给当前线程 添加断言反馈
    MyAssertHandler *myHandler = [[MyAssertHandler alloc] init];
    
    //给当前的线程
    [[[NSThread currentThread] threadDictionary] setValue:myHandler
                                                   forKey:NSAssertionHandlerKey];
    NSString *str = nil;
    
    //只需要一个参数,如果参数存在程序继续运行,如果参数为空,则程序停止打印日志
    //只有当为debug模式的时候才会走这个方法。release模式下不会走这个方法
   NSParameterAssert(str);
    
    int a = 4;
    
    //只有当为debug模式的时候才会走这个方法。release模式下不会走这个方法（会报没有使用变量a）
    
    NSAssert(0, @"a must equal to 5");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
