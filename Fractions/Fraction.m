//
//  Fraction.m
//  Fractions
//
//  Created by Hovak on 2/3/16.
//  Copyright © 2016 Hovak Davtyan. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print {
    if (self.denominator != 1)
        NSLog(@"%i/%i", self.nominator, self.denominator);
    else
        NSLog(@"%i", self.nominator);
    

}

-(void) setTo:(int)a over:(int)b {
    if (b != 0) {
        self.nominator = a;
        self.denominator = b;
    } else {
        self.denominator = NAN;
        self.nominator = 0;
    }
    
}

-(void) reduce {
    
    int u = self.nominator;
    int v = self.denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.nominator /= u;
    self.denominator /= u;
}

-(double) convertToNum {
    if (self.denominator != 0)
        return (double) self.nominator / self.denominator;
    else
        return NAN;
}


-(Fraction *) add:(Fraction *)a {
    Fraction *result = [[Fraction alloc]init];
    result.nominator = self.nominator * a.denominator + self.denominator * a.nominator;
    result.denominator = self.denominator * a.denominator;
    [result reduce];
    
    return result;
}






@end
