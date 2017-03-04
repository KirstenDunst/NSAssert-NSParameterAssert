//
//  MyAssertHandler.m
//  NSAssert
//
//  Created by CSX on 2017/2/28.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "MyAssertHandler.h"

@implementation MyAssertHandler


//处理Objective-C的断言
- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...
{
    NSLog(@"NSAssert Failure: Method %@ for object %@ in %@#%li", NSStringFromSelector(selector), object, fileName, (long)line);
}
//处理C的断言
- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...
{
    NSLog(@"NSCAssert Failure: Function (%@) in %@#%li", functionName, fileName, (long)line);
}



@end
