//
//  BNRContainer.m
//  RandomItems
//
//  Created by Camron Schwoegler on 12/13/14.
//  Copyright (c) 2014 metafour.org. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithContainerName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
                            item:(id)item {
    self = [super init];
    
    if (self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = sNumber;
        _subitems = [[NSMutableArray alloc] init];
        [_subitems addObject:item];
    }
    
    return self;
}

- (instancetype)initWithItem:(id)item {
    return [self initWithContainerName:@"Container" valueInDollars:0 serialNumber:@"" item:item];
}

- (int)totalValue {
    int totalValue = _valueInDollars;
    
    for (id item in _subitems) {
        totalValue += [item valueInDollars];
    }
    
    return totalValue;
}

- (void)addItem:(id)item {
    [_subitems addObject:item];
}

- (NSMutableArray *)subItems {
    return _subitems;
}

- (void)printSubitems {
    NSLog(@"_subitems: %@", _subitems);
}

- (NSString *)description {
    NSString *desc = [NSString stringWithFormat:@"%@ Worth: $%d\n", self.itemName, [self totalValue]];
    
    for (id item in _subitems) {
        desc = [desc stringByAppendingFormat:@"%@\n", item ];
    }
    return desc;
//    return [NSString stringWithFormat:@"%@ Worth: $%d", self.itemName, [self totalValue]];
}
























@end
