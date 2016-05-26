//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    
    NSString *favoriteCheeseStart = @"My favorite cheese is tempCheese.";
    
    NSString *favoriteCheeseSaying = [favoriteCheeseStart stringByReplacingOccurrencesOfString:@"tempCheese" withString:cheeseName];
    
//    NSLog(@"%@", favoriteCheeseSaying);  // Debug
    
//    Also considered this option to prevent having to create intermediate string...
//    favoriteCheeseSaying = [NSString stringWithFormat:@"%@%@%@", @"My favorite cheese is ", cheeseName, @"."];
    
//    NSLog(@"%@", favoriteCheeseSaying);  // Debug
    
    return favoriteCheeseSaying;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSMutableString *nameNoCheese = [NSMutableString stringWithString:cheeseName];
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        
        // get range of cheese word
        NSRange cheeseRange = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch];
        
        // modify range to account for leading space
        cheeseRange.location = (cheeseRange.location - 1);
        cheeseRange.length = (cheeseRange.length + 1);
        
        // modify string to remove cheese characters
        [nameNoCheese deleteCharactersInRange:cheeseRange];
        
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        // Nothing to do here..
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nameNoCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *numberOfCheeses;
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        numberOfCheeses = @"1 cheese";
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        numberOfCheeses = [NSString stringWithFormat:@"%lu%@", (unsigned long)cheeseCount, @" cheeses"];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return numberOfCheeses;
}

@end
