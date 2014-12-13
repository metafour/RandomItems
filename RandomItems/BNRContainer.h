//
//  BNRContainer.h
//  RandomItems
//
//  Created by Camron Schwoegler on 12/13/14.
//  Copyright (c) 2014 metafour.org. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subitems;
}

// Designated initializer
- (instancetype)initWithContainerName:(NSString *)name
                       valueInDollars:(int)value
                         serialNumber:(NSString *)sNumber
                                 item:(id)item;

- (int)totalValue;
- (instancetype)initWithItem:(id)item;
- (void)addItem:(id)item;

- (NSMutableArray *)subItems;
- (void)printSubitems;

@end
