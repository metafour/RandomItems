//
//  main.m
//  RandomItems
//
//  Created by Camron Schwoegler on 12/11/14.
//  Copyright (c) 2014 metafour.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [BNRItem randomItem];
        NSLog(@"%@", item);
        BNRContainer *subcontainer = [[BNRContainer alloc] initWithContainerName:@"Subcontainer" valueInDollars:500 serialNumber:@"SUBCONTAINER-1" item:item];
        BNRContainer *container = [[BNRContainer alloc] initWithContainerName:@"Container" valueInDollars:1000 serialNumber:@"CONTAINER-1" item:item];
        [container addItem:subcontainer];
        NSLog(@"%@", container);
        
        items = nil;
        container = nil;
    }
    return 0;
}
