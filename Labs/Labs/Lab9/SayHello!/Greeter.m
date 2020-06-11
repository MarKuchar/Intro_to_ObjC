//
//  Greeter.m
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (NSString *) shouldSayHello {
    if ([_delegate shouldSayHello]) {
        return @"Hello!";
    }
    return @"";
}

@end
