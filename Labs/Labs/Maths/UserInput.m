//
//  UserInput.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

+ (NSString *) getUserInput: (int) length withMessage: (NSString *) promt {
    if (length < 1) {
        length = 255;
    }
    NSLog(@"%@",promt);
    char userInputChars[length];
    char *result = fgets(userInputChars, length, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:userInputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}


@end
