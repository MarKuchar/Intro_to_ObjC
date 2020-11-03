//
//  Person.h
//  ObjectiveC
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype)init;
- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName;
- (NSString *) firstName;

@end
