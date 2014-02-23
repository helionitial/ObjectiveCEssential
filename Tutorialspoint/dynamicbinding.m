/* Dynamic binding is determining the method to invoke at runtime instead of at compile time. Dynamic binding is also referred to as late binding.

 * In Objective-C, all methods are resolved dynamically at runtime. The exact code executed is determined by both the method name (the selector) and the receiving object.

 * Dynamic binding enables polymorphism. For example, consider a collection of objects including Rectangle and Square. Each object has its own implementation of a printArea method.

 * In the following code fragment, the actual code that should be executed by the expression [anObject printArea] is determined at runtime. The runtime system uses the selector for the method run to identify the appropriate method in whatever class of anObject turns out to be.
 */


#import <Foundation/Foundation.h>

@interface Square:NSObject
{
    float area;
}
- (void)calculateAreaOfSide:(CGFloat)side;
- (void)printArea;
@end

@implementation Square

- (void)calculateAreaOfSide:(CGFloat)side
{
    area = side * side;
}
- (void)printArea
{
    NSLog(@"The area of square is %f",area);
}

@end

@interface Rectangle:NSObject
{
    float area;
}
- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth;
- (void)printArea;
@end

@implementation  Rectangle

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth
{
    area = length * breadth;
}
- (void)printArea
{
    NSLog(@"The area of Rectangle is %f",area);
}

@end

int main()
{
    Square *square = [[Square alloc]init];
    [square calculateAreaOfSide:10.0];
    Rectangle *rectangle = [[Rectangle alloc]init];
    [rectangle calculateAreaOfLength:10.0 andBreadth:5.0];
    NSArray *shapes = [[NSArray alloc]initWithObjects: square, rectangle,nil];
    id object1 = [shapes objectAtIndex:0];
    [object1 printArea];
    id object2 = [shapes objectAtIndex:1];
    [object2 printArea];
    return 0;
}
/* Now when we compile and run the program, we will get the following result.

 * 2013-09-28 07:42:29.821 demo[4916] The area of square is 100.000000
 * 2013-09-28 07:42:29.821 demo[4916] The area of Rectangle is 50.000000
 * As you can see in the above example, printArea method is dynamically selected in runtime. It is an example for dynamic binding and is quite useful in many situations when dealing with similar kind of objects.
 */

