/* The word polymorphism means having many forms. Typically, polymorphism occurs when there is a hierarchy of classes and they are related by inheritance.

 * Objective-C polymorphism means that a call to a member function will cause a different function to be executed depending on the type of object that invokes the function.

 * Consider the example, we have a class Shape that provides the basic interface for all the shapes. Square and Rectangle are derived from the base class Shape.

 * We have the method printArea that is going to show about the OOP feature polymorphism.
 */

#import <Foundation/Foundation.h>

@interface Shape : NSObject

{
    CGFloat area;
}

- (void)printArea;
- (void)calculateArea;
@end

@implementation Shape

- (void)printArea{
    NSLog(@"The area is %f", area);
}

- (void)calculateArea{
    
}

@end


@interface Square : Shape
{
    CGFloat length;
}

- (id)initWithSide:(CGFloat)side;

- (void)calculateArea;

@end

@implementation Square

- (id)initWithSide:(CGFloat)side{
    length = side;
    return self;
}

- (void)calculateArea{
    area = length * length;
}

- (void)printArea{
    NSLog(@"The area of square is %f", area);
}

@end

@interface Rectangle : Shape
{
    CGFloat length;
    CGFloat breadth;
}

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth;


@end

@implementation Rectangle

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth{
    length = rLength;
    breadth = rBreadth;
    return self;
}

- (void)calculateArea{
    area = length * breadth;
}

@end


int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Shape *square = [[Square alloc]initWithSide:10.0];
    [square calculateArea];
    [square printArea];
    Shape *rect = [[Rectangle alloc]
                   initWithLength:10.0 andBreadth:5.0];
    [rect calculateArea];
    [rect printArea];
    [pool drain];
    return 0;
}

/* When the above code is compiled and executed, it produces the following result:

 * 2013-09-22 21:21:50.785 Polymorphism[358:303] The area of square is 100.000000
 * 2013-09-22 21:21:50.786 Polymorphism[358:303] The area is 50.000000
 * In the above example based on the availability of the method calculateArea and printArea, either the method in the base class or the derived class executed.

 * Polymorphism handles the switching of methods between the base class and derived class based on the method implementation of the two classes.
 */
