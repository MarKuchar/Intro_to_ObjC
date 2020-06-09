//
//  Person.m
//  Classes
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person {
  // private instance variables
  // _var (convention)
  NSString *_firstName;
  NSString *_lastName;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _firstName = @"";
    _lastName = @"";
  }
  return self;
}

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName
{
  self = [super init];
  if (self) {
    _firstName = firstName;
    _lastName = lastName;
  }
  return self;
}

- (NSString *) firstName {
  return _firstName;
}

- (void) setFirstName: (NSString *) firstName {
  _firstName = firstName;
}

@end
