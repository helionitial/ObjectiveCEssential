NSString *greeting = @"Hello!";

/* OC supports a range of methods for manipulate strings */


- (NSString *) capitalizedString;
/* Returns a capitalized representation of the receiver. */

- (unichar)charcterAtIndex:](NSUInteger)index;
/* Returns the character at a given array position */

- (double)doubleValue;
/* Returns the floatting-point value of the receiver's text as a double. */

- (float)floatValue;
/* returns the floating-point value of the receiver's text as a float. */

-(BOOL)hasPrefix:(NSString *)aString;
/* returns a boolean value that indicates whether a given string matches the beginning characters of the receiver. */

-(BOOL)hasSuffix:(NSString *)aString;
/* returns a boolean value that indicates whether a given string matches the ending characters of the receiver */

-(id)initWithFormat:(NSString *)format ...;
/* returns a NSString object initialized by using a given format string as a template into which the remaining argument values are substituted. */

-(NSInteger)integerValue;
/* returns a boolean value that indicates whether a given string is equal to the receiver using a literal Unicode-based comparison. */

-(NSUInteger)length;
/* returns the number of Unicode characters in the receiver. */

-(NSString *)lowercaseString;
/* returns lowercased representation of the receiver. */

-(NSRange)rangeOfString:(NSString *)aString;
/* finds and returns the range of the first occurrence of a given string within the receiver. */

-(NSString *)stringByAppendingFormat:(NSString *)format...;
/* returns a string made by appending to the receiver a string constructed from a given format string and the following arguments */

-(NSString *)stringByTrimmingCharactersInSet:(NSCharacterSet *)set;
/* returns a new string made by removing from both ends of the receiver characters contained in a given character set. */

-(NSString *)substringFromIndex:(NSUInteger)anIndex;
/* returns a new string containing the characters of the receiver from the one at a given index to the end. */


/* sample using functions above */
#import <Foundation/Foundation.h>

int main()
{
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    int len;
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    
    /* uppercase string */
    str3 = [str2 uppercaseString];
    
    /* concatenates str1 and str2 */
    str3 = [str1 stringByAppendingFormat:@"World"];
    
    /* total length of str3 after concatenation */
    len = [str3 length];
    
    /* initWithFormat */
    str3 = [[NSString alloc] initWithFormat:@"%@ %@", str1, str2];
    
    [pool drain];
    
    return 0;
}