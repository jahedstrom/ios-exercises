//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *stringToArray = [characterString componentsSeparatedByString:@";"];
    
    return stringToArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *arrayToString = [characterArray componentsJoinedByString:@";"];
    
    return arrayToString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSSortDescriptor *alphaSort = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    NSArray *sortedArray = [characterArray sortedArrayUsingDescriptors:@[alphaSort] ];
    
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
/*
    // I spent a long time trying to figure out how to do this
    // without a block variable..
    
    __block BOOL worfIsPresent = NO;
    
    NSPredicate *worfIsPresentPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    [characterArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        // Ok to not cast obj since I know it's a string?
        if ([worfIsPresentPredicate evaluateWithObject:obj]) {
            worfIsPresent = YES;
            *stop = YES;
        }
                                               
    }];
    
    return worfIsPresent;
*/
 
    // Other ways to do this:
    // create temp BOOL variable
    // loop through array, search each substring using rangeOfString:options:
    // check against NSNotFound, set BOOL variable accordingly
    // return BOOL variable
    
    BOOL worfIsPresent2 = NO;
    for (NSString *testWorf in characterArray) {
        NSRange found = [testWorf rangeOfString:@"Worf" options:NSCaseInsensitiveSearch];
        if ( found.location != NSNotFound) {
            worfIsPresent2 = YES;
        }
    }
    
    return worfIsPresent2;
}

@end
