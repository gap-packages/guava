/* File storage.c.  Contains functions to allocate and free memory.
   For certain commonly used sizes, memory is never actually freed; rather
   a linked list of allocated but currently unused segments of those sizes
   are maintained, and new allocations are taken from these linked lists
   when possible.  Prior to any allocations, the procedure
   InitializeStorageManager must be invoked; this merely informs the
   routines of the degree of the group.  The memory allocation functions
   are as follows; for each, there is a corresponding function to free
   memory.  All allocation functions return a pointer to the memory
   allocated; an allocation failure terminates the program.

        Function                Struct size or            Array size
                              array component size

      allocIntArrayBaseSize      sizeof(Int)              options.maxBaseSize
      allocIntArrayDegree        sizeof(Int)              degree+2
      allocBooleanArrayDegree    sizeof(char)             degree+2
      allocPtrArrayWordSize      sizeof(Permutation *)    options.maxWordLength
      allocPtrArrayBaseSize      sizeof(Permutation *)    options.maxBaseSize
      allocPtrArrayDegree        sizeof(Permutation *)    degree+2
      allocPermutation           sizeof(Permutation)
      allocPermGroup             sizeof(PermGroup)
      allocPartitionStack        sizeof(PartitionStack)
      allocPointSet              sizeof(PointSet)
      allocWord                  sizeof(Word) */

#include <stddef.h>
#include <stdlib.h>
#include "group.h"
#include "errmesg.h"

extern GroupOptions options;

CHECK( storag)

static Unsigned degree;

/*-------------------------- initializeStorageManager ---------------------*/

void initializeStorageManager( Unsigned degreeOfGroup)
{
   degree = degreeOfGroup;
}


/*-------------------------- allocIntArrayDegree --------------------------*/

UnsignedS *allocIntArrayDegree( void)
{
   UnsignedS *address;

#ifdef HIGH_MEM_OPTION
      address = (UnsignedS *) highMemMalloc( (degree+2) * sizeof(UnsignedS) );
#else
      address = (UnsignedS *) malloc( (degree+2) * sizeof(UnsignedS) );
#endif
      if ( address == NULL )
         ERROR( "allocIntArrayDegree", "Out of memory");

   return address;
}


/*-------------------------- freeIntArrayDegree ---------------------------*/

void freeIntArrayDegree( UnsignedS *address)
{
   free(address);
}


/*-------------------------- allocBooleanArrayDegree ----------------------*/

char *allocBooleanArrayDegree( void)
{
   char *address;

      address = (char *) malloc( (degree+2) * sizeof(char) );
      if ( address == NULL )
         ERROR( "allocBooleanArrayDegree", "Out of memory");

   return address;
}


/*-------------------------- freeBooleanArrayDegree -----------------------*/

void freeBooleanArrayDegree( char *address)
{
   free(address);
}


/*-------------------------- allocBooleanArrayBaseSize ----------------------*/

char *allocBooleanArrayBaseSize( void)
{
   char *address;

      address = (char *) malloc( (options.maxBaseSize+2) * sizeof(char) );
      if ( address == NULL )
         ERROR( "allocBooleanArrayBaseSize", "Out of memory");

   return address;
}


/*-------------------------- freeBooleanArrayBaseSize -----------------------*/

void freeBooleanArrayBaseSize( char *address)
{
   free(address);
}


/*-------------------------- allocPtrArrayDegree --------------------------*/

void *allocPtrArrayDegree( void)
{
   void *address;

#ifdef HIGH_MEM_OPTION
   address = highMemMalloc( (degree+2) * sizeof (void *) );
#else
   address = malloc( (degree+2) * sizeof (void *) );
#endif
   if ( address == NULL )
         ERROR( "allocPtrArrayDegree", "Out of memory");

   return address;
}


/*-------------------------- freePtrArrayDegree ---------------------------*/

void freePtrArrayDegree( void *address)
{
   free(address);
}


/*-------------------------- allocPtrArrayWordSize ------------------------*/

void *allocPtrArrayWordSize( void)
{
   void *address;

   address = malloc( (options.maxWordLength+2) * sizeof (void *) );
   if ( address == NULL )
      ERROR( "allocPtrArrayWordSize", "Out of memory");

   return address;
}


/*-------------------------- freePtrArrayWordSize -------------------------*/

void freePtrArrayWordSize( void *address)
{
   free(address);
}


