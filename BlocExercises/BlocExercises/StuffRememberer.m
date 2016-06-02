//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    
//    if(self.arrayToRememberMutable == nil) {
//        self.arrayToRememberMutable = [[NSMutableArray alloc] init];
//    }
//    
//    self.arrayToRememberMutable = [arrayToRemember mutableCopy];
    
    // just assign another pointer to the same object..
    self.arrayToRememberMutable = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    
    if(self.arrayYouShouldCopyMutable == nil) {
            self.arrayYouShouldCopyMutable = [[NSMutableArray alloc] init];
    }
      // no (copy) property and use this?
//    self.arrayYouShouldCopyMutable = [arrayToCopy mutableCopy];
    self.arrayYouShouldCopyMutable = arrayToCopy;

}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    
    self.floatRemember = floatToRemember;
    
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    
    // This doesn't work since it will create a new object
    //    return [self.arrayToRememberMutable mutableCopy];
    
    return self.arrayToRememberMutable;

}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [self.arrayYouShouldCopyMutable mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    
    // wants you to return NSNotFound if no float exists,
    // but that is type NSInteger??
    return self.floatRemember;
}

@end