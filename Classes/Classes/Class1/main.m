//
//  main.m
//  Classes
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "User.h"
#import "Constants.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // insert code here...
//    NSLog(@"Hello, World!");
//    Person *p1 = [[Person alloc] initWithFirstName:@"Derrick" andLastName:@"Park"];
//    NSLog(@"%@", [p1 firstName]);
//
//    User *u1 = [[User alloc] initWithFirstName:@"Derrick" andLastName:@"Park"];
//    [User sayHello];
//
//    NSLog(@"%@", [u1 firstName]);
//    NSLog(@"%@", u1.firstName);
//    NSLog(@"%@", [u1 lastName]);
////    [u1 setLastName:@"PARK"];
//    [u1 setFirstName:@"DERRICK"];
//    u1.firstName = @"Hello";
//
//    NSLog(@"constant: %@", firstName);
  
    int x = 10;
    NSLog(@"%d", x);
    int *y = &x;
    NSLog(@"address of x: %p", y);
    NSLog(@"content of what y is pointing: %d", *y);
    int **z = &y;
    NSLog(@"address of y: %p", &y);
    NSLog(@"content of z: %p", z);
    NSLog(@"content of content of what z is pointing: %d", **z);
  }
  return 0;
}
