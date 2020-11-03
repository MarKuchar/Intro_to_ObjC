//
//  Sweater.h
//  ManualMemoryManagement
//
//  Created by Derrick Park on 6/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Person;

typedef NS_ENUM(unsigned char, SweaterType) {
  SweaterTypeGray,
  SweaterTypeNavy,
  SweaterTypeBlack,
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
@property (nonatomic, weak) Person *owner;

- (instancetype)initWithSweaterType:(SweaterType)type;

@end

NS_ASSUME_NONNULL_END
