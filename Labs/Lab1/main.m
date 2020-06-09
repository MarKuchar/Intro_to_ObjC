//
//  main.m
//  Labs
//
//  Created by Martin Kuchar on 2020-06-08.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        while (*inputChars != 'q') {
            printf("Enter your 'string' for operations or press 'q' to quit.\n");
            fgets(inputChars, 255, stdin);
            
            // find in the classes
            inputChars[strcspn(inputChars, "\n")] = '\0';
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            if (![inputString isEqualToString:@"q"]) {
                printf("Choose an operation you want to execute with '%s':\n"
                        "1. Uppercase\n"
                        "2. Lowercase\n"
                        "3. Numbersize\n"
                        "4. Canadianize\n"
                        "5. Respond\n"
                        "6. De-Space-it\n", inputChars);
                
                char operationOptionChar[255];
                fgets(operationOptionChar, 255, stdin);
                int operationOptionNumber = atoi(operationOptionChar);

                switch (operationOptionNumber) {
                    case 1:
                        printf("'%s' uppercased: %s \n", inputChars, [[inputString uppercaseString] UTF8String]);
                        break;
                    case 2:
                        printf("'%s' lowercased: %s \n", inputChars, [[inputString lowercaseString] UTF8String]);
                        break;
                    case 3:
                        if (atoi((char*)[inputString UTF8String]) != 0) {
                            printf("'%s' numbersized: %d \n", inputChars, atoi((char*)[inputString UTF8String]));
                        } else {
                            printf("Cannot be numbersized..\n");
                        }
                        break;
                    case 4:
                        printf("'%s' canadianized: %s \n", inputChars, (char*)[[inputString stringByAppendingString:@", eh?"] UTF8String]);
                        break;
                    case 5:
                        if ([[inputString substringFromIndex: [inputString length] - 1] isEqualToString : @"?"]) {
                            printf("I don't know.\n");
                        } else if ([[inputString substringFromIndex: [inputString length] - 1] isEqualToString : @"!"]) {
                            printf("Whoa, calm down!\n");
                        }
                        break;
                    case 6:
                        printf("'%s' de-space-ited: %s \n", inputChars, [[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"] UTF8String]);
                        break;
                    default:
                        printf("Invalid");
                        break;
                }
            }
        }
    }
    return 0;
}
