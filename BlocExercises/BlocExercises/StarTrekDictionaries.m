//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    // iterate through array
    // for each item in array, grab objectForKey: and put it in a new array
    NSMutableArray *favoriteDrinks = [[NSMutableArray alloc] initWithCapacity:1];
    
    for (NSDictionary *testDict in charactersArray) {
        NSString *favDrink = testDict[@"favorite drink"];
        if (favDrink) {
            [favoriteDrinks addObject:favDrink];
        }
        
    
    }
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    // create a new mutable dictionary that is a copy of one sent in
    
    NSMutableDictionary *characterDictionaryMutable = [characterDictionary mutableCopy];
    
    //[characterDictionaryMutable setObject:@"This is Captain Picard, get me another martini!" forKey:@"quote"];
    
    // Is this also the preferable way to add a key/value pair vs above?
    characterDictionaryMutable[@"quote"] = @"This is Captain Picard, get me another martini!";
    
    // Sending a mutable dictionary back to a non-mutable pointer?
    // read some on stackoverflow
    // one option is to use [characterDictionaryMutable copy] to return an
    // immutable type.
    // other option is to not worry about it since it's not a shared object?
//    return [characterDictionaryMutable copy];
    return characterDictionaryMutable;
}

@end
