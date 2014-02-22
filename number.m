/* In Objective-C, in order to save the basic data types like int, float, bool in object form, Objective-C provides a range of methods to work with NSNumber and important ones are listed 
 */

/* creates and return an NSNumber object containing a given vlue, treating it as a BOOL
 */
+ (NSNumber *)numberWithBool:(BOOL)value
/* create and return an NSNumber object containing a given value, treating it as a signed char
 */
+ (NSNumber *)numberWithChar:(char)value
/* create and return an NSNumber obejct containing a given value, treating it as a double 
 */
+ (NSNumber *)numberWithDouble:(double)value
/* create and return an NSNumber object containing a given value, treating it as a float.
 */
+ (NSNumber *)numberWithFloat:(float)value
/* create and return an NSNumber object containing a given value, treating it as a sisgned int 
 */
+ (NSNumber *)numberWithInt:(int)value
/* create and return an NSNumber obejct containing a given value, treating it as an NSInteger.
 */
+ (NSNumber *)numberWithInteger:(NSInteger)value
/* return the receiver's value as a BOOL */
- (BOOL)boolValue
/* return the receiver's value as a char */
- (char)charValue
/* return the receiver's value as a double */
- (double)doubleValue
/* return the receiver's value as a float */
- (float)floatValue
/* return the receiver's value as a NSInteger */
- (NSInteger)integerValue
/* return the receiver's value as an int. */
- (int)intValue
/* return the receiver's value as a human-readable string. */
- (NSString *)stringValue


/* Sample */
#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;

@end

@implementation SampleClass

- (NSNumber *)multiplyA:(NSNumber *a) withB:(NSNumber *)b{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    
    return result;
}

@end

int main(){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    NSNumber *a = [NSNumber numberWithFloat:10.5];
    NSNumber *b = [NSNumber numberWithFloat:10.0];
    NSNumber *result = [sampleClass multiplyA:a withB :b];
    NSString *resultString = [result stringValue];
    NSLog(@"The product is %@", resultString);
    
    [pool drain];
    return 0;
}

