//
//  main.m
//  Runtime
//
//  Created by Martin Kuchar on 2020-06-30.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Candidate.h"
#import "Company.h"
#import "Company+SecretHacker.h"
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Candidate *c1 = [[Candidate alloc] initWithName:@"Martin" school:@"CICCC" yearsOfExperience:2];
        Company *cisco = [Company new];
        
        [cisco shouldHire:c1];
        printf("\n");
        
        SEL selector = @selector(shouldHire:);
        NSLog(@"Selector %@", NSStringFromSelector(selector));
        
        Method original = class_getInstanceMethod([cisco class], @selector(shouldHire:));
        Method replaced = class_getInstanceMethod([cisco class], @selector(shouldHireHacked:));
        method_exchangeImplementations(original, replaced);
        
        [cisco shouldHire:c1];
        
        
        
    }
    return 0;
}
