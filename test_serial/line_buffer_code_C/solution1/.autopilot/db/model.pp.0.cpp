# 1 "model.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 347 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 112 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "model.cpp" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 439 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 440 "/usr/include/features.h" 2 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 452 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 453 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 454 "/usr/include/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4

extern "C" {




# 1 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 62 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 1 3 4
# 30 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 48 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 39 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/bits/types/cookie_io_functions_t.h" 1 3 4
# 27 "/usr/include/bits/types/cookie_io_functions_t.h" 3 4
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);







typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);







typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);


typedef int cookie_close_function_t (void *__cookie);






typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
# 47 "/usr/include/stdio.h" 2 3 4





typedef __gnuc_va_list va_list;
# 63 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;






typedef __off64_t off64_t;






typedef __ssize_t ssize_t;






typedef __fpos_t fpos_t;




typedef __fpos64_t fpos64_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) throw ();

extern int rename (const char *__old, const char *__new) throw ();



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) throw ();
# 164 "/usr/include/stdio.h" 3 4
extern int renameat2 (int __oldfd, const char *__old, int __newfd,
        const char *__new, unsigned int __flags) throw ();







extern FILE *tmpfile (void) ;
# 183 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) throw () ;




extern char *tmpnam_r (char *__s) throw () ;
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     throw () __attribute__ ((__malloc__)) ;







extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 227 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 237 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 270 "/usr/include/stdio.h" 3 4
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




extern FILE *fdopen (int __fd, const char *__modes) throw () ;





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) throw () ;




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  throw () ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) throw () ;





extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) throw ();



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) throw ();




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) throw ();


extern void setlinebuf (FILE *__stream) throw ();







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) throw ();





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) throw ();



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 3, 0)));





extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) throw ();
# 432 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__scanf__, 2, 0)));
# 485 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);






extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 510 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 521 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 537 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
# 577 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));
# 587 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 603 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;







extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 662 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
# 673 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);







extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 707 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 731 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 750 "/usr/include/stdio.h" 3 4
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);



extern void clearerr (FILE *__stream) throw ();

extern int feof (FILE *__stream) throw () ;

extern int ferror (FILE *__stream) throw () ;



extern void clearerr_unlocked (FILE *__stream) throw ();
extern int feof_unlocked (FILE *__stream) throw () ;
extern int ferror_unlocked (FILE *__stream) throw () ;







extern void perror (const char *__s);






# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];


extern int _sys_nerr;
extern const char *const _sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) throw () ;




extern int fileno_unlocked (FILE *__stream) throw () ;
# 800 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) throw ();





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     throw () __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) throw ();



extern int ftrylockfile (FILE *__stream) throw () ;


extern void funlockfile (FILE *__stream) throw ();
# 858 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 873 "/usr/include/stdio.h" 3 4
}
# 2 "model.cpp" 2
# 1 "./bias.h" 1




typedef double data_t;
double bias_conv1[16]={4.605779E-05, 0.0016954669, -0.12573725, 0.00090966275, -0.008289251, 0.2288574 ,-0.0001926303, 0.1614474, 0.041096434, 0.00078819355, -0.0005919013, 0.009665563, -0.00057698676, 0.0089886, 0.00045872145, -0.0014355012};
double bias_conv2[8] = {-0.18732908, -0.11804389, -0.031255215, -0.025337804, -0.023668498, 0.32009956, 0.022225568, -0.13034979};
double bias_conv3[8]={-0.09856823 ,-0.2990453 ,-0.1896989 ,0.09199058 ,0.3960073 ,0.46484292 ,-0.51680565 ,-0.0686353};
double bias_conv4[8]={0.6474334 ,0.5021539 ,0.15455641 ,0.78605837 ,0.30350417 ,-0.5095227 ,0.54400295 ,0.6221989};
double bias_conv5[8]={0.056719672 ,0.43973938 ,0.593019 ,0.1334745 ,0.14024757 ,-0.36339596 ,0.28529936 ,-0.033020418};
double bias_conv6[16]={-0.009208856 ,0.64465904 ,0.18871084 ,0.4179924 ,-0.23826952 ,-0.059796713 ,-0.27951825 ,0.20594509 ,0.6270969 ,-0.2718816 ,0.33604336 ,0.25907987 ,-0.3748888 ,-0.1167909 ,-0.27504212 ,-0.17446807};
double bias_conv7[1]={-0.31341645};
# 3 "model.cpp" 2
# 1 "./CNN.h" 1

# 1 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream.h" 1
# 15 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream.h"
# 1 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream_39.h" 1
# 21 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream_39.h"
# 1 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/etc/autopilot_enum.h" 1
# 13 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/etc/autopilot_enum.h"
enum SsdmDataTypes {
    _ssdm_sc_int = 0,
    _ssdm_c_int = _ssdm_sc_int,
    _ssdm_sc_uint = 1,
    _ssdm_c_uint = _ssdm_sc_uint,
    _ssdm_sc_bigint = 2,
    _ssdm_sc_biguint = 3,
};



enum SsdmPortTypes {
    _ssdm_sc_in = 0,
    _ssdm_sc_out = 1,
    _ssdm_sc_inout = 2,
    _ssdm_sc_in_clk,

    _ssdm_fifo_in,
    _ssdm_sc_fifo_in = _ssdm_fifo_in,
    _ssdm_tlm_fifo_in = _ssdm_fifo_in,
    _ssdm_fifo_out,
    _ssdm_sc_fifo_out = _ssdm_fifo_out,
    _ssdm_tlm_fifo_out = _ssdm_fifo_out,
    _ssdm_fifo_inout,
    _ssdm_sc_fifo_inout = _ssdm_fifo_inout,
    _ssdm_tlm_fifo_inout = _ssdm_fifo_inout,
    _ssdm_sc_bus,
    _ssdm_hls_bus_port = _ssdm_sc_bus,
    _ssdm_AXI4M_bus_port = _ssdm_sc_bus,
    _ssdm_port_end,
};



enum SsdmProcessTypes {
    _ssdm_method = 0,
    _ssdm_sc_method = _ssdm_method,
    _ssdm_thread = 1,
    _ssdm_sc_thread = _ssdm_thread,
    _ssdm_cthread = 2,
    _ssdm_sc_cthread = _ssdm_cthread,
    _ssdm_process_end,
};



enum SsdmSensitiveTypes {
    _ssdm_sensitive = 0,
    _ssdm_sensitive_pos,
    _ssdm_sensitive_neg,
    _ssdm_sensitive_reset0,
    _ssdm_sensitive_reset1,
    _ssdm_sensitive_end,
};



enum SsdmChannelTypes {
    _ssdm_sc_sig,
    _ssdm_fifo,
    _ssdm_sc_fifo = _ssdm_fifo,
    _ssdm_mem_fifo,
    _ssdm_sc_mem_fifo = _ssdm_mem_fifo,
};


enum SsdmRegionTypes {
    _ssdm_region_reset,
    _ssdm_region_protocol,
    _ssdm_region_pipeline,
    _ssdm_region_parallel,
};
# 22 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream_39.h" 2


namespace hls {
# 43 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream_39.h"
template<typename __STREAM_T__, int DEPTH=0>
class stream;

template<typename __STREAM_T__>
class stream<__STREAM_T__, 0>
{
  public:

    inline __attribute__((always_inline)) stream() {
      __fpga_set_stream_depth(this, 0);
    }

    inline __attribute__((always_inline)) stream(const char* name) {
      __fpga_set_stream_depth(this, 0);
    }


  private:
    inline __attribute__((always_inline)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) bool empty() const {
        return !__fpga_fifo_not_empty(&V);
    }

    inline __attribute__((always_inline)) bool full() const {
        return !__fpga_fifo_not_full(&V);
    }


    inline __attribute__((always_inline)) void read(__STREAM_T__& dout) {
        __fpga_fifo_pop(&V, &dout);
    }

    inline __attribute__((always_inline)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        read(tmp);
        return tmp;
    }


    inline __attribute__((always_inline)) bool read_nb(__STREAM_T__& dout) {
        return __fpga_fifo_nb_pop(&V, &dout);
    }


    inline __attribute__((always_inline)) void write(const __STREAM_T__& din) {
        __fpga_fifo_push(&V, &din);
    }


    inline __attribute__((always_inline)) bool write_nb(const __STREAM_T__& din) {
        return __fpga_fifo_nb_push(&V, &din);
    }

  public:
    __STREAM_T__ V __attribute__((storage_only));
};

template<typename __STREAM_T__, int DEPTH>
class stream : public stream<__STREAM_T__, 0> {
  public:
    inline __attribute__((always_inline)) stream() {
      __fpga_set_stream_depth(this, DEPTH);
    }
};
}
# 16 "/tools/Xilinxs/Vitis/2019.2/common/technology/autopilot/hls_stream.h" 2
# 3 "./CNN.h" 2
# 1 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 64 "/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 4 "./CNN.h" 2

__attribute__((sdx_kernel("CNN", 0))) void CNN( int padding, int width, int hight, data_t *image, data_t *output, data_t *output_pooling1, data_t *output_conv2, data_t *output_pooling2, data_t *output_conv3, data_t *output_pooling3,data_t *output_conv4, data_t *output_upsampling1, data_t *output_conv5, data_t *output_upsampling2, data_t *output_conv6, data_t *output_upsampling3, data_t *output_conv7);



static data_t relu(data_t a)
{
 return a > (data_t)0 ? a : (data_t)0;
}

template <typename INPUT_DATA_TYPE
         ,typename OUTPUT_DATA_TYPE
  ,typename KERNEL_TYPE
  ,typename PADDING_TYPE
  ,int CONV_DATA_XSIZE
  ,int CONV_DATA_YSIZE
  ,int CONV_NUM_CHANNEL
  ,int CONV_NUM_KERNEL
  ,int CONV_DATA_OUT_XSIZE
  ,int CONV_DATA_OUT_YSIZE
  ,int KERNEL_XSIZE
  ,int KERNEL_YSIZE
  ,int CONV_STRICE
  ,int CONV_PADDING_SIZE
  >
static void convolution( int padding, int width, int hight ,INPUT_DATA_TYPE bias[CONV_NUM_CHANNEL], data_t *image, const KERNEL_TYPE *kernel,OUTPUT_DATA_TYPE *output) {
 hight = CONV_DATA_YSIZE + 2*CONV_PADDING_SIZE;
 width = CONV_DATA_XSIZE + 2*padding;

 INPUT_DATA_TYPE window_buffer[KERNEL_XSIZE][KERNEL_YSIZE];
 static INPUT_DATA_TYPE line_buffer_0[CONV_DATA_XSIZE];
 static INPUT_DATA_TYPE line_buffer_1[CONV_DATA_XSIZE];
 static INPUT_DATA_TYPE line_buffer_2[CONV_DATA_XSIZE];


 for ( int num_channel = 0 ; num_channel < CONV_NUM_CHANNEL ; num_channel ++ ){
      for( int num_ker= 0 ; num_ker < CONV_NUM_KERNEL ; num_ker ++){
Push_pixel: for( int i = 0 ; i < hight ; i++ ) {
    for( int j = 0 ; j < width; j++ ) {
      line_buffer_0[j] = line_buffer_1[j];
      line_buffer_1[j] = line_buffer_2[j];
      if( i == 0 || i == hight - 1 || j == 0 || j == width - 1 ){
       line_buffer_2[j] = 0;
      }
      else {
      line_buffer_2[j] = image[num_channel*CONV_DATA_XSIZE*CONV_DATA_YSIZE + (i-CONV_PADDING_SIZE)*CONV_DATA_XSIZE + (j-CONV_PADDING_SIZE)];
    }
    }
 if( i > 1) {

        window_buffer[0][0] = 0;
        window_buffer[1][0] = 0;
        window_buffer[2][0] = 0;
        window_buffer[0][1] = line_buffer_0[0];
        window_buffer[1][1] = line_buffer_1[0];
        window_buffer[2][1] = line_buffer_2[0];
        window_buffer[0][2] = line_buffer_0[1];
        window_buffer[1][2] = line_buffer_1[1];
        window_buffer[2][2] = line_buffer_2[1];

Shift_win_right:for( int b = 0 ; b < width - 2 ; b++) {
        for( int n = 0 ; n < 3; n++) {
          window_buffer[n][0] = window_buffer[n][1];
          window_buffer[n][1] = window_buffer[n][2];
          if( n == 0) {
            window_buffer[n][2] = line_buffer_0[b+2];
          }
   if( n == 1) {
            window_buffer[n][2] = line_buffer_1[b+2];
          }
          if( n == 2) {
            window_buffer[n][2] = line_buffer_2[b+2];
          }

       }

INPUT_DATA_TYPE sum = 0;
          for (int m = 0; m < KERNEL_XSIZE; m++) {
             for (int n = 0; n < KERNEL_YSIZE; n++) {
             sum += window_buffer[m][n] * kernel[num_ker * CONV_NUM_CHANNEL * KERNEL_XSIZE*KERNEL_YSIZE + num_channel*KERNEL_XSIZE*KERNEL_YSIZE + m*3 + n];
            }
   }
   sum += bias[num_ker];

   output[num_ker * CONV_DATA_OUT_XSIZE * CONV_DATA_OUT_YSIZE + (i - (KERNEL_XSIZE - 1)) * CONV_DATA_OUT_XSIZE + b] = relu(sum);

 }
  }
      }
    }
  }
}




