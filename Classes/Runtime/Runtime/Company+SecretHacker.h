//
//  Company+SecretHacker.h
//  Runtime
//
//  Created by Derrick Park on 6/18/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company (SecretHacker)

- (BOOL)shouldHireHacked:(Candidate *)candidate;

@end

NS_ASSUME_NONNULL_END
