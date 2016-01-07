#ifndef ERRMESG
#define ERRMESG

extern BOOLEAN isValidName(
   const char *name)         /* The name to be checked for validity. */
;

extern void errorMessage(
   const char *file,         /* The file in which the error occured. */
   int  line,                /* The line before which the error occured. */
   const char *function,     /* The function in which the error occured. */
   const char *message)      /* The message to be printed.  It will be
                                prefixed by "Error: ". */
;

extern void errorMessage1i(
   const char *file,         /* The file in which the error occured. */
   int  line,                /* The line before which the error occured. */
   const char *function,     /* The function in which the error occured. */
   const char *message1,     /* The first part of the error message. */
   Unsigned intParm,         /* The integer variable part of the message. */
   const char *message2)     /* The second part of the error message. */
;

extern void errorMessage1s(
   const char *file,         /* The file in which the error occured. */
   int  line,                /* The line before which the error occured. */
   const char *function,     /* The function in which the error occured. */
   const char *message1,     /* The first part of the error message. */
   const char *strParm,      /* The integer variable part of the message. */
   const char *message2)     /* The second part of the error message. */
;

#endif