template<typename DATA_IN_TYPE,
         typename DATA_OUT_TYPE,
         int NUM_CHANNEL,
         int DATA_IN_XSIZE,
         int DATA_IN_YSIZE,
         int DATA_OUT_XSIZE,
         int DATA_OUT_YSIZE,
         int POOLING_SIZE,
         int STRIDE_SIZE
        >
static void max_pooling(int width, int height, DATA_IN_TYPE *input, DATA_OUT_TYPE *output) {
    DATA_IN_TYPE line_buffer_0[DATA_IN_XSIZE];
    DATA_IN_TYPE line_buffer_1[DATA_IN_XSIZE];
    DATA_IN_TYPE window_buffer[POOLING_SIZE][POOLING_SIZE];

    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
        for (int i = 0; i < height; i += STRIDE_SIZE) {
            for (int j = 0; j < width; j += STRIDE_SIZE) {
                for (int k = 0; k < POOLING_SIZE; k++) {
                    line_buffer_0[k] = line_buffer_1[k];
                    line_buffer_1[k] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + (i + POOLING_SIZE - 1) * DATA_IN_XSIZE + (j + k)];
                }

                if (i + POOLING_SIZE - 1 < height && j + POOLING_SIZE - 1 < width) {
                    DATA_IN_TYPE max_val = line_buffer_0[0];
                    for (int a = 0; a < POOLING_SIZE; a++) {
                        for (int b = 0; b < POOLING_SIZE; b++) {
                            max_val = (line_buffer_1[b] > max_val) ? line_buffer_1[b] : max_val;
                        }
                    }

                    output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + (i / STRIDE_SIZE) * DATA_OUT_XSIZE + (j / STRIDE_SIZE)] = max_val;
                }
            }
        }
    }
}
template <typename DATA_IN_TYPE,
          typename DATA_OUT_TYPE,
          int NUM_CHANNEL,
          int DATA_IN_XSIZE,
          int DATA_IN_YSIZE,
          int DATA_OUT_XSIZE,
          int DATA_OUT_YSIZE,
          int UPSAMPLING_FACTOR_X,
          int UPSAMPLING_FACTOR_Y>
static void upsampling(int width, int height, DATA_IN_TYPE* input, DATA_OUT_TYPE* output) {
    DATA_IN_TYPE upsam_buf[2* 28];
    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
        for (int i = 0; i < UPSAMPLING_FACTOR_X * height; i++) {
            for (int j = 0; j < UPSAMPLING_FACTOR_Y * width; j++) {
                if (i % 2 == 0) {
                    if (j % 2 == 0) {
                        upsam_buf[j / 2] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + i / 2 * DATA_IN_XSIZE + j / 2];
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] = upsam_buf[j / 2];
                    } else {
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] = output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + (j - 1)];
                    }
                } else {
                    output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] =
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + (i - 1) * UPSAMPLING_FACTOR_Y * width + j];
                }
            }
        }
    }
}
# 4 "model.cpp" 2
# 1 "./kernel.h" 1



typedef double data_t;




data_t kernel_conv1[144] = {-0.16205008,-0.24402778,0.06492161,-0.2053615,0.003502372,0.24680863,-0.02133571,0.22321616,0.16338369,
    0.110458665,-0.036959838,-0.3392409,0.32774758,-0.09783699,-0.13630375,0.1357466,0.25881544,0.022704978,
    0.20612967,0.1498351,0.20425332,-0.1038801,-0.10667785,0.12124248,-0.39586067,-0.21383052,0.26132575,
    0.27708152,0.21301019,0.15985094,0.008137075,-0.083432905,-0.04368373,0.04466629,0.20122579,0.10647575,
    -0.028839434,-0.18435612,-0.17657872,-0.011067222,-0.111721575,-0.10575563,-0.003599038,-0.06352387,-0.00290745,
    -0.24723469,0.035485655,-0.12485746,0.039935958,-0.008954393,0.005511482,0.06954904,0.2665625,0.16686346,
    0.1399438,-0.06625326,0.13816598,0.25710696,0.074929655,0.17114359,0.24568608,0.100582495,0.20397954,
    -0.1051916,-0.004379992,-0.025652518,0.031333014,-0.02110085,0.47275266,0.013009749,0.00490324,0.029260486,
    -0.5350515,-0.08507342,-0.00389497,0.114189126,-0.048333805,-0.012340377,0.42000288,0.08612117,0.01641178,
    -0.010254283,0.08490941,0.055868935,-0.122401506,0.11541049,0.05266403,0.35377634,0.20499636,-0.09467831,
    -2.9593194,-0.08653519,-0.39068812,-0.24201548,0.038400237,0.054293726,-0.23397052,-0.046486214,0.4443331,
    -0.007671445,0.03505529,-0.000409656,-0.005294285,0.6560415,-0.014199112,-0.008323478,0.020066062,-0.004531875,
    -1.5507368,-0.28669745,-0.048707396,-0.489557,0.065979525,-0.28019705,0.06141186,0.47720075,-0.22260803,
    -0.72419494,-0.17198661,0.26296684,-0.5771057,0.30877286,0.3479383,-0.8054663,-0.403792,-0.33895323,
    0.07309616,0.33661216,0.4548429,0.031132108,-0.022965893,0.1618384,0.000865946,-0.09359498,0.110391125,
    -0.29345477,-0.3392407,-0.22087704,0.10142246,0.07272292,-0.16474865,0.5341559,-0.085993275,-0.25775757};


