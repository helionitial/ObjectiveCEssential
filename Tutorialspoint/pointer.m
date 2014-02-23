/* every variable is a memory location and every memory locaiton has its address defined which can be accessed using ampersand (&) operator, which denotes an address in memory. 
 */

#import <Foundation/Foundation.h>
int main(){
    int var1;
    char var2[10];
    
    NSLog(@"Address of var1 variable: %x\n", &var1);
    NSLog(@"Address of var2 variable: %x\n", &var2);
    return 0;
}


type *var-name;

int *ip;    /* pointer to an integer */
double *dp; /* pointer to a double */
float *fp;  /* pointer to a float */
char *ch;   /* pointer to a character */


/* use pointers */
#import <Foundation/Foundation.h>
int main(){
    int var = 20;   /* actual variable declaration */
    int *ip;        /* pointer variable declaraiton */
    
    ip = &var;      /* store address of var in pointer variable */
    
    return 0;
}

/* NULL pointer 
 * The NULL pointer is a constant with a value of zero defined in several standard libraries.
 */

////////////////////////////////////////////////////////////////////////////////
/* pointer arithmetic */

/* arrays of pointers */

/* pointer to pointer */

/* passing pointer to functions */


