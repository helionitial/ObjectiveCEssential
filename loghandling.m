/* NSLog method
 * In order to print logs, we use the NSLog method in Objective-C programming language which we have used right from the Hello World example.
 * Let us look at a simple code that would print the words "Hello World":
 */
#import <Foundation/Foundation.h>

int main()
{
    NSLog(@"Hello, World! \n");
    return 0;
}

/* Now, when we compile and run the program, we will get the following result.
 * 2013-09-16 00:32:50.888 demo[16669] Hello, World!
 */
 
/* Disabling logs in Live apps
 * Since the NSLogs we use in our application, it will be printed in logs of device and it is not good to print logs in a live build. Hence, we use a type definition for printing logs and we can use them as shown below.
 */

#import <Foundation/Foundation.h>

#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

int main()
{
    DebugLog(@"Debug log, our custom addition gets \
             printed during debug only" );
    NSLog(@"NSLog gets printed always" );
    return 0;
}
/* Now, when we compile and run the program in debug mode, we will get the following result.
 * 2013-09-11 02:47:07.723 demo[618] Debug log, our custom addition gets printed during debug only
 * 2013-09-11 02:47:07.723 demo[618] NSLog gets printed always
 * Now, when we compile and run the program in release mode, we will get the following result.
 * 2013-09-11 02:47:45.248 demo[3158] NSLog gets printed always
 */