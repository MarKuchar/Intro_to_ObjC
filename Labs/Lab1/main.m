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
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputChars[strcspn(inputChars, "\n")] = '\0';
            NSLog(@"%@", inputString);
            if (*inputChars != 'q') {
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
                    case 3:;
                        [inputString stringByAppendingString:@", eh"];
                        printf("'%s' numbersized: %s \n", inputChars, [inputString UTF8String]);
                        break;
                    case 4:
                        printf("'%s' canadianized: %s \n", inputChars, (char*)[[inputString stringByAppendingString:@", eh"] UTF8String]);
                        break;
                    case 5:
                        if ([[inputString substringFromIndex: [inputString length] - 1] isEqualToString :@"?"]) {
                            printf("I don't know.\n");
                        } else if ([[inputString substringFromIndex: [inputString length] - 1] isEqualToString :@"!"]) {
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
