/* Declaring Arrays 
 * a single-dimensional array, the arraySize must be an integer constant greater
 * than zero and type can be any valid OC data type.
 */
type arrayName [ arraySize];
double balance[10];

/* Initializing Arrays */
double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
double balance[] = {1000.0, 2.0, 3.4, 17.0, 50.0}

/* Accessing Array ELements */
////////////////////////////////////////////////////////////////////////////////
/* Multi-dimensional arrays in OC */
type name[size1][size2]..[sizeN]
////////////////////////////////////////////////////////////////////////////////
/* Passing Arrays to Functions */
- (void) myFunction(int *)param{
    ...
}

- (void) myFunction(int [10])param{
    ...
}

- (void) myFunction: (int [])param{
    ...
}

- (double) getAverage:(int []) arr andSize: (int) size{
    int i;
    double avg;
    double sum;
    
    for(i = 0; i < size; i++){
        sum += arr[i];
    }
    avg = sum / size;
    return avg;
}


#import <Foundation/Foundation.h>
@interface SampleClass: NSObject
/* function declaration */
- (double) getAverage:(int []) arr andSize:(int) size;

@end

@implementation SampleClass

- (double) getAverage:(int []) arr andSize:(int) size{
    int i;
    double avg;
    double sum = 0;
    
    for(i = 0; i < size; i ++)
        sum += arr[i];
    avg = sum / size;
    return avg;
}

@end

int main(){
    /* an int array with 5 elements */
    int balance[5] = {1000, 2, 3, 17, 50};
    double avg;
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    /* pass pointer to the array as an argument */
    avg = [sampleClass getAverage:balance and size: 5];
    
    /* output the returned value */
    NSLog(@"Average value is: %f", avg);
    return 0;
}

 
