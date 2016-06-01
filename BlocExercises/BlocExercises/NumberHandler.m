//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    // We must know the type of number in NSNumber for this to be accurate
    NSNumber *twiceNum = @([number intValue] * 2);
    
    
    return twiceNum;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowNumber = number;
    NSInteger highNumber = otherNumber;
    
    NSMutableArray *numArray = [[NSMutableArray alloc] initWithCapacity:1];
    
    if (lowNumber > highNumber) {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    // can't use loop index to assign array elements..
    int i = 0;
    
    for (NSInteger n = lowNumber; n <= highNumber; n++) {
        numArray[i] = [NSNumber numberWithInteger:n];
        i++;
    }
    
    return numArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSInteger lowNumber = [arrayOfNumbers[0] integerValue];
    
    // Start loop index at 1 since we already have the first element
    for (NSUInteger i = 1; i < arrayOfNumbers.count; i++ ) {
        NSInteger lowTest = [arrayOfNumbers[i] integerValue];
        if (lowTest < lowNumber) {
            lowNumber = lowTest;
        }
    }
    
    
    return lowNumber;
}

@end
