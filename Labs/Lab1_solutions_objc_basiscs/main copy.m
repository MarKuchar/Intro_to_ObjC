//
//  main.m
//  ObjectiveC
//
//  Created by Derrick Park on 6/8/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef signed char BOOL;

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    BOOL b = NO; // NO
    NSLog(@"obcbool: %d", b);
    
    float f = 3.14f; // 4 bytes
    double d = 3.14; // 8 bytes
    CGFloat cf = 3.14; // 32 bit OS: 4 bytes, 64 bit OS: 8 bytes
    
    NSLog(@"float: %-10.2f", f);
    NSLog(@"double: %lf", d);
    
    // Arch dependent
    char a1 = 10; // 1 byte   %c
    short a2 = 11; // 2 bytes  %hd
    int a3 = 11; // 4 bytes    %d
    long a4 = 12; // 32 bit OS: 4 bytes, 64 bit OS: 8 bytes  %ld
    long long a5 = 16; // 8 bytes  %lld
    
    // Apple Types
    NSInteger a6 = 15; // signed        32 bit OS: 4 bytes, 64 bit OS: 8 bytes  %ld
    NSUInteger a7 = 17; // unsigned     32 bit OS: 4 bytes, 64 bit OS: 8 bytes  %lu
    
    // Explicit Data types - regardless of arch
    int8_t i = 1;
    int16_t i1 = 2;
    int32_t i2 = 2;
    int64_t i3 = 2;

  }
  return 0;
}
