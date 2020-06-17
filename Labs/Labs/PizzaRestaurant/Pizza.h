#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, PizzaSize) {
    Small = 30,
    Medium = 50,
    Large = 70,
};

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;


@end
NS_ASSUME_NONNULL_END