data_t kernel_conv2[8*16*3*3]={-0.04880685, 0.19140802, 0.43999276, -0.1521404, 0.22883892, 0.44441763, 0.19117406, 0.07675064, 0.2141396, 0.17155819, 0.1869817, 0.13564235, 0.07802878, 0.09657713, 0.11503764, -0.06531789, 0.11608444, 0.10223161, -0.00777959, 0.10880286, -0.02611149, 0.09360372, -0.10291059, -0.03999484, 0.00697654, -0.05331049, -0.06847444, 0.06172216, 0.07466696, -0.05414341, 0.0604592, 0.29039943, 0.0711258, 0.07517646, 0.03147638, -0.13063021, 0.15308261, -0.1305752, -0.04540411, 0.13638969, -0.10494436, -0.0421336, -0.0629525, 0.08002148, 0.11207762, 0.00946387, -0.02702092, 0.10101992, -0.10512695, 0.07901978, 0.25844878, -0.03896976, -0.01850744, 0.21881849, -0.20366868, -0.19041105, -0.22719182, -0.06702015, 0.04552089, 0.15917648, 0.0172393, -0.10545082, -0.09737585, 0.06912655, 0.11533673, -0.05738744, 0.05457696, 0.1490817, 0.05515558, -0.02325169, 0.31656528, 0.2583446, 0.06856664, 0.11968857, -0.14593583, 0.12714176, 0.06122085, -0.28021652, 0.01464625, -0.15697962, -0.32947746, -0.10625849, 0.06412509, 0.07864665, -0.13386233, 0.06795515, 0.09098545, -0.10032149, -0.01941918, 0.20757672, -0.04226891, 0.29595405, 0.27283314, 0.0431588, 0.36865178, 0.6962771, 0.14129208, 0.50493145, 0.28036004, 0.15978996, 0.26878062, 0.18073893, 0.19693239, 0.38079342, 0.20441672, 0.14104664, 0.2313608, 0.1485538, 0.06898907, 0.10826889, 0.1437097, 0.12656674, 0.14945902, 0.24742116, 0.0880806, 0.27891722, 0.67072934, -0.03319411, 0.03962113, -0.06120816, 0.25585777, 0.04060255, -0.06029314, 0.04275396, -0.07602473, 0.41460237, -0.07370155, -0.03352304, -0.0135954, -0.18373466, -0.01256339, -0.16092981, -0.01250594, 0.13202977, -0.04106256, 0.11564328, 0.20344211, 0.1533732, 0.3681012, 0.27206007, 0.2723061, -0.03523136, 0.20781383, 0.39918667, -0.09255935, 0.07865144, -0.46021837, 0.09197055, 0.2863005, -0.15098326, -0.02126408, 0.12567711, -2.646356, 0.13106799, 0.05758578, -0.1831898, -0.12161666, -0.08824435, -0.1264147, -0.37143326, -0.07118606, -0.14837138, 0.09813225, 0.34378994, -0.48464525, 0.04488887, 0.18032026, -0.56991565, -0.12479149, -0.3461065, -0.19781667, -0.07791881, -0.34051126, -0.13502224, -0.12340372, 0.13763165, 0.0293351, 0.04585515, -0.09332967, -0.05643604, 0.04922786, 0.15523022, -0.10820556, -0.1504847, -0.06159017, 0.11726253, -0.11455514, -0.0989415, 0.04787939, 0.09920645, 0.10703944, -0.22200271, 0.48951122, 0.05473781, -0.03553061, -0.15097758, -0.23754054, 0.17869374, -0.04681461, -0.0220568, 0.03230736, 0.20298, -0.07155421, 0.02845014, -0.03603293, 0.01225076, -0.42976886, 0.02511498, -0.00867871, 0.009101, 0.15163587, 0.02496352, -0.07744206, 0.07270674, 0.01164217, 0.13439636, -0.04818193, -0.0244367, -0.02424422, 0.08877606, -0.3861903, 0.25028107, 0.21271905, -0.0510409, 0.17607225, -0.01342707, -0.07373659, -0.09751758, -0.11405478, 0.12424424, 0.1891297, -0.14872436, -0.161654, -0.2032015, -0.20263158, 0.1324703, -0.30353826, 0.434215, -0.06870845, -0.90617836, 0.4915134, -0.3392966, -4.430645, 0.2615014, -0.01092444, -0.16903107, 0.45751375, 0.01402948, -0.12760115, -0.05286887, -0.20649447, -0.02477004, 0.17735586, -0.12658618, -0.22894882, 0.9925135, 0.0044816, -0.88045007, 0.4415289, -0.7930059, -0.88917726, 0.20066132, -0.30984157, -0.26033565, -0.14081293, -0.37032542, -0.42396435, -0.07989848, -0.00637335, 0.24894539, -0.07974628, -0.20263784, -0.19595857, 0.3743268, 0.24233921, 0.10697197, -0.068075, 0.07470487, 0.12138756, 0.28422803, 0.05903625, -0.6355794, 0.53072155, -0.16553631, -0.46434236, -0.14322764, -0.31728294, -0.03668443, -0.12390392, -0.11497302, -0.06982809, 0.05698038, 0.00263644, -0.10128789, -0.06971451, 0.01365046, 0.19731496, -0.08528234, -0.15293139, -0.02085511, 0.06236575, -0.02484583, -0.1804359, 0.31197575, -0.04935801, -0.12500307, -0.32876125, -0.08634475, 0.27821696, -0.14370467, -0.09897659, 0.07475292, -0.19208275, -0.15263426, -0.13747193, 0.12076568, 0.11228341, 0.00794288, -0.07563864, 0.04128709, 0.01907749, 0.14220434, 0.10329187, 0.43997276, -0.00304936, -0.07592285, -0.05711038, 0.04627664, -0.06773333, -0.08693882, 0.04694179, 0.15636036, 0.08348184, -0.03186116, 0.11496944, -0.01555085, 0.03311404, 0.06359719, -0.10799345, 0.06817189, 0.20374049, 0.22946371, 0.18000346, 0.05017028, 0.2344419, 0.17226449, -0.02454798, 0.1369884, 0.1626038, 0.17371343, 0.31456563, 0.10435619, -0.08037606, 0.02197476, 0.01844385, 0.03158329, 0.04703076, 0.13200767, 0.08308659, 0.13268699, -0.09751469, -0.03386879, -0.1135589, 0.07014545, 0.052547, -0.18295853, 0.11334804, -0.07138261, -0.24972105, 0.09965539, 0.09028475, 0.00982485, 0.20413205, 0.10657384, 0.0250174, 0.02310561, 0.05021884, 0.0855553, -0.0019225, -0.02638582, -0.06013432, -0.09128904, -0.0813003, -0.1560241, -0.05077826, -0.07852123, 0.21075842, -0.22053452, -0.166377, -0.02363719, -0.02878629, 0.05620613, -0.05780941, 0.07098848, 0.18061258, 0.08597823, 0.36218208, 0.185708, -0.24517, 0.17466828, 0.10606968, -0.23419343, 0.53644913, 0.6339544, 0.17730832, -0.23383583, -0.3130314, -0.19345237, -0.0795301, -0.32048634, -0.07995625, 0.06783839, -0.17434667, 0.04235651, 0.0051773, -0.06334433, -0.06038956, -0.00379336, -0.11045352, 0.08744933, 0.05334215, 0.11024056, 0.21018009, -0.14971705, -0.11314442, 0.15716244, -0.08411714, -0.35456038, -0.08650877, 0.09137703, 0.17102246, 0.22861525, -0.17120399, 0.09925799, 0.05060064, -0.17455792, -0.03645045, -0.02189411, -0.06867781, 0.14209428, 0.45864767, 0.18568598, -0.04685603, -0.25295055, 0.20812306, 0.19991925, -0.11863282, 0.3576992, 0.1670977, -0.16974667, -0.19666421, -0.3241, 0.26122406, -0.16045485, -0.05603207, 0.07120717, -0.03586637, -0.00116286, -0.13330178, 0.20267953, -0.00408234, -0.05016641, -0.08108813, 0.09824993, -0.15940249, 0.1165531, 0.01230398, 0.19108662, 0.13888074, -0.05931184, -0.13963927, -0.13717283, -0.00133548, 0.05376085, -0.0802189, 0.05082491, 0.16594148, 0.07122029, 0.14845861, -0.03210763, 0.0206558, 0.19103274, 0.05937398, 0.17729397, 0.06865674, -0.02014, 0.06770055, 0.15474285, 0.00088485, -0.15469241, 0.06089753, -0.32484853, -0.21064423, 0.04937493, -0.06626502, 0.02708504, -0.00969933, 0.04467307, 0.1839852, 0.22404307, 0.15426275, -0.01353186, 0.2097159, 0.02796441, -0.09864852, -0.32903606, -0.01405099, -0.31664112, -0.30600703, -0.13273369, -0.48571178, -0.46538067, -0.05832669, 0.17917986, 0.21859299, 0.05402714, 0.07514279, 0.14172162, 0.03628084, 0.11374793, 0.28977546, 0.29112655, 0.29596448, 0.29372826, 0.03314374, 0.21680933, -0.3410797, -0.24152003, -0.14199986, -0.27166316, 0.20858833, 0.20144323, 0.0971339, 0.03076937, 0.1945975, 0.25616926, 0.1999295, 0.30900356, 0.2300481, -0.00280604, 0.11113777, 0.18060265, 0.12249373, 0.36958843, 0.3666725, 0.1646505, -0.22528501, -0.105723, -0.04021617, 0.25931233, 0.07793894, -0.00398234, 0.18252406, 0.329591, -0.31411925, -0.0944712, 0.12934075, -0.19738224, 2.8934348e-01, 2.1590480e-01, 9.3616664e-02, 6.2723003e-02, -1.8821273e-03, -6.2650658e-02, 7.2990380e-02, -2.4888117e-04, 2.3368917e-02, 0.29662555, 0.06580959, 0.0672586, 0.44238046, 0.12727559, 0.1676135, 0.04644163, 0.15346065, 0.1464253, -0.12770881, -0.14214545, 0.0042909, 0.07230771, 0.02486155, -0.12153754, 0.12133061, 0.18792869, 0.2847094, -0.09037018, -0.15470967, -0.06708524, -0.24765787, 0.01767272, 0.03801924, -0.0422115, -0.1684106, -0.23395549, -0.00121299, -0.24510308, -0.01725696, -0.0661852, -0.06606231, 0.11867937, -0.05543543, -0.22453584, -0.07238414, 0.17015216, 0.11609507, 0.1370537, 0.20555031, 0.0916946, -0.02793252, -0.2057743, 0.07768095, 0.09804563, -0.05733339, -0.03501483, -0.04013086, -0.0579108, -0.02683631, -0.00777012, 0.10739823, 0.07612967, 0.09190433, -0.01654775, 0.19096611, -0.04890806, -0.08747917, -0.02992911, 0.05384886, -0.02722533, 0.11446501, 0.02981159, 0.04308037, -0.01445127, 0.18726268, 0.12962833, 0.11743216, 0.04149771, -0.02645283, 0.0224599, 0.2209482, 0.06546997, 0.08965319, 0.16006461, -0.09005722, 0.1863691, 0.13396981, -0.00835324, 0.30983844, 0.20107524, 0.28473023, -0.2139233, 0.03518234, 0.07739823, -0.33094573, -0.25685197, 0.12912683, -0.06143874, -0.08963095, 0.13472895, -0.03457493, 0.02831076, 0.06384792, 0.0086543, 0.07770006, -0.01023992, 0.16507366, 0.16352779, 0.32242748, 0.09899355, -0.05704626, 0.5270952, 0.04038885, 0.20134151, 0.08235054, 0.07309532, 0.44001484, -0.0468003, 0.04928508, 0.07161935, -0.02374987, 0.02389885, 0.27760658, -0.11863106, 0.0692881, 0.02602521, 0.275761, -0.22451535, 0.00793856, 0.21979597, -0.1735435, -0.03431131, -0.07415917, -0.17256239, 0.14067659, -0.04553713, 0.04608474, -0.01481533, -0.13906898, 0.13026579, 0.05328153, -0.12620467, -0.09214584, 0.25397655, 0.17583358, 0.2446707, 0.0224199, 0.1873075, 0.17404968, 0.03038121, -0.08770961, 0.22433636, 0.19636206, -0.12908302, -0.18165922, -0.21801187, -0.06940383, 0.02689234, 0.18968049, -0.12512405, 0.12223563, 0.26826817, -0.14024688, 0.17462975, -0.05191343, 0.03655082, 0.29567364, 0.24787556, 0.25226676, 0.24168295, 0.09279422, 0.11618867, -0.1301162, -0.00974937, 0.17907672, -0.00966106, -0.00590021, 0.12221432, -0.03743677, 0.018976, 0.07789295, 0.086781, 0.03322447, 0.13847694, -0.14390045, -0.312965, 0.09283385, -0.1520726, 0.08126284, 0.18848427, -0.04602412, 0.06828502, -0.14754952, -0.00181795, -0.19774897, 0.14418055, 0.09725013, -0.1969272, -0.00552825, -0.05723273, -0.14604431, -0.05108301, 0.16137029, 0.15937118, -0.01894147, -0.00796104, -0.15118548, 0.04730143, 0.26994786, 0.14300634, 0.12468966, 0.2658846, 0.13624859, 0.16111821, 0.17555447, 0.05952408, -0.0153851, -0.26054016, -0.01924648, -0.03520988, -0.01990448, -0.07226752, -0.02162609, -0.14380409, -0.23406602, 0.18344724, 0.08450187, 0.146355, 0.18968342, 0.21924043, 0.12191702, 0.20835479, 0.23135334, -0.0063246, -0.08132815, -0.03212038, 0.08341061, -0.05988333, -0.05739318, -0.06281391, 0.10647275, -0.06505466, 0.02675237, -0.07484851, 0.04260224, 0.11216635, -0.1104081, 0.0893989, 0.06648139, -0.13945414, -0.01524982, 0.03340551, -0.17176074, -0.13860656, 0.05344233, 0.05046802, 0.24870662, 0.36336684, 0.18433377, 0.21158433, 0.17071623, 0.07682058, 0.15824127, -0.07522386, 0.23397596, 0.16033582, -0.0291069, 0.18404782, 0.10302875, -0.03119985, -0.17929906, 0.1655447, 0.09218572, -0.28134972, -0.2946892, -0.0685344, 0.01690542, 0.00609857, -0.06937302, 0.05997264, 0.16375735, 0.1549907, 0.12038442, 0.07585881, 0.2681521, 0.00171732, 0.25866923, 0.36536086, 0.14945135, 0.13942315, 0.08294964, -0.04790765, -0.06216092, -0.09893722, 0.00068139, 0.02795195, -0.13508238, -0.21774629, -0.05600263, 0.0700516, 0.30230948, 0.02831274, -0.04547961, 0.10784702, 0.07760841, 0.07169888, -0.00377164, 0.08289417, -0.07852945, 0.18700063, 0.21464753, -0.0724813, 0.03987959, 0.00069324, -0.08424142, 0.12388603, 0.22551858, 0.10669786, 0.00078972, 0.12386696, -0.07220793, 0.00788507, 0.02810782, 0.0094106, 0.08724465, -0.1755219, -0.41797206, -0.06180953, 0.10764126, -0.03752699, 0.1247865, 0.30189523, 0.5334325, -0.06190417, 0.14528674, -0.02904385, 0.01082611, -0.04870294, -0.03139285, -0.0552028, -0.02469553, -0.08502709, -0.07450779, 0.0099293, 0.0465755, -0.13569641, -0.13511002, 0.0587667, -0.05707752, 0.16269489, 0.10384942, 0.02152985, 0.2249885, 0.2778683, 0.03262457, 0.1470559, 0.45309952, 0.01119125, 0.15192848, -0.05108405, 0.00167799, 0.13862696, -0.04665169, 0.06316413, -0.12644833, -0.00962673, -0.07145552, -0.12904455, -0.15255558, 0.08530562, 0.228095, 0.09743562, 0.2682015, 0.28809097, 0.33511806, 0.11275412, 0.21112207, 0.0977518, 0.05750574, 0.06321778, 0.01619853, -0.10250194, -0.34732816, -0.28171188, -0.12039216, -0.3300169, 0.00166475, -0.14073431, -0.01638577, 0.05705478, -0.01499345, -0.01105017, -0.18239897, 0.22267026, -0.08337052, -0.18428837, -0.1850222, -0.05174849, 0.03081419, 0.1352909, 0.3865881, -0.07020407, 0.32506546, -0.02516675, 0.2063848, 0.13743885, 0.31122595, 0.0522617, 0.3994587, 0.41140467, 0.17238532, 0.17529477, 0.28224015, 0.14451131, -0.19298887, -0.13465722, -0.2788498, 0.13484268, 0.2835293, 0.0018769, -0.00996161, 0.18227531, -0.3674626, 0.41994, 0.23120916, 0.08196704, 0.01891883, 0.41613603, 0.69994515, -0.06166919, 0.26470214, 0.40058985, -0.13561021, 0.06317639, -0.08072408, 0.24501297, 0.09822802, 0.1978413, 0.05294731, 0.16057934, -0.08213988, 0.22412632, 0.05660583, -0.2290963, 0.30565187, 0.49089065, 0.20914407, 0.31677327, 0.4076962, 0.10916138, -0.08180446, -0.07881608, -0.19680694, 0.11488668, -0.15563108, -0.22924338, -0.16284601, 0.30432412, -0.04029015, -0.16488822, 0.0197065, -0.15784551, 0.06009529, 0.29968455, 0.00101178, -0.09392554, 0.25921127, 0.09522808, 0.08052877, -0.11472234, -0.07435831, -0.06742844, -0.12672392, -0.45284387, -0.12737814, -0.25237852, -0.23456612, 0.21168742, 0.11033372, 0.19800048, 0.24136694, 0.19717437, 0.23942123, 0.03232061, 0.08264855, 0.15314622, 0.09603722, 0.10013282, -0.11308756, 0.11752973, -0.00995377, 0.09150728, 0.00860194, -0.09544656, -0.09255915, -0.04519987, 0.10910223, -0.09030512, -0.00223527, -0.08065756, -0.13413504, 0.21546505, 0.04562634, 0.19666196, -0.06980358, 0.06543749, 0.00893661, -0.08304913, 0.05119082, 0.22720836, -0.11705953, 0.01983441, -0.07192152, 0.06985881, 0.0602468, 0.01141792, 0.21595408, 0.01726275, -0.08458833, 0.1456031, 0.14594692, 0.05865484, -0.03089688, -0.16094854, -0.16508247, 0.24420224, -0.06297807, -0.06350268, 0.14005427, -0.18488915, -0.3177262, -0.11949266, 0.05717771, 0.07228424, 0.04848108, 0.14914873, 0.14878505, -0.02435719, 0.14452387, 0.05144849, -0.16773199, 0.08831152, -0.28599536, -0.22783364, 0.24674544, -0.37825406, -0.06664623, 0.5379173, -0.0391971, -0.07125751, -0.08371402, -0.06014823, -0.00359036, 0.04076173, 0.11313947, 0.09085121, 0.2681768, 0.20886919, 0.35735482, -0.09579312, 0.00651014, 0.11337481, 0.18828878, 0.11991186, -0.22709952, 0.1686443, 0.08952241, 0.11967162, -0.09943862, -0.02007727, -0.12059573, 0.25854048, -0.10637456, -0.23847632, 0.03817076, -0.28223893, -0.05761995, 0.01491735, -0.00035594, -0.04063709, -0.00753428, 0.06781924, 0.27422184, 0.03879897, 0.16853498, -0.17159912, 0.17227301, -0.07202265, -0.32851467, 0.09135766, -0.14870013, -0.00650713, 0.3319899, 0.13975428};
data_t kernel_conv3[8*8*3*3]={-0.0677966, 0.42275885, -0.00061215, -0.1133323, -0.00100782, -0.05625276, 0.04747077, -0.03548198, -0.04897275, 0.3790718, 0.52662057, -0.0709253, -0.39522573, 0.07307196, -0.12141591, 0.10139113, -0.16103052, -0.10408658, 0.17914593, 0.24753779, 0.0225854, 0.35624465, 0.00459639, 0.07903139, 0.05920572, -0.01659688, 0.0471591, 0.12082218, -0.00957776, 0.3245104, 0.12341503, 0.05968961, 0.14663844, -0.03155843, 0.06941643, -0.04612169, 0.03702698, 0.05378344, -0.28094625, 0.22010078, 0.28010777, 0.0123405, -0.00071047, 0.10759582, 0.11195423, 0.05683918, -0.10967742, 0.07606357, -0.12204684, -0.03786823, -0.1649492, -0.09420121, -0.27614325, -0.02461183, 0.01865939, 0.0978831, 0.08857124, -0.02055697, 0.0704101, 0.13377653, 0.04906088, 0.07320518, -0.1147556, -0.10858218, 0.1494091, 0.1768331, -0.0844082, 0.0712703, 0.06460029, 0.09502797, 0.16416648, 0.09091755, 0.16918992, 0.17876326, -0.07916409, 0.30154622, -0.03570981, 0.18127148, -0.02013426, -0.11815306, 0.1971848, -0.07735062, -0.08534781, -0.1864978, 0.75320154, 0.07413381, -0.06295487, -0.28659144, -0.16037732, 0.183371, 0.04153937, -0.02194928, 0.3181206, -0.03361399, -0.08788364, 0.1705988, 0.1578355, 0.20957127, 0.08781271, 0.04547012, 0.27524033, 0.1486141, -0.27386028, 0.25206578, 0.13178639, 0.20629597, 0.10477921, -0.09234705, 0.12795624, -0.16200648, -0.07882604, -0.22920266, -0.13553816, -0.10940216, -0.02122017, -0.00519841, -0.15865774, -0.4178798, 0.11639822, -0.10166198, 0.13017857, 0.06919184, -0.08306406, 0.02259063, 0.15851632, 0.07742281, 0.10985182, 0.3223371, 0.0582128, 0.30226862, 0.5115753, 0.05579323, 0.0384585, -0.14280318, 0.02186553, -0.20438744, 0.17990524, -0.00561221, -0.01760928, 0.26471156, -0.19166443, -0.10499852, 0.00684641, 0.12058353, -0.06565677, -0.16622025, 0.09412883, 0.36968112, -0.00842094, 0.10379151, 0.0034839, -0.09636971, -0.01865733, -0.38126594, -0.20398842, 0.05694417, 0.11228289, -0.16518213, 0.3093171, 0.3309194, 0.00297055, 0.30541953, 0.07646615, 0.02668036, -0.02379972, 0.00895672, 0.128948, -0.1120021, 0.25318927, 0.1475705, 0.19673137, 0.27790496, 0.01019952, 0.08250861, -0.09277241, 0.22565271, -0.03574929, 0.0634053, 0.09178557, -0.1296598, 0.06975057, 0.08987591, 0.05893818, 0.33174282, -0.17154315, 0.05141338, 0.0805874, 0.02538121, 0.16254437, 0.20626405, 0.0650351, 0.24289194, 0.01670786, -0.094249, 0.07155137, -0.07184774, -0.12067593, 0.06592602, -0.18189971, -0.16962081, -0.08546191, 0.34002978, 0.09369949, 0.18667652, 0.09345134, -0.04444402, 0.1285571, 0.11333279, -0.06102471, 0.06224343, 0.22396979, 0.11402766, 0.1806027, 0.21727136, 0.16516668, 0.2354463, 0.08537132, 0.07175072, -0.03384829, -0.24219486, 0.33716196, 0.02076802, 0.01646625, -0.01039672, -0.1877357, -0.18801315, -0.4263794, -0.00693434, -0.06330838, 0.8318788, -0.2027723, -0.13156502, 0.5306305, -0.06641921, -0.03655976, 0.00392354, 0.09233093, 0.26908156, 0.10727932, 0.09158993, 0.03045926, -0.10984534, -0.09029362, 0.01985805, 0.3287586, -0.09163616, 0.10246832, 0.06146678, 0.38659555, 0.0967576, -0.13888858, 0.13657351, 0.07277187, -0.01754263, 0.1262777, 0.03642397, 0.3004673, -0.22352971, -0.1290512, 0.082149, -0.05995406, 0.07286023, 0.23931709, 0.33546805, 0.25027663, 0.24327496, 0.36098984, 0.18491483, 0.23109165, 0.3916054, -0.02415192, -0.26902276, -0.14990681, -0.10717932, 0.05340062, 0.1493907, 0.02956052, -0.05846758, -0.0427017, 0.09817781, -0.1202765, -0.12918408, -0.17921108, 0.18458268, 0.01664486, -0.0294736, -0.10784227, -0.1882393, 0.00731233, -0.17124456, 0.15107997, -0.44957647, -0.24116741, 0.01314391, -0.36670342, -0.40968287, -0.20713465, -0.5956796, -0.07666151, 0.01735243, -0.08870319, -0.16465917, -0.00080142, 0.55953383, 0.26952362, 0.08384239, 0.01154229, -0.06952102, 0.03519329, 0.53591913, 0.06613176, -0.02053994, -0.5055812, 0.16578385, -0.18788701, -0.18359464, -0.04732921, 0.25010267, -0.20737396, -0.43951398, -0.16413997, -0.9217318, -0.4086452, -0.16051467, -0.01483061, 0.08317263, -0.15610543, 0.2852873, -0.10505164, 0.24765174, -0.5635689, 0.4473711, 0.4668875, -0.24054137, -0.06800731, -0.12317964, 0.3971442, 0.06237518, -0.17970203, -0.19693519, 0.20565659, 0.02174475, -0.00784475, 0.33510482, 0.06119049, 0.35239732, -0.12601551, 0.11772437, -0.13438591, -0.19820566, -0.10636429, -0.09736885, -0.21069573, -0.06395157, 0.18638651, 0.14420345, 0.05821975, -1.151987, -0.7092476, 0.22000888, 0.0340619, 0.03797846, -0.18414408, -0.13057873, -0.17920971, -0.1609449, -0.09095978, -0.0755333, -0.26459995, 0.2247495, 0.09339268, 0.10395035, 0.13800836, -0.25756726, 0.13516882, 0.0134402, -0.11655522, 0.19406457, -0.05379239, -0.0657303, -0.02148277, -0.29467624, 0.07381025, 0.12174089, 0.00708413, -0.22813147, -0.31558368, -0.01909142, -0.14138019, -0.21412934, 0.23153585, -0.01897597, -0.00100758, -0.08865529, -0.0623709, 0.14378856, -0.04141674, -0.03119272, -0.08332849, 0.10799326, -0.08615266, -0.09226599, 0.26601094, 0.03573238, -0.23368445, 0.1588252, -0.10669286, 0.03790901, 0.25110507, -0.05823708, 0.1216723, -0.09257592, 0.02191816, -0.00223452, -0.03650181, 0.07274602, 0.01718604, 0.23926851, -0.18155381, -0.1117788, 0.11781479, 0.05266182, -0.16152231, 0.2300876, 0.10511653, 0.1393098, 0.3819682, -0.04835102, 0.17405504, 0.13533641, -0.03955844, 0.18480317, 0.5486926, 0.29645568, 0.08574091, -0.00914312, -0.20021519, 0.20832905, 0.12308848, 0.3791024, -0.0954222, 0.5748822, 0.00488695, -0.01871396, 0.11575659, -0.02957447, 0.19916132, 0.18018514, 0.13885146, -0.05250153, 0.0340096, 0.3460008, 0.14460763, 0.07585043, 0.03588791, -0.17043746, 0.20542026, -0.07175131, -0.12056665, -0.14299068, 0.0958491, 0.04823343, -0.01630443, 0.14523247, -0.23731461, -0.1017941, -0.01665366, 0.3066175, 0.04380267, -0.1300789, -0.0051679, 0.1011139, 0.11862967, 0.03440294, 0.09878203, -0.26132202, 0.14609273, 0.19419882, 0.02439942, -0.12665974, 0.31330675, -0.2620232, -0.06805762, 0.2506985, 0.0381599, -0.08007773, 0.06662604, 0.28361142, 0.1288561, 0.14142905, -0.23767114, 0.11165302, 0.17486489, 0.15553252, 0.29669634, 0.29439527, 0.03343087, 0.01682256, 0.08822078, -0.09363737, 0.13378629, -0.01484993, 0.01501194, 0.05974591, 0.06481212, -0.08816664, -0.14404199, 0.20315437, 0.24513239, 0.12007615, -0.11281818, -0.09548863, -0.02543744, -0.02110884, -0.27825934, -0.15018111, 0.23716615, -0.06159938, -0.23089257, -0.15351771, 0.45690742, -0.11934386, -0.01948304, -0.03179589, 0.03370772, 0.29851472, 0.14309713, 0.23663189, 0.1867433, 0.10270391, 0.24143852, 0.18296057, -0.10688631, -0.05105929, -0.03842678, 0.26009077, 0.09242612, -0.07064469, 0.03256094, 0.08899746, -0.05848467, 0.09990676, 0.24867778, 0.15861216, 0.02330081, -0.31453282, -0.09991521, 0.11679115, 0.06463062, 0.24999033, 0.01904338, -0.4507681, -0.2978951, -0.10771358, 0.11749946, 0.12937121, -0.05493695, -0.06340855, 0.06074326, 0.22728474, 0.257381, 0.15185288, -0.02192581, -0.04123024, -0.21322188, 0.14603093, 0.19725291, -0.09341335, -0.07030185, -0.18817514, 0.15574697, 0.3927905, 0.17787318, 0.03056586, 0.03192165, -0.15321279};
data_t kernel_conv4[8*8*3*3]={-0.05353427, 0.00273042, 0.03461251, -0.11558491, -0.16561672, -0.17701644, 0.1318332, 0.05598129, -0.09287412, -0.11253025, 0.04703401, -0.06167003, -0.02542767, -0.29898307, 0.23250714, -0.11091627, 0.02589541, -0.04855473, -0.1581634, 0.01058759, -0.00619458, -0.21009843, -0.08114899, 0.10976224, 0.08899342, -0.0571292, 0.01351235, 0.27915877, 0.17958747, -0.00644577, 0.09153629, 0.20249856, -0.03451004, -0.04718816, -0.02593838, 0.14439763, -0.15233144, 0.21358956, -0.39046884, -0.14471975, 0.01116831, 0.18587619, 0.10037319, -0.04321624, -0.10460848, -0.04324847, 0.04228878, 0.01031322, 0.24450539, -0.14892522, 0.2528033, 0.02564466, -0.15091963, -0.09586192, 0.12716937, -0.1164217, 0.03774165, 0.0679022, -0.32809952, 0.12740332, 0.00757734, 0.19138867, -0.0602621, 0.11442138, 0.03617706, -0.07744278, 0.39175305, 0.26469943, 0.04573256, 0.00623977, 0.07370271, -0.0473356, 0.09586508, -0.15647876, 0.0417666, -0.1887387, 0.02081872, 0.11013738, -0.21561666, 0.1312814, 0.11480291, -0.04518899, 0.24582806, -0.00135893, 0.03461677, 0.15786755, -0.13115875, -0.05027754, 0.10416754, 0.14188185, -0.08989637, -0.01390909, 0.13863681, 0.05304958, 0.07699338, -0.3722038, 0.07008355, -0.17071356, 0.01374694, 0.28926137, 0.09160412, -0.0461775, 0.15874086, -0.22433728, 0.15612464, 0.04314532, -0.06281272, -0.2261888, -0.23371184, 0.71487665, -0.34592086, -0.06524573, 0.19553293, -0.6741654, -0.05170781, -0.01164026, 0.14897725, 0.15269017, 0.16228239, 0.10446145, -0.09032519, 0.58692086, 0.00745971, 0.02513978, 0.08319099, 0.10665272, -0.11865605, -0.16301253, -0.03843581, 0.01153917, -0.40534708, 0.12302921, -0.01832834, 0.16433139, -0.04865934, 0.03337184, 0.09323235, 0.08011923, 0.14035128, 0.13028729, 0.1594658, 0.13199703, -0.03058298, 0.01313367, -0.08003471, 0.24574801, 0.03174589, 0.43125284, -0.02843783, 0.07917425, -0.11882281, -0.04355394, -0.03952047, 0.11112806, -0.18428135, -0.09751894, -0.0739763, -0.21186507, 0.17957787, -0.0482433, 0.14175779, -0.0881279, 0.01236782, 0.01547033, 0.03825629, -0.16366905, 0.2452969, -0.03108223, 0.15524822, 0.1005932, -0.00040854, -0.16770212, 0.08793634, 0.02046845, -0.06311576, -0.21244237, -0.00491537, -0.09755995, -0.06505376, 0.02003511, 0.19064867, -0.02749211, 0.2247211, -0.0498107, 0.03282782, 0.35398003, 0.02565317, -0.01031491, 0.17956553, 0.35640058, -0.0800639, -0.11682043, 0.10124989, 0.59518874, -0.04286273, -0.02900106, -0.12733185, -0.12527585, 0.13652593, 0.04186978, 0.0339142, 0.06942142, 0.3336456, -0.1341998, -0.03977976, -0.2248108, 0.1058514, -0.0500595, -0.07839499, -0.11753508, 0.04825826, 0.37687188, -0.08619564, 0.15392454, -0.10985836, 0.02265298, -0.14856388, 0.14404179, 0.16102232, -0.36781114, 0.27037564, 0.11013584, -0.00983908, 0.08282381, 0.10037139, 0.04222262, -0.3134325, -0.03974574, 0.05831756, 0.02050728, 0.00115529, -0.06922884, -0.03071028, -0.0738952, -0.05393166, -0.40429938, 0.04091605, -0.05788187, -0.4460751, -0.10188496, 0.08586364, -0.01628904, 0.03811755, 0.02878892, 0.18398923, 0.03300226, 0.08438508, -0.13809592, 0.15823114, -0.06459807, 0.01728398, -0.09681837, -0.24830347, 0.30763754, 0.00540642, -0.10704413, 0.06475947, 0.3809346, 0.06271037, -0.06942482, 0.01945444, 0.03827592, 0.00536609, -0.10132305, -0.03372107, -0.00189643, 0.08104314, -0.02494743, 0.01034316, -0.06492291, 0.04874279, 0.17694387, -0.02777945, 0.05136408, 0.3207518, 0.01339758, 0.03120551, 0.11256348, 0.02404252, 0.11312077, 0.4371816, -0.29679856, 0.315679, 0.07826591, -0.01564001, 0.03496687, -0.0950017, 0.01485631, 0.23641367, 0.15257215, 0.04974725, -0.37846324, 0.26610407, 0.1190237, -0.04749518, -0.00182072, 0.09526147, 0.16727015, -0.2515807, -0.14067176, 0.10913983, 0.283468, -0.19681403, 0.0113054, -0.07083607, -0.0896759, 0.01737044, -0.36332533, 0.05444657, 0.06351627, -0.02866869, -0.04403675, -0.02506531, 0.09611966, -0.02071184, -0.0126227, 0.11686883, 0.15498103, 0.12032579, -0.0608928, 0.0398836, -0.07345308, 0.03845829, -0.06591355, -0.15810545, 1.0194288, 1.0413306, 0.01541356, 0.00941383, 0.07238317, -0.05002908, 0.07564124, 0.01219627, 0.25125054, -0.28932494, -0.01037828, -0.00121562, 0.10468576, 0.01700269, -0.260842, 0.01712116, -0.08937161, -0.2503098, 0.01746386, 0.05493985, -0.08912291, -0.2761167, 0.10160488, -0.01040096, -0.04390961, 0.10874167, -0.07317334, 0.23125842, -0.08461215, 0.12913856, -0.02805559, 0.1059755, 0.07942125, -0.01760564, 0.124633, -0.09941093, 0.06023943, 0.04459628, -0.04915771, 0.20099698, -0.0464721, 0.01682568, -0.09559492, 0.01085928, 0.09457045, -0.10375741, -0.02556658, -0.04971392, 0.48876882, -0.00745201, -0.11156364, -0.00054057, -0.02209502, -0.05559651, -0.14097758, -0.08598328, 0.0259256, 0.23759294, -0.00838979, 0.0374921, 0.05769567, 0.07710367, -0.07509632, -0.02658467, 0.00095768, 0.05583207, 0.43578327, 0.01057915, 0.00846511, -0.05637594, 0.05817636, -0.01815961, -0.00691916, -0.39045656, 0.01485991, -0.08129042, 0.5346524, 0.02061012, -0.00353583, -0.28847742, 0.1046, -0.08776794, 0.00231095, 0.01832624, 0.05451765, -0.02175369, 0.17053717, 0.02126556, -0.07548892, 2.4883471e-02, 6.5223560e-02, 2.2816622e-04, 1.2072450e-01, -3.6139965e-01, 1.1125546e-02, -4.3352965e-02, -8.7160468e-02, -1.2908487e-02, 0.05350754, 0.1312672, -0.11232688, 0.03443046, 0.3410024, 0.0640354, 0.07353805, 0.00826659, 0.01360546, 0.16287194, -0.10928314, 0.03231665, -0.2752143, 0.02372241, -0.06533438, -0.17132391, -0.14025807, -0.04273453, -0.06962147, 0.14760049, 0.05082432, 0.03596928, -0.44805434, -0.00091764, -0.01598709, 0.06360863, 0.07670642, -0.08003206, -0.00407225, 0.21766433, 0.00087054, 0.5472692, 0.04022307, -0.04623282, 0.01314022, -0.0234705, -0.2542243, -0.2875691, -0.06091002, 0.05908777, 0.23002194, 0.02915354, 0.01227454, 0.00402441, -0.11499906, -2.1691177, 0.69746023, 0.386236, 0.04907588, 0.193971, 0.07069113, -0.13858569, 0.12833652, -0.16643453, 0.3988541, 0.03976711, 0.19428742, -0.10711896, 0.07594509, 0.03258318, 0.21998358, 0.26085916, 0.05256809, -0.04813423, 0.1484903, -0.08809876, 0.14055257, -0.61777645, 0.14214987, -0.04905468, -0.02850463, -0.00517574, -0.13177273, -0.45367113, -0.14359692, 0.33924454, 0.20720112, -0.04795125, 0.15459532, 0.04925698, 0.05479416, -0.05279233, 0.01154036, -0.06120909, -0.3650461, 0.09308258, 0.03154963, 0.09653351, -0.01008863, 0.03213834, -0.12339159, 0.02377816, 0.03983399, -0.21981384, 0.27124715, -0.00491318, -0.01234227, -0.05002018, -0.05246517, -0.11438288, 0.04260919, -0.1578116, 0.09144173, -0.3121479, -0.00627535, 0.02687822, 0.17240517, -0.07924353, 0.06287092, -0.08128955, 0.12499448, -0.41563466, 0.2275128, 0.05151227, 0.00944976, 0.01378581, -0.04769661, 0.5574673, 0.05468595, 0.2591153, 0.48573282, 0.6952692, -0.09833732, 0.01754879, 0.11055247, 0.20650853, 0.04224464, -0.14828819, 0.03983375, 0.6964221, 0.07421114, -0.22371727, -0.13850577, -0.4137101, -0.01395418, -0.06642941, -0.06096205, 0.02974173, 0.28961316, -0.21283656, -0.09334915, 0.00417029, 0.12879744, 0.0127127, 0.44082686, 0.04931875, 0.08146446, 0.09818774, -0.00251722, 0.03114469, -0.15859404, -0.05812319, 0.03730413};
data_t kernel_conv5[8*8*3*3]={0.03699066, -0.04906592, -0.12089501, 0.12556295, 0.2478352, -0.03418554, 0.0099747, 0.14660457, -0.19268094, -0.14602666, 0.20474571, 0.01965329, -0.04394389, -0.2838696, 0.2093721, -0.06767263, 0.3432052, -0.19651501, 0.01330398, -0.01281688, 0.06475645, 0.10903893, 0.02071414, -0.17338641, -0.08703384, -0.09087432, 0.02329365, -0.01931586, -0.26861745, 0.02979043, 0.30055955, 0.31666443, 0.10108208, -0.4565116, 0.05509898, -0.05274168, 0.11711626, 0.01651221, 0.17937753, -0.0755747, 0.09309578, -0.29586968, 0.16663107, 0.16368137, 0.01486823, -0.01486828, 0.17938364, 0.02529768, -0.17112686, -0.02115455, 0.13617046, -0.09567446, 0.03532487, 0.04555516, 0.18700364, -0.09810597, 0.02115632, 0.11398651, -0.1564357, 0.02636726, 0.18600684, -0.37619683, 0.52661157, 0.12207193, -0.02162079, -0.16270238, -0.02678302, 0.35144603, 0.52468824, -0.01652491, -0.23348466, 0.05248214, -0.15008739, -0.00780965, -0.06500687, -0.24212062, 0.07872602, -0.01414887, 0.06058773, 0.33892968, 0.03278025, 0.08553509, 0.02202703, 0.09264307, 0.32587728, -0.00662134, -0.12263872, -0.200146, 0.17240103, 0.10102693, 0.00625311, 0.05487541, 0.06454643, 0.16896321, 0.09538689, -0.00232603, 0.04393725, 0.02143997, -0.25735807, -0.05856482, -0.10926284, -0.05147121, 0.2757946, 0.40710083, 0.07527577, -0.26863602, -0.23551159, -0.13721582, -0.02893536, 0.10863172, -0.0514361, 0.09651672, -0.31797257, 0.05352802, -0.184587, 0.4733903, -0.10681771, -0.1638204, 0.01984313, 0.05001863, -0.11575824, -0.18577865, 0.00306221, 0.04817766, -0.11936245, 0.12467017, -0.04599489, 0.02193001, -0.37265527, 0.14756739, 0.27705777, -0.18155837, 0.30589068, 0.16852957, -0.7090437, -0.1439382, 0.29211876, -0.574073, 0.218549, 0.33696792, 0.30999696, -0.1337931, -0.2757418, 0.11326125, -0.12430868, -0.06352944, -0.22041592, -0.13071537, 0.07456186, 0.3805229, -0.02556712, 0.23520714, 0.21518177, 0.2796939, 0.13693485, -0.25493458, 0.03290834, 0.1613008, 0.0976638, -0.09175442, -0.03907265, 0.11877254, 0.16093302, 0.08955979, -0.03227427, -0.24586722, 0.3387697, -0.14204963, 0.10280465, 0.0926384, -0.16629359, 0.07178847, 0.28179547, 0.01501404, -0.04700425, -0.14151576, 0.18893687, 0.13334918, -0.37832415, -0.28033817, 0.04820775, -0.04253413, -0.2914337, -0.17589939, 0.132297, 0.10000011, -0.00372927, -0.26407823, 0.07196296, -0.04231049, -0.27850834, -0.13217272, 0.17385758, -0.24710476, -0.27643132, 0.0163157, -0.13757294, 0.12960301, 0.14884618, 0.06954304, -0.00390967, -0.1669822, 0.08223128, 0.5765316, 0.31217676, 0.13450173, 0.03190596, 0.00344695, 0.11045813, -0.10977518, -0.02453911, -0.02201797, 0.35965118, 0.01242377, -0.09001778, 0.09434406, -0.17505282, -0.12224018, 0.03480622, 0.03782227, 0.2573444, 0.07721842, 0.00051901, -0.08730489, -0.04262003, 0.2845756, 0.1006225, -0.3448651, -0.16970794, 0.27692994, 0.14776415, 0.09251945, -0.07155954, -0.24762194, 0.11663006, -0.05182066, -0.22769512, 0.04367083, 0.26987123, -0.17995316, 0.00730871, -0.03092066, 0.04544991, 0.07793981, 0.16073942, -0.08334538, -0.2255535, -0.26315415, 0.25774544, 0.17252545, 0.02544065, -0.00694569, 0.06151308, -0.12253792, 0.12172405, 0.02074075, 0.02841064, 0.10132378, -0.04022633, -0.20396401, 0.02283798, -0.08517206, -0.07598859, -0.09264757, 0.13498683, 0.02437076, -0.0987877, 0.09267624, -0.00833789, 0.20184879, 0.04291837, 0.02434792, -0.05448844, 0.12635678, 0.12874685, 0.42950663, 0.14759015, 0.5640856, 0.00974323, -0.1096964, -0.6072871, 0.6125714, 0.27126402, -0.08785416, -0.20172252, -0.13411781, -0.09252606, -0.1463281, 0.32353312, 0.00845394, 0.14279455, -0.22624546, -0.38531175, -0.0260245, -0.12001698, 0.22631396, 0.19130298, -0.16541056, 0.5006266, -0.19436315, 0.31398597, 0.08499704, -0.30301875, -0.04229512, -0.12552929, 0.27887407, 0.07972631, 0.0998022, -0.08813646, -0.18811263, 0.27779797, 0.41593653, -0.03313665, 0.08304421, -0.2867872, -0.06574738, 0.02531596, 0.01730834, -0.0436416, 0.15066493, -0.10701259, 0.3679616, -0.12824486, -0.11685754, -0.1251788, 0.06046256, -0.2370949, -0.07426523, 0.1545474, 0.07901002, -0.0210589, -0.4126163, 0.0427684, 0.17110968, -0.05187513, -0.03289754, 0.0283081, -0.10011005, -0.29885963, 0.11158191, -0.25369173, 0.11256131, 0.00437772, 0.11095048, -0.19655553, -0.03670933, 0.01470036, 0.5603881, -0.00744919, 0.27161205, 0.39899617, -0.02701763, 0.05919703, -0.1812499, -0.04513798, 0.0497719, -0.10988273, -0.1281189, 0.00511588, 0.17880127, 0.00987683, 0.17035559, 0.04988851, 0.11192117, -0.26671678, -0.34543663, 0.04339268, -0.14378117, 0.01377449, -0.08450717, 0.09707792, -0.0009228, 0.06341023, 0.03119319, 0.00184537, -0.03844423, -0.0369784, -0.30202192, 0.09868357, 0.1011534, 0.18389958, -0.05351945, -0.19310746, 0.17222103, 0.07986964, 0.15820034, 0.13789468, -0.04899648, -0.0962605, -0.09737419, -0.14859831, 0.01156241, -0.11395454, 0.22501858, 0.25686073, -0.12687655, 0.01928107, 0.22318445, 0.07818741, 0.08207241, 0.13352548, -0.15753442, 0.16234693, 0.00822287, 0.12802377, -0.28400344, 0.09767665, 0.08059237, -0.00247611, 0.24405524, 0.187033, 0.02845029, -0.03022684, 0.01494689, 0.02300081, 0.21110216, 0.18743128, 0.26034424, -0.30089006, 0.20771436, 0.3631528, 0.24276873, -0.15382893, -0.1173032, 0.13467364, -0.12600543, 0.10831993, 0.3457588, -0.24073905, -0.19187388, 0.03017701, 0.1287928, -0.15630975, 0.1624317, -0.0833851, 0.37696713, 0.18891789, -0.11848938, -0.07037818, -0.01465037, -0.08856889, -0.18765572, -0.2802658, 0.11892598, 0.12827799, 0.15611736, 0.03870235, 0.07332297, 0.00795362, -0.0780468, 0.0635751, -0.16023314, 0.15777978, 0.00027074, -0.1551936, -0.04817101, -0.05476975, 0.14551033, 0.12981641, 0.27855542, 0.02814483, 0.01093804, -0.178187, 0.04602136, 0.01646134, -0.31225032, 0.11352516, -0.02102443, 0.02471192, 0.01261618, 0.0541482, -0.11710392, 0.14766793, 0.20671801, 0.03515048, 0.47407332, -0.24519907, -0.3350066, -0.14808866, 0.19756253, -0.09844938, 0.02845643, 0.07413126, -0.00103332, -0.10265958, 0.10099443, -0.1229183, -0.04857737, 0.21690464, 0.4481406, 0.09351294, -0.10977316, 0.31018195, -0.36148104, 0.53668815, -0.15354158, 0.09337975, 0.07169735, 0.02005202, 0.06410309, 0.43104026, -0.06986782, -0.00781642, -0.04910209, 0.48904628, -0.01288944, -0.16623653, 0.01519612, -0.04500956, -0.08441889, -0.05932119, 0.06089603, -0.07649954, -0.09123786, 0.01332851, 0.09381287, 0.0059186, -0.19123206, -0.2257642, -0.13942422, 0.05852395, 0.10982408, -0.08820665, -0.29737285, 0.01872979, 0.07109236, 0.09893718, -0.19104022, 0.03206085, -0.0445961, -0.02962004, 0.03168942, 0.007739, -0.06135976, -0.12351935, 0.28432328, -0.06070104, 0.07820807, -0.09935085, 0.00244135, 0.03708155, 0.33398306, -0.38766435, 0.2410378, 0.26020473, -0.3741775, 0.02238925, -0.06361509, 0.08416823, -0.53126794, 0.03600787, 0.2506757, 0.10557802, 0.02381583, 0.02400882, -0.01721716, 0.02552342, 0.0725951, 0.25476584, 0.15628618, -0.0255491, 0.51829994, 0.01891987, -0.13381597, -0.10144776, -0.744746, -0.33604702, -0.243991, 0.75765646, -0.42185935, -0.23890162, 0.23310298, 0.18538213, 0.03906789, -0.03757243, 0.16285764};
data_t kernel_conv6[16*8*3*3]={0.10665786, 0.17391276, -0.04706912, -0.29621515, -0.12495477, -0.03390224, -0.1325902, 0.05268038, 0.09408271, 0.06888886, 0.10584608, 0.17169191, -0.11198018, -0.28330535, -0.04183875, -0.33130178, -0.08976571, -0.10397488, -0.33599687, 0.3850787, 0.386431, -0.45853156, 0.06809615, 0.22969034, 0.38566896, -0.07874229, -0.06103462, 0.26521683, 0.02778811, 0.00973804, -0.1112006, 0.1278571, 0.18075645, -0.06175599, -0.0417379, -0.08573253, 0.25569892, 0.03945228, -0.14727323, -0.1233425, -0.03854726, -0.1013991, -0.13794899, 0.03622996, 0.02361075, -0.23160282, -0.06075829, -0.04722542, -0.12987177, -0.0453231, 0.23510565, -0.10568293, 0.1492059, 0.10542211, 0.27032864, 0.09022243, -0.05039237, 0.30930558, 0.01676412, -0.21011795, -0.16618119, -0.22877137, 0.10493868, -0.09954478, -0.02215685, 0.0649984, 0.11785207, 0.3306677, -0.12642694, 0.28677836, 0.0953721, -0.15152246, 0.10929125, 0.11850856, -0.03400891, -0.20188914, -0.02819396, -0.17921492, 0.11580471, -0.06937011, 0.20510644, -0.02404612, 0.76634103, 0.13524559, -0.02150999, -0.09624384, -0.3225982, -0.35084426, 0.13504598, -0.10092612, 0.18910876, 0.19442931, -0.07611578, -0.24012062, 0.3262514, -0.33265415, -0.30313745, -0.92541873, -0.50017494, 0.35704562, 0.05534736, -0.11074339, 0.25754282, -0.00882618, 0.12062446, 0.06121183, -0.12153219, -0.08860952, 0.3182614, 0.05114364, 0.156583, -0.04614425, -0.28013876, 0.01128619, 0.05296021, -0.05890092, 0.2856614, -0.06440198, 0.08065815, -0.10104557, 0.06874142, -0.01016947, 0.07102834, -0.03304878, 0.09651639, 0.00291564, 0.19238685, 0.08036238, -0.04337071, 0.0484124, 0.00478155, -0.24053791, -0.33343792, -0.28787202, -0.12345717, 0.01421211, 0.02429315, 0.11837693, -0.03169079, -0.01759254, 0.04923539, -0.07207678, -0.2534641, 0.03142319, -0.04543419, 0.14142534, 0.03439441, -0.10815247, -0.05219105, -0.02994727, -0.08458254, 0.05888963, -0.14575404, 0.30489987, -0.6232179, -0.25343695, 0.28698045, 0.27080527, 0.42312524, 0.24664076, -0.08015599, -0.09263696, 0.52382445, -0.536361, -0.01553982, 0.0757153, 0.12335955, 0.39978024, 0.0097708, -0.20149978, -0.01023282, 0.19620173, 0.1743695, -0.02403872, 0.12671904, 0.01553403, 0.07237566, -0.15717444, 0.01203989, -0.25252485, -0.01126922, -0.0356454, -0.02203578, -0.19239457, 0.12264659, -0.08352925, -0.11496872, 0.15506962, -0.24832857, -0.20597786, 0.00789926, 0.09093513, -0.08200302, 0.20012249, 0.12608589, 0.0745971, 0.05391195, 0.02344099, 9.3763337e-02, 2.5714633e-01, -1.1108972e-01, 2.6745260e-01, 2.2016136e-01, 3.9759640e-02, 2.4954531e-01, 6.5075103e-05, 9.7309276e-02, -0.04200055, 0.06140041, 0.14558004, 0.09408869, 0.25753668, -0.01602403, 0.12365412, 0.62764204, 0.17571172, 0.05291818, 0.14259018, -0.01289264, 0.25769374, 0.20477752, -0.10555098, -0.00455422, 0.04363779, 0.01935034, 0.0769446, 0.07363315, -0.50663483, 0.3849319, 0.08151551, -0.6085655, 0.39667416, 0.19223027, -0.37235138, 1.1510897, -0.60871476, -0.24010025, -1.5232493, 0.6590183, -0.45708272, 0.26981542, 0.19826491, -0.32901484, -0.15225224, -0.10775807, -0.20502245, 0.0284858, 0.00407309, -0.5070181, 0.13169089, -0.06679434, -0.03144229, 0.2689794, -0.11184072, 0.03507118, 0.12829025, -0.2630937, -0.01007, -0.18357727, -0.26101097, 0.1680324, -0.13731511, -0.02774889, 0.14852111, -0.07742702, -0.05231722, 0.11398622, 0.04871043, 0.18731634, 0.02099962, -0.09276021, 0.2177063, -0.11016216, 0.08637239, 0.34811997, -0.25664082, 0.08506823, 0.31703523, 0.07810142, 0.08474816, -0.15716675, 0.2037724, -0.07497393, 0.0608324, 0.03393853, 0.17362493, 0.07028623, 0.25961867, -0.20730364, -0.15161355, -0.13575998, -0.01535252, 0.13606913, -0.00582799, 0.13737814, 0.18317966, -0.10800944, 0.06288669, -0.340408, -0.17969775, 0.04426604, -0.06657501, -0.04931092, 0.19515665, 0.06571048, -0.01687133, 0.21894632, 0.54825515, 0.18181501, -0.39636582, 0.04496403, 0.17800063, 0.4240608, -0.0122087, 0.1171025, -0.04923985, 0.0509218, 0.142718, -0.0049689, -0.07674899, 0.0353469, -0.12621732, -0.1215781, -0.1734264, -0.33296388, -0.09007487, -0.10163801, -0.24444193, 0.29858342, 0.21280085, -0.11142199, 0.12718502, -0.09392559, -0.06292727, 0.01861251, -0.05097598, 0.00070599, 0.18578725, -0.07429001, 0.01589713, -0.12818827, -0.03874242, 0.22252002, 0.01455938, -0.03500507, -0.03367988, -0.19391666, -0.07878882, -0.08796275, 0.00526862, 0.18021215, -0.19708027, 0.11871557, 0.15383962, 0.22259861, 0.27292892, 0.06314816, 0.09335525, 0.06166412, -0.0806795, -0.16947316, 0.01818717, 0.06633256, 0.01492272, -0.0185128, -0.0886659, -0.17031553, 0.07035483, -0.00362403, -0.06204768, 0.04530296, 0.11347548, 0.25745088, 0.0863883, 0.26889545, 0.33624923, 0.1373491, -0.07868617, -0.38728774, 0.18654378, 0.07427885, 0.03927512, -0.08630809, 0.07220652, 0.09508266, 0.23529899, 0.02303255, -0.17239964, 0.01472201, -0.02249602, 0.11840202, 0.33998972, 0.00684276, -0.41743797, 0.40312734, -0.01845533, -0.02151985, -0.01766306, 0.09699424, -0.03948738, 0.08822083, -0.02476675, -0.05014688, 0.09760122, -0.0639364, -0.11188084, 0.10492735, -0.21152727, -0.13866271, 0.10935438, -0.02132501, -0.05697646, 0.13662612, 0.17584525, -0.06827971, -0.16737011, 0.05167906, -0.0257292, -0.08684824, -0.16611671, 0.18963502, 0.19118235, -0.1290944, 0.04746637, 0.07318087, 0.01913483, -0.09942064, -0.02330056, 0.1416492, 0.19731282, 0.07410197, -0.08279629, -0.14923128, 0.01926865, -0.03325759, -0.13070169, -0.07105921, 0.07676159, 0.02441225, 0.10805669, 0.10855193, 0.02296029, 0.08988898, 0.08949149, 0.40038165, 0.17640173, -0.02965261, 0.1417345, 0.24838114, -0.08770826, -0.03557125, 0.5850226, 0.1802399, 0.15623288, 0.31487873, -0.03963965, -0.01592058, 0.12165077, -0.34950486, 0.2271001, 0.13117845, 0.17546289, 0.0959433, 0.15477759, -0.0851938, 0.12608509, 0.06321287, -0.23100401, 0.08156568, 0.02518207, 0.03696999, 0.2395908, -0.08109484, -0.10097755, 0.03425343, -0.14310652, -0.02065186, 0.15105474, 0.13733606, -0.09097607, -0.02118292, 0.15196091, 0.2826544, -0.04135131, 0.15682493, 0.18479535, 0.11906432, 0.05023188, -0.08678398, 0.09128749, -0.09300082, -0.27529666, -0.04725984, 0.15522397, 0.21522668, 0.1027272, 0.09819062, 0.0865147, 0.2035763, -0.00609614, 0.28959277, 0.05009392, -0.19727802, -0.34602845, 0.10519105, 0.1186308, -0.12790701, 0.08594905, 0.21146537, 0.04873567, -0.3311769, -0.04923781, 0.02999508, 0.10941758, 0.13038962, 0.1746, 0.38342556, 0.06359532, -0.1440426, 0.19604976, 0.00952191, 0.0252432, -1.313313, -1.9307878, -0.1960005, -0.6198622, 0.2705233, -0.24473885, 0.4663279, -0.40073356, -0.23210682, -0.06069843, -0.31801492, -0.0823428, 0.36028266, 0.17238434, -0.10288221, -0.08902259, 0.07356939, -0.05914754, 0.15677574, 0.1336204, 0.08580991, 0.08220167, -0.19070858, -0.14578548, 0.03640294, -0.10152571, 0.05553837, -0.05738463, 0.06893755, 0.06373985, -0.1752995, -0.00136039, 0.02732659, -0.0564652, 0.09763002, -0.03977086, -0.1301093, -0.3569451, -0.12122227, 0.21711804, 0.11984742, 0.00987569, 0.33096474, 0.06329162, -0.1111535, 0.11773953, -0.04333821, -0.24781574, -0.18247873, -0.25661278, -0.47752738, -0.04140627, 0.48157868, 0.128351, 0.14296356, 0.04316689, 0.2528613, -0.25999275, -0.297501, 0.05383091, 0.11318415, -0.15846899, 0.07371972, 0.34834, 0.00416966, 0.24310103, -0.21753834, -0.13522716, -0.11457179, -0.06037378, -0.17475174, -0.2683464, -0.65473783, -0.05224286, 0.29637662, -0.04131428, 0.06214733, 0.25540343, -0.58759594, 0.17568265, 0.14574872, 0.08820673, 0.14328822, 0.04663789, -0.34258863, 0.10775499, 0.10797, 0.11156283, -0.17151006, -0.02830902, 0.04153133, 0.07799955, -0.12186227, -0.03070077, -0.10898703, -0.1666593, 0.19253634, -0.01279268, 0.04185841, 0.07400653, -0.10773271, -0.10561299, 0.04828834, -0.15595964, 0.1852221, -0.01792564, -0.06228008, 0.19521335, -0.21369535, 0.12674451, -0.0039963, 0.0630523, 0.24674912, 0.1299675, -0.38204575, 0.07479841, -0.11588387, -0.03166787, -0.30811414, 0.10154269, -0.15900381, -0.22485672, -0.11033649, -0.14064926, -0.19925489, -0.01738406, 0.07774695, -0.0158109, -0.11716372, -0.03892521, -0.00371838, -0.17717725, -0.2031759, 0.08829252, 0.09634567, -0.04862444, 0.0830628, -0.23239042, 0.17390119, 0.18805413, 0.00668716, 0.12681729, 0.02165464, 0.07621318, -0.27904648, 0.06041091, 0.23574935, 0.57697856, 0.28467727, 0.11547723, 0.20571092, -0.19790491, 0.26835135, -0.24157941, -0.21519616, -0.10703729, 0.4438957, -0.26511857, -0.07431173, 0.0445653, 0.00999968, 0.04181982, 0.06758355, -0.30812442, -0.17220859, -0.021325, -0.00179694, 0.21111307, 0.07376184, 0.03409475, -0.18819956, -0.19686934, 0.09639277, 0.05122356, -0.2148398, 0.24958065, -0.02006276, 0.04078751, -0.01293569, 0.06280702, 0.11163825, 0.21844299, 0.06373075, 0.14210825, -0.08019865, -0.2528714, 0.23503254, -0.1321664, 0.08557811, 0.0383603, 0.0935368, -0.07005191, 0.09652091, 0.09272806, 0.12603074, 0.08679534, 0.14890015, -0.28512642, 0.129891, 0.04225864, 0.01820456, -0.4232248, -0.31207222, 0.01104709, -0.26283282, 0.05500204, 0.14600995, 0.1459833, 0.3963508, 0.20975217, -0.08065464, -0.00482839, -0.17507657, -0.35794735, -0.00089948, -0.31567046, 0.4442072, 0.03202482, 0.04915427, 1.3036978, -0.09214172, -0.06751475, -0.90881175, -0.468073, -0.11552221, -0.0631907, 0.22443192, 0.16381755, 0.09913496, 0.41258413, 0.1693892, 0.08229419, 0.226523, 0.06269583, 0.25316027, -0.12811099, -0.11424811, -0.24205074, -0.27211228, -0.03641074, 0.06120905, 0.00690408, 0.14500141, -0.12252459, -0.05006906, -0.12398138, -0.05118423, 0.03566059, 0.04216608, 0.01897015, 0.05463678, 0.20889945, 0.11300619, 0.1997462, 0.0356354, 0.53760016, 0.07473693, 0.13306496, 0.03413758, -0.29782566, -0.06564049, 0.01940358, 0.11377556, 0.06802717, 0.10828592, 0.305704, 0.17765626, 0.16775724, 0.32273826, -0.2789373, -0.03516578, 0.00637882, 0.28771317, -0.03620229, 0.12912993, -0.00259059, -0.0545533, -0.16972144, 0.04754491, -0.16897099, 0.34254158, -0.11060131, -0.09094863, 0.29727927, 0.49821192, -0.08913684, 0.05238196, 0.34548905, 0.5927886, -0.6237178, -0.23882756, 0.12808855, -0.15863323, 0.19272019, -0.14246058, 0.06240252, 0.5424167, 0.00699538, -0.11234713, 0.00202467, -0.09029658, 0.13510296, -0.21392159, 0.02953804, 0.11834423, 0.20579095, -0.1633453, 0.26524538, 0.0240933, 0.09877193, 0.10291635, -0.0624442, -0.07413107, 0.12343519, -0.3845017, 0.12523022, -0.00967465, -0.02543891, 0.0323986, -0.19749531, -0.12159871, -0.02231099, -0.2294703, 0.27450663, -0.03819776, -0.12642342, 0.25209838, -0.14092807, 0.05689329, -0.05166149, -0.15414649, 0.18676296, 0.13277903, 0.01846417, -0.12237098, -0.17752331, -0.10841794, -0.08474242, -0.40012953, -0.09679899, -0.49495664, 0.4533317, 0.09763409, 0.27542114, -0.1120958, 0.00097281, 0.00824406, 0.02567784, 0.07778013, 0.27970535, -0.04540805, -0.03329603, 0.13121521, -0.28957403, -0.27140898, -0.1374459, -0.36145923, 0.20158288, -0.14804906, -0.12458844, -0.20690611, 0.67600447, -0.07822227, -0.48324606, -0.46778852, 0.04150105, -1.0764927, -0.0614134, 0.00527869, -0.13178891, 0.03208441, -0.16888133, 0.36859697, -0.01301702, -0.45046666, -0.26964578, -0.00368738, 0.19204764, -0.2720323, -0.4065078, -0.15640141, -0.09682561, -0.1385814, 0.30146545, -0.10056787, 0.04035909, 0.11314788, -0.09790345, 0.01360758, 0.03490653, 0.08200108, 0.33441257, 0.04172347, 0.1997982, 0.06134753, -0.18691728, 0.3349846, 0.3126169, 0.2297173, 0.19551617, 0.07317099, -0.10298413, 0.11374706, 0.13441463, 0.13699861, -8.9113653e-02, 3.9143464e-01, 3.2947317e-04, 2.8105438e-01, 2.7524903e-01, 8.3098844e-02, 1.8462242e-01, 2.6724571e-01, -2.6787639e-01, -0.04087058, -0.19410044, 0.06667352, -0.214131, -0.09608696, 0.00711264, 0.00327172, 0.03963061, 0.11861647, 0.37580967, 0.53394765, -0.03924395, 0.23685981, -0.13930237, -0.00889392, 0.10479739, 0.15389127, -0.10355975, 0.4342528, -0.04588757, 0.15684737, 0.07747018, -0.19281828, 0.10070524, 0.00960601, -0.5805146, 0.06312445, -0.02886898, -0.05774241, 0.02391643, 0.09873582, 0.03907488, 0.03161577, -0.13143831, -0.13700266, 0.10402586, -0.06366374, -0.10423811, -0.04648593, -0.33380947, 0.02434257, 0.36677465, -0.00805647, 0.35652226, 0.07902553, -0.11556621, -0.02907973, 0.01167205, -0.06271932, -0.01035597, -0.01152345, 0.16098094, -0.09436534, 0.02602607, 0.04917651, 0.18409768, 0.05876813, 0.21133764, 0.00801501, 0.08389957, -0.04855768, -0.04673507, -0.10720425, -0.25338605, 0.03036095, 0.08891579, 0.02587804, 0.2845865, -0.34258357, 0.12885837, 0.14902097, 0.32384253, 0.0090856, -0.17058492, 0.13097171, 0.3939552, 0.12271211, 0.15301986, -0.21694264, -0.368959, -0.04349503, 0.22932523, 0.15074614, 0.03118199, -0.19412132, -0.38160026, 0.03022288, 0.30165482, 0.06821128, -0.01082887, -0.4140894, -0.29974324, 0.13733333, -0.10481988, -0.41113332, 0.03928244, -0.12965134, 0.07690177, -0.15877703, 0.06638388, 0.13180171, 0.16308008, -0.01985152, -0.16036712, 0.06347812, 0.27561456, -0.08042232, 0.03909859, 0.01256407, 0.18060774, 0.12020238, 0.03957435, -0.0068413, 0.13961123, -0.29989427, 0.00847381, -0.016851, -0.04901208, -0.04452711, -0.00977649, 0.02402842, -0.08392449, 0.12115644, 0.0180958, -0.18240395, 0.07806738, -0.18727125, 0.300329, -0.5668456, 0.14151901, -0.34418026, 0.06248794, -0.0474079, 0.2969753, -1.0513712, -0.16222341, -0.06686346, 0.35040578, 0.16622622, 0.46759447, -0.45748368, -0.13035107, -0.08170374, -0.02017177, 0.03575253, -0.07166523, 0.07818776, 0.12745118, 0.00671547, -0.3087551, 0.14029902, 0.14326683, 0.03579393, 0.23406912, 0.27311248, 0.19436273, -0.17093371, -0.23966935, -0.0301464, 0.09346617, -0.06421547, -0.01229222, -1.083088, 0.2973438, 0.11253785, -1.8603442, -0.28256616, 0.08745465, -0.14607722, -0.0126603, 0.02039264, -0.32293257, 0.13961789, -0.01118847, -0.46117494, 0.22358042, 0.01424893, 0.28355175, -0.4817907, -0.11059, 0.13281915, 0.0467096, -0.12032757, 0.05805564, -0.20343477, 0.08794738, -0.067917, -0.10104765, 0.14709729, -0.01266465, -0.03359344, -0.06664648, -0.11462919, 0.09321434, -0.0376565, -0.04817062, 0.28720516, -0.03925189, 0.0647178, 0.07630526, 0.21586508, -0.06554095, -0.09557552, -0.02485459, -0.27280238, -0.34643617, 0.05115244, -0.29236653, 0.12747814, 0.01132531, -0.08303209, 0.23711048, 0.09505272, 0.17958787, -0.07392351, -0.00470263};
data_t kernel_conv7[3*3*16]={-0.38350007, -0.562526, -0.38296974, -0.5541657, -0.14809597, -0.3020529, -0.14954875, -0.12620261, -0.46609122, -0.04694518, 0.11821839, -0.05678891, -0.08986405, -0.16772787, -0.4259431, -0.19471961, -0.5240123, -0.28974527, -0.03167066, 0.08644573, -0.08506161, 0.2462532, -0.25726804, -0.19722894, 0.12732992, -0.2113785, -0.41242012, -0.24157682, -0.35239565, -0.10987473, -0.23535848, -0.36833867, -0.1234142, 0.11728517, 0.08131125, 0.20948824, -0.13254343, -0.32982302, -0.06057537, -0.43078735, -0.4567213, -0.21285515, -0.23246352, -0.1374455, -0.07646666, -0.31630868, -0.07880522, -0.30471197, -0.22294328, -0.34977168, -0.3097828, -0.25742877, -0.36360162, -0.02722789, 0.05808782, 0.09966618, 0.14054736, 0.05596745, 0.2477456, 0.2110233, 0.31358957, 0.20783442, 0.1405113, 0.09422979, -0.08263421, -0.15077668, -0.44533408, -0.51137906, -0.29896516, -0.37151206, -0.4087425, -0.13609196, 0.5191122, -0.03956717, 0.07357903, -0.19648886, -0.66603214, -0.2698678, -0.24544694, -0.5220828, -0.10008954, -0.40584955, -0.25956947, -0.06341338, -0.45174402, -0.10134063, 0.00183932, -0.43127564, -0.0200869, -0.0050853, 0.2108612, -0.18923925, -0.2813721, -0.13899523, -0.46837586, -0.25943974, -0.05851889, -0.13088359, 0.33635715, 0.03074981, -0.09566099, -0.34570074, -0.23333213, -0.65500265, -0.34252214, -0.25443363, -0.22190017, 0.20104553, 0.13127095, 0.33129647, 0.12111943, 0.25803018, 0.1452548, -0.15518388, 0.07257471, -0.14854258, -0.32203126, -0.17869717, 0.10498241, 0.24636926, 0.11461132, 0.43368617, 0.3051041, 0.43652973, 0.30839935, 0.16189289, 0.12071727, 0.35607418, 0.4843735, 0.08452333, 0.18462804, 0.18976264, 0.2927834, 0.1888141, 0.17957154, 0.17673644, 0.1401606, 0.24955122, 0.44538736, 0.20774011, 0.50645024, 0.22634563, 0.28288972, 0.21009053};
# 5 "model.cpp" 2



