//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
   
    NSMutableString *intString = [[NSMutableString alloc] init];
   
    NSInteger lowNumber, highNumber;
    
    if (number <= otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
 // In my opinion, this is more messy to read that just creating two local variables for the for loop..
    
 // for (NSInteger n = (number <= otherNumber ? number : otherNumber) ; n <= (number <= otherNumber ? otherNumber : number); n++) {
    
    for (NSInteger n = lowNumber; n <= highNumber; n++) {
        [intString appendFormat:@"%ld", (long) n];
    }
    
    
    return intString;
}

@end
