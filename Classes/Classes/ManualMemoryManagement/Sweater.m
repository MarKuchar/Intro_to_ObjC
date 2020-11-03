//
//  Sweater.m
//  ManualMemoryManagement
//
//  Created by Derrick Park on 6/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

- (instancetype)initWithSweaterType:(SweaterType)type {
  if ((self = [super init])) {
    _type = type;
  }
  return self;
}

- (NSString *)description {
  switch (_type) {
    case SweaterTypeGray:
      return @"Gray Sweater";
    case SweaterTypeNavy:
      return @"Navy Sweater";
    case SweaterTypeBlack:
      return @"Black Sweater";
  }
}

- (void)dealloc
{
  // usually you will dealloc all instance variables
  NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
}

@end
