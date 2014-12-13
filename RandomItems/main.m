//
//  main.m
//  RandomItems
//
//  Created by Camron Schwoegler on 12/11/14.
//  Copyright (c) 2014 metafour.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
            NSLog(@"%s", object_getClassName(item));
        }
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Fluffy Mac Spork" serialNumber:@"R2D2A"];
        NSLog(@"%@", item);
        
        items = nil;
    }
    return 0;
}
