//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //1. MAKE YOUR DECLARATIONS
    //declare the following three variables and set them to empty objects of the appropriate type:
    
    NSArray *numbersArray = [[NSArray alloc]init];
    
    NSArray *lettersArray = [NSArray new];
    
    NSDictionary *alphabetDictionary = [NSDictionary new];
    
    //2. REASSIGN VALUES TO YOUR VARIABLES
    //On a new line, reassign numbersArray to the return of generateArrayOfNumbers
    
    numbersArray = [self generateArrayOfNumbers];
    
    //and lettersArray to the return of generateArrayOfLetters.
    
    lettersArray = [self generateArrayOfLetters];
    
    //Next, reassign alphabetDictionary to the return of
    //generateNumbersAndLettersDictionaryWithNumbers:letters:,
    //which should take in as arguments the two arrays you previously declared.
    
    alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
    
    
    NSLog(@"%@", numbersArray);
    NSLog(@"%@", lettersArray);
    NSLog(@"%@", alphabetDictionary);
    
    
    return YES;
}
//declare the three following methods and set them to return nil until you have written their implementations:

//3. IMPLEMENT GENERATEARRAYOFNUMBERS
//This method should return an array which contains 26 elements,
//the whole numbers 1 through 26.
//Do not hard-code these values into the array.

-(NSArray *)generateArrayOfNumbers {
    NSMutableArray *numbersArray = [NSMutableArray new];
    for (NSUInteger i = 1; i <= 26; i++) {
        [numbersArray addObject:@(i)];
    }
    
    return numbersArray;
}


//4. IMPLEMENT GENERATEARRAYOFLETTERS
// This method should return an array which contains the 26 letters of the
//English alphabet, lowercase and in ascending order.
//An individual letter can be of type char, which can be altered
//by adding an integer. For example, 'a' + 2 will result in 'c'.
//Use the stringWithFormat: method to convert individual char values to strings.

-(NSArray *)generateArrayOfLetters {
    NSMutableArray *lettersArray = [[NSMutableArray alloc]initWithCapacity:26];
    //An array initialized with enough memory to hold numItems objects.
    //The returned object might be different than the original receiver.
    for (char i = 'a'; i <= 'x'; i++) {
        [lettersArray addObject:[NSString stringWithFormat:@"%c", i]];
    }
    //Returns a string created by using a given format string as a template
    //into which the remaining argument values are substituted.
    //A string created by using format as a template into which the
    //remaining argument values are substituted without any localization.
    return lettersArray;
    
}
//5. IMPLEMENT GENERATENUMBERSANDLETTERSDICTIONARYWITHNUMBERS:LETTERS:
//This method should return a dictionary that contains key-value pairs of numbers
//as keys and their corresponding letters as values by using the
//two provided arguments(key:value as a number:letter).

-(NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbersArray letters:(NSArray *)lettersArray {
    
    NSMutableDictionary *alphabetDictionary = [[NSMutableDictionary alloc]init];
    for (NSInteger i = 0; i < 26; i++) {
        alphabetDictionary[numbersArray[i]] = lettersArray[i];
    }
    
    return alphabetDictionary;
}

@end
