#import "Pairs.h"


int findPair(NSArray<NSNumber*> *array, NSNumber* target) {
    int counter = 0;
    NSMutableSet<NSNumber*>* set = [[NSMutableSet alloc] init];
    
    for (NSNumber *num in array){
        
        if ([set containsObject:[NSNumber numberWithInt:(int)([num intValue] - [target intValue])]]) {
            counter+=1;
        }
        
        if ([set containsObject:[NSNumber numberWithInt:(int)([num intValue] + [target intValue])]]) {
            counter+=1;
        }
        
        [set addObject:num];
    }
    
    return counter;
}

@implementation Pairs



- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = findPair(array, number);
    
    return result;
}

@end
