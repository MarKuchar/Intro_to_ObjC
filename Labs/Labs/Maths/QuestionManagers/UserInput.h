//
//  UserInput.h
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserInput : NSObject

+ (NSString *) getUserInput: (int) length withMessage: (NSString *) promt;

@end

NS_ASSUME_NONNULL_END
