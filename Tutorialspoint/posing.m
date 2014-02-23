/* Before starting about Posing in Objective-C, I would like to bring to your notice that Posing was declared deprecated in Mac OS X 10.5 and it's not available for use thereafter. So for those who are not concerned about these deprecated methods can skip this chapter.

 * Objective-C permits a class to wholly replace another class within a program. The replacing class is said to "pose as" the target class.

 * For the versions that supported posing, all messages sent to the target class are instead received by the posing class.

 * NSObject contains the poseAsClass: method that enables us to replace the existing class as said above.
 */


/* Restrictions in Posing
 * A class may only pose as one of its direct or indirect superclasses.

 * The posing class must not define any new instance variables that are absent from the target class (though it may define or override methods).

 * The target class may not have received any messages prior to the posing.

 * A posing class can call overridden methods through super, thus incorporating the implementation of the target class.

 * A posing class can override methods defined in categories.
 */

#import <Foundation/Foundation.h>

@interface MyString : NSString

@end

@implementation MyString

- (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target
                                        withString:(NSString *)replacement
{
    NSLog(@"The Target string is %@",target);
    NSLog(@"The Replacement string is %@",replacement);
}

@end

int main()
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    [MyString poseAsClass:[NSString class]];
    NSString *string = @"Test";
    [string stringByReplacingOccurrencesOfString:@"a" withString:@"c"];
    [pool drain];
    return 0;
}
/* Now when we compile and run the program in a older Mac OS X (V_10.5 or earlier), we will get the following result.

 * 2013-09-22 21:23:46.829 Posing[372:303] The Target string is a
 * 2013-09-22 21:23:46.830 Posing[372:303] The Replacement string is c
 * In the above example, we just polluted the original method with our implementation and this will get affected throughout all the NSString operations with the above method.
 */