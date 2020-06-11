//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"
#import "FoodTruck.h"
#import "Cook.h"
#import "Charge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // ---- Say Hello! ----
//        Greeter *greeter = [[Greeter alloc] init];
//        FriendlyGreetingDecider *greetingDecider = [[FriendlyGreetingDecider alloc] init];
//        greeter.delegate = greetingDecider;
//
//        NSLog(@"%@", [greeter shouldSayHello]);
        
        // ---- FoodTracker ----
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        Cook *cook = [[Cook alloc] init];
        Charge *charge = [[Charge alloc] init];
        
//        truckA.delegate = cook;
//        truckB.delegate = cook;
        truckA.delegate = charge;
        truckB.delegate = charge;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
