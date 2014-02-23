/* defining a structure */

struct [structure tag]
{
    member definition;
    ...
}[one or more structure variables];

/* the structure tag is optional and each member definition is a normal variable definition. */
struct Books
{
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
}book;

/* accessing structure members */

#import <Foundation/Foundation.h>

struct Books
{
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
};

int main( )
{
    struct Books Book1;        /* Declare Book1 of type Book */
    struct Books Book2;        /* Declare Book2 of type Book */
    
    /* book 1 specification */
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    /* book 2 specification */
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;
    
    /* print Book1 info */
    NSLog(@"Book 1 title : %@\n", Book1.title);
    NSLog(@"Book 1 author : %@\n", Book1.author);
    NSLog(@"Book 1 subject : %@\n", Book1.subject);
    NSLog(@"Book 1 book_id : %d\n", Book1.book_id);
    
    /* print Book2 info */
    NSLog(@"Book 2 title : %@\n", Book2.title);
    NSLog(@"Book 2 author : %@\n", Book2.author);
    NSLog(@"Book 2 subject : %@\n", Book2.subject);
    NSLog(@"Book 2 book_id : %d\n", Book2.book_id);
    
    return 0;
}



/* structures as function arguments */


/* pointers to structures 
 * using -> to access members while using pointer
 */
struct Books *struct_pointer;
struct_pointer = &Book1;
struct_pointer->title;


/* Bit Fields
 * allows the packing of data in a structure:(1)packing several objects into a machine word.(2)Reading external file formats
 * do this in a structure definition by putting :bit length after the variable.
 */

struct packed_struct {
    unsigned int f1:1;
    unsigned int f2:1;
    unsigned int f3:1;
    unsigned int type:4;
    unsigned int my_int:9;
};

/* here, the packed_struct contains 5 members: four 1 bit flags, one 4bit type and 9 bit my_int. 
 * Objective-C automatically packs the above bit fields as compactly as possible, provided that the maximum length of the field is less or equal to the integer word length of the computer. If this is not the case, then some compilers may allow memory overlap for the fields whilst other would store the next field in the next word. 
 */





