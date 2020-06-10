//
//  Box.m
//  Lab2
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Box.h"

@implementation Box {
    float _height;
    float _width;
    float _lenght;
}

- (instancetype)initWithHeight: (float) height  width: (float) width andLength: (float) lenght
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _lenght = lenght;
    }
    return self;
}

- (float)calculateVolume {
    return _height * _width * _lenght;
}

- (float)fitInside: (Box *) anotherBox {
    if ([anotherBox calculateVolume] > [self calculateVolume]) {
        return [anotherBox calculateVolume] / [self calculateVolume];
    }
    return [self calculateVolume] / [anotherBox calculateVolume];
}

@end
