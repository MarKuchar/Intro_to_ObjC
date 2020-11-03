//
//  BlockTester.m
//  Blocks
//
//  Created by Derrick Park on 6/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "BlockTester.h"

@implementation BlockTester

// 1. creating and calling a block
- (void)runTest1 {
  void (^myBlock)(id, NSUInteger, BOOL*) = ^(id obj, NSUInteger index, BOOL *stop) {
    NSLog(@"Name: %@", (NSString *) obj);
  };
  BOOL stop;
  myBlock(@"Derrick", 0, &stop);
}

// 2. passing a block to a method
- (void)runTest2 {
  NSArray *names = @[@"Lebron", @"Kobe", @"Stephen"];
  [names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    NSLog(@"Name: %@", (NSString *) obj);
  }];
}

- (void)runTest3 {
  NSArray *names = @[@"Ronaldinho", @"Obina", @"Ronaldo", @"Messi", @"Beckham"];
  
  NSString *firstLetter = @"R";
  __block int startsWithR = 0;
  
  // Global variables, Parameters, Stack variable (local variables - it copies),
  // __block variables (by reference), Block local variables
  
  [names enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    NSString *player = obj;
    if ([firstLetter isEqualToString:[player substringToIndex:1]]) {
      startsWithR++;
    }
  }];
  
  NSLog(@"Players start with R: %d", startsWithR);
}

- (void)runTest4 {
  __weak typeof(self) weakSelf = self;
  [self goPlaySoccerWithBlock:^(NSString *player) {
//    NSLog(@"party with %@", player);
    [weakSelf party:player];
  }];
}

- (void)goPlaySoccerWithBlock:(void (^)(NSString *player)) block {
  self.block = block;
  NSArray *names = @[@"Ronaldinho", @"Obina", @"Ronaldo", @"Messi", @"Beckham"];
  NSUInteger index = arc4random_uniform((int) names.count);
  self.block(names[index]);
}

- (void)party:(NSString *)player {
  NSLog(@"party time with %@!!", player);
}

- (void)dealloc
{
  NSLog(@"deallocated");
}
@end
