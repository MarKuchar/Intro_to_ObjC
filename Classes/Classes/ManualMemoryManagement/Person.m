//
//  Person.m
//  ManualMemoryManagement
//
//  Created by Derrick Park on 6/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
  if ((self = [super init])) {
    _name = name; // manual management
    _sweater = nil;
  }
  return self;
}

- (NSString *)quote {
  return [[NSString alloc] initWithFormat:@"%@ says: Give me my sweater back!", _name];
}

- (NSString *)description {
  if (_sweater) {
    return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
  } else {
    return _name;
  }
}

- (void)dealloc {
  NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
}
@end
