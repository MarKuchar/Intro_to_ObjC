//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *) stringByPigLatinization {
    NSCharacterSet *charSetOne = [NSCharacterSet characterSetWithCharactersInString:@"cstpw"];
    NSCharacterSet *charSetOnePartTwo = [NSCharacterSet characterSetWithCharactersInString:@"h"];
    NSCharacterSet *charSetTwo = [NSCharacterSet characterSetWithCharactersInString:@"wrdfghjklmnbcxz"];
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSString *result = [[NSString alloc] init];
    
    for (int i = 0; i <= [words count] - 1; i++) {
        NSString *wordOrigin = [words objectAtIndex:i] ;
        NSString *word = [[words objectAtIndex:i] lowercaseString];
        
        if ([charSetOne characterIsMember: [word characterAtIndex:0]] && ([charSetOnePartTwo characterIsMember: [word characterAtIndex:1]])) {
            NSString *wordResult = [[[word substringFromIndex:2] stringByAppendingString: [word substringToIndex:2]] capitalizedString];
            result = [result stringByAppendingFormat:@"%@kay ", wordResult];
        } else if ([charSetTwo characterIsMember: [word characterAtIndex:0]]) {
            NSString *wordResult = [[[word substringWithRange:NSMakeRange(1, [word length] - 1)] stringByAppendingString: [word     substringToIndex:1]] capitalizedString];
            result = [result stringByAppendingFormat:@"%@kay ", wordResult];
        } else {
            result = [result stringByAppendingFormat:@"%@ ", wordOrigin];
        }
    }
    return result;
}

@end
