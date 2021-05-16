#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil) {return @[];}
    NSMutableArray<NSNumber*> *numbersArray = [[NSMutableArray alloc] init];
    NSMutableArray<NSString*> *namesArray = [[NSMutableArray alloc] init];
    
    for (NSArray *item in array) {
        if (![item isKindOfClass:[NSArray class]]) { return @[];}
        
        if ([item.firstObject isKindOfClass:[NSNumber class]]) {
            [numbersArray addObjectsFromArray:item];
        }
        if ([item.firstObject isKindOfClass:[NSString class]]) {
            [namesArray addObjectsFromArray:item];
        }
    }
    [numbersArray setArray:[numbersArray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *first, NSNumber *second) {
        return [first compare:second];
    }]];
    
    [namesArray setArray:[namesArray sortedArrayUsingComparator:^NSComparisonResult(NSString *first, NSString *second) {
        return [second compare:first];
    }]];
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    if (numbersArray.count > 0 && namesArray.count > 0) {
        [result addObject:numbersArray];
        [result addObject:namesArray];
    } else {
        if (numbersArray.count == 0) {
            [namesArray setArray:[namesArray sortedArrayUsingComparator:^NSComparisonResult(NSString *first, NSString *second) {
                return [first compare:second];
            }]];
            [result setArray:namesArray];
        }
        if (namesArray.count == 0) {
            [result setArray:numbersArray];
        }
    }
    
    return result;
}

@end
