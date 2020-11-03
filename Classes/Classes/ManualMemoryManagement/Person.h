//
//  Person.h
//  ManualMemoryManagement
//
//  Created by Derrick Park on 6/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Sweater; // pre-declaration, telling the compiler it exists. (faster compilation)

@interface Person : NSObject

@property (nonatomic, strong) Sweater *sweater;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end

NS_ASSUME_NONNULL_END
