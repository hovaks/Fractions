//
//  Fraction.h
//  Fractions
//
//  Created by Hovak on 2/3/16.
//  Copyright © 2016 Hovak Davtyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

//Properties

    @property int nominator;
    @property int denominator;

//Methods
    -(void) print;
    -(void) setTo: (int)a over: (int)b;
    -(void) reduce;
    -(double) convertToNum;
    -(Fraction *) add: (Fraction *)a;

@end
