#import "ReverseBinary.h"

UInt8 intToBinary(UInt8 num) {
    uint binaryNum[8] = {0}; // fill byte with zero
    uint counter = 8 -1; // shift amount
    
    uint i = 0; // cursor to array item
    uint result = 0;
    
    while (num > 0) {
        
        // storing remainder in binary array
        binaryNum[i] = num % 2;
        num = num / 2;
        
        result += binaryNum[i] << counter; // counter = 8
        
        --counter;
        ++i;
    }
    
    return result;
}
UInt8 ReverseInteger(UInt8 n) {
    
    return intToBinary(n);
}