/*-------------------------- allocPtrArrayBaseSize ------------------------*/

void *allocPtrArrayBaseSize( void)
{
   void *address;

   address = malloc( (options.maxBaseSize+2) * sizeof (void *) );
   if ( address == NULL )
      ERROR( "allocPtrArrayBaseSize", "Out of memory");

   return address;
}


/*-------------------------- freePtrArrayBaseSize -------------------------*/

void freePtrArrayBaseSize( void *address)
{
   free(address);
}


/*-------------------------- allocIntArrayBaseSize ------------------------*/

UnsignedS *allocIntArrayBaseSize( void)
{
   UnsignedS *address;

   address = (UnsignedS *) malloc( (options.maxBaseSize+2) * sizeof(UnsignedS) );
   if ( address == NULL )
      ERROR( "allocIntArrayBaseSize", "Out of memory");

   return address;
}


/*-------------------------- freeIntArrayBaseSize -------------------------*/

void freeIntArrayBaseSize( UnsignedS *address)
{
   free(address);
}


/*-------------------------- allocLongArrayBaseSize ------------------------*/

unsigned long *allocLongArrayBaseSize( void)
{
   unsigned long *address;

   address = (unsigned long *) malloc( (options.maxBaseSize+2) * sizeof(unsigned long) );
   if ( address == NULL )
      ERROR( "allocLongArrayBaseSize", "Out of memory");

   return address;
}


/*-------------------------- freeLongArrayBaseSize -------------------------*/

void freeLongArrayBaseSize( unsigned long *address)
{
   free(address);
}


/*-------------------------- allocPermutation -----------------------------*/

Permutation *allocPermutation( void)
{
   Permutation *address;
   Unsigned essentialArraySize;

   address = (Permutation *) malloc( sizeof(Permutation) );
   if ( address == NULL )
      ERROR( "allocPermutation", "Out of memory");

   address->name[0] = '\0';
   address->image = NULL;
   address->invImage = NULL;
   address->invPermutation = NULL;
   address->word = NULL;
   address->occurHeader = NULL;
   essentialArraySize = (options.maxBaseSize+1) / 32 + 1;
   address->essential = (unsigned long *) 
                        malloc( essentialArraySize * sizeof(unsigned long) );
   if ( address->essential == NULL )
      ERROR( "allocPermutation", "Out of memory");
   return address;
}

/*-------------------------- freePermutation ------------------------------*/

void freePermutation( Permutation *address)
{
   free(address->essential);
   free(address);
}


/*-------------------------- allocPermGroup -------------------------------*/

PermGroup *allocPermGroup( void)
{
   PermGroup *address;

   address = (PermGroup *) malloc( sizeof(PermGroup) );
   if ( address == NULL )
      ERROR( "allocPermGroup", "Out of memory");

   address->order = NULL;
   address->base = NULL;
   address->basicOrbLen = NULL;
   address->basicOrbit = NULL;
   address->completeOrbit = NULL;
   address->orbNumberOfPt = NULL;
   address->startOfOrbitNo = NULL;
   address->schreierVec = NULL;
   address->generator = NULL;
   address->omega = NULL;
   address->invOmega = NULL;
   address->relator = NULL;
   return address;
}


/*-------------------------- freePermGroup --------------------------------*/

void freePermGroup( PermGroup *address)
{
   Permutation *current;

   if (address->order)
      free(address->order);
   while ( address->generator ) {
      current = address->generator;
      address->generator = current->next;
      freePermutation(current);
   }
   freeIntArrayBaseSize(address->base);
   freeIntArrayBaseSize(address->basicOrbLen);
   if (address->basicOrbit)
     freePtrArrayBaseSize(address->basicOrbit);
   if (address->schreierVec)
     freePtrArrayBaseSize(address->schreierVec);
   free(address);
}


/*-------------------------- allocPartition -------------------------------*/

Partition *allocPartition( void)
{
   Partition *address;

   address = (Partition *) malloc( sizeof(Partition) );
   if ( address == NULL )
      ERROR( "allocPartition", "Out of memory");

   return address;
}


/*-------------------------- freePartition ---------------------------*/

void freePartition( Partition *address)
{
   free(address);
}


/*-------------------------- allocPartitionStack --------------------------*/

PartitionStack *allocPartitionStack( void)
{
   PartitionStack *address;

   address = (PartitionStack *) malloc( sizeof(PartitionStack) );
   if ( address == NULL )
      ERROR( "allocPartitionStack", "Out of memory");

   return address;
}


