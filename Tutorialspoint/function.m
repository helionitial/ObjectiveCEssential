/* Define a Method */

- (return_type) method_name: (argumentType1) argumentName1
joiningArgument2: (argumentType2) argumentName2...
joiningArgumentn: (argumentTypen) argumentNamen{
    body of the function
}

/* sample function */
- (int) max: (int) num1 secondNumber: (int) num2{
    /* local variable declaration */
    int result;
    
    if(num1 > num2){
        result = num1;
    }else{
        result = num2;
    }
    return result;
}



/* Method Declaration */
- (return_type) function_name: (argumentType1) argumentName1
joiningArgument2: (argumentType2) argumentName2...
joiningArgumentn: (argumentTypen) argumentNamen;


/* Calling a method */

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
/* Method declaration */
- (int)maxL (int)num1 andNum2L(int)num2;
@end

@implementation SampleClass

/* method returning the max between two numbers */
- (int)max:(int)num1 andNum2:(int)num2{
    /* local variable declaration */
    int result;
    if(num1 > num2){
        result = num1;
    }else{
        result = num2;
    }
    return result;
}

@end

int main(){
    /* local variable definition */
    int a = 100;
    int b = 200;
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    
    /* calling a method to get max value */
    ret = [sampleClass max:a andNum2:b];
    
    NSLog(@"Max value is: %d\n", ret);
    
    return 0;
}

/////////////////////////////////////////////////////////////////
/* Call by value in OC */
/* function definition to swap the values */
- (void)swap:(int)num1 andNum2:(int)num2{
    int temp;
    
    temp = num1; /* save the value of num1 */
    num1 = num2; /* put num2 into num1 */
    num2 = temp; /* put temp into num2 */
    
    return;
}

/* Call by reference in OC */

- (void)swap:(int *)num1 andNum2:(int *)num2{
    int temp;
    
    temp = *num1; /* save the value of num1 */
    *num1 = *num2; /* put num2 into num1 */
    *num2 = temp; /* put temp into num2 */
    
    return;
}




