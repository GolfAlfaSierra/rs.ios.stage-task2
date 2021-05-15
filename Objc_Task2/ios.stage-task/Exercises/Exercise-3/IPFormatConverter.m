#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *result = [[NSMutableString alloc] initWithString:@""];
    
    if (numbersArray == nil || (numbersArray.count == 0)) {
        return result;
    }
    
    
    for (int i = 0; i < 4; ++i) {
        NSInteger nextOctet = 0;
        if (i < numbersArray.count) {
            nextOctet = [numbersArray[i] intValue];
            
            if ([numbersArray[i] intValue] > 255) {
                [result setString:@"The numbers in the input array can be in the range from 0 to 255."];
                return result;
            }
            if ([numbersArray[i] intValue] < 0) {
                [result setString:@"Negative numbers are not valid for input."];
                return result;
            }
        }
        
        
        
        [result appendFormat:@"%ld.", nextOctet];
        
        
    }
    
    
    
    return [result substringToIndex:[result length] - 1];
}

@end
