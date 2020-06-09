//
//  User.h
//  Classes
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

// Public properties
// @property (attributes, ...) type name;

// * attributes
// atomic (default) - thread safe
// nonatomic - non thread safe (more performant)
// strong(default), weak
// assign(default) - primitive types
// copy: copying the contents
// readonly: only getter
// readwrite(default): getter and setter

// change the name of getter / setter
// getter=name
// setter=name
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readwrite) NSUInteger age;

+ (NSString *) fullName;

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName;
+ (void) sayHello;

@end

