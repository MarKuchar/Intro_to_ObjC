#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PizzaSize) {
    Small = 8,
    Medium = 10,
    Large = 12,
};

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;
- (instancetype)initWithSize: (NSString *) size andToppings: (NSArray *) toppings;


@end
NS_ASSUME_NONNULL_END
