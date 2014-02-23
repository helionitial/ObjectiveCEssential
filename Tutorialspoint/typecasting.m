/* Type casting is a way to convert a variable from one data type to another data type. For example, if you want to store a long value into a simple integer then you can type cast long to int. You can convert values from one type to another explicitly using the cast operator as follows:
 */

(type_name) expression
/* In Objective-C, we generally use CGFloat for doing floating point operation, which is derived from basic type of float in case of 32-bit and double in case of 64-bit. Consider the following example where the cast operator causes the division of one integer variable by another to be performed as a floating-point operation:
 */

#import <Foundation/Foundation.h>

int main()
{
    int sum = 17, count = 5;
    CGFloat mean;
    
    mean = (CGFloat) sum / count;
    NSLog(@"Value of mean : %f\n", mean );
    
    return 0;
}


