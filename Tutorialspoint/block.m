/* An objective-C class defines an object that combines data with related behavior.
 * Sometimes, it makes sense just to represent a single task or unit of behavior, rather than a collection of methods.
 * Block are a language-level feature added to C, objective-C and C++ which allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. Blocks are Objective-C obejcts which means they can be added to collections like NSArray or NSDictionary. They also have the ability to capture values from the enclosing scope, making them similar to closures or lambdas in other programming languages. 
 */

/* Simple Block declaration and example */
returntype (^blockname)(argumentType);
returntype (^blockname)(argumentType) = ^{
};

void (^simpleBlock(void) = ^{
    NSLog(@"This is a block!");
}

/* invoke the block using */
simpleBlock();
/* Blocks take arguments and return values */
double (^multiplyTwoValues)(double, double) =
    ^(double first value, double secondValue){
    return firstValue * secondValue;
};
double result = multiplyTwoValues(2,4);
NSLog(@"The result is %f", resullt);


/* Blocks using type definitions */

#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)();
@interface SampleClass : NSObject
- (void)performActionWithCompletion:(CompletionBlock)completionBlock;

@end

@implementation SampleClass

- (void)performActionWithCompletion:(CompletionBlock)completionBlock{
    NSLog(@"Action Performed");
    completionBlock();
}

@end

int main(){
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass performActionWithCompletion:^{
        NSLog(@"Completion is called to intimate action is performed.");
    }];
    
    return 0;
}





      
      

