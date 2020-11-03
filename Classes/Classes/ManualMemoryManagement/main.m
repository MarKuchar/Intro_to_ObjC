//
//  main.m
//  ManualMemoryManagement
//
//  Created by Derrick Park on 6/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sweater.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    Person *derr = [[Person alloc] initWithName:@"Derrick"];
//    Person *leo = [[Person alloc] initWithName:@"Leo"];
//    // derr -> @Person(@"Derrick")      +1
//    // leo -> @Person(@"Leo")           +1
//
//    Sweater *navySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
//    Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
//    // navySweater  -> @Sweater(SweaterTypeNavy)            +1
//    // blackSweater -> @Sweater(SweaterTypeBlack)           +1
//
//    derr.sweater = blackSweater;
//    leo.sweater = navySweater;
//    // sweater property(retain) will increment the ref count
//    // derr.sweater = @Sweater(SweaterTypeBlack)        +2
//    // leo.sweater = @Sweater(SweaterTypeNavy)          +2
//
//    navySweater = nil;
//    blackSweater = nil;
//
//    // leo.sweater  -> @Sweater(SweaterTypeNavy)            +1
//    // derr.sweater -> @Sweater(SweaterTypeBlack)           +1
//
//    leo.sweater = blackSweater;
//
//    // derr.sweater   -->
//    //                    @Sweater(SweaterTypeBlack)       +2
//    // leo.sweater    -->
//
//    derr.sweater = nil;
//    // derr.sweater   -->  nil
//    // leo.sweater    -->  @Sweater(SweaterTypeBlack)       +1
//    derr = nil;
//    leo = nil;
    
    Person *p1 = [[Person alloc] initWithName:@"Derrick"];
    Sweater *s1 = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
    
    p1.sweater = s1;
    s1.owner = p1;
    
    p1 = nil;
    s1 = nil;
    
  }
  return 0;
}
