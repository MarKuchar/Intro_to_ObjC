//
//  BlockTester.h
//  Blocks
//
//  Created by Derrick Park on 6/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockTester : NSObject

@property (nonatomic, copy) void(^block)(NSString *);

- (void)runTest1;
- (void)runTest2;
- (void)runTest3;
- (void)runTest4;

@end

NS_ASSUME_NONNULL_END
