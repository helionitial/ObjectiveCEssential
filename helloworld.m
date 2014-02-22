/* a preprocessor command, which tells a Objective-C compiler
 * to include Foundation.h file before going to actual compilation.
 */
#import <Foundation/Foundation.h>

/* shows how to create an interface. it inherits NSObject, which is 
 * the base class of all objects.
 */
@interface SampleClass : NSObject

/* shows how to declare a method */
- (void)sampleMethod;
/* marks the end of an interface. */
@end

/* shows hwo to implement the interface SampleClass. */
@implementation SampleClass
/* shows the implementation of the sampleMethod. */
- (void)sampleMethod{
    /* the NSLog(...) is another function available in OC which causes 
     * the message hello world to be displayed on the screen. 
     */
    NSLog(@"Hello, World! \n");
    /* this statement consists of six tokens:
     * NSLog
     * @
     * (
     * "Hello, World! \n"
     * )
     *;
     */
}
/* the end of an implementation */
@end

int main(){
    /* hello world for objective-C! */
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass sampleMethod];
    
    /* terminates main() function and returns the value 0 */
    return 0;
}


/* Semicolons ;
 * In OC program, the semicolon is a statement terminator. 
 */

/* This is a comment */

/* Identifiers
 * is a name used to identify a variable, function, or any other user-defined
 * item. An identifier starts with a letter A to Z or a to z or an underscore _
 * followed by zero or more letters, underscores, and digits(0 to 9).
 *
 * OC does not allow punctuation characters such as @, $, and % within identifiers.
 * OC is a case-sensitive programming language. 
 */

/* Keywords */

/* Whitespace in OC */