__attribute__((sdx_kernel("CNN", 0))) void CNN( int padding, int width, int hight,data_t *image,data_t *output_conv1, data_t *output_pooling1, data_t *output_conv2, data_t *output_pooling2, data_t *output_conv3, data_t *output_pooling3,data_t *output_conv4, data_t *output_upsampling1,data_t *output_conv5, data_t *output_upsampling2,data_t *output_conv6, data_t *output_upsampling3, data_t *output_conv7) {
#pragma HLS TOP name=CNN
# 8 "model.cpp"

#pragma HLS interface ap_memory port=output_conv1 depth=12544
#pragma HLS interface ap_memory port=output_pooling1 depth=3136
#pragma HLS interface ap_memory port=output_conv2 depth=1568
#pragma HLS interface ap_memory port=output_pooling2 depth=392
#pragma HLS interface ap_memory port=output_conv3 depth=392
#pragma HLS interface ap_memory port=output_pooling3 depth=128
#pragma HLS interface ap_memory port=output_conv4 depth=128
#pragma HLS interface ap_memory port=output_upsampling1 depth=512
#pragma HLS interface ap_memory port=output_conv5 depth=512
#pragma HLS interface ap_memory port=output_upsampling2 depth=512
#pragma HLS interface ap_memory port=output_conv6 depth=2048
#pragma HLS interface ap_memory port=output_upsampling3 depth=3136
#pragma HLS interface ap_memory port=output_conv7 depth=784

convolution<data_t,data_t,data_t,data_t,28,28,1,16,28,28,3,3,1,1>(padding, width, hight,bias_conv1,image, kernel_conv1, output_conv1);
max_pooling<data_t,data_t,16,28,28,14,14,2,1>( width, hight, output_conv1, output_pooling1);
convolution<data_t,data_t,data_t,data_t,14,14,16,8,14,14,3,3,1,1>(padding, width, hight,bias_conv2,output_pooling1, kernel_conv2, output_conv2);
max_pooling<data_t,data_t,8,14,14,7,7,2,1>( width, hight, output_conv2, output_pooling2);
convolution<data_t,data_t,data_t,data_t,7,7,8,8,7,7,3,3,1,1>(padding, width, hight,bias_conv3,output_pooling2, kernel_conv3, output_conv3);
max_pooling<data_t,data_t,8,7,7,4,4,2,1>( width, hight, output_conv3, output_pooling3);
convolution<data_t,data_t,data_t,data_t,4,4,8,8,4,4,3,3,1,1>(padding, width, hight,bias_conv4,output_pooling3, kernel_conv4, output_conv4);
upsampling<data_t,data_t,8,4,4,8,8,2,2>( width, hight, output_conv4, output_upsampling1);
convolution<data_t,data_t,data_t,data_t,8,8,8,8,8,8,3,3,1,1>(padding, width, hight,bias_conv5,output_upsampling1, kernel_conv5, output_conv5);
upsampling<data_t,data_t,8,8,8,16,16,2,2>( width, hight, output_conv5, output_upsampling2);
convolution<data_t,data_t,data_t,data_t,16,16,8,16,14,14,3,3,1,0>(padding, width, hight,bias_conv6,output_upsampling2, kernel_conv6, output_conv6);
upsampling<data_t,data_t,14,14,16,28,28,2,2>( width, hight, output_conv6, output_upsampling3);
convolution<data_t,data_t,data_t,data_t,28,28,16,1,28,28,3,3,1,0>(padding, width, hight,bias_conv7,output_upsampling3, kernel_conv7, output_conv7);
}
