//
//  Greeter.m
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (BOOL) shouldSayHello {
    return [_delegate shouldSayHello];
}

@end
