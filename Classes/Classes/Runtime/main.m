//
//  main.m
//  Runtime
//
//  Created by Derrick Park on 6/18/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import "Candidate.h"
#import "Company.h"
#import "Company+SecretHacker.h"

// Introspection
// * `Class`: object representing class
//  - Get with `[obj class]` or `NSClassFromString`
// * `Selector (SEL)`: internal id for method name
//  - Get with `@selector()` or `NSSelectorFromString`
// * `Method`: object representing method
//  - Get with `class_getInstanceMethod`

// (More useful for App development)
// * `isMemberOfClass`: is it an instance of the class?
// * `isKindOfClass`: is it an instance of the class or an inherited class?
// * `respondsToSelector`: does it have the method?
// * `performSelector`: call the method


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    Candidate *candidate1 = [[Candidate alloc] initWithName:@"John" school:@"CICCC" yearsOfExperience:3];
    Company *amazon = [[Company alloc] initWithName:@"Amazon"];
    [amazon shouldHire:candidate1];
    
    Class company = [amazon class];
    Class superclass = class_getSuperclass(company);

    NSLog(@"Superclass of %@ is %@", NSStringFromClass(company), NSStringFromClass(superclass));

    SEL selector = @selector(shouldHire:);
    NSLog(@"Selector: %@", NSStringFromSelector(selector));

    Method method = class_getInstanceMethod(company, selector);
    NSLog(@"The number of arguments: %d", method_getNumberOfArguments(method)); // Why? 3

    NSLog(@"is Member of NSObject: %d", [amazon isMemberOfClass:[NSObject class]]);
    NSLog(@"is Kind of NSObject: %d", [amazon isKindOfClass:[NSObject class]]);

    if ([amazon respondsToSelector:@selector(shouldHire:)]) {
      [amazon performSelector:@selector(shouldHire:) withObject:candidate1];
      // More than 2 args
      // Use: objc_msgSend(amazon, @selector(shouldHire:), candidate1, ...);
    }

    [amazon shouldHire:candidate1];
    
    // c style function pointer casting
    // BOOL isHired0 = ((const BOOL (*)(id, SEL, ...)) objc_msgSend)(amazon, @selector(shouldHire:), candidate1);
    BOOL isHired = [objc_msgSend(amazon, @selector(shouldHire:), candidate1) boolValue] ;
    printf("hired? %d\n", isHired);
    
    Method original = class_getInstanceMethod([amazon class], @selector(shouldHire:));
    Method replaced = class_getInstanceMethod([amazon class], @selector(shouldHireHacked:));
    method_exchangeImplementations(original, replaced);
    
    [amazon shouldHire:candidate1];
    
    // property
    objc_property_t prop = class_getProperty([amazon class], "employees");
    const char *attributes = property_getAttributes(prop);
    printf("%s\n", attributes);

    // log the methods in Company dynamically
    unsigned int count;
    Method *methods = class_copyMethodList([amazon class], &count);
    printf("methods: %d\n", count);
    for (int i = 0; i < count; ++i) {
      printf("%s\n", sel_getName(method_getName(*(methods++))));
    }
  }
  
  return 0;
}
