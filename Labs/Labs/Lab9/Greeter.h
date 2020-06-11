//
//  Greeter.h
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate <NSObject>
@required
- (BOOL) shouldSayHello;

@end


@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
