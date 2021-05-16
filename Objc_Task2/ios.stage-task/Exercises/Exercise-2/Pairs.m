#import "Pairs.h"


int findPair(NSArray<NSNumber*> *array, NSNumber* target) {
    int count = 0;
    for (int i = 0; i < array.count; ++i) {
        for (int j = i+1; j < array.count; ++j) {
            if (abs(array[i].intValue - array[j].intValue) == target.intValue) {
                ++count;
            }
        }
    }
    return count;
}

@implementation Pairs



- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = findPair(array, number);
    
    return result;
}

@end
