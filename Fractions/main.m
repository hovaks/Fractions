//
//  main.m
//  Fractions
//
//  Created by Hovak Davtyan on 01.02.16.
//  Copyright © 2016 Hovak Davtyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *aFraction = [Fraction new];
        Fraction *bFraction = [Fraction new];
        
        [aFraction setTo:5 over:0];
        [bFraction setTo:1 over:4];
        
        [aFraction print];
        [bFraction print];
        
        Fraction *cFraction;
        
        cFraction = [aFraction add: bFraction];
        [cFraction print];
        
        NSLog(@"%f", [cFraction convertToNum]);
        
        
        
       
        
        
        
    }
    return 0;
}
