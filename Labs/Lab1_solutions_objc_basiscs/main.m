//
//  main.m
//  Lab1
//
//  Created by Derrick Park on 6/9/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    // NSString * vs NSMutableString *
    
    NSString *str = @"Hello";
    NSString *str2 = [str stringByReplacingOccurrencesOfString:@"Hell" withString:@"Jell"];
    if ([str isEqualToString:str2]) {
      
    }
    
    // Number? (int, ...)
    // Wrapper classes - int -> Integer, double -> Double, ...
    NSString *input = @"12";
    NSNumber *num = [[[NSNumberFormatter alloc] init] numberFromString:input];
    if (num != nil) {
      // number!
      NSInteger i = [num integerValue];
      NSLog(@"integer: %ld", i);
    } else {
      // not a number!
      NSLog(@"Input cannot be converted to integer");
    }
    
    while (1) {
      // if input is "q", then break
    }
    
  }
  return 0;
}
