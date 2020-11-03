//
//  User.m
//  Classes
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName
{
  self = [super init];
  if (self) {
    _firstName = firstName;
    _lastName = lastName;
  }
  return self;
}

+ (void) sayHello {
  NSLog(@"Hello");
}

+ (NSString *) fullName {
  static NSString *fn = @"Derrick Park";
  return fn;
}

@end