/*-------------------------- freePartitionStack ---------------------------*/

void freePartitionStack( PartitionStack *address)
{
   free(address);
}


/*-------------------------- allocRBase -----------------------------------*/

RBase *allocRBase( void)
{
   RBase *address;

   address = (RBase *) malloc( sizeof(RBase) );
   if ( address == NULL )
      ERROR( "allocRBase", "Out of memory");

   return address;
}


/*-------------------------- freeRBase ------------------------------------*/

void freeRBase( RBase *address)
{
   free(address);
}


/*-------------------------- allocRPriorityQueue --------------------------*/

RPriorityQueue *allocRPriorityQueue( void)
{
   RPriorityQueue *address;

   address = (RPriorityQueue *) malloc( sizeof(RPriorityQueue) );
   if ( address == NULL )
      ERROR( "allocRPriorityQueue", "Out of memory");

   return address;
}


/*-------------------------- freeRPriorityQueue ---------------------------*/

void freeRPriorityQueue( RPriorityQueue *address)
{
   free(address);
}


/*-------------------------- allocPointSet --------------------------------*/

PointSet *allocPointSet( void)
{
   PointSet *address;

   address = (PointSet *) malloc( sizeof(PointSet) );
   if ( address == NULL )
      ERROR( "allocPointSet", "Out of memory");

   return address;
}


/*-------------------------- freePointSet ---------------------------------*/

void freePointSet( PointSet *address)
{
   free(address);
}


/*-------------------------- allocFactoredInt -----------------------------*/

FactoredInt *allocFactoredInt( void)
{
   FactoredInt *address;

   address = (FactoredInt *) malloc( sizeof(FactoredInt) );
   if ( address == NULL )
      ERROR( "allocFactoredInt", "Out of memory");

   return address;
}


/*-------------------------- freeFactoredInt ------------------------------*/

void freeFactoredInt( FactoredInt *address)
{
   free(address);
}


/*-------------------------- allocWord ------------------------------------*/

Word *allocWord( void)
{
   Word *address;

   address = (Word *) malloc( sizeof(Word) );
   if ( address == NULL )
      ERROR( "allocWord", "Out of memory");

   return address;
}


/*-------------------------- freeWord -------------------------------------*/

void freeWord( Word *address)
{
   free(address);
}


/*-------------------------- allocRefinementArrayDegree -------------------*/

Refinement *allocRefinementArrayDegree( void)
{
   Refinement *address;

   address = (Refinement *) malloc( (degree+2) * sizeof(Refinement) );
   if ( address == NULL )
      ERROR( "allocRefinementArrayDegree", "Out of memory");

   return address;
}


/*-------------------------- freeRefinementArrayDegree --------------------*/

void freeRefinementArrayDegree( Refinement *address)
{
   free(address);
}

/*-------------------------- allocRelator ---------------------------------*/

Relator *allocRelator( void)
{
   Relator *address;

   address = (Relator *) malloc( sizeof(Relator) );
   if ( address == NULL )
      ERROR( "allocRelator", "Out of memory");

   address->length = 0;
   address->rel = NULL;
   address->fRel = NULL;
   address->bRel = NULL;
   return address;
}

/*-------------------------- freeRelator ----------------------------------*/

void freeRelator( Relator *address)
{
   free(address);
}


/*-------------------------- allocOccurenceOfGen --------------------------*/

OccurenceOfGen *allocOccurenceOfGen( void)
{
   OccurenceOfGen *address;

   address = (OccurenceOfGen *) malloc( sizeof(OccurenceOfGen) );
   if ( address == NULL )
      ERROR( "allocOccurenceOfGen", "Out of memory");

   return address;
}

/*-------------------------- freeOccurenceOfGen ---------------------------*/

void freeOccurenceOfGen( OccurenceOfGen *address)
{
   free(address);
}

      
/*-------------------------- allocField -------------------------------*/

Field *allocField( void)
{
   Field *address;

   address = (Field *) malloc( sizeof(Field) );
   if ( address == NULL )
      ERROR( "allocField", "Out of memory");

   address->sum = NULL;
   address->dif = NULL;
   address->prod = NULL;
   address->inv = NULL;
   return address;
}


/*-------------------------- freeField ---------------------------*/

void freeField( Field *address)
{
   free(address);
}
