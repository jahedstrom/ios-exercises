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
 
    NSString *favoriteCheeseSaying = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favoriteCheeseSaying;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSString *nameNoCheese = [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, cheeseName.length)];
    
    return nameNoCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        NSString *numberOfCheeses = @"1 cheese";
        return numberOfCheeses;
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *numberOfCheeses = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
        return numberOfCheeses;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
}

@end
