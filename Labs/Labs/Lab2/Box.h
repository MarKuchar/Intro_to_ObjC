//
//  Box.h
//  Lab2
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject {
    
}
- (instancetype)initWithHeight: (float) height  width: (float) width andLenght: (float) lenght;
- (float)calculateVolume;
- (float)fitInside: (Box *) anotherBox;

@end

NS_ASSUME_NONNULL_END
