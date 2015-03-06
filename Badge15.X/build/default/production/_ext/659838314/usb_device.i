# 1 "../src/USB/usb_device.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../src/USB/usb_device.c"
# 254 "../src/USB/usb_device.c"
# 1 "../src/USB/usb.h" 1
# 110 "../src/USB/usb.h"
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 1 3
# 63 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 1 3



typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
# 31 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 3
extern int errno;
# 64 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 2 3

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;
typedef enum _BIT { CLEAR = 0, SET } BIT;






typedef signed int INT;
typedef signed char INT8;
typedef signed short int INT16;
typedef signed long int INT32;



__extension__ typedef signed long long INT64;



typedef unsigned int UINT;
typedef unsigned char UINT8;
typedef unsigned short int UINT16;




typedef unsigned long int UINT32;


__extension__ typedef unsigned long long UINT64;


typedef union
{
    UINT8 Val;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union
{
    UINT16 Val;
    UINT8 v[2];
    struct
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;
# 185 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 3
typedef union
{
    UINT32 Val;
    UINT16 w[2];
    UINT8 v[4];
    struct
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
    } bits;
} UINT32_VAL;



typedef union
{
    UINT64 Val;
    UINT32 d[2];
    UINT16 w[4];
    UINT8 v[8];
    struct
    {
        UINT32 LD;
        UINT32 HD;
    } dword;
    struct
    {
        UINT16 LW;
        UINT16 HW;
        UINT16 UW;
        UINT16 MW;
    } word;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
        __extension__ UINT8 b32:1;
        __extension__ UINT8 b33:1;
        __extension__ UINT8 b34:1;
        __extension__ UINT8 b35:1;
        __extension__ UINT8 b36:1;
        __extension__ UINT8 b37:1;
        __extension__ UINT8 b38:1;
        __extension__ UINT8 b39:1;
        __extension__ UINT8 b40:1;
        __extension__ UINT8 b41:1;
        __extension__ UINT8 b42:1;
        __extension__ UINT8 b43:1;
        __extension__ UINT8 b44:1;
        __extension__ UINT8 b45:1;
        __extension__ UINT8 b46:1;
        __extension__ UINT8 b47:1;
        __extension__ UINT8 b48:1;
        __extension__ UINT8 b49:1;
        __extension__ UINT8 b50:1;
        __extension__ UINT8 b51:1;
        __extension__ UINT8 b52:1;
        __extension__ UINT8 b53:1;
        __extension__ UINT8 b54:1;
        __extension__ UINT8 b55:1;
        __extension__ UINT8 b56:1;
        __extension__ UINT8 b57:1;
        __extension__ UINT8 b58:1;
        __extension__ UINT8 b59:1;
        __extension__ UINT8 b60:1;
        __extension__ UINT8 b61:1;
        __extension__ UINT8 b62:1;
        __extension__ UINT8 b63:1;
    } bits;
} UINT64_VAL;





typedef void VOID;

typedef char CHAR8;
typedef unsigned char UCHAR8;

typedef unsigned char BYTE;
typedef unsigned short int WORD;
typedef unsigned long DWORD;


__extension__
typedef unsigned long long QWORD;

typedef signed char CHAR;
typedef signed short int SHORT;
typedef signed long LONG;


__extension__
typedef signed long long LONGLONG;

typedef union
{
    BYTE Val;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2];
    struct
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2];
    BYTE v[4];
    struct
    {
        WORD LW;
        WORD HW;
    } word;
    struct
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
    } bits;
} DWORD_VAL;



typedef union
{
    QWORD Val;
    DWORD d[2];
    WORD w[4];
    BYTE v[8];
    struct
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
        __extension__ BYTE b32:1;
        __extension__ BYTE b33:1;
        __extension__ BYTE b34:1;
        __extension__ BYTE b35:1;
        __extension__ BYTE b36:1;
        __extension__ BYTE b37:1;
        __extension__ BYTE b38:1;
        __extension__ BYTE b39:1;
        __extension__ BYTE b40:1;
        __extension__ BYTE b41:1;
        __extension__ BYTE b42:1;
        __extension__ BYTE b43:1;
        __extension__ BYTE b44:1;
        __extension__ BYTE b45:1;
        __extension__ BYTE b46:1;
        __extension__ BYTE b47:1;
        __extension__ BYTE b48:1;
        __extension__ BYTE b49:1;
        __extension__ BYTE b50:1;
        __extension__ BYTE b51:1;
        __extension__ BYTE b52:1;
        __extension__ BYTE b53:1;
        __extension__ BYTE b54:1;
        __extension__ BYTE b55:1;
        __extension__ BYTE b56:1;
        __extension__ BYTE b57:1;
        __extension__ BYTE b58:1;
        __extension__ BYTE b59:1;
        __extension__ BYTE b60:1;
        __extension__ BYTE b61:1;
        __extension__ BYTE b62:1;
        __extension__ BYTE b63:1;
    } bits;
} QWORD_VAL;
# 111 "../src/USB/usb.h" 2
# 1 "../src/USB/../Common/Compiler.h" 1
# 116 "../src/USB/../Common/Compiler.h"
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/p32xxxx.h" 1 3




# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 1 3
       
# 58 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx250f128d.h" 1 3
# 34 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx250f128d.h" 3
       
# 44 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx250f128d.h" 3
extern volatile unsigned int WDTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDTCLR:1;
    unsigned WDTWINEN:1;
    unsigned SWDTPS:5;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned :2;
    unsigned SWDTPS0:1;
    unsigned SWDTPS1:1;
    unsigned SWDTPS2:1;
    unsigned SWDTPS3:1;
    unsigned SWDTPS4:1;
  };
  struct {
    unsigned :2;
    unsigned WDTPSTA:5;
  };
  struct {
    unsigned :2;
    unsigned WDTPS:5;
  };
  struct {
    unsigned w:32;
  };
} __WDTCONbits_t;
extern volatile __WDTCONbits_t WDTCONbits __asm__ ("WDTCON") __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RTCOE:1;
    unsigned HALFSEC:1;
    unsigned RTCSYNC:1;
    unsigned RTCWREN:1;
    unsigned :2;
    unsigned RTCCLKON:1;
    unsigned RTSECSEL:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned CAL:10;
  };
  struct {
    unsigned w:32;
  };
} __RTCCONbits_t;
extern volatile __RTCCONbits_t RTCCONbits __asm__ ("RTCCON") __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ARPT:8;
    unsigned AMASK:4;
    unsigned ALRMSYNC:1;
    unsigned PIV:1;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __RTCALRMbits_t;
extern volatile __RTCALRMbits_t RTCALRMbits __asm__ ("RTCALRM") __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCTIMEbits_t;
extern volatile __RTCTIMEbits_t RTCTIMEbits __asm__ ("RTCTIME") __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
    unsigned YEAR01:4;
    unsigned YEAR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCDATEbits_t;
extern volatile __RTCDATEbits_t RTCDATEbits __asm__ ("RTCDATE") __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMTIMEbits_t;
extern volatile __ALRMTIMEbits_t ALRMTIMEbits __asm__ ("ALRMTIME") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMDATEbits_t;
extern volatile __ALRMDATEbits_t ALRMDATEbits __asm__ ("ALRMDATE") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int T1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned TSYNC:1;
    unsigned :1;
    unsigned TCKPS:2;
    unsigned :1;
    unsigned TGATE:1;
    unsigned :3;
    unsigned TWIP:1;
    unsigned TWDIS:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T1CONbits_t;
extern volatile __T1CONbits_t T1CONbits __asm__ ("T1CON") __attribute__((section("sfrs")));
extern volatile unsigned int T1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR1 __attribute__((section("sfrs")));
extern volatile unsigned int TMR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR1SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR1INV __attribute__((section("sfrs")));
extern volatile unsigned int PR1 __attribute__((section("sfrs")));
extern volatile unsigned int PR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR1SET __attribute__((section("sfrs")));
extern volatile unsigned int PR1INV __attribute__((section("sfrs")));
extern volatile unsigned int T2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T2CONbits_t;
extern volatile __T2CONbits_t T2CONbits __asm__ ("T2CON") __attribute__((section("sfrs")));
extern volatile unsigned int T2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR2 __attribute__((section("sfrs")));
extern volatile unsigned int TMR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR2SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR2INV __attribute__((section("sfrs")));
extern volatile unsigned int PR2 __attribute__((section("sfrs")));
extern volatile unsigned int PR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR2SET __attribute__((section("sfrs")));
extern volatile unsigned int PR2INV __attribute__((section("sfrs")));
extern volatile unsigned int T3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T3CONbits_t;
extern volatile __T3CONbits_t T3CONbits __asm__ ("T3CON") __attribute__((section("sfrs")));
extern volatile unsigned int T3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR3 __attribute__((section("sfrs")));
extern volatile unsigned int TMR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR3SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR3INV __attribute__((section("sfrs")));
extern volatile unsigned int PR3 __attribute__((section("sfrs")));
extern volatile unsigned int PR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR3SET __attribute__((section("sfrs")));
extern volatile unsigned int PR3INV __attribute__((section("sfrs")));
extern volatile unsigned int T4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T4CONbits_t;
extern volatile __T4CONbits_t T4CONbits __asm__ ("T4CON") __attribute__((section("sfrs")));
extern volatile unsigned int T4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR4 __attribute__((section("sfrs")));
extern volatile unsigned int TMR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR4SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR4INV __attribute__((section("sfrs")));
extern volatile unsigned int PR4 __attribute__((section("sfrs")));
extern volatile unsigned int PR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR4SET __attribute__((section("sfrs")));
extern volatile unsigned int PR4INV __attribute__((section("sfrs")));
extern volatile unsigned int T5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T5CONbits_t;
extern volatile __T5CONbits_t T5CONbits __asm__ ("T5CON") __attribute__((section("sfrs")));
extern volatile unsigned int T5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR5 __attribute__((section("sfrs")));
extern volatile unsigned int TMR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR5SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR5INV __attribute__((section("sfrs")));
extern volatile unsigned int PR5 __attribute__((section("sfrs")));
extern volatile unsigned int PR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR5SET __attribute__((section("sfrs")));
extern volatile unsigned int PR5INV __attribute__((section("sfrs")));
extern volatile unsigned int IC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC1CONbits_t;
extern volatile __IC1CONbits_t IC1CONbits __asm__ ("IC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC1BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC2CONbits_t;
extern volatile __IC2CONbits_t IC2CONbits __asm__ ("IC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC2BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC3CONbits_t;
extern volatile __IC3CONbits_t IC3CONbits __asm__ ("IC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC3BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC4CONbits_t;
extern volatile __IC4CONbits_t IC4CONbits __asm__ ("IC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC4BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC5CONbits_t;
extern volatile __IC5CONbits_t IC5CONbits __asm__ ("IC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC5BUF __attribute__((section("sfrs")));
extern volatile unsigned int OC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC1CONbits_t;
extern volatile __OC1CONbits_t OC1CONbits __asm__ ("OC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1R __attribute__((section("sfrs")));
extern volatile unsigned int OC1RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1RS __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC2CONbits_t;
extern volatile __OC2CONbits_t OC2CONbits __asm__ ("OC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2R __attribute__((section("sfrs")));
extern volatile unsigned int OC2RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2RS __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC3CONbits_t;
extern volatile __OC3CONbits_t OC3CONbits __asm__ ("OC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3R __attribute__((section("sfrs")));
extern volatile unsigned int OC3RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3RS __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC4CONbits_t;
extern volatile __OC4CONbits_t OC4CONbits __asm__ ("OC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4R __attribute__((section("sfrs")));
extern volatile unsigned int OC4RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4RS __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC5CONbits_t;
extern volatile __OC5CONbits_t OC5CONbits __asm__ ("OC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5R __attribute__((section("sfrs")));
extern volatile unsigned int OC5RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5RS __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ACONbits_t;
extern volatile __I2C1ACONbits_t I2C1ACONbits __asm__ ("I2C1ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1CONbits_t;
extern volatile __I2C1CONbits_t I2C1CONbits __asm__ ("I2C1CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ASTATbits_t;
extern volatile __I2C1ASTATbits_t I2C1ASTATbits __asm__ ("I2C1ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1STATbits_t;
extern volatile __I2C1STATbits_t I2C1STATbits __asm__ ("I2C1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ACONbits_t;
extern volatile __I2C2ACONbits_t I2C2ACONbits __asm__ ("I2C2ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2CONbits_t;
extern volatile __I2C2CONbits_t I2C2CONbits __asm__ ("I2C2CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ASTATbits_t;
extern volatile __I2C2ASTATbits_t I2C2ASTATbits __asm__ ("I2C2ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2STATbits_t;
extern volatile __I2C2STATbits_t I2C2STATbits __asm__ ("I2C2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2RCV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CONbits_t;
extern volatile __SPI1CONbits_t SPI1CONbits __asm__ ("SPI1CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI1STATbits_t;
extern volatile __SPI1STATbits_t SPI1STATbits __asm__ ("SPI1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CON2bits_t;
extern volatile __SPI1CON2bits_t SPI1CON2bits __asm__ ("SPI1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CONbits_t;
extern volatile __SPI2CONbits_t SPI2CONbits __asm__ ("SPI2CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI2STATbits_t;
extern volatile __SPI2STATbits_t SPI2STATbits __asm__ ("SPI2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CON2bits_t;
extern volatile __SPI2CON2bits_t SPI2CON2bits __asm__ ("SPI2CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1AMODEbits_t;
extern volatile __U1AMODEbits_t U1AMODEbits __asm__ ("U1AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1MODEbits_t;
extern volatile __U1MODEbits_t U1MODEbits __asm__ ("U1MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1ASTAbits_t;
extern volatile __U1ASTAbits_t U1ASTAbits __asm__ ("U1ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U1STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1STAbits_t;
extern volatile __U1STAbits_t U1STAbits __asm__ ("U1STA") __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U1STASET __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U1BRG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U2MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2MODEbits_t;
extern volatile __U2MODEbits_t U2MODEbits __asm__ ("U2MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3AMODEbits_t;
extern volatile __U3AMODEbits_t U3AMODEbits __asm__ ("U3AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U2STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2STAbits_t;
extern volatile __U2STAbits_t U2STAbits __asm__ ("U2STA") __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3ASTAbits_t;
extern volatile __U3ASTAbits_t U3ASTAbits __asm__ ("U3ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U2STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2STASET __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U2STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U2TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRG __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int PMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RDSP:1;
    unsigned WRSP:1;
    unsigned :1;
    unsigned CS1P:1;
    unsigned :1;
    unsigned ALP:1;
    unsigned CSF:2;
    unsigned PTRDEN:1;
    unsigned PTWREN:1;
    unsigned PMPTTL:1;
    unsigned ADRMUX:2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :6;
    unsigned CSF0:1;
    unsigned CSF1:1;
    unsigned :3;
    unsigned ADRMUX0:1;
    unsigned ADRMUX1:1;
  };
  struct {
    unsigned :13;
    unsigned PSIDL:1;
    unsigned :1;
    unsigned PMPEN:1;
  };
  struct {
    unsigned w:32;
  };
} __PMCONbits_t;
extern volatile __PMCONbits_t PMCONbits __asm__ ("PMCON") __attribute__((section("sfrs")));
extern volatile unsigned int PMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int PMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int PMMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
    unsigned MODE:2;
    unsigned :1;
    unsigned INCM:2;
    unsigned IRQM:2;
    unsigned BUSY:1;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
    unsigned MODE0:1;
    unsigned MODE1:1;
    unsigned :1;
    unsigned INCM0:1;
    unsigned INCM1:1;
    unsigned IRQM0:1;
    unsigned IRQM1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMMODEbits_t;
extern volatile __PMMODEbits_t PMMODEbits __asm__ ("PMMODE") __attribute__((section("sfrs")));
extern volatile unsigned int PMMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int PMMODESET __attribute__((section("sfrs")));
extern volatile unsigned int PMMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int PMADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADDR:14;
    unsigned CS:2;
  };
  struct {
    unsigned PADDR:14;
  };
  struct {
    unsigned :14;
    unsigned CS1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMADDRbits_t;
extern volatile __PMADDRbits_t PMADDRbits __asm__ ("PMADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAOUT:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDOUTbits_t;
extern volatile __PMDOUTbits_t PMDOUTbits __asm__ ("PMDOUT") __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDIN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAIN:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDINbits_t;
extern volatile __PMDINbits_t PMDINbits __asm__ ("PMDIN") __attribute__((section("sfrs")));
extern volatile unsigned int PMDINCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDINSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDININV __attribute__((section("sfrs")));
extern volatile unsigned int PMAEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PTEN:16;
  };
  struct {
    unsigned PTEN0:1;
    unsigned PTEN1:1;
    unsigned PTEN2:1;
    unsigned PTEN3:1;
    unsigned PTEN4:1;
    unsigned PTEN5:1;
    unsigned PTEN6:1;
    unsigned PTEN7:1;
    unsigned PTEN8:1;
    unsigned PTEN9:1;
    unsigned PTEN10:1;
    unsigned PTEN11:1;
    unsigned PTEN12:1;
    unsigned PTEN13:1;
    unsigned PTEN14:1;
    unsigned PTEN15:1;
  };
  struct {
    unsigned w:32;
  };
} __PMAENbits_t;
extern volatile __PMAENbits_t PMAENbits __asm__ ("PMAEN") __attribute__((section("sfrs")));
extern volatile unsigned int PMAENCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMAENSET __attribute__((section("sfrs")));
extern volatile unsigned int PMAENINV __attribute__((section("sfrs")));
extern volatile unsigned int PMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OB0E:1;
    unsigned OB1E:1;
    unsigned OB2E:1;
    unsigned OB3E:1;
    unsigned :2;
    unsigned OBUF:1;
    unsigned OBE:1;
    unsigned IB0F:1;
    unsigned IB1F:1;
    unsigned IB2F:1;
    unsigned IB3F:1;
    unsigned :2;
    unsigned IBOV:1;
    unsigned IBF:1;
  };
  struct {
    unsigned w:32;
  };
} __PMSTATbits_t;
extern volatile __PMSTATbits_t PMSTATbits __asm__ ("PMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DONE:1;
    unsigned SAMP:1;
    unsigned ASAM:1;
    unsigned :1;
    unsigned CLRASAM:1;
    unsigned SSRC:3;
    unsigned FORM:3;
    unsigned :2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :5;
    unsigned SSRC0:1;
    unsigned SSRC1:1;
    unsigned SSRC2:1;
    unsigned FORM0:1;
    unsigned FORM1:1;
    unsigned FORM2:1;
  };
  struct {
    unsigned :13;
    unsigned ADSIDL:1;
    unsigned :1;
    unsigned ADON:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON1bits_t;
extern volatile __AD1CON1bits_t AD1CON1bits __asm__ ("AD1CON1") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ALTS:1;
    unsigned BUFM:1;
    unsigned SMPI:4;
    unsigned :1;
    unsigned BUFS:1;
    unsigned :2;
    unsigned CSCNA:1;
    unsigned :1;
    unsigned OFFCAL:1;
    unsigned VCFG:3;
  };
  struct {
    unsigned :2;
    unsigned SMPI0:1;
    unsigned SMPI1:1;
    unsigned SMPI2:1;
    unsigned SMPI3:1;
    unsigned :7;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
    unsigned VCFG2:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON2bits_t;
extern volatile __AD1CON2bits_t AD1CON2bits __asm__ ("AD1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCS:8;
    unsigned SAMC:5;
    unsigned :2;
    unsigned ADRC:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ADCS3:1;
    unsigned ADCS4:1;
    unsigned ADCS5:1;
    unsigned ADCS6:1;
    unsigned ADCS7:1;
    unsigned SAMC0:1;
    unsigned SAMC1:1;
    unsigned SAMC2:1;
    unsigned SAMC3:1;
    unsigned SAMC4:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON3bits_t;
extern volatile __AD1CON3bits_t AD1CON3bits __asm__ ("AD1CON3") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHS __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :16;
    unsigned CH0SA:4;
    unsigned :3;
    unsigned CH0NA:1;
    unsigned CH0SB:4;
    unsigned :3;
    unsigned CH0NB:1;
  };
  struct {
    unsigned :16;
    unsigned CH0SA0:1;
    unsigned CH0SA1:1;
    unsigned CH0SA2:1;
    unsigned CH0SA3:1;
    unsigned :4;
    unsigned CH0SB0:1;
    unsigned CH0SB1:1;
    unsigned CH0SB2:1;
    unsigned CH0SB3:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CHSbits_t;
extern volatile __AD1CHSbits_t AD1CHSbits __asm__ ("AD1CHS") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSL __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CSSL:16;
  };
  struct {
    unsigned CSSL0:1;
    unsigned CSSL1:1;
    unsigned CSSL2:1;
    unsigned CSSL3:1;
    unsigned CSSL4:1;
    unsigned CSSL5:1;
    unsigned CSSL6:1;
    unsigned CSSL7:1;
    unsigned CSSL8:1;
    unsigned CSSL9:1;
    unsigned CSSL10:1;
    unsigned CSSL11:1;
    unsigned CSSL12:1;
    unsigned CSSL13:1;
    unsigned CSSL14:1;
    unsigned CSSL15:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CSSLbits_t;
extern volatile __AD1CSSLbits_t AD1CSSLbits __asm__ ("AD1CSSL") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLINV __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF0 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF1 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF2 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF3 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF4 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF5 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF6 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF7 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF8 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF9 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFA __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFB __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFC __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFD __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFE __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFF __attribute__((section("sfrs")));
extern volatile unsigned int CVRCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
  struct {
    unsigned w:32;
  };
} __CVRCONbits_t;
extern volatile __CVRCONbits_t CVRCONbits __asm__ ("CVRCON") __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM1CONbits_t;
extern volatile __CM1CONbits_t CM1CONbits __asm__ ("CM1CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM2CONbits_t;
extern volatile __CM2CONbits_t CM2CONbits __asm__ ("CM2CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM3CONbits_t;
extern volatile __CM3CONbits_t CM3CONbits __asm__ ("CM3CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned C1OUT:1;
    unsigned C2OUT:1;
    unsigned C3OUT:1;
    unsigned :10;
    unsigned SIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __CMSTATbits_t;
extern volatile __CMSTATbits_t CMSTATbits __asm__ ("CMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IRNG:2;
    unsigned ITRIM:6;
    unsigned CTTRIG:1;
    unsigned IDISSEN:1;
    unsigned EDGSEQEN:1;
    unsigned EDGEN:1;
    unsigned TGEN:1;
    unsigned CTMUSIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned :2;
    unsigned EDG2SEL:4;
    unsigned EDG2POL:1;
    unsigned EDG2MOD:1;
    unsigned EDG1STAT:1;
    unsigned EDG2STAT:1;
    unsigned EDG1SEL:4;
    unsigned EDG1POL:1;
    unsigned EDG1MOD:1;
  };
  struct {
    unsigned w:32;
  };
} __CTMUCONbits_t;
extern volatile __CTMUCONbits_t CTMUCONbits __asm__ ("CTMUCON") __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OSWEN:1;
    unsigned SOSCEN:1;
    unsigned UFRCEN:1;
    unsigned CF:1;
    unsigned SLPEN:1;
    unsigned SLOCK:1;
    unsigned ULOCK:1;
    unsigned CLKLOCK:1;
    unsigned NOSC:3;
    unsigned :1;
    unsigned COSC:3;
    unsigned :1;
    unsigned PLLMULT:3;
    unsigned PBDIV:2;
    unsigned PBDIVRDY:1;
    unsigned SOSCRDY:1;
    unsigned :1;
    unsigned FRCDIV:3;
    unsigned PLLODIV:3;
  };
  struct {
    unsigned :8;
    unsigned NOSC0:1;
    unsigned NOSC1:1;
    unsigned NOSC2:1;
    unsigned :1;
    unsigned COSC0:1;
    unsigned COSC1:1;
    unsigned COSC2:1;
    unsigned :1;
    unsigned PLLMULT0:1;
    unsigned PLLMULT1:1;
    unsigned PLLMULT2:1;
    unsigned PBDIV0:1;
    unsigned PBDIV1:1;
    unsigned :3;
    unsigned FRCDIV0:1;
    unsigned FRCDIV1:1;
    unsigned FRCDIV2:1;
    unsigned PLLODIV0:1;
    unsigned PLLODIV1:1;
    unsigned PLLODIV2:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCCONbits_t;
extern volatile __OSCCONbits_t OSCCONbits __asm__ ("OSCCON") __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TUN:6;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
    unsigned TUN5:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCTUNbits_t;
extern volatile __OSCTUNbits_t OSCTUNbits __asm__ ("OSCTUN") __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNINV __attribute__((section("sfrs")));
extern volatile unsigned int REFOCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ROSEL:4;
    unsigned :4;
    unsigned ACTIVE:1;
    unsigned DIVSWEN:1;
    unsigned :1;
    unsigned RSLP:1;
    unsigned OE:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned RODIV:15;
  };
  struct {
    unsigned w:32;
  };
} __REFOCONbits_t;
extern volatile __REFOCONbits_t REFOCONbits __asm__ ("REFOCON") __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONINV __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :23;
    unsigned ROTRIM:9;
  };
  struct {
    unsigned w:32;
  };
} __REFOTRIMbits_t;
extern volatile __REFOTRIMbits_t REFOTRIMbits __asm__ ("REFOTRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMINV __attribute__((section("sfrs")));
extern volatile unsigned int CFGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned TDOEN:1;
  unsigned :1;
  unsigned TROEN:1;
  unsigned JTAGEN:1;
  unsigned :8;
  unsigned PMDLOCK:1;
  unsigned IOLOCK:1;
} __CFGCONbits_t;
extern volatile __CFGCONbits_t CFGCONbits __asm__ ("CFGCON") __attribute__((section("sfrs")));
extern volatile unsigned int DDPCON __attribute__((section("sfrs")));
typedef struct {
  unsigned TDOEN:1;
  unsigned :1;
  unsigned TROEN:1;
  unsigned JTAGEN:1;
  unsigned :8;
  unsigned PMDLOCK:1;
  unsigned IOLOCK:1;
} __DDPCONbits_t;
extern volatile __DDPCONbits_t DDPCONbits __asm__ ("DDPCON") __attribute__((section("sfrs")));
extern volatile unsigned int DEVID __attribute__((section("sfrs")));
typedef struct {
  unsigned DEVID:28;
  unsigned VER:4;
} __DEVIDbits_t;
extern volatile __DEVIDbits_t DEVIDbits __asm__ ("DEVID") __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEY __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYCLR __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYSET __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYINV __attribute__((section("sfrs")));
extern volatile unsigned int PMD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned AD1MD:1;
  unsigned :7;
  unsigned CTMUMD:1;
  unsigned :3;
  unsigned CVRMD:1;
} __PMD1bits_t;
extern volatile __PMD1bits_t PMD1bits __asm__ ("PMD1") __attribute__((section("sfrs")));
extern volatile unsigned int PMD1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD1SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD1INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMP1MD:1;
  unsigned CMP2MD:1;
  unsigned CMP3MD:1;
} __PMD2bits_t;
extern volatile __PMD2bits_t PMD2bits __asm__ ("PMD2") __attribute__((section("sfrs")));
extern volatile unsigned int PMD2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD2SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD2INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD3 __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1MD:1;
  unsigned IC2MD:1;
  unsigned IC3MD:1;
  unsigned IC4MD:1;
  unsigned IC5MD:1;
  unsigned :11;
  unsigned OC1MD:1;
  unsigned OC2MD:1;
  unsigned OC3MD:1;
  unsigned OC4MD:1;
  unsigned OC5MD:1;
} __PMD3bits_t;
extern volatile __PMD3bits_t PMD3bits __asm__ ("PMD3") __attribute__((section("sfrs")));
extern volatile unsigned int PMD3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD3SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD3INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD4 __attribute__((section("sfrs")));
typedef struct {
  unsigned T1MD:1;
  unsigned T2MD:1;
  unsigned T3MD:1;
  unsigned T4MD:1;
  unsigned T5MD:1;
} __PMD4bits_t;
extern volatile __PMD4bits_t PMD4bits __asm__ ("PMD4") __attribute__((section("sfrs")));
extern volatile unsigned int PMD4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD4SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD4INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1MD:1;
    unsigned U2MD:1;
    unsigned :6;
    unsigned SPI1MD:1;
    unsigned SPI2MD:1;
    unsigned :6;
    unsigned I2C1MD:1;
    unsigned I2C2MD:1;
    unsigned :6;
    unsigned USB1MD:1;
  };
  struct {
    unsigned :24;
    unsigned USBMD:1;
  };
} __PMD5bits_t;
extern volatile __PMD5bits_t PMD5bits __asm__ ("PMD5") __attribute__((section("sfrs")));
extern volatile unsigned int PMD5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD5SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD5INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD6 __attribute__((section("sfrs")));
typedef struct {
  unsigned RTCCMD:1;
  unsigned REFOMD:1;
  unsigned :14;
  unsigned PMPMD:1;
} __PMD6bits_t;
extern volatile __PMD6bits_t PMD6bits __asm__ ("PMD6") __attribute__((section("sfrs")));
extern volatile unsigned int PMD6CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD6SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD6INV __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NVMOP:4;
    unsigned :7;
    unsigned LVDSTAT:1;
    unsigned LVDERR:1;
    unsigned WRERR:1;
    unsigned WREN:1;
    unsigned WR:1;
  };
  struct {
    unsigned NVMOP0:1;
    unsigned NVMOP1:1;
    unsigned NVMOP2:1;
    unsigned NVMOP3:1;
  };
  struct {
    unsigned PROGOP:4;
  };
  struct {
    unsigned PROGOP0:1;
    unsigned PROGOP1:1;
    unsigned PROGOP2:1;
    unsigned PROGOP3:1;
  };
  struct {
    unsigned w:32;
  };
} __NVMCONbits_t;
extern volatile __NVMCONbits_t NVMCONbits __asm__ ("NVMCON") __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMKEY __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDR __attribute__((section("sfrs")));
extern volatile unsigned int RCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned POR:1;
    unsigned BOR:1;
    unsigned IDLE:1;
    unsigned SLEEP:1;
    unsigned WDTO:1;
    unsigned :1;
    unsigned SWR:1;
    unsigned EXTR:1;
    unsigned VREGS:1;
    unsigned CMR:1;
  };
  struct {
    unsigned w:32;
  };
} __RCONbits_t;
extern volatile __RCONbits_t RCONbits __asm__ ("RCON") __attribute__((section("sfrs")));
extern volatile unsigned int RCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RSWRST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SWRST:1;
  };
  struct {
    unsigned w:32;
  };
} __RSWRSTbits_t;
extern volatile __RSWRSTbits_t RSWRSTbits __asm__ ("RSWRST") __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTSET __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTINV __attribute__((section("sfrs")));
extern volatile unsigned int INT1R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT1R:4;
} __INT1Rbits_t;
extern volatile __INT1Rbits_t INT1Rbits __asm__ ("INT1R") __attribute__((section("sfrs")));
extern volatile unsigned int INT2R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT2R:4;
} __INT2Rbits_t;
extern volatile __INT2Rbits_t INT2Rbits __asm__ ("INT2R") __attribute__((section("sfrs")));
extern volatile unsigned int INT3R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT3R:4;
} __INT3Rbits_t;
extern volatile __INT3Rbits_t INT3Rbits __asm__ ("INT3R") __attribute__((section("sfrs")));
extern volatile unsigned int INT4R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT4R:4;
} __INT4Rbits_t;
extern volatile __INT4Rbits_t INT4Rbits __asm__ ("INT4R") __attribute__((section("sfrs")));
extern volatile unsigned int T2CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T2CKR:4;
} __T2CKRbits_t;
extern volatile __T2CKRbits_t T2CKRbits __asm__ ("T2CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T3CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T3CKR:4;
} __T3CKRbits_t;
extern volatile __T3CKRbits_t T3CKRbits __asm__ ("T3CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T4CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T4CKR:4;
} __T4CKRbits_t;
extern volatile __T4CKRbits_t T4CKRbits __asm__ ("T4CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T5CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T5CKR:4;
} __T5CKRbits_t;
extern volatile __T5CKRbits_t T5CKRbits __asm__ ("T5CKR") __attribute__((section("sfrs")));
extern volatile unsigned int IC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1R:4;
} __IC1Rbits_t;
extern volatile __IC1Rbits_t IC1Rbits __asm__ ("IC1R") __attribute__((section("sfrs")));
extern volatile unsigned int IC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC2R:4;
} __IC2Rbits_t;
extern volatile __IC2Rbits_t IC2Rbits __asm__ ("IC2R") __attribute__((section("sfrs")));
extern volatile unsigned int IC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC3R:4;
} __IC3Rbits_t;
extern volatile __IC3Rbits_t IC3Rbits __asm__ ("IC3R") __attribute__((section("sfrs")));
extern volatile unsigned int IC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC4R:4;
} __IC4Rbits_t;
extern volatile __IC4Rbits_t IC4Rbits __asm__ ("IC4R") __attribute__((section("sfrs")));
extern volatile unsigned int IC5R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC5R:4;
} __IC5Rbits_t;
extern volatile __IC5Rbits_t IC5Rbits __asm__ ("IC5R") __attribute__((section("sfrs")));
extern volatile unsigned int OCFAR __attribute__((section("sfrs")));
typedef struct {
  unsigned OCFAR:4;
} __OCFARbits_t;
extern volatile __OCFARbits_t OCFARbits __asm__ ("OCFAR") __attribute__((section("sfrs")));
extern volatile unsigned int OCFBR __attribute__((section("sfrs")));
typedef struct {
  unsigned OCFBR:4;
} __OCFBRbits_t;
extern volatile __OCFBRbits_t OCFBRbits __asm__ ("OCFBR") __attribute__((section("sfrs")));
extern volatile unsigned int U1RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1RXR:4;
} __U1RXRbits_t;
extern volatile __U1RXRbits_t U1RXRbits __asm__ ("U1RXR") __attribute__((section("sfrs")));
extern volatile unsigned int U1CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1CTSR:4;
} __U1CTSRbits_t;
extern volatile __U1CTSRbits_t U1CTSRbits __asm__ ("U1CTSR") __attribute__((section("sfrs")));
extern volatile unsigned int U2RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2RXR:4;
} __U2RXRbits_t;
extern volatile __U2RXRbits_t U2RXRbits __asm__ ("U2RXR") __attribute__((section("sfrs")));
extern volatile unsigned int U2CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2CTSR:4;
} __U2CTSRbits_t;
extern volatile __U2CTSRbits_t U2CTSRbits __asm__ ("U2CTSR") __attribute__((section("sfrs")));
extern volatile unsigned int SDI1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI1R:4;
} __SDI1Rbits_t;
extern volatile __SDI1Rbits_t SDI1Rbits __asm__ ("SDI1R") __attribute__((section("sfrs")));
extern volatile unsigned int SS1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS1R:4;
} __SS1Rbits_t;
extern volatile __SS1Rbits_t SS1Rbits __asm__ ("SS1R") __attribute__((section("sfrs")));
extern volatile unsigned int SDI2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI2R:4;
} __SDI2Rbits_t;
extern volatile __SDI2Rbits_t SDI2Rbits __asm__ ("SDI2R") __attribute__((section("sfrs")));
extern volatile unsigned int SS2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS2R:4;
} __SS2Rbits_t;
extern volatile __SS2Rbits_t SS2Rbits __asm__ ("SS2R") __attribute__((section("sfrs")));
extern volatile unsigned int REFCLKIR __attribute__((section("sfrs")));
typedef struct {
  unsigned REFCLKIR:4;
} __REFCLKIRbits_t;
extern volatile __REFCLKIRbits_t REFCLKIRbits __asm__ ("REFCLKIR") __attribute__((section("sfrs")));
extern volatile unsigned int RPA0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA0R:4;
} __RPA0Rbits_t;
extern volatile __RPA0Rbits_t RPA0Rbits __asm__ ("RPA0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA1R:4;
} __RPA1Rbits_t;
extern volatile __RPA1Rbits_t RPA1Rbits __asm__ ("RPA1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA2R:4;
} __RPA2Rbits_t;
extern volatile __RPA2Rbits_t RPA2Rbits __asm__ ("RPA2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA3R:4;
} __RPA3Rbits_t;
extern volatile __RPA3Rbits_t RPA3Rbits __asm__ ("RPA3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA4R:4;
} __RPA4Rbits_t;
extern volatile __RPA4Rbits_t RPA4Rbits __asm__ ("RPA4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA8R:4;
} __RPA8Rbits_t;
extern volatile __RPA8Rbits_t RPA8Rbits __asm__ ("RPA8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA9R:4;
} __RPA9Rbits_t;
extern volatile __RPA9Rbits_t RPA9Rbits __asm__ ("RPA9R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB0R:4;
} __RPB0Rbits_t;
extern volatile __RPB0Rbits_t RPB0Rbits __asm__ ("RPB0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB1R:4;
} __RPB1Rbits_t;
extern volatile __RPB1Rbits_t RPB1Rbits __asm__ ("RPB1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB2R:4;
} __RPB2Rbits_t;
extern volatile __RPB2Rbits_t RPB2Rbits __asm__ ("RPB2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB3R:4;
} __RPB3Rbits_t;
extern volatile __RPB3Rbits_t RPB3Rbits __asm__ ("RPB3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB4R:4;
} __RPB4Rbits_t;
extern volatile __RPB4Rbits_t RPB4Rbits __asm__ ("RPB4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB5R:4;
} __RPB5Rbits_t;
extern volatile __RPB5Rbits_t RPB5Rbits __asm__ ("RPB5R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB7R:4;
} __RPB7Rbits_t;
extern volatile __RPB7Rbits_t RPB7Rbits __asm__ ("RPB7R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB8R:4;
} __RPB8Rbits_t;
extern volatile __RPB8Rbits_t RPB8Rbits __asm__ ("RPB8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB9R:4;
} __RPB9Rbits_t;
extern volatile __RPB9Rbits_t RPB9Rbits __asm__ ("RPB9R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB10R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB10R:4;
} __RPB10Rbits_t;
extern volatile __RPB10Rbits_t RPB10Rbits __asm__ ("RPB10R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB11R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB11R:4;
} __RPB11Rbits_t;
extern volatile __RPB11Rbits_t RPB11Rbits __asm__ ("RPB11R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB13R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB13R:4;
} __RPB13Rbits_t;
extern volatile __RPB13Rbits_t RPB13Rbits __asm__ ("RPB13R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB14R:4;
} __RPB14Rbits_t;
extern volatile __RPB14Rbits_t RPB14Rbits __asm__ ("RPB14R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB15R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB15R:4;
} __RPB15Rbits_t;
extern volatile __RPB15Rbits_t RPB15Rbits __asm__ ("RPB15R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC0R:4;
} __RPC0Rbits_t;
extern volatile __RPC0Rbits_t RPC0Rbits __asm__ ("RPC0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC1R:4;
} __RPC1Rbits_t;
extern volatile __RPC1Rbits_t RPC1Rbits __asm__ ("RPC1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC2R:4;
} __RPC2Rbits_t;
extern volatile __RPC2Rbits_t RPC2Rbits __asm__ ("RPC2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC3R:4;
} __RPC3Rbits_t;
extern volatile __RPC3Rbits_t RPC3Rbits __asm__ ("RPC3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC4R:4;
} __RPC4Rbits_t;
extern volatile __RPC4Rbits_t RPC4Rbits __asm__ ("RPC4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC5R:4;
} __RPC5Rbits_t;
extern volatile __RPC5Rbits_t RPC5Rbits __asm__ ("RPC5R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC6R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC6R:4;
} __RPC6Rbits_t;
extern volatile __RPC6Rbits_t RPC6Rbits __asm__ ("RPC6R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC7R:4;
} __RPC7Rbits_t;
extern volatile __RPC7Rbits_t RPC7Rbits __asm__ ("RPC7R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC8R:4;
} __RPC8Rbits_t;
extern volatile __RPC8Rbits_t RPC8Rbits __asm__ ("RPC8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC9R:4;
} __RPC9Rbits_t;
extern volatile __RPC9Rbits_t RPC9Rbits __asm__ ("RPC9R") __attribute__((section("sfrs")));
extern volatile unsigned int INTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned INT0EP:1;
    unsigned INT1EP:1;
    unsigned INT2EP:1;
    unsigned INT3EP:1;
    unsigned INT4EP:1;
    unsigned :3;
    unsigned TPC:3;
    unsigned :1;
    unsigned MVEC:1;
    unsigned :3;
    unsigned SS0:1;
  };
  struct {
    unsigned w:32;
  };
} __INTCONbits_t;
extern volatile __INTCONbits_t INTCONbits __asm__ ("INTCON") __attribute__((section("sfrs")));
extern volatile unsigned int INTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int INTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int INTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int INTSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VEC:6;
  unsigned :2;
  unsigned SRIPL:3;
} __INTSTATbits_t;
extern volatile __INTSTATbits_t INTSTATbits __asm__ ("INTSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int IPTMR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRSET __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRINV __attribute__((section("sfrs")));
extern volatile unsigned int IFS0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIF:1;
    unsigned CS0IF:1;
    unsigned CS1IF:1;
    unsigned INT0IF:1;
    unsigned T1IF:1;
    unsigned IC1EIF:1;
    unsigned IC1IF:1;
    unsigned OC1IF:1;
    unsigned INT1IF:1;
    unsigned T2IF:1;
    unsigned IC2EIF:1;
    unsigned IC2IF:1;
    unsigned OC2IF:1;
    unsigned INT2IF:1;
    unsigned T3IF:1;
    unsigned IC3EIF:1;
    unsigned IC3IF:1;
    unsigned OC3IF:1;
    unsigned INT3IF:1;
    unsigned T4IF:1;
    unsigned IC4EIF:1;
    unsigned IC4IF:1;
    unsigned OC4IF:1;
    unsigned INT4IF:1;
    unsigned T5IF:1;
    unsigned IC5EIF:1;
    unsigned IC5IF:1;
    unsigned OC5IF:1;
    unsigned AD1IF:1;
    unsigned FSCMIF:1;
    unsigned RTCCIF:1;
    unsigned FCEIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS0bits_t;
extern volatile __IFS0bits_t IFS0bits __asm__ ("IFS0") __attribute__((section("sfrs")));
extern volatile unsigned int IFS0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS0SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS0INV __attribute__((section("sfrs")));
extern volatile unsigned int IFS1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP1IF:1;
    unsigned CMP2IF:1;
    unsigned CMP3IF:1;
    unsigned USBIF:1;
    unsigned SPI1EIF:1;
    unsigned SPI1RXIF:1;
    unsigned SPI1TXIF:1;
    unsigned U1EIF:1;
    unsigned U1RXIF:1;
    unsigned U1TXIF:1;
    unsigned I2C1BIF:1;
    unsigned I2C1SIF:1;
    unsigned I2C1MIF:1;
    unsigned CNAIF:1;
    unsigned CNBIF:1;
    unsigned CNCIF:1;
    unsigned PMPIF:1;
    unsigned PMPEIF:1;
    unsigned SPI2EIF:1;
    unsigned SPI2RXIF:1;
    unsigned SPI2TXIF:1;
    unsigned U2EIF:1;
    unsigned U2RXIF:1;
    unsigned U2TXIF:1;
    unsigned I2C2BIF:1;
    unsigned I2C2SIF:1;
    unsigned I2C2MIF:1;
    unsigned CTMUIF:1;
    unsigned DMA0IF:1;
    unsigned DMA1IF:1;
    unsigned DMA2IF:1;
    unsigned DMA3IF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS1bits_t;
extern volatile __IFS1bits_t IFS1bits __asm__ ("IFS1") __attribute__((section("sfrs")));
extern volatile unsigned int IFS1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS1SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS1INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIE:1;
    unsigned CS0IE:1;
    unsigned CS1IE:1;
    unsigned INT0IE:1;
    unsigned T1IE:1;
    unsigned IC1EIE:1;
    unsigned IC1IE:1;
    unsigned OC1IE:1;
    unsigned INT1IE:1;
    unsigned T2IE:1;
    unsigned IC2EIE:1;
    unsigned IC2IE:1;
    unsigned OC2IE:1;
    unsigned INT2IE:1;
    unsigned T3IE:1;
    unsigned IC3EIE:1;
    unsigned IC3IE:1;
    unsigned OC3IE:1;
    unsigned INT3IE:1;
    unsigned T4IE:1;
    unsigned IC4EIE:1;
    unsigned IC4IE:1;
    unsigned OC4IE:1;
    unsigned INT4IE:1;
    unsigned T5IE:1;
    unsigned IC5EIE:1;
    unsigned IC5IE:1;
    unsigned OC5IE:1;
    unsigned AD1IE:1;
    unsigned FSCMIE:1;
    unsigned RTCCIE:1;
    unsigned FCEIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC0bits_t;
extern volatile __IEC0bits_t IEC0bits __asm__ ("IEC0") __attribute__((section("sfrs")));
extern volatile unsigned int IEC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP1IE:1;
    unsigned CMP2IE:1;
    unsigned CMP3IE:1;
    unsigned USBIE:1;
    unsigned SPI1EIE:1;
    unsigned SPI1RXIE:1;
    unsigned SPI1TXIE:1;
    unsigned U1EIE:1;
    unsigned U1RXIE:1;
    unsigned U1TXIE:1;
    unsigned I2C1BIE:1;
    unsigned I2C1SIE:1;
    unsigned I2C1MIE:1;
    unsigned CNAIE:1;
    unsigned CNBIE:1;
    unsigned CNCIE:1;
    unsigned PMPIE:1;
    unsigned PMPEIE:1;
    unsigned SPI2EIE:1;
    unsigned SPI2RXIE:1;
    unsigned SPI2TXIE:1;
    unsigned U2EIE:1;
    unsigned U2RXIE:1;
    unsigned U2TXIE:1;
    unsigned I2C2BIE:1;
    unsigned I2C2SIE:1;
    unsigned I2C2MIE:1;
    unsigned CTMUIE:1;
    unsigned DMA0IE:1;
    unsigned DMA1IE:1;
    unsigned DMA2IE:1;
    unsigned DMA3IE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC1bits_t;
extern volatile __IEC1bits_t IEC1bits __asm__ ("IEC1") __attribute__((section("sfrs")));
extern volatile unsigned int IEC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIS:2;
    unsigned CTIP:3;
    unsigned :3;
    unsigned CS0IS:2;
    unsigned CS0IP:3;
    unsigned :3;
    unsigned CS1IS:2;
    unsigned CS1IP:3;
    unsigned :3;
    unsigned INT0IS:2;
    unsigned INT0IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC0bits_t;
extern volatile __IPC0bits_t IPC0bits __asm__ ("IPC0") __attribute__((section("sfrs")));
extern volatile unsigned int IPC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T1IS:2;
    unsigned T1IP:3;
    unsigned :3;
    unsigned IC1IS:2;
    unsigned IC1IP:3;
    unsigned :3;
    unsigned OC1IS:2;
    unsigned OC1IP:3;
    unsigned :3;
    unsigned INT1IS:2;
    unsigned INT1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC1bits_t;
extern volatile __IPC1bits_t IPC1bits __asm__ ("IPC1") __attribute__((section("sfrs")));
extern volatile unsigned int IPC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T2IS:2;
    unsigned T2IP:3;
    unsigned :3;
    unsigned IC2IS:2;
    unsigned IC2IP:3;
    unsigned :3;
    unsigned OC2IS:2;
    unsigned OC2IP:3;
    unsigned :3;
    unsigned INT2IS:2;
    unsigned INT2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC2bits_t;
extern volatile __IPC2bits_t IPC2bits __asm__ ("IPC2") __attribute__((section("sfrs")));
extern volatile unsigned int IPC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC2INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T3IS:2;
    unsigned T3IP:3;
    unsigned :3;
    unsigned IC3IS:2;
    unsigned IC3IP:3;
    unsigned :3;
    unsigned OC3IS:2;
    unsigned OC3IP:3;
    unsigned :3;
    unsigned INT3IS:2;
    unsigned INT3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC3bits_t;
extern volatile __IPC3bits_t IPC3bits __asm__ ("IPC3") __attribute__((section("sfrs")));
extern volatile unsigned int IPC3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC3SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC3INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T4IS:2;
    unsigned T4IP:3;
    unsigned :3;
    unsigned IC4IS:2;
    unsigned IC4IP:3;
    unsigned :3;
    unsigned OC4IS:2;
    unsigned OC4IP:3;
    unsigned :3;
    unsigned INT4IS:2;
    unsigned INT4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC4bits_t;
extern volatile __IPC4bits_t IPC4bits __asm__ ("IPC4") __attribute__((section("sfrs")));
extern volatile unsigned int IPC4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC4SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC4INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T5IS:2;
    unsigned T5IP:3;
    unsigned :3;
    unsigned IC5IS:2;
    unsigned IC5IP:3;
    unsigned :3;
    unsigned OC5IS:2;
    unsigned OC5IP:3;
    unsigned :3;
    unsigned AD1IS:2;
    unsigned AD1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC5bits_t;
extern volatile __IPC5bits_t IPC5bits __asm__ ("IPC5") __attribute__((section("sfrs")));
extern volatile unsigned int IPC5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC5SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC5INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSCMIS:2;
    unsigned FSCMIP:3;
    unsigned :3;
    unsigned RTCCIS:2;
    unsigned RTCCIP:3;
    unsigned :3;
    unsigned FCEIS:2;
    unsigned FCEIP:3;
    unsigned :3;
    unsigned CMP1IS:2;
    unsigned CMP1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC6bits_t;
extern volatile __IPC6bits_t IPC6bits __asm__ ("IPC6") __attribute__((section("sfrs")));
extern volatile unsigned int IPC6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC6SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC6INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP2IS:2;
    unsigned CMP2IP:3;
    unsigned :3;
    unsigned CMP3IS:2;
    unsigned CMP3IP:3;
    unsigned :3;
    unsigned USBIS:2;
    unsigned USBIP:3;
    unsigned :3;
    unsigned SPI1IS:2;
    unsigned SPI1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC7bits_t;
extern volatile __IPC7bits_t IPC7bits __asm__ ("IPC7") __attribute__((section("sfrs")));
extern volatile unsigned int IPC7CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC7SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC7INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1IS:2;
    unsigned U1IP:3;
    unsigned :3;
    unsigned I2C1IS:2;
    unsigned I2C1IP:3;
    unsigned :3;
    unsigned CNIS:2;
    unsigned CNIP:3;
    unsigned :3;
    unsigned PMPIS:2;
    unsigned PMPIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC8bits_t;
extern volatile __IPC8bits_t IPC8bits __asm__ ("IPC8") __attribute__((section("sfrs")));
extern volatile unsigned int IPC8CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC8SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC8INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI2IS:2;
    unsigned SPI2IP:3;
    unsigned :3;
    unsigned U2IS:2;
    unsigned U2IP:3;
    unsigned :3;
    unsigned I2C2IS:2;
    unsigned I2C2IP:3;
    unsigned :3;
    unsigned CTMUIS:2;
    unsigned CTMUIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC9bits_t;
extern volatile __IPC9bits_t IPC9bits __asm__ ("IPC9") __attribute__((section("sfrs")));
extern volatile unsigned int IPC9CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC9SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC9INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA0IS:2;
    unsigned DMA0IP:3;
    unsigned :3;
    unsigned DMA1IS:2;
    unsigned DMA1IP:3;
    unsigned :3;
    unsigned DMA2IS:2;
    unsigned DMA2IP:3;
    unsigned :3;
    unsigned DMA3IS:2;
    unsigned DMA3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC10bits_t;
extern volatile __IPC10bits_t IPC10bits __asm__ ("IPC10") __attribute__((section("sfrs")));
extern volatile unsigned int IPC10CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC10SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC10INV __attribute__((section("sfrs")));
extern volatile unsigned int BMXCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BMXARB:3;
    unsigned :3;
    unsigned BMXWSDRM:1;
    unsigned :9;
    unsigned BMXERRIS:1;
    unsigned BMXERRDS:1;
    unsigned BMXERRDMA:1;
    unsigned BMXERRICD:1;
    unsigned BMXERRIXI:1;
    unsigned :5;
    unsigned BMXCHEDMA:1;
  };
  struct {
    unsigned w:32;
  };
} __BMXCONbits_t;
extern volatile __BMXCONbits_t BMXCONbits __asm__ ("BMXCON") __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONSET __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDRMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXPFMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXBOOTSZ __attribute__((section("sfrs")));
extern volatile unsigned int DMACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned DMABUSY:1;
    unsigned SUSPEND:1;
    unsigned :2;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __DMACONbits_t;
extern volatile __DMACONbits_t DMACONbits __asm__ ("DMACON") __attribute__((section("sfrs")));
extern volatile unsigned int DMACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMACONSET __attribute__((section("sfrs")));
extern volatile unsigned int DMACONINV __attribute__((section("sfrs")));
extern volatile unsigned int DMASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMACH:3;
    unsigned RDWR:1;
  };
  struct {
    unsigned w:32;
  };
} __DMASTATbits_t;
extern volatile __DMASTATbits_t DMASTATbits __asm__ ("DMASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CRCCH:3;
    unsigned :2;
    unsigned CRCTYP:1;
    unsigned CRCAPP:1;
    unsigned CRCEN:1;
    unsigned PLEN:5;
    unsigned :11;
    unsigned BITO:1;
    unsigned :2;
    unsigned WBO:1;
    unsigned BYTO:2;
  };
  struct {
    unsigned w:32;
  };
} __DCRCCONbits_t;
extern volatile __DCRCCONbits_t DCRCCONbits __asm__ ("DCRCCON") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATA __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATASET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXOR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0CONbits_t;
extern volatile __DCH0CONbits_t DCH0CONbits __asm__ ("DCH0CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH0ECONbits_t;
extern volatile __DCH0ECONbits_t DCH0ECONbits __asm__ ("DCH0ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0INTbits_t;
extern volatile __DCH0INTbits_t DCH0INTbits __asm__ ("DCH0INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1CONbits_t;
extern volatile __DCH1CONbits_t DCH1CONbits __asm__ ("DCH1CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH1ECONbits_t;
extern volatile __DCH1ECONbits_t DCH1ECONbits __asm__ ("DCH1ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1INTbits_t;
extern volatile __DCH1INTbits_t DCH1INTbits __asm__ ("DCH1INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2CONbits_t;
extern volatile __DCH2CONbits_t DCH2CONbits __asm__ ("DCH2CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH2ECONbits_t;
extern volatile __DCH2ECONbits_t DCH2ECONbits __asm__ ("DCH2ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2INTbits_t;
extern volatile __DCH2INTbits_t DCH2INTbits __asm__ ("DCH2INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3CONbits_t;
extern volatile __DCH3CONbits_t DCH3CONbits __asm__ ("DCH3CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH3ECONbits_t;
extern volatile __DCH3ECONbits_t DCH3ECONbits __asm__ ("DCH3ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3INTbits_t;
extern volatile __DCH3INTbits_t DCH3INTbits __asm__ ("DCH3INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATINV __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIR __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIF:1;
  unsigned :1;
  unsigned SESENDIF:1;
  unsigned SESVDIF:1;
  unsigned ACTVIF:1;
  unsigned LSTATEIF:1;
  unsigned T1MSECIF:1;
  unsigned IDIF:1;
} __U1OTGIRbits_t;
extern volatile __U1OTGIRbits_t U1OTGIRbits __asm__ ("U1OTGIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIE __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIE:1;
  unsigned :1;
  unsigned SESENDIE:1;
  unsigned SESVDIE:1;
  unsigned ACTVIE:1;
  unsigned LSTATEIE:1;
  unsigned T1MSECIE:1;
  unsigned IDIE:1;
} __U1OTGIEbits_t;
extern volatile __U1OTGIEbits_t U1OTGIEbits __asm__ ("U1OTGIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVD:1;
  unsigned :1;
  unsigned SESEND:1;
  unsigned SESVD:1;
  unsigned :1;
  unsigned LSTATE:1;
  unsigned :1;
  unsigned ID:1;
} __U1OTGSTATbits_t;
extern volatile __U1OTGSTATbits_t U1OTGSTATbits __asm__ ("U1OTGSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSDIS:1;
  unsigned VBUSCHG:1;
  unsigned OTGEN:1;
  unsigned VBUSON:1;
  unsigned DMPULDWN:1;
  unsigned DPPULDWN:1;
  unsigned DMPULUP:1;
  unsigned DPPULUP:1;
} __U1OTGCONbits_t;
extern volatile __U1OTGCONbits_t U1OTGCONbits __asm__ ("U1OTGCON") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRC __attribute__((section("sfrs")));
typedef struct {
  unsigned USBPWR:1;
  unsigned USUSPEND:1;
  unsigned :1;
  unsigned USBBUSY:1;
  unsigned USLPGRD:1;
  unsigned :2;
  unsigned UACTPND:1;
} __U1PWRCbits_t;
extern volatile __U1PWRCbits_t U1PWRCbits __asm__ ("U1PWRC") __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCSET __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCINV __attribute__((section("sfrs")));
extern volatile unsigned int U1IR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIF_DETACHIF:1;
    unsigned UERRIF:1;
    unsigned SOFIF:1;
    unsigned TRNIF:1;
    unsigned IDLEIF:1;
    unsigned RESUMEIF:1;
    unsigned ATTACHIF:1;
    unsigned STALLIF:1;
  };
  struct {
    unsigned DETACHIF:1;
  };
  struct {
    unsigned URSTIF:1;
  };
} __U1IRbits_t;
extern volatile __U1IRbits_t U1IRbits __asm__ ("U1IR") __attribute__((section("sfrs")));
extern volatile unsigned int U1IRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIE_DETACHIE:1;
    unsigned UERRIE:1;
    unsigned SOFIE:1;
    unsigned TRNIE:1;
    unsigned IDLEIE:1;
    unsigned RESUMEIE:1;
    unsigned ATTACHIE:1;
    unsigned STALLIE:1;
  };
  struct {
    unsigned DETACHIE:1;
  };
  struct {
    unsigned URSTIE:1;
  };
} __U1IEbits_t;
extern volatile __U1IEbits_t U1IEbits __asm__ ("U1IE") __attribute__((section("sfrs")));
extern volatile unsigned int U1IECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IESET __attribute__((section("sfrs")));
extern volatile unsigned int U1IEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1EIR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEF:1;
    unsigned CRC5EF_EOFEF:1;
    unsigned CRC16EF:1;
    unsigned DFN8EF:1;
    unsigned BTOEF:1;
    unsigned DMAEF:1;
    unsigned BMXEF:1;
    unsigned BTSEF:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EF:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEF:1;
  };
} __U1EIRbits_t;
extern volatile __U1EIRbits_t U1EIRbits __asm__ ("U1EIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEE:1;
    unsigned CRC5EE_EOFEE:1;
    unsigned CRC16EE:1;
    unsigned DFN8EE:1;
    unsigned BTOEE:1;
    unsigned DMAEE:1;
    unsigned BMXEE:1;
    unsigned BTSEE:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EE:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEE:1;
  };
} __U1EIEbits_t;
extern volatile __U1EIEbits_t U1EIEbits __asm__ ("U1EIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1EIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDPT:4;
  };
  struct {
    unsigned :4;
    unsigned ENDPT0:1;
    unsigned ENDPT1:1;
    unsigned ENDPT2:1;
    unsigned ENDPT3:1;
  };
} __U1STATbits_t;
extern volatile __U1STATbits_t U1STATbits __asm__ ("U1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USBEN_SOFEN:1;
    unsigned PPBRST:1;
    unsigned RESUME:1;
    unsigned HOSTEN:1;
    unsigned USBRST:1;
    unsigned PKTDIS_TOKBUSY:1;
    unsigned SE0:1;
    unsigned JSTATE:1;
  };
  struct {
    unsigned USBEN:1;
  };
  struct {
    unsigned SOFEN:1;
    unsigned :4;
    unsigned PKTDIS:1;
  };
  struct {
    unsigned :5;
    unsigned TOKBUSY:1;
  };
} __U1CONbits_t;
extern volatile __U1CONbits_t U1CONbits __asm__ ("U1CON") __attribute__((section("sfrs")));
extern volatile unsigned int U1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEVADDR:7;
    unsigned LSPDEN:1;
  };
  struct {
    unsigned DEVADDR0:1;
    unsigned DEVADDR1:1;
    unsigned DEVADDR2:1;
    unsigned DEVADDR3:1;
    unsigned DEVADDR4:1;
    unsigned DEVADDR5:1;
    unsigned DEVADDR6:1;
  };
} __U1ADDRbits_t;
extern volatile __U1ADDRbits_t U1ADDRbits __asm__ ("U1ADDR") __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned BDTPTRL:7;
} __U1BDTP1bits_t;
extern volatile __U1BDTP1bits_t U1BDTP1bits __asm__ ("U1BDTP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1FRML __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRML:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} __U1FRMLbits_t;
extern volatile __U1FRMLbits_t U1FRMLbits __asm__ ("U1FRML") __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMH __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMH:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} __U1FRMHbits_t;
extern volatile __U1FRMHbits_t U1FRMHbits __asm__ ("U1FRMH") __attribute__((section("sfrs")));
extern volatile unsigned int U1TOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EP:4;
    unsigned PID:4;
  };
  struct {
    unsigned EP0:1;
  };
  struct {
    unsigned :1;
    unsigned EP1:1;
    unsigned EP2:1;
    unsigned EP3:1;
    unsigned PID0:1;
  };
  struct {
    unsigned :5;
    unsigned PID1:1;
    unsigned PID2:1;
    unsigned PID3:1;
  };
} __U1TOKbits_t;
extern volatile __U1TOKbits_t U1TOKbits __asm__ ("U1TOK") __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKSET __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKINV __attribute__((section("sfrs")));
extern volatile unsigned int U1SOF __attribute__((section("sfrs")));
typedef struct {
  unsigned CNT:8;
} __U1SOFbits_t;
extern volatile __U1SOFbits_t U1SOFbits __asm__ ("U1SOF") __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFSET __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRH:8;
} __U1BDTP2bits_t;
extern volatile __U1BDTP2bits_t U1BDTP2bits __asm__ ("U1BDTP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRU:8;
} __U1BDTP3bits_t;
extern volatile __U1BDTP3bits_t U1BDTP3bits __asm__ ("U1BDTP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned UASUSPND:1;
  unsigned :3;
  unsigned USBSIDL:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} __U1CNFG1bits_t;
extern volatile __U1CNFG1bits_t U1CNFG1bits __asm__ ("U1CNFG1") __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
  unsigned :1;
  unsigned RETRYDIS:1;
  unsigned LSPD:1;
} __U1EP0bits_t;
extern volatile __U1EP0bits_t U1EP0bits __asm__ ("U1EP0") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP1bits_t;
extern volatile __U1EP1bits_t U1EP1bits __asm__ ("U1EP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP2bits_t;
extern volatile __U1EP2bits_t U1EP2bits __asm__ ("U1EP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP3bits_t;
extern volatile __U1EP3bits_t U1EP3bits __asm__ ("U1EP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP4bits_t;
extern volatile __U1EP4bits_t U1EP4bits __asm__ ("U1EP4") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP5bits_t;
extern volatile __U1EP5bits_t U1EP5bits __asm__ ("U1EP5") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP6bits_t;
extern volatile __U1EP6bits_t U1EP6bits __asm__ ("U1EP6") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP7bits_t;
extern volatile __U1EP7bits_t U1EP7bits __asm__ ("U1EP7") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP8bits_t;
extern volatile __U1EP8bits_t U1EP8bits __asm__ ("U1EP8") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP9bits_t;
extern volatile __U1EP9bits_t U1EP9bits __asm__ ("U1EP9") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP10bits_t;
extern volatile __U1EP10bits_t U1EP10bits __asm__ ("U1EP10") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP11bits_t;
extern volatile __U1EP11bits_t U1EP11bits __asm__ ("U1EP11") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP12bits_t;
extern volatile __U1EP12bits_t U1EP12bits __asm__ ("U1EP12") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP13bits_t;
extern volatile __U1EP13bits_t U1EP13bits __asm__ ("U1EP13") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP14bits_t;
extern volatile __U1EP14bits_t U1EP14bits __asm__ ("U1EP14") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP15bits_t;
extern volatile __U1EP15bits_t U1EP15bits __asm__ ("U1EP15") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15INV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSA0:1;
    unsigned ANSA1:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELAbits_t;
extern volatile __ANSELAbits_t ANSELAbits __asm__ ("ANSELA") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELACLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELASET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELAINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned :2;
    unsigned TRISA7:1;
    unsigned TRISA8:1;
    unsigned TRISA9:1;
    unsigned TRISA10:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISAbits_t;
extern volatile __TRISAbits_t TRISAbits __asm__ ("TRISA") __attribute__((section("sfrs")));
extern volatile unsigned int TRISACLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISASET __attribute__((section("sfrs")));
extern volatile unsigned int TRISAINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned :2;
    unsigned RA7:1;
    unsigned RA8:1;
    unsigned RA9:1;
    unsigned RA10:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTAbits_t;
extern volatile __PORTAbits_t PORTAbits __asm__ ("PORTA") __attribute__((section("sfrs")));
extern volatile unsigned int PORTACLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTASET __attribute__((section("sfrs")));
extern volatile unsigned int PORTAINV __attribute__((section("sfrs")));
extern volatile unsigned int LATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATA0:1;
    unsigned LATA1:1;
    unsigned LATA2:1;
    unsigned LATA3:1;
    unsigned LATA4:1;
    unsigned :2;
    unsigned LATA7:1;
    unsigned LATA8:1;
    unsigned LATA9:1;
    unsigned LATA10:1;
  };
  struct {
    unsigned w:32;
  };
} __LATAbits_t;
extern volatile __LATAbits_t LATAbits __asm__ ("LATA") __attribute__((section("sfrs")));
extern volatile unsigned int LATACLR __attribute__((section("sfrs")));
extern volatile unsigned int LATASET __attribute__((section("sfrs")));
extern volatile unsigned int LATAINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :7;
    unsigned ODCA7:1;
    unsigned ODCA8:1;
    unsigned ODCA9:1;
    unsigned ODCA10:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCAbits_t;
extern volatile __ODCAbits_t ODCAbits __asm__ ("ODCA") __attribute__((section("sfrs")));
extern volatile unsigned int ODCACLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCASET __attribute__((section("sfrs")));
extern volatile unsigned int ODCAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUA0:1;
    unsigned CNPUA1:1;
    unsigned CNPUA2:1;
    unsigned CNPUA3:1;
    unsigned CNPUA4:1;
    unsigned :2;
    unsigned CNPUA7:1;
    unsigned CNPUA8:1;
    unsigned CNPUA9:1;
    unsigned CNPUA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUAbits_t;
extern volatile __CNPUAbits_t CNPUAbits __asm__ ("CNPUA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDA0:1;
    unsigned CNPDA1:1;
    unsigned CNPDA2:1;
    unsigned CNPDA3:1;
    unsigned CNPDA4:1;
    unsigned :2;
    unsigned CNPDA7:1;
    unsigned CNPDA8:1;
    unsigned CNPDA9:1;
    unsigned CNPDA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDAbits_t;
extern volatile __CNPDAbits_t CNPDAbits __asm__ ("CNPDA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONAbits_t;
extern volatile __CNCONAbits_t CNCONAbits __asm__ ("CNCONA") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONASET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEA0:1;
    unsigned CNIEA1:1;
    unsigned CNIEA2:1;
    unsigned CNIEA3:1;
    unsigned CNIEA4:1;
    unsigned :2;
    unsigned CNIEA7:1;
    unsigned CNIEA8:1;
    unsigned CNIEA9:1;
    unsigned CNIEA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENAbits_t;
extern volatile __CNENAbits_t CNENAbits __asm__ ("CNENA") __attribute__((section("sfrs")));
extern volatile unsigned int CNENACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENASET __attribute__((section("sfrs")));
extern volatile unsigned int CNENAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATA0:1;
    unsigned CNSTATA1:1;
    unsigned CNSTATA2:1;
    unsigned CNSTATA3:1;
    unsigned CNSTATA4:1;
    unsigned :2;
    unsigned CNSTATA7:1;
    unsigned CNSTATA8:1;
    unsigned CNSTATA9:1;
    unsigned CNSTATA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATAbits_t;
extern volatile __CNSTATAbits_t CNSTATAbits __asm__ ("CNSTATA") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATASET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATAINV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSB0:1;
    unsigned ANSB1:1;
    unsigned ANSB2:1;
    unsigned ANSB3:1;
    unsigned :9;
    unsigned ANSB13:1;
    unsigned ANSB14:1;
    unsigned ANSB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELBbits_t;
extern volatile __ANSELBbits_t ANSELBbits __asm__ ("ANSELB") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned :1;
    unsigned TRISB7:1;
    unsigned TRISB8:1;
    unsigned TRISB9:1;
    unsigned TRISB10:1;
    unsigned TRISB11:1;
    unsigned :1;
    unsigned TRISB13:1;
    unsigned TRISB14:1;
    unsigned TRISB15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISBbits_t;
extern volatile __TRISBbits_t TRISBbits __asm__ ("TRISB") __attribute__((section("sfrs")));
extern volatile unsigned int TRISBCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISBSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISBINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned :1;
    unsigned RB7:1;
    unsigned RB8:1;
    unsigned RB9:1;
    unsigned RB10:1;
    unsigned RB11:1;
    unsigned :1;
    unsigned RB13:1;
    unsigned RB14:1;
    unsigned RB15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTBbits_t;
extern volatile __PORTBbits_t PORTBbits __asm__ ("PORTB") __attribute__((section("sfrs")));
extern volatile unsigned int PORTBCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTBSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTBINV __attribute__((section("sfrs")));
extern volatile unsigned int LATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATB0:1;
    unsigned LATB1:1;
    unsigned LATB2:1;
    unsigned LATB3:1;
    unsigned LATB4:1;
    unsigned LATB5:1;
    unsigned :1;
    unsigned LATB7:1;
    unsigned LATB8:1;
    unsigned LATB9:1;
    unsigned LATB10:1;
    unsigned LATB11:1;
    unsigned :1;
    unsigned LATB13:1;
    unsigned LATB14:1;
    unsigned LATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATBbits_t;
extern volatile __LATBbits_t LATBbits __asm__ ("LATB") __attribute__((section("sfrs")));
extern volatile unsigned int LATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATBSET __attribute__((section("sfrs")));
extern volatile unsigned int LATBINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned ODCB4:1;
    unsigned ODCB5:1;
    unsigned :1;
    unsigned ODCB7:1;
    unsigned ODCB8:1;
    unsigned ODCB9:1;
    unsigned ODCB10:1;
    unsigned ODCB11:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCBbits_t;
extern volatile __ODCBbits_t ODCBbits __asm__ ("ODCB") __attribute__((section("sfrs")));
extern volatile unsigned int ODCBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCBSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUB0:1;
    unsigned CNPUB1:1;
    unsigned CNPUB2:1;
    unsigned CNPUB3:1;
    unsigned CNPUB4:1;
    unsigned CNPUB5:1;
    unsigned :1;
    unsigned CNPUB7:1;
    unsigned CNPUB8:1;
    unsigned CNPUB9:1;
    unsigned CNPUB10:1;
    unsigned CNPUB11:1;
    unsigned :1;
    unsigned CNPUB13:1;
    unsigned CNPUB14:1;
    unsigned CNPUB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUBbits_t;
extern volatile __CNPUBbits_t CNPUBbits __asm__ ("CNPUB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDB0:1;
    unsigned CNPDB1:1;
    unsigned CNPDB2:1;
    unsigned CNPDB3:1;
    unsigned CNPDB4:1;
    unsigned CNPDB5:1;
    unsigned :1;
    unsigned CNPDB7:1;
    unsigned CNPDB8:1;
    unsigned CNPDB9:1;
    unsigned CNPDB10:1;
    unsigned CNPDB11:1;
    unsigned :1;
    unsigned CNPDB13:1;
    unsigned CNPDB14:1;
    unsigned CNPDB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDBbits_t;
extern volatile __CNPDBbits_t CNPDBbits __asm__ ("CNPDB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONBbits_t;
extern volatile __CNCONBbits_t CNCONBbits __asm__ ("CNCONB") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEB0:1;
    unsigned CNIEB1:1;
    unsigned CNIEB2:1;
    unsigned CNIEB3:1;
    unsigned CNIEB4:1;
    unsigned CNIEB5:1;
    unsigned :1;
    unsigned CNIEB7:1;
    unsigned CNIEB8:1;
    unsigned CNIEB9:1;
    unsigned CNIEB10:1;
    unsigned CNIEB11:1;
    unsigned :1;
    unsigned CNIEB13:1;
    unsigned CNIEB14:1;
    unsigned CNIEB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENBbits_t;
extern volatile __CNENBbits_t CNENBbits __asm__ ("CNENB") __attribute__((section("sfrs")));
extern volatile unsigned int CNENBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATB0:1;
    unsigned CNSTATB1:1;
    unsigned CNSTATB2:1;
    unsigned CNSTATB3:1;
    unsigned CNSTATB4:1;
    unsigned CNSTATB5:1;
    unsigned :1;
    unsigned CNSTATB7:1;
    unsigned CNSTATB8:1;
    unsigned CNSTATB9:1;
    unsigned CNSTATB10:1;
    unsigned CNSTATB11:1;
    unsigned :1;
    unsigned CNSTATB13:1;
    unsigned CNSTATB14:1;
    unsigned CNSTATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATBbits_t;
extern volatile __CNSTATBbits_t CNSTATBbits __asm__ ("CNSTATB") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBINV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSC0:1;
    unsigned ANSC1:1;
    unsigned ANSC2:1;
    unsigned ANSC3:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELCbits_t;
extern volatile __ANSELCbits_t ANSELCbits __asm__ ("ANSELC") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
    unsigned TRISC8:1;
    unsigned TRISC9:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISCbits_t;
extern volatile __TRISCbits_t TRISCbits __asm__ ("TRISC") __attribute__((section("sfrs")));
extern volatile unsigned int TRISCCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISCSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISCINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
    unsigned RC8:1;
    unsigned RC9:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTCbits_t;
extern volatile __PORTCbits_t PORTCbits __asm__ ("PORTC") __attribute__((section("sfrs")));
extern volatile unsigned int PORTCCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTCSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTCINV __attribute__((section("sfrs")));
extern volatile unsigned int LATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATC0:1;
    unsigned LATC1:1;
    unsigned LATC2:1;
    unsigned LATC3:1;
    unsigned LATC4:1;
    unsigned LATC5:1;
    unsigned LATC6:1;
    unsigned LATC7:1;
    unsigned LATC8:1;
    unsigned LATC9:1;
  };
  struct {
    unsigned w:32;
  };
} __LATCbits_t;
extern volatile __LATCbits_t LATCbits __asm__ ("LATC") __attribute__((section("sfrs")));
extern volatile unsigned int LATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATCSET __attribute__((section("sfrs")));
extern volatile unsigned int LATCINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned ODCC4:1;
    unsigned ODCC5:1;
    unsigned ODCC6:1;
    unsigned ODCC7:1;
    unsigned ODCC8:1;
    unsigned ODCC9:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCCbits_t;
extern volatile __ODCCbits_t ODCCbits __asm__ ("ODCC") __attribute__((section("sfrs")));
extern volatile unsigned int ODCCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCCSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUC0:1;
    unsigned CNPUC1:1;
    unsigned CNPUC2:1;
    unsigned CNPUC3:1;
    unsigned CNPUC4:1;
    unsigned CNPUC5:1;
    unsigned CNPUC6:1;
    unsigned CNPUC7:1;
    unsigned CNPUC8:1;
    unsigned CNPUC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUCbits_t;
extern volatile __CNPUCbits_t CNPUCbits __asm__ ("CNPUC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDC0:1;
    unsigned CNPDC1:1;
    unsigned CNPDC2:1;
    unsigned CNPDC3:1;
    unsigned CNPDC4:1;
    unsigned CNPDC5:1;
    unsigned CNPDC6:1;
    unsigned CNPDC7:1;
    unsigned CNPDC8:1;
    unsigned CNPDC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDCbits_t;
extern volatile __CNPDCbits_t CNPDCbits __asm__ ("CNPDC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONCbits_t;
extern volatile __CNCONCbits_t CNCONCbits __asm__ ("CNCONC") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEC0:1;
    unsigned CNIEC1:1;
    unsigned CNIEC2:1;
    unsigned CNIEC3:1;
    unsigned CNIEC4:1;
    unsigned CNIEC5:1;
    unsigned CNIEC6:1;
    unsigned CNIEC7:1;
    unsigned CNIEC8:1;
    unsigned CNIEC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENCbits_t;
extern volatile __CNENCbits_t CNENCbits __asm__ ("CNENC") __attribute__((section("sfrs")));
extern volatile unsigned int CNENCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATC0:1;
    unsigned CNSTATC1:1;
    unsigned CNSTATC2:1;
    unsigned CNSTATC3:1;
    unsigned CNSTATC4:1;
    unsigned CNSTATC5:1;
    unsigned CNSTATC6:1;
    unsigned CNSTATC7:1;
    unsigned CNSTATC8:1;
    unsigned CNSTATC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATCbits_t;
extern volatile __CNSTATCbits_t CNSTATCbits __asm__ ("CNSTATC") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCINV __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :12;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
    unsigned FVBUSONIO:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG3bits_t;
extern volatile __DEVCFG3bits_t DEVCFG3bits __asm__ ("DEVCFG3") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLMUL:3;
    unsigned :1;
    unsigned UPLLIDIV:3;
    unsigned :4;
    unsigned UPLLEN:1;
    unsigned FPLLODIV:3;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG2bits_t;
extern volatile __DEVCFG2bits_t DEVCFG2bits __asm__ ("DEVCFG2") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned :2;
    unsigned FSOSCEN:1;
    unsigned :1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :1;
    unsigned FPBDIV:2;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned :1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG1bits_t;
extern volatile __DEVCFG1bits_t DEVCFG1bits __asm__ ("DEVCFG1") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned :5;
    unsigned PWP:6;
    unsigned :8;
    unsigned BWP:1;
    unsigned :3;
    unsigned CP:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG0bits_t;
extern volatile __DEVCFG0bits_t DEVCFG0bits __asm__ ("DEVCFG0") __attribute__((section("sfrs")));
# 14385 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx250f128d.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/ppic32mx.h" 1 3
# 14386 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx250f128d.h" 2 3
# 59 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 323 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
extern int __XC_UART;
# 337 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
typedef unsigned long _reg_t;
# 501 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
extern unsigned int _xchsrspss (unsigned int);
# 515 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/cp0defs.h" 1 3
# 33 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/cp0defs.h" 3
       
# 516 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3


# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 1 3
# 39 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 1 3
# 13 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 3
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 40 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 1 3
# 31 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 1 3
# 75 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 126 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __va_list va_list;
# 32 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 2 3
# 56 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[8];



extern struct _iobuf *_Files;
# 77 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
extern struct _tfiles {
 char tname[81];
 struct _iobuf * tfp;
} * _tfilesptr;
# 162 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern int _mon_getc (int canblock);
    extern void _mon_putc (char c);
    extern void _mon_puts (const char * s);
    extern void _mon_write (const char * s, unsigned int count);
# 257 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
extern int _flsbuf(char, struct _iobuf *);
extern int _filbuf(struct _iobuf *);
extern int fclose(struct _iobuf *);
extern int fflush(struct _iobuf *);
extern int fgetc(struct _iobuf *);
extern int ungetc(int, struct _iobuf *);
extern int fputc(int, struct _iobuf *);
extern int getw(struct _iobuf *);
extern int putw(int, struct _iobuf *);
extern int fputs(const char *, struct _iobuf *);
extern int fread(void *, size_t, size_t, struct _iobuf *);
extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
extern int fseek(struct _iobuf *, long, int);
extern int rewind(struct _iobuf *);
extern void setbuf(struct _iobuf *, char *);
extern int setvbuf(struct _iobuf *, char *, int, size_t);
extern int fprintf(struct _iobuf *, const char *, ...);
extern int fscanf(struct _iobuf *, const char *, ...);
extern int vfprintf(struct _iobuf *, const char *, va_list);
extern int vfscanf(struct _iobuf *, const char *, va_list);
extern int remove(const char *);
extern int rename(const char *, const char *);
extern struct _iobuf * fopen(const char *, const char *);
extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
extern struct _iobuf * fdopen(int, const char *);
extern long ftell(struct _iobuf *);
extern char * fgets(char *, int, struct _iobuf *);
extern void perror(const char *);
extern char * _bufallo(void);
extern void _buffree(char *);
extern char * tmpnam(char *);
extern struct _iobuf * tmpfile(void);


    extern int _fprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_eE (struct _iobuf *, const char *, ...); extern int _fprintf_eEfF (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _fprintf_eEgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEs (struct _iobuf *, const char *, ...); extern int _fprintf_fF (struct _iobuf *, const char *, ...); extern int _fprintf_fFgG (struct _iobuf *, const char *, ...); extern int _fprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_fFs (struct _iobuf *, const char *, ...); extern int _fprintf_gG (struct _iobuf *, const char *, ...); extern int _fprintf_gGs (struct _iobuf *, const char *, ...); extern int _fprintf_s (struct _iobuf *, const char *, ...); extern int _fprintf (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_eE (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfF (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEs (struct _iobuf *, const char *, ...); extern int _dfprintf_fF (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_fFs (struct _iobuf *, const char *, ...); extern int _dfprintf_gG (struct _iobuf *, const char *, ...); extern int _dfprintf_gGs (struct _iobuf *, const char *, ...); extern int _dfprintf_s (struct _iobuf *, const char *, ...); extern int _dfprintf (struct _iobuf *, const char *, ...);;
    extern int _fscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_eE (struct _iobuf *, const char *, ...); extern int _fscanf_eEfF (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _fscanf_eEgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEs (struct _iobuf *, const char *, ...); extern int _fscanf_fF (struct _iobuf *, const char *, ...); extern int _fscanf_fFgG (struct _iobuf *, const char *, ...); extern int _fscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_fFs (struct _iobuf *, const char *, ...); extern int _fscanf_gG (struct _iobuf *, const char *, ...); extern int _fscanf_gGs (struct _iobuf *, const char *, ...); extern int _fscanf_s (struct _iobuf *, const char *, ...); extern int _fscanf (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_eE (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfF (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEs (struct _iobuf *, const char *, ...); extern int _dfscanf_fF (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_fFs (struct _iobuf *, const char *, ...); extern int _dfscanf_gG (struct _iobuf *, const char *, ...); extern int _dfscanf_gGs (struct _iobuf *, const char *, ...); extern int _dfscanf_s (struct _iobuf *, const char *, ...); extern int _dfscanf (struct _iobuf *, const char *, ...);;
    extern int _vfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_eE (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fF (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_gG (struct _iobuf *, const char *, va_list); extern int _vfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_s (struct _iobuf *, const char *, va_list); extern int _vfprintf (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eE (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_s (struct _iobuf *, const char *, va_list); extern int _dvfprintf (struct _iobuf *, const char *, va_list);;
    extern int _vfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_eE (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fF (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_gG (struct _iobuf *, const char *, va_list); extern int _vfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_s (struct _iobuf *, const char *, va_list); extern int _vfscanf (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eE (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_s (struct _iobuf *, const char *, va_list); extern int _dvfscanf (struct _iobuf *, const char *, va_list);;






extern void (*_atexitptr)(void);


#pragma printf_check(fprintf)
#pragma printf_check(vfprintf)
# 334 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...);
extern int sscanf(const char *, const char *, ...);
extern int snprintf(char *str, size_t size, const char * fmt, ...);
extern int vprintf(const char *, va_list);
extern int vsprintf(char *, const char *, va_list);
extern int vsnprintf(char *str, size_t size, const char *format, va_list ap);
extern int vscanf(const char *, va_list ap);
extern int vsscanf(const char *, const char *, va_list);


    extern int _scanf_cdeEfFgGnopsuxX (const char *, ...); extern int _scanf_cdeEfFgGnopuxX (const char *, ...); extern int _scanf_cdeEfFnopsuxX (const char *, ...); extern int _scanf_cdeEfFnopuxX (const char *, ...); extern int _scanf_cdeEgGnopsuxX (const char *, ...); extern int _scanf_cdeEgGnopuxX (const char *, ...); extern int _scanf_cdeEnopsuxX (const char *, ...); extern int _scanf_cdeEnopuxX (const char *, ...); extern int _scanf_cdfFgGnopsuxX (const char *, ...); extern int _scanf_cdfFgGnopuxX (const char *, ...); extern int _scanf_cdfFnopsuxX (const char *, ...); extern int _scanf_cdfFnopuxX (const char *, ...); extern int _scanf_cdgGnopsuxX (const char *, ...); extern int _scanf_cdgGnopuxX (const char *, ...); extern int _scanf_cdnopsuxX (const char *, ...); extern int _scanf_cdnopuxX (const char *, ...); extern int _scanf_eE (const char *, ...); extern int _scanf_eEfF (const char *, ...); extern int _scanf_eEfFgG (const char *, ...); extern int _scanf_eEfFgGs (const char *, ...); extern int _scanf_eEfFs (const char *, ...); extern int _scanf_eEgG (const char *, ...); extern int _scanf_eEgGs (const char *, ...); extern int _scanf_eEs (const char *, ...); extern int _scanf_fF (const char *, ...); extern int _scanf_fFgG (const char *, ...); extern int _scanf_fFgGs (const char *, ...); extern int _scanf_fFs (const char *, ...); extern int _scanf_gG (const char *, ...); extern int _scanf_gGs (const char *, ...); extern int _scanf_s (const char *, ...); extern int _scanf (const char *, ...); extern int _dscanf_cdeEfFgGnopsuxX (const char *, ...); extern int _dscanf_cdeEfFgGnopuxX (const char *, ...); extern int _dscanf_cdeEfFnopsuxX (const char *, ...); extern int _dscanf_cdeEfFnopuxX (const char *, ...); extern int _dscanf_cdeEgGnopsuxX (const char *, ...); extern int _dscanf_cdeEgGnopuxX (const char *, ...); extern int _dscanf_cdeEnopsuxX (const char *, ...); extern int _dscanf_cdeEnopuxX (const char *, ...); extern int _dscanf_cdfFgGnopsuxX (const char *, ...); extern int _dscanf_cdfFgGnopuxX (const char *, ...); extern int _dscanf_cdfFnopsuxX (const char *, ...); extern int _dscanf_cdfFnopuxX (const char *, ...); extern int _dscanf_cdgGnopsuxX (const char *, ...); extern int _dscanf_cdgGnopuxX (const char *, ...); extern int _dscanf_cdnopsuxX (const char *, ...); extern int _dscanf_cdnopuxX (const char *, ...); extern int _dscanf_eE (const char *, ...); extern int _dscanf_eEfF (const char *, ...); extern int _dscanf_eEfFgG (const char *, ...); extern int _dscanf_eEfFgGs (const char *, ...); extern int _dscanf_eEfFs (const char *, ...); extern int _dscanf_eEgG (const char *, ...); extern int _dscanf_eEgGs (const char *, ...); extern int _dscanf_eEs (const char *, ...); extern int _dscanf_fF (const char *, ...); extern int _dscanf_fFgG (const char *, ...); extern int _dscanf_fFgGs (const char *, ...); extern int _dscanf_fFs (const char *, ...); extern int _dscanf_gG (const char *, ...); extern int _dscanf_gGs (const char *, ...); extern int _dscanf_s (const char *, ...); extern int _dscanf (const char *, ...);;
    extern int _sscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdnopsuxX (const char *, const char *, ...); extern int _sscanf_cdnopuxX (const char *, const char *, ...); extern int _sscanf_eE (const char *, const char *, ...); extern int _sscanf_eEfF (const char *, const char *, ...); extern int _sscanf_eEfFgG (const char *, const char *, ...); extern int _sscanf_eEfFgGs (const char *, const char *, ...); extern int _sscanf_eEfFs (const char *, const char *, ...); extern int _sscanf_eEgG (const char *, const char *, ...); extern int _sscanf_eEgGs (const char *, const char *, ...); extern int _sscanf_eEs (const char *, const char *, ...); extern int _sscanf_fF (const char *, const char *, ...); extern int _sscanf_fFgG (const char *, const char *, ...); extern int _sscanf_fFgGs (const char *, const char *, ...); extern int _sscanf_fFs (const char *, const char *, ...); extern int _sscanf_gG (const char *, const char *, ...); extern int _sscanf_gGs (const char *, const char *, ...); extern int _sscanf_s (const char *, const char *, ...); extern int _sscanf (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdnopuxX (const char *, const char *, ...); extern int _dsscanf_eE (const char *, const char *, ...); extern int _dsscanf_eEfF (const char *, const char *, ...); extern int _dsscanf_eEfFgG (const char *, const char *, ...); extern int _dsscanf_eEfFgGs (const char *, const char *, ...); extern int _dsscanf_eEfFs (const char *, const char *, ...); extern int _dsscanf_eEgG (const char *, const char *, ...); extern int _dsscanf_eEgGs (const char *, const char *, ...); extern int _dsscanf_eEs (const char *, const char *, ...); extern int _dsscanf_fF (const char *, const char *, ...); extern int _dsscanf_fFgG (const char *, const char *, ...); extern int _dsscanf_fFgGs (const char *, const char *, ...); extern int _dsscanf_fFs (const char *, const char *, ...); extern int _dsscanf_gG (const char *, const char *, ...); extern int _dsscanf_gGs (const char *, const char *, ...); extern int _dsscanf_s (const char *, const char *, ...); extern int _dsscanf (const char *, const char *, ...);;
    extern int _vprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _vprintf_cdeEfFnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFnopuxX (const char *, va_list); extern int _vprintf_cdeEgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEgGnopuxX (const char *, va_list); extern int _vprintf_cdeEnopsuxX (const char *, va_list); extern int _vprintf_cdeEnopuxX (const char *, va_list); extern int _vprintf_cdfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdfFgGnopuxX (const char *, va_list); extern int _vprintf_cdfFnopsuxX (const char *, va_list); extern int _vprintf_cdfFnopuxX (const char *, va_list); extern int _vprintf_cdgGnopsuxX (const char *, va_list); extern int _vprintf_cdgGnopuxX (const char *, va_list); extern int _vprintf_cdnopsuxX (const char *, va_list); extern int _vprintf_cdnopuxX (const char *, va_list); extern int _vprintf_eE (const char *, va_list); extern int _vprintf_eEfF (const char *, va_list); extern int _vprintf_eEfFgG (const char *, va_list); extern int _vprintf_eEfFgGs (const char *, va_list); extern int _vprintf_eEfFs (const char *, va_list); extern int _vprintf_eEgG (const char *, va_list); extern int _vprintf_eEgGs (const char *, va_list); extern int _vprintf_eEs (const char *, va_list); extern int _vprintf_fF (const char *, va_list); extern int _vprintf_fFgG (const char *, va_list); extern int _vprintf_fFgGs (const char *, va_list); extern int _vprintf_fFs (const char *, va_list); extern int _vprintf_gG (const char *, va_list); extern int _vprintf_gGs (const char *, va_list); extern int _vprintf_s (const char *, va_list); extern int _vprintf (const char *, va_list); extern int _dvprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEnopsuxX (const char *, va_list); extern int _dvprintf_cdeEnopuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdfFnopsuxX (const char *, va_list); extern int _dvprintf_cdfFnopuxX (const char *, va_list); extern int _dvprintf_cdgGnopsuxX (const char *, va_list); extern int _dvprintf_cdgGnopuxX (const char *, va_list); extern int _dvprintf_cdnopsuxX (const char *, va_list); extern int _dvprintf_cdnopuxX (const char *, va_list); extern int _dvprintf_eE (const char *, va_list); extern int _dvprintf_eEfF (const char *, va_list); extern int _dvprintf_eEfFgG (const char *, va_list); extern int _dvprintf_eEfFgGs (const char *, va_list); extern int _dvprintf_eEfFs (const char *, va_list); extern int _dvprintf_eEgG (const char *, va_list); extern int _dvprintf_eEgGs (const char *, va_list); extern int _dvprintf_eEs (const char *, va_list); extern int _dvprintf_fF (const char *, va_list); extern int _dvprintf_fFgG (const char *, va_list); extern int _dvprintf_fFgGs (const char *, va_list); extern int _dvprintf_fFs (const char *, va_list); extern int _dvprintf_gG (const char *, va_list); extern int _dvprintf_gGs (const char *, va_list); extern int _dvprintf_s (const char *, va_list); extern int _dvprintf (const char *, va_list);;
    extern int _vsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdnopuxX (char *, const char *, va_list); extern int _vsprintf_eE (char *, const char *, va_list); extern int _vsprintf_eEfF (char *, const char *, va_list); extern int _vsprintf_eEfFgG (char *, const char *, va_list); extern int _vsprintf_eEfFgGs (char *, const char *, va_list); extern int _vsprintf_eEfFs (char *, const char *, va_list); extern int _vsprintf_eEgG (char *, const char *, va_list); extern int _vsprintf_eEgGs (char *, const char *, va_list); extern int _vsprintf_eEs (char *, const char *, va_list); extern int _vsprintf_fF (char *, const char *, va_list); extern int _vsprintf_fFgG (char *, const char *, va_list); extern int _vsprintf_fFgGs (char *, const char *, va_list); extern int _vsprintf_fFs (char *, const char *, va_list); extern int _vsprintf_gG (char *, const char *, va_list); extern int _vsprintf_gGs (char *, const char *, va_list); extern int _vsprintf_s (char *, const char *, va_list); extern int _vsprintf (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopuxX (char *, const char *, va_list); extern int _dvsprintf_eE (char *, const char *, va_list); extern int _dvsprintf_eEfF (char *, const char *, va_list); extern int _dvsprintf_eEfFgG (char *, const char *, va_list); extern int _dvsprintf_eEfFgGs (char *, const char *, va_list); extern int _dvsprintf_eEfFs (char *, const char *, va_list); extern int _dvsprintf_eEgG (char *, const char *, va_list); extern int _dvsprintf_eEgGs (char *, const char *, va_list); extern int _dvsprintf_eEs (char *, const char *, va_list); extern int _dvsprintf_fF (char *, const char *, va_list); extern int _dvsprintf_fFgG (char *, const char *, va_list); extern int _dvsprintf_fFgGs (char *, const char *, va_list); extern int _dvsprintf_fFs (char *, const char *, va_list); extern int _dvsprintf_gG (char *, const char *, va_list); extern int _dvsprintf_gGs (char *, const char *, va_list); extern int _dvsprintf_s (char *, const char *, va_list); extern int _dvsprintf (char *, const char *, va_list);;
    extern int _vscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEnopuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFnopuxX (const char *, va_list ap); extern int _vscanf_cdgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdgGnopuxX (const char *, va_list ap); extern int _vscanf_cdnopsuxX (const char *, va_list ap); extern int _vscanf_cdnopuxX (const char *, va_list ap); extern int _vscanf_eE (const char *, va_list ap); extern int _vscanf_eEfF (const char *, va_list ap); extern int _vscanf_eEfFgG (const char *, va_list ap); extern int _vscanf_eEfFgGs (const char *, va_list ap); extern int _vscanf_eEfFs (const char *, va_list ap); extern int _vscanf_eEgG (const char *, va_list ap); extern int _vscanf_eEgGs (const char *, va_list ap); extern int _vscanf_eEs (const char *, va_list ap); extern int _vscanf_fF (const char *, va_list ap); extern int _vscanf_fFgG (const char *, va_list ap); extern int _vscanf_fFgGs (const char *, va_list ap); extern int _vscanf_fFs (const char *, va_list ap); extern int _vscanf_gG (const char *, va_list ap); extern int _vscanf_gGs (const char *, va_list ap); extern int _vscanf_s (const char *, va_list ap); extern int _vscanf (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdnopsuxX (const char *, va_list ap); extern int _dvscanf_cdnopuxX (const char *, va_list ap); extern int _dvscanf_eE (const char *, va_list ap); extern int _dvscanf_eEfF (const char *, va_list ap); extern int _dvscanf_eEfFgG (const char *, va_list ap); extern int _dvscanf_eEfFgGs (const char *, va_list ap); extern int _dvscanf_eEfFs (const char *, va_list ap); extern int _dvscanf_eEgG (const char *, va_list ap); extern int _dvscanf_eEgGs (const char *, va_list ap); extern int _dvscanf_eEs (const char *, va_list ap); extern int _dvscanf_fF (const char *, va_list ap); extern int _dvscanf_fFgG (const char *, va_list ap); extern int _dvscanf_fFgGs (const char *, va_list ap); extern int _dvscanf_fFs (const char *, va_list ap); extern int _dvscanf_gG (const char *, va_list ap); extern int _dvscanf_gGs (const char *, va_list ap); extern int _dvscanf_s (const char *, va_list ap); extern int _dvscanf (const char *, va_list ap);;
    extern int _vsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopuxX (const char *, const char *, va_list); extern int _vsscanf_eE (const char *, const char *, va_list); extern int _vsscanf_eEfF (const char *, const char *, va_list); extern int _vsscanf_eEfFgG (const char *, const char *, va_list); extern int _vsscanf_eEfFgGs (const char *, const char *, va_list); extern int _vsscanf_eEfFs (const char *, const char *, va_list); extern int _vsscanf_eEgG (const char *, const char *, va_list); extern int _vsscanf_eEgGs (const char *, const char *, va_list); extern int _vsscanf_eEs (const char *, const char *, va_list); extern int _vsscanf_fF (const char *, const char *, va_list); extern int _vsscanf_fFgG (const char *, const char *, va_list); extern int _vsscanf_fFgGs (const char *, const char *, va_list); extern int _vsscanf_fFs (const char *, const char *, va_list); extern int _vsscanf_gG (const char *, const char *, va_list); extern int _vsscanf_gGs (const char *, const char *, va_list); extern int _vsscanf_s (const char *, const char *, va_list); extern int _vsscanf (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopuxX (const char *, const char *, va_list); extern int _dvsscanf_eE (const char *, const char *, va_list); extern int _dvsscanf_eEfF (const char *, const char *, va_list); extern int _dvsscanf_eEfFgG (const char *, const char *, va_list); extern int _dvsscanf_eEfFgGs (const char *, const char *, va_list); extern int _dvsscanf_eEfFs (const char *, const char *, va_list); extern int _dvsscanf_eEgG (const char *, const char *, va_list); extern int _dvsscanf_eEgGs (const char *, const char *, va_list); extern int _dvsscanf_eEs (const char *, const char *, va_list); extern int _dvsscanf_fF (const char *, const char *, va_list); extern int _dvsscanf_fFgG (const char *, const char *, va_list); extern int _dvsscanf_fFgGs (const char *, const char *, va_list); extern int _dvsscanf_fFs (const char *, const char *, va_list); extern int _dvsscanf_gG (const char *, const char *, va_list); extern int _dvsscanf_gGs (const char *, const char *, va_list); extern int _dvsscanf_s (const char *, const char *, va_list); extern int _dvsscanf (const char *, const char *, va_list);;




    extern int snprintf (char *, size_t, const char *, ...);
    extern int vsnprintf (char *, size_t, const char *, __va_list);
    extern int asprintf (char **, const char *, ...);
    extern int vasprintf (char **, const char *, __va_list);
    extern int _snprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _snprintf_eE (char *, size_t, const char *, ...); extern int _snprintf_eEfF (char *, size_t, const char *, ...); extern int _snprintf_eEfFgG (char *, size_t, const char *, ...); extern int _snprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _snprintf_eEfFs (char *, size_t, const char *, ...); extern int _snprintf_eEgG (char *, size_t, const char *, ...); extern int _snprintf_eEgGs (char *, size_t, const char *, ...); extern int _snprintf_eEs (char *, size_t, const char *, ...); extern int _snprintf_fF (char *, size_t, const char *, ...); extern int _snprintf_fFgG (char *, size_t, const char *, ...); extern int _snprintf_fFgGs (char *, size_t, const char *, ...); extern int _snprintf_fFs (char *, size_t, const char *, ...); extern int _snprintf_gG (char *, size_t, const char *, ...); extern int _snprintf_gGs (char *, size_t, const char *, ...); extern int _snprintf_s (char *, size_t, const char *, ...); extern int _snprintf (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_eE (char *, size_t, const char *, ...); extern int _dsnprintf_eEfF (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFs (char *, size_t, const char *, ...); extern int _dsnprintf_eEgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEs (char *, size_t, const char *, ...); extern int _dsnprintf_fF (char *, size_t, const char *, ...); extern int _dsnprintf_fFgG (char *, size_t, const char *, ...); extern int _dsnprintf_fFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_fFs (char *, size_t, const char *, ...); extern int _dsnprintf_gG (char *, size_t, const char *, ...); extern int _dsnprintf_gGs (char *, size_t, const char *, ...); extern int _dsnprintf_s (char *, size_t, const char *, ...); extern int _dsnprintf (char *, size_t, const char *, ...);;
    extern int _vsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_eE (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fF (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_gG (char *, size_t, const char *, __va_list); extern int _vsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_s (char *, size_t, const char *, __va_list); extern int _vsnprintf (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eE (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_s (char *, size_t, const char *, __va_list); extern int _dvsnprintf (char *, size_t, const char *, __va_list);;
    extern int _asprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEnopuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFnopuxX (char **, const char *, ...); extern int _asprintf_cdgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdgGnopuxX (char **, const char *, ...); extern int _asprintf_cdnopsuxX (char **, const char *, ...); extern int _asprintf_cdnopuxX (char **, const char *, ...); extern int _asprintf_eE (char **, const char *, ...); extern int _asprintf_eEfF (char **, const char *, ...); extern int _asprintf_eEfFgG (char **, const char *, ...); extern int _asprintf_eEfFgGs (char **, const char *, ...); extern int _asprintf_eEfFs (char **, const char *, ...); extern int _asprintf_eEgG (char **, const char *, ...); extern int _asprintf_eEgGs (char **, const char *, ...); extern int _asprintf_eEs (char **, const char *, ...); extern int _asprintf_fF (char **, const char *, ...); extern int _asprintf_fFgG (char **, const char *, ...); extern int _asprintf_fFgGs (char **, const char *, ...); extern int _asprintf_fFs (char **, const char *, ...); extern int _asprintf_gG (char **, const char *, ...); extern int _asprintf_gGs (char **, const char *, ...); extern int _asprintf_s (char **, const char *, ...); extern int _asprintf (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdnopsuxX (char **, const char *, ...); extern int _dasprintf_cdnopuxX (char **, const char *, ...); extern int _dasprintf_eE (char **, const char *, ...); extern int _dasprintf_eEfF (char **, const char *, ...); extern int _dasprintf_eEfFgG (char **, const char *, ...); extern int _dasprintf_eEfFgGs (char **, const char *, ...); extern int _dasprintf_eEfFs (char **, const char *, ...); extern int _dasprintf_eEgG (char **, const char *, ...); extern int _dasprintf_eEgGs (char **, const char *, ...); extern int _dasprintf_eEs (char **, const char *, ...); extern int _dasprintf_fF (char **, const char *, ...); extern int _dasprintf_fFgG (char **, const char *, ...); extern int _dasprintf_fFgGs (char **, const char *, ...); extern int _dasprintf_fFs (char **, const char *, ...); extern int _dasprintf_gG (char **, const char *, ...); extern int _dasprintf_gGs (char **, const char *, ...); extern int _dasprintf_s (char **, const char *, ...); extern int _dasprintf (char **, const char *, ...);;
    extern int _vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _vasprintf_eE (char **, const char *, __va_list); extern int _vasprintf_eEfF (char **, const char *, __va_list); extern int _vasprintf_eEfFgG (char **, const char *, __va_list); extern int _vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _vasprintf_eEfFs (char **, const char *, __va_list); extern int _vasprintf_eEgG (char **, const char *, __va_list); extern int _vasprintf_eEgGs (char **, const char *, __va_list); extern int _vasprintf_eEs (char **, const char *, __va_list); extern int _vasprintf_fF (char **, const char *, __va_list); extern int _vasprintf_fFgG (char **, const char *, __va_list); extern int _vasprintf_fFgGs (char **, const char *, __va_list); extern int _vasprintf_fFs (char **, const char *, __va_list); extern int _vasprintf_gG (char **, const char *, __va_list); extern int _vasprintf_gGs (char **, const char *, __va_list); extern int _vasprintf_s (char **, const char *, __va_list); extern int _vasprintf (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopuxX (char **, const char *, __va_list); extern int _dvasprintf_eE (char **, const char *, __va_list); extern int _dvasprintf_eEfF (char **, const char *, __va_list); extern int _dvasprintf_eEfFgG (char **, const char *, __va_list); extern int _dvasprintf_eEfFgGs (char **, const char *, __va_list); extern int _dvasprintf_eEfFs (char **, const char *, __va_list); extern int _dvasprintf_eEgG (char **, const char *, __va_list); extern int _dvasprintf_eEgGs (char **, const char *, __va_list); extern int _dvasprintf_eEs (char **, const char *, __va_list); extern int _dvasprintf_fF (char **, const char *, __va_list); extern int _dvasprintf_fFgG (char **, const char *, __va_list); extern int _dvasprintf_fFgGs (char **, const char *, __va_list); extern int _dvasprintf_fFs (char **, const char *, __va_list); extern int _dvasprintf_gG (char **, const char *, __va_list); extern int _dvasprintf_gGs (char **, const char *, __va_list); extern int _dvasprintf_s (char **, const char *, __va_list); extern int _dvasprintf (char **, const char *, __va_list);;
# 390 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 41 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 2 3
# 519 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 1 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
       
# 55 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 1 3
# 24 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;



extern double atof(const char *);
extern long double _datof(const char *);
extern float strtof(const char *, char **);
extern double strtod(const char *, char **);
extern long double _dstrtod(const char *, char **);
# 60 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);

extern long long atoll(const char *);
extern long long strtoll(const char *, char **, int);
extern unsigned long long strtoull(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void

__attribute__((noreturn))

abort(void);

extern void

__attribute__((noreturn))

exit(int);

extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;


extern int __attribute__((weak)) system(const char *);




extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 56 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 2 3
# 80 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
static __inline__ void * __attribute__((always_inline)) __pic32_alloc_coherent(size_t size)
{
  void *retptr;
  retptr = malloc (size);
  if (retptr == (0L)) {
    return (0L);
  }
  return (malloc (size));
}

static __inline__ void __attribute__((always_inline)) __pic32_free_coherent(void* ptr)
{
  free ((ptr));
}
# 520 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 6 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/p32xxxx.h" 2 3
# 117 "../src/USB/../Common/Compiler.h" 2
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 1 3
# 49 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 1 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 1 3
# 48 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 1 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 3
       
# 49 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3


# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 1 3
# 62 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_1xx_2xx_legacy.h" 1 3
# 63 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 2 3
# 81 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
typedef enum
{
    INT_CT = 0,

    INT_CS0,
    INT_CS1,

    INT_INT0,
    INT_INT1,
    INT_INT2,
    INT_INT3,
    INT_INT4,

    INT_T1,
    INT_T2,
    INT_T3,
    INT_T4,
    INT_T5,

    INT_IC1,
    INT_IC2,
    INT_IC3,
    INT_IC4,
    INT_IC5,

    INT_IC1E,
    INT_IC2E,
    INT_IC3E,
    INT_IC4E,
    INT_IC5E,

    INT_OC1,
    INT_OC2,
    INT_OC3,
    INT_OC4,
    INT_OC5,

    INT_CNA,
    INT_CNB,
    INT_CNC,

    INT_SPI1,
    INT_SPI2A,

    INT_SPI1E,
    INT_SPI2AE,

    INT_SPI1TX,
    INT_SPI2ATX,

    INT_SPI1RX,
    INT_SPI2ARX,

    INT_I2C1,
    INT_I2C2,

    INT_I2C1B,
    INT_I2C2B,

    INT_I2C1S,
    INT_I2C2S,

    INT_I2C1M,
    INT_I2C2M,

    INT_U1A,
    INT_U3A,

    INT_U1AE,
    INT_U3AE,

    INT_U1ARX,
    INT_U3ARX,

    INT_U1ATX,
    INT_U3ATX,

    INT_AD1,

    INT_PMP,
    INT_PMPE,

    INT_CMP1,
    INT_CMP2,
    INT_CMP3,

    INT_FSCM,

    INT_FCE,

    INT_RTCC,

    INT_CTMU,

    INT_DMA0,
    INT_DMA1,
    INT_DMA2,
    INT_DMA3,

    INT_USB,

    INT_NUM
}INT_SOURCE;
# 241 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
typedef enum
{
    INT_CORE_TIMER_VECTOR,

    INT_CORE_SOFTWARE_0_VECTOR,
    INT_CORE_SOFTWARE_1_VECTOR,

    INT_EXTERNAL_0_VECTOR,
    INT_EXTERNAL_1_VECTOR,
    INT_EXTERNAL_2_VECTOR,
    INT_EXTERNAL_3_VECTOR,
    INT_EXTERNAL_4_VECTOR,

    INT_TIMER_1_VECTOR,
    INT_TIMER_2_VECTOR,
    INT_TIMER_3_VECTOR,
    INT_TIMER_4_VECTOR,
    INT_TIMER_5_VECTOR,

    INT_INPUT_CAPTURE_1_VECTOR,
    INT_INPUT_CAPTURE_2_VECTOR,
    INT_INPUT_CAPTURE_3_VECTOR,
    INT_INPUT_CAPTURE_4_VECTOR,
    INT_INPUT_CAPTURE_5_VECTOR,

    INT_OUTPUT_COMPARE_1_VECTOR,
    INT_OUTPUT_COMPARE_2_VECTOR,
    INT_OUTPUT_COMPARE_3_VECTOR,
    INT_OUTPUT_COMPARE_4_VECTOR,
    INT_OUTPUT_COMPARE_5_VECTOR,

    INT_SPI_1_VECTOR,
    INT_SPI_2A_VECTOR,

    INT_UART_1A_VECTOR,
    INT_UART_3A_VECTOR,

    INT_I2C_1_VECTOR,
    INT_I2C_2_VECTOR,

    INT_CHANGE_NOTICE_VECTOR,
    INT_ADC_VECTOR,
    INT_PMP_VECTOR,

    INT_COMPARATOR_1_VECTOR,
    INT_COMPARATOR_2_VECTOR,
    INT_COMPARATOR_3_VECTOR,

    INT_FAIL_SAFE_MONITOR_VECTOR,
    INT_RTCC_VECTOR,

    INT_CTMU_VECTOR,

    INT_DMA_0_VECTOR,
    INT_DMA_1_VECTOR,
    INT_DMA_2_VECTOR,
    INT_DMA_3_VECTOR,

    INT_FCE_VECTOR,

    INT_USB_1_VECTOR,

}INT_VECTOR;
# 52 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3
# 65 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 1 3
# 54 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemMultiVectoredInt(void);
# 68 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemSingleVectoredInt(void);
# 406 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW0(void);
# 437 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW1(void);
# 471 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW0(void);
# 505 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW1(void);
# 66 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3
# 83 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_REGISTOR_SET_SELECT_NONE = 0 ,

    INT_REGISTOR_SET_SELECT_SS0 = (0x00010000)

}INT_SV_SS;
# 102 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_PRIORITY_DISABLED = 0 ,

    INT_PRIORITY_LEVEL_1 = 1 ,

    INT_PRIORITY_LEVEL_2 = 2 ,

    INT_PRIORITY_LEVEL_3 = 3 ,

    INT_PRIORITY_LEVEL_4 = 4 ,

    INT_PRIORITY_LEVEL_5 = 5 ,

    INT_PRIORITY_LEVEL_6 = 6 ,

    INT_PRIORITY_LEVEL_7 = 7
}INT_PRIORITY;
# 132 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SUB_PRIORITY_LEVEL_0 = 0 ,

    INT_SUB_PRIORITY_LEVEL_1 = 1 ,

    INT_SUB_PRIORITY_LEVEL_2 = 2 ,

    INT_SUB_PRIORITY_LEVEL_3 = 3
}INT_SUB_PRIORITY;
# 153 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_DISABLED = 0 ,

    INT_ENABLED = 1
}INT_EN_DIS;
# 169 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_TPC_DISABLE = 0x00000700 ,

    INT_TPC_GROUP_PRI_LEVEL_1 = 1 ,

    INT_TPC_GROUP_PRI_LEVEL_2 = 2 ,

    INT_TPC_GROUP_PRI_LEVEL_3 = 3 ,

    INT_TPC_GROUP_PRI_LEVEL_4 = 4 ,

    INT_TPC_GROUP_PRI_LEVEL_5 = 5 ,

    INT_TPC_GROUP_PRI_LEVEL_6 = 6 ,

    INT_TPC_GROUP_PRI_LEVEL_7 = 7
}INT_TPC_GROUP;
# 198 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_VS_32 = 32 ,

    INT_VS_64 = 64 ,

    INT_VS_128 = 128 ,

    INT_VS_256 = 256 ,

    INT_VS_512 = 512
}INT_VS;
# 221 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SYSTEM_CONFIG_MULT_VECTOR,

    INT_SYSTEM_CONFIG_SINGLE_VECTOR
}INT_SYSTEM_CONFIG;
# 265 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTDisableInterrupts(void);
# 297 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTEnableInterrupts(void);
# 332 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTRestoreInterrupts(unsigned int status);
# 382 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__ ((nomips16)) INTConfigureSystem(INT_SYSTEM_CONFIG config);
# 414 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetEBASE(unsigned int ebase_address);
# 444 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetVectorSpacing(INT_VS vector_spacing);
# 474 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSingleVectorRegisterSet(INT_SV_SS reg_set)
{
    INTCONCLR = reg_set;
    INTCONSET = reg_set;
}
# 514 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetInterruptVectorNumber(void)
{
    return (unsigned int)(INTSTATbits.VEC);
}
# 547 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline INT_PRIORITY __attribute__ ((always_inline)) INTGetInterruptVectorPriority(void)
{
    return (INT_PRIORITY)(INTSTATbits.SRIPL);
}
# 589 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTGetInterruptVectorNumberAndPriority(unsigned int *number, INT_PRIORITY *priority)
{
    *number = INTSTAT;
    *priority = (INT_PRIORITY)((*number >> 8) & 7);
    *number &= 0x3F;
}
# 623 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTClearFlag(INT_SOURCE source);
# 653 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetFlag(INT_SOURCE source);
# 686 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetFlag(INT_SOURCE source);
# 716 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTEnable(INT_SOURCE source, INT_EN_DIS enable);
# 749 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetEnable(INT_SOURCE source);
# 779 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorPriority(INT_VECTOR vector, INT_PRIORITY priority);
# 810 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
INT_PRIORITY INTGetVectorPriority(INT_VECTOR vector);
# 840 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorSubPriority(INT_VECTOR vector, INT_SUB_PRIORITY subPriority);
# 871 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
INT_SUB_PRIORITY INTGetVectorSubPriority(INT_VECTOR vector);
# 901 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetIntProximityTimerReload(unsigned int time)
{
    IPTMR = time;
}
# 934 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetIntProximityTimer(void)
{
    return IPTMR;
}
# 965 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetTemporalProximityControl(INT_TPC_GROUP level)
{
    INTCONCLR = INT_TPC_DISABLE;

    if(level != INT_TPC_DISABLE)
        INTCONSET = (level << 0x00000008);
}
# 1012 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt0(void);
# 1043 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt1(void);
# 1077 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt0(void);
# 1111 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt1(void);
# 46 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 2 3
# 50 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/bmx.h" 1 3
# 51 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/cmp.h" 1 3
# 52 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/cvref.h" 1 3
# 53 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 41 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 1 3
# 55 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef enum
    {
        DMA_CHANNEL0,

        DMA_CHANNEL1,

        DMA_CHANNEL2,

        DMA_CHANNEL3,





        DMA_CHANNELS
    }DmaChannel;



    typedef enum
    {
        DMA_CHN_PRI0,
        DMA_CHN_PRI1,
        DMA_CHN_PRI2,
        DMA_CHN_PRI3
    }DmaChannelPri;





    typedef enum
    {
        DMA_OPEN_DEFAULT = 0,
        DMA_OPEN_AUTO = 0x00000010,
        DMA_OPEN_CHAIN_LOW = (0x00000020|0x00000100),
        DMA_OPEN_CHAIN_HI = (0x00000020),
        DMA_OPEN_DET_EN = 0x00000040,
        DMA_OPEN_ENABLE = 0x00000080,
        DMA_OPEN_MATCH = 0x80000000,
    }DmaOpenFlags;


    typedef enum
    {
        DMA_EV_ERR = 0x1,
        DMA_EV_ABORT = 0x2,
        DMA_EV_CELL_DONE = 0x4,
        DMA_EV_BLOCK_DONE = 0x8,
        DMA_EV_DST_HALF = 0x10,
        DMA_EV_DST_FULL = 0x20,
        DMA_EV_SRC_HALF = 0x40,
        DMA_EV_SRC_FULL = 0x80,

        DMA_EV_ALL_EVNTS= (DMA_EV_ERR|DMA_EV_ABORT|DMA_EV_CELL_DONE|DMA_EV_BLOCK_DONE|DMA_EV_DST_HALF|
                                    DMA_EV_DST_FULL|DMA_EV_SRC_HALF|DMA_EV_SRC_FULL)
    }DmaEvFlags;


    typedef enum
    {
        DMA_TXFER_OK,
        DMA_TXFER_ADD_ERR,
        DMA_TXFER_ABORT,
        DMA_TXFER_BC_ERR,
        DMA_TXFER_CC_ERR,
        DMA_TXFER_TMO
    }DmaTxferRes;

    typedef enum
    {
        DMA_WAIT_NOT,
        DMA_WAIT_CELL,
        DMA_WAIT_BLOCK
    }DmaWaitMode;

    typedef enum
    {
        DMA_CHKSUM_CRC,
        DMA_CHKSUM_IP,
    }DmaChksumType;

    typedef enum
    {
        DMA_BITO_MSb,
        DMA_BITO_LSb,
    }DmaBitOrder;

    typedef enum
    {
        DMA_REORDER_NOT,
        DMA_REORDER_ENDIAN,
        DMA_REORDER_SWAP_HALF,
        DMA_REORDER_SWAP_BYTE,
    }DmaReorderMode;
# 189 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnOpen(DmaChannel chn, DmaChannelPri chPri, DmaOpenFlags oFlags);
# 208 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnEnable(DmaChannel chn);
# 227 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnDisable(DmaChannel chn);
# 259 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetTxfer(DmaChannel chn, const void* vSrcAdd, void* vDstAdd, int srcSize, int dstSize, int cellSize);
# 279 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetSrcAdd(DmaChannel chn, const void* vSrcAdd);
# 298 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetDstAdd(DmaChannel chn, void* vDstAdd);
# 318 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetMatchPattern(DmaChannel chn, int pattern);
# 337 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetMatchPattern(DmaChannel chn);
# 371 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStartTxfer(DmaChannel chn, DmaWaitMode wMode, unsigned long retries);
# 390 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnForceTxfer(DmaChannel chn);
# 409 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnAbortTxfer(DmaChannel chn);
# 442 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 473 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 503 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 531 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvFlags DmaChnGetEvEnableFlags(DmaChannel chn);
# 562 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 590 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvFlags DmaChnGetEvFlags(DmaChannel chn);
# 626 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemcpy(void* s1, const void* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 658 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStrcpy(char* s1, const char* s2, DmaChannel chn, DmaChannelPri chPri);
# 693 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStrncpy(char* s1, const char* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 726 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemCrc(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 759 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemChecksum(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 786 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmConfigure(DmaChksumType cType, DmaBitOrder bitO, DmaReorderMode rMode)
    {
        DCRCCONCLR=0x00000020|0x01000000|0x30000000;
        DCRCCONSET=(cType<<0x00000005)|(bitO<<0x00000018)|(rMode<<0x0000001C);
    }
# 816 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmTxferReorder(int enable)
    {
        DCRCCONCLR=0x08000000;
        DCRCCONSET=(enable<<0x0000001B);
    }
# 859 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmCrcConfigure(unsigned int polynomial, int pLen, unsigned int seed)
    {
        DCRCCONCLR=0x00001F00;
        DCRCCONSET=(pLen-1)<<0x00000008;
        DCRCDATA=seed;
        DCRCXOR=polynomial;
    }
# 895 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    void DmaSfmAttachChannel(DmaChannel chn, int appendMode);
# 916 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmChecksum(void)
    {
        return DCRCDATA;
    }
# 942 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmSetSeed(unsigned int seed)
    {
        DCRCDATA=seed;
    }
# 954 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef struct
    {
        union
        {
            struct
            {
                unsigned int chn: 3;
                unsigned int rdOp: 1;
            };
            unsigned int w;
        }lastAccess;
        void* lastAddress;
    }DmaStatus;

    typedef enum
    {
        DMA_GFLG_SUSPEND = 0x00001000,
        DMA_GFLG_ON = 0x00008000,

        DMA_GFLG_ALL_FLAGS= DMA_GFLG_SUSPEND|DMA_GFLG_ON
    }DmaGlblFlags;




    typedef enum
    {
        DMA_EV_ABORT_IRQ_EN = 0x00000008,
        DMA_EV_START_IRQ_EN = 0x00000010,


        DMA_EV_MATCH_EN = 0x00000020,



        _DMA_EV_MAX_MASK = 0x00FF0000,
    }DmaEvCtrlFlags;
# 1001 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef enum
    {
        DMA_CTL_AUTO_EN = 0x00000010,
        DMA_CTL_CHAIN_EN = 0x00000020,
        DMA_CTL_DET_EN = 0x00000040,
        DMA_CTL_CHN_EN = 0x00000080,
        DMA_CTL_CHAIN_DIR = 0x00000100,


    }DmaChnCtrlFlags;






    typedef struct
    {
        void* vSrcAdd;
        void* vDstAdd;
        int srcSize;
        int dstSize;
        int cellSize;
    }DmaTxferCtrl;
# 1050 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaEnable(int enable)
    {
        if(enable)
        {
            DMACONSET=0x00008000;
        }
        else
        {
            DMACONCLR=0x00008000;
            while(DMACONbits.ON);
        }
    }
# 1102 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ int __attribute__((always_inline)) DmaSuspend(void)
    {
        int suspSt;
        if(!(suspSt=DMACONbits.SUSPEND))
        {
            DMACONSET=0x00001000;
            while((DMACONbits.DMABUSY));
        }
        return suspSt;
    }
# 1132 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaResume(int susp)
    {
        if(susp)
        {
            DmaSuspend();
        }
        else
        {
            DMACONCLR=0x00001000;
        }
    }
# 1166 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaGetStatus(DmaStatus* pStat);
# 1190 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaSetGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACONSET=gFlags;
    }
# 1217 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaClrGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACONCLR=gFlags;
    }
# 1244 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaWriteGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACON=gFlags;
    }
# 1268 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ DmaGlblFlags __attribute__((always_inline)) DmaGetGlobalFlags(void)
    {
        return (DmaGlblFlags)DMACON;
    }
# 1291 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaGetMaxTxferSize(void)
    {
        return 65536;
    }



    typedef enum
    {
        DMA_CONFIG_DEFAULT = 0,
        DMA_CONFIG_AUTO = 0x00000010,
        DMA_CONFIG_CHAIN_LOW = (0x00000020|0x00000100),
        DMA_CONFIG_CHAIN_HI = (0x00000020),
        DMA_CONFIG_DET_EN = 0x00000040,
        DMA_CONFIG_ENABLE = 0x00000080,
        DMA_CONFIG_MATCH = 0x80000000,
    }DmaConfigFlags;
# 1346 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    void DmaChnConfigure(DmaChannel chn, DmaChannelPri chPri, DmaConfigFlags cFlags);
# 1367 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetSrcPnt(DmaChannel chn);
# 1387 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetDstPnt(DmaChannel chn);
# 1407 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetCellPnt(DmaChannel chn);
# 1443 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1478 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1514 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1585 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvCtrlFlags DmaChnGetEventControl(DmaChannel chn);
# 1621 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1656 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1690 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1757 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaChnCtrlFlags DmaChnGetControlFlags(DmaChannel chn);
# 1778 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetEvDetect(DmaChannel chn);
# 1808 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnGetTxfer(DmaChannel chn, DmaTxferCtrl* pTxCtrl, int mapToK0);
# 1830 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmEnable(int enable)
    {
        if(enable)
        {
            DCRCCONSET=0x00000080;
        }
        else
        {
            DCRCCONCLR=0x00000080;
        }
    }
# 1862 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmGetEnable(void)
    {
        return DCRCCONbits.CRCEN!=0;
    }
# 1890 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmAppendEnable(int enable)
    {
        if(enable)
        {
            DCRCCONSET=0x00000040;
        }
        else
        {
            DCRCCONCLR=0x00000040;
        }
    }
# 1922 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmGetAppendMode(void)
    {
        return DCRCCONbits.CRCAPP!=0;
    }
# 1946 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmSetAttach(DmaChannel chn)
    {
        DCRCCONCLR=0x00000007;
        DCRCCONSET=chn;
    }
# 1971 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ DmaChannel __attribute__((always_inline)) DmaSfmGetAttach(void)
    {
        return (DmaChannel)DCRCCONbits.CRCCH;
    }
# 1994 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaCrcSetPLen(int pLen)
    {
        DCRCCONCLR=0x00001F00;
        DCRCCONSET=(pLen)-1;
    }
# 2018 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaCrcGetPLen(void)
    {
        return DCRCCONbits.PLEN+1;
    }
# 2042 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaCrcSetShiftFeedback(unsigned int feedback)
    {
        DCRCXOR=feedback;
    }
# 2067 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ unsigned int __attribute__((always_inline)) DmaCrcGetShiftFeedback(void)
    {
        return DCRCXOR;
    }
# 2105 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2135 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2145 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 1 3
# 48 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 49 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 2 3
# 723 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
typedef enum
{

 DMA_REG_IX_CON,
 DMA_REG_IX_CON_CLR,
 DMA_REG_IX_CON_SET,
 DMA_REG_IX_CON_INV,

 DMA_REG_IX_ECON,
 DMA_REG_IX_ECON_CLR,
 DMA_REG_IX_ECON_SET,
 DMA_REG_IX_ECON_INV,

 DMA_REG_IX_INTR,
 DMA_REG_IX_INTR_CLR,
 DMA_REG_IX_INTR_SET,
 DMA_REG_IX_INTR_INV,

 DMA_REG_IX_SSA,
 DMA_REG_IX_SSA_CLR,
 DMA_REG_IX_SSA_SET,
 DMA_REG_IX_SSA_INV,

 DMA_REG_IX_DSA,
 DMA_REG_IX_DSA_CLR,
 DMA_REG_IX_DSA_SET,
 DMA_REG_IX_DSA_INV,

 DMA_REG_IX_SSIZ,
 DMA_REG_IX_SSIZ_CLR,
 DMA_REG_IX_SSIZ_SET,
 DMA_REG_IX_SSIZ_INV,

 DMA_REG_IX_DSIZ,
 DMA_REG_IX_DSIZ_CLR,
 DMA_REG_IX_DSIZ_SET,
 DMA_REG_IX_DSIZ_INV,

 DMA_REG_IX_SPTR,
 DMA_REG_IX_RESERVED0,
 DMA_REG_IX_RESERVED1,
 DMA_REG_IX_RESERVED2,

 DMA_REG_IX_DPTR,
 DMA_REG_IX_RESERVED3,
 DMA_REG_IX_RESERVED4,
 DMA_REG_IX_RESERVED5,

 DMA_REG_IX_CSIZ,
 DMA_REG_IX_CSIZ_CLR,
 DMA_REG_IX_CSIZ_SET,
 DMA_REG_IX_CSIZ_INV,

 DMA_REG_IX_CPTR,
 DMA_REG_IX_RESERVED6,
 DMA_REG_IX_RESERVED7,
 DMA_REG_IX_RESERVED8,

 DMA_REG_IX_DAT,
 DMA_REG_IX_DAT_CLR,
 DMA_REG_IX_DAT_SET,
 DMA_REG_IX_DAT_INV,
}DmaChnRegIx;
# 806 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 void DmaChnSetRegister(DmaChannel chn, DmaChnRegIx regIx, unsigned int value);
# 827 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 unsigned int DmaChnGetRegister(DmaChannel chn, DmaChnRegIx regIx);
# 2146 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 2 3
# 42 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 2 3
# 54 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 1 3
# 53 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 1 3
# 557 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 void IdleI2C1( void );



 void IdleI2C2( void );
# 583 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned char MasterReadI2C1( void );



 unsigned char MasterReadI2C2( void );
# 609 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MasterWriteI2C1( unsigned char data );



 unsigned int MasterWriteI2C2( unsigned char data );
# 639 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MastergetsI2C1( unsigned int length, unsigned char *data,
                                    unsigned int I2cDataWait );



 unsigned int MastergetsI2C2( unsigned int length, unsigned char *data,
                                    unsigned int I2cDataWait );
# 667 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MasterputsI2C1( unsigned char *data );



 unsigned int MasterputsI2C2( unsigned char *data );
# 693 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned char SlaveReadI2C1( void );



 unsigned char SlaveReadI2C2( void );
# 718 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 void SlaveWriteI2C1( unsigned char data );



 void SlaveWriteI2C2( unsigned char data );
# 745 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int SlavegetsI2C1( unsigned char *data,
                                   unsigned int I2cDataWait );



 unsigned int SlavegetsI2C2( unsigned char *data,
                                   unsigned int I2cDataWait );
# 773 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int SlaveputsI2C1( unsigned char *data );



 unsigned int SlaveputsI2C2( unsigned char *data );
# 54 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 2 3
# 79 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C1,




    I2C2,
# 107 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
    I2C_NUMBER_OF_MODULES

} I2C_MODULE;
# 122 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{


    UINT8 byte;

    struct
    {

        UINT8 rw : 1;


        UINT8 address : 7;
    };

} I2C_7_BIT_ADDRESS;
# 150 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{

    UINT16 both_bytes;

    struct
    {

        BYTE first_byte;


        BYTE second_byte;
    };

    struct
    {

        UINT16 rw : 1;


        UINT16 high_bits : 2;


        UINT16 const_bits : 5;


        UINT16 low_bits : 8;
    };

} I2C_10_BIT_ADDRESS;
# 270 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_SUCCESS = 0,


    I2C_ERROR,


    I2C_MASTER_BUS_COLLISION,



    I2C_RECEIVE_OVERFLOW

} I2C_RESULT;
# 304 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_ENABLE_SLAVE_CLOCK_STRETCHING
                             = 0x00000040 ,



    I2C_ENABLE_SMB_SUPPORT
                             = 0x00000100 ,


    I2C_ENABLE_HIGH_SPEED
                             = 0x00000200 ,


    I2C_STOP_IN_IDLE
                             = 0x00002000

} I2C_CONFIGURATION;
# 342 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_USE_7BIT_ADDRESS
                             = 0x00000000 ,


    I2C_USE_10BIT_ADDRESS
                             = 0x00000400 ,



    I2C_ENABLE_GENERAL_CALL_ADDRESS
                             = 0x00000080 ,



    I2C_USE_RESERVED_ADDRESSES
                             = 0x00000800

} I2C_ADDRESS_MODE;
# 381 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_TRANSMITTER_FULL
                             = 0x00000001 ,



    I2C_DATA_AVAILABLE
                            = 0x00000002 ,




    I2C_SLAVE_READ
                             = 0x00000004 ,


    I2C_START
                             = 0x00000008 ,


    I2C_STOP
                             = 0x00000010 ,



    I2C_SLAVE_DATA
                             = 0x00000020 ,



    I2C_RECEIVER_OVERFLOW
                             = 0x00000040 ,



    I2C_TRANSMITTER_OVERFLOW
                             = 0x00000080 ,



    I2C_10BIT_ADDRESS
                             = 0x00000100 ,


    I2C_GENERAL_CALL
                             = 0x00000200 ,



    I2C_ARBITRATION_LOSS
                             = 0x00000400 ,


    I2C_TRANSMITTER_BUSY
                             = 0x00004000 ,


    I2C_BYTE_ACKNOWLEDGED
                             = 0x00008000

} I2C_STATUS;
# 717 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CEnable( I2C_MODULE id, BOOL enable );
# 754 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CConfigure ( I2C_MODULE id, I2C_CONFIGURATION flags );
# 798 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
UINT32 I2CSetFrequency ( I2C_MODULE id, UINT32 sourceClock, UINT32 i2cClock );
# 851 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSetSlaveAddress ( I2C_MODULE id, UINT16 address, UINT16 mask, I2C_ADDRESS_MODE flags );
# 891 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CBusIsIdle( I2C_MODULE id );
# 930 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CStart( I2C_MODULE id );
# 967 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CRepeatStart ( I2C_MODULE id );
# 1001 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CStop ( I2C_MODULE id );
# 1040 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmitterIsReady ( I2C_MODULE id );
# 1082 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CSendByte ( I2C_MODULE id, BYTE data );
# 1125 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmissionHasCompleted ( I2C_MODULE id );
# 1168 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CByteWasAcknowledged ( I2C_MODULE id );
# 1209 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CReceiverEnable ( I2C_MODULE id, BOOL enable );
# 1247 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedDataIsAvailable ( I2C_MODULE id );
# 1293 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedByteIsAnAddress ( I2C_MODULE id );
# 1331 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BYTE I2CGetByte ( I2C_MODULE id );
# 1373 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CAcknowledgeByte ( I2C_MODULE id, BOOL ack );
# 1415 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CAcknowledgeHasCompleted ( I2C_MODULE id );
# 1460 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CSlaveDataReadRequested ( I2C_MODULE id );
# 1494 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockHold ( I2C_MODULE id );
# 1530 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockRelease ( I2C_MODULE id );
# 1568 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_STATUS I2CGetStatus ( I2C_MODULE id );
# 1608 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CClearStatus ( I2C_MODULE id, I2C_STATUS status );
# 55 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/incap.h" 1 3
# 339 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/incap.h" 3
 void ReadCapture1(unsigned int * buffer);



 void ReadCapture2(unsigned int * buffer);



 void ReadCapture3(unsigned int * buffer);



 void ReadCapture4(unsigned int * buffer);



 void ReadCapture5(unsigned int * buffer);
# 56 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3

# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 1 3
# 44 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 1 3
# 47 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 3
       
# 68 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 3
typedef unsigned long _paddr_t;
typedef unsigned long _vaddr_t;
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 2 3
# 69 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMProgram(void * address, const void * data, unsigned int size, void* pagebuff);
# 87 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteWord(void* address, unsigned int data);
# 106 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteRow(void* address, void* data);
# 124 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMErasePage(void* address);
# 140 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMClearError(void);
# 58 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/outcompare.h" 1 3
# 59 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 1 3
# 373 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOff();
# 388 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOn();
# 60 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 1 3
# 46 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
typedef enum {BUF0, BUF1, BUF2, BUF3}BUFFER ;
# 312 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPSetAddress(unsigned int addrs)
{
    while((PMMODEbits.BUSY));
    PMADDR = addrs;
}
# 393 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline unsigned int __attribute__((always_inline)) PMPMasterRead(void)
{
 while((PMMODEbits.BUSY));
 return(PMDIN);
}
# 423 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* pDest);
# 449 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadWordBlock(unsigned int addrs, unsigned int words, unsigned short* pDest);
# 477 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPMasterWrite(unsigned short value)
{
 while((PMMODEbits.BUSY));
 PMDIN = value;
}
# 507 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* source);
# 533 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteWordBlock(unsigned int addrs, unsigned int words, unsigned short* source);
# 554 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
unsigned char PMPSlaveReadBuffer(BUFFER);
# 576 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveReadBuffers(unsigned char* pDest);
# 601 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffer(BUFFER, unsigned char value);
# 624 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffers(unsigned char* source);
# 61 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 1 3
# 46 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/SPI_Port_Mappings.h" 1 3
# 47 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/Ethernet_Port_Mappings.h" 1 3
# 48 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 1346 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
typedef enum {

        IOPORT_A,


        IOPORT_B,


        IOPORT_C,
# 1368 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
    IOPORT_NUM
    }IoPortId;
# 1393 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalIn(IoPortId portId, unsigned int inputs);
# 1417 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalOut(IoPortId portId, unsigned int outputs);
# 1441 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogIn(IoPortId portId, unsigned int inputs);
# 1465 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogOut(IoPortId portId, unsigned int outputs);
# 1486 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTResetPins(IoPortId portId, unsigned int pins);
# 1504 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTRead(IoPortId portId);
# 1524 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTReadBits(IoPortId portId, unsigned int bits);
# 1542 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTWrite(IoPortId portId, unsigned int bits);
# 1562 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetBits(IoPortId portId, unsigned int bits);
# 1582 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTClearBits(IoPortId portId, unsigned int bits);
# 1602 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTToggleBits(IoPortId portId, unsigned int bits);
# 62 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pps.h" 1 3
# 63 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 1 3
# 60 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveSleep(void);
# 78 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveIdle(void);
# 64 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 1 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/lock.h" 1 3
# 46 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 2 3
# 140 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
void __attribute__((noreturn)) SoftReset(void);
# 163 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
char isWU(void);
# 65 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 1 3
# 56 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
typedef union
{
 struct
 {
  unsigned char rsvd;
  unsigned char sec;
  unsigned char min;
  unsigned char hour;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}rtccTime;


typedef union
{
 struct
 {
  unsigned char wday;
  unsigned char mday;
  unsigned char mon;
  unsigned char year;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}rtccDate;


typedef enum
{
 RTCC_RPT_HALF_SEC,
 RTCC_RPT_SEC,
 RTCC_RPT_TEN_SEC,
 RTCC_RPT_MIN,
 RTCC_RPT_TEN_MIN,
 RTCC_RPT_HOUR,
 RTCC_RPT_DAY,
 RTCC_RPT_WEEK,
 RTCC_RPT_MON,
 RTCC_RPT_YEAR
}rtccRepeat;


typedef enum
{
 RTCC_CLK_ON,
 RTCC_SOSC_NRDY,
 RTCC_CLK_NRDY,
 RTCC_WR_DSBL,
}rtccRes;
# 136 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccInit(void);
# 175 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccOpen(unsigned long tm, unsigned long dt, int drift);
# 196 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccShutdown(void);
# 231 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTime(unsigned long tm);
# 252 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetTime(void)
{
 unsigned int t0, t1;
 do
 {
  t0=RTCTIME;
  t1=RTCTIME;
 }while(t0!=t1);
 return t0;
}
# 293 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetDate(unsigned long dt);
# 314 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetDate(void)
{
 unsigned int d0, d1;
 do
 {
  d0=RTCDATE;
  d1=RTCDATE;
 }while(d0!=d1);

 return d0;
}
# 363 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTimeDate(unsigned long tm, unsigned long dt);
# 386 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetTimeDate(rtccTime* pTm, rtccDate* pDt)
{
 rtccTime t0;
 rtccDate d0;
 do
 {
  d0.l=RTCDATE;
  t0.l=RTCTIME;
  pTm->l=RTCTIME;
  pDt->l=RTCDATE;
 }while((d0.l!=pDt->l) || (t0.l!=pTm->l));
}
# 424 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTime(unsigned long tm);
# 443 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmTime(void)
{
 return ALRMTIME;
}
# 474 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmDate(unsigned long dt);
# 493 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmDate(void)
{
 return ALRMDATE;
}
# 531 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTimeDate(unsigned long tm, unsigned long dt);
# 552 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetAlarmTimeDate(rtccTime* pTm, rtccDate* pDt)
{
 pTm->l=ALRMTIME;
 pDt->l=ALRMDATE;
}
# 577 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmEnable(void);
# 599 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmDisable(void);
# 619 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmEnable(void)
{
 int isAlrm0, isAlrm1;
 do
 {
  isAlrm0=RTCALRMbits.ALRMEN;
  isAlrm1=RTCALRMbits.ALRMEN;
 }while(isAlrm0!=isAlrm1);

 return isAlrm0;
}
# 651 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeEnable(void);
# 672 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeDisable(void);
# 692 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetChimeEnable(void)
{
 int ch0, ch1;
 do
 {
  ch0=RTCALRMbits.CHIME;
  ch1=RTCALRMbits.CHIME;
 }while(ch0!=ch1);

 return ch0;

}
# 724 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRpt(rtccRepeat rpt);
# 743 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRepeat __attribute__((always_inline)) RtccGetAlarmRpt(void)
{
 rtccRepeat r0, r1;

 do
 {
  r0=(rtccRepeat)(RTCALRM&0x00000F00);
  r1=(rtccRepeat)(RTCALRM&0x00000F00);
 }while(r0!=r1);

 return (rtccRepeat)(r0>>0x00000008);
}
# 781 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRptCount(int rptCnt);
# 801 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmRptCount(void)
{
 int rpt0, rpt1;
 do
 {
  rpt0=RTCALRMbits.ARPT;
  rpt1=RTCALRMbits.ARPT;
 }while(rpt0!=rpt1);

 return rpt0;
}
# 834 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccWeekDay(int year, int month, int day);
# 860 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccEnable(void);
# 886 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccDisable(void);
# 905 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetEnable(void)
{
 return (RTCCON&(0x00008000|0x00000040));
}
# 928 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRes __attribute__((always_inline)) RtccGetClkStat(void)
{

 if( (!(OSCCONbits.SOSCEN)) || (!(OSCCONbits.SOSCRDY)) )
 {
  return RTCC_SOSC_NRDY;
 }
 else if(!(RTCCONbits.RTCCLKON))
 {
  return RTCC_CLK_NRDY;
 }

 return RTCC_CLK_ON;
}
# 974 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetCalibration(int drift);
# 995 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetCalibration(void)
{
 return RTCCONbits.CAL;
}
# 1022 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccWrEnable(int enable)
{
 if(enable)
 {
  do{int intStat, dmaSusp; intStat=INTDisableInterrupts(); dmaSusp=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA; (RTCCONSET=0x00000008); SYSKEY = 0x33333333; DmaResume(dmaSusp); INTRestoreInterrupts(intStat);}while(0);
 }
 else
 {
  RTCCONCLR=0x00000008;
 }
}
# 1052 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetWrEnable(void)
{
 return RTCCONbits.RTCWREN!=0;
}
# 1074 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetSync(void)
{
 return RTCCONbits.RTCSYNC!=0;
}
# 1097 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetHalfSecond(void)
{
 return RTCCONbits.HALFSEC!=0;
}
# 1119 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlrmSync(void)
{
 return RTCALRMbits.ALRMSYNC!=0;
}
# 1142 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccSelectPulseOutput(int secPulse)
{
 if(secPulse)
 {
  RTCCONSET=0x00000080;
 }
 else
 {
  RTCCONCLR=0x00000080;
 }
}
# 1177 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseHigh(void);
# 1200 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseLow(void);
# 1223 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseToggle(void);
# 1243 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmPulse(void)
{
 return RTCALRMbits.PIV!=0;
}
# 1266 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccOutputEnable(int enable)
{
 if(enable)
 {
  RTCCONSET=0x00000001;
 }
 else
 {
  RTCCONCLR=0x00000001;
 }
}
# 1295 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetOutputEnable(void)
{
 return RTCCONbits.RTCOE!=0;
}
# 1310 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/rtcc_legacy.h" 1 3
# 1311 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 2 3
# 66 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 1 3
# 44 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 1 3
# 64 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
typedef enum
{

    SPI_CHANNEL1 = 1,



    SPI_CHANNEL2 = 2,


    SPI_CHANNELS = 0

                        + 1


                        + 1


}SpiChannel;
# 103 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
typedef enum
{

    SPI_OPEN_MSTEN = 0x00000020,
    SPI_OPEN_SMP_END = 0x00000200,
    SPI_OPEN_MSSEN = 0x10000000,
    SPI_OPEN_MSSEN_HIGH = 0x20000000,


    SPI_OPEN_SLVEN = 0,
    SPI_OPEN_SSEN = 0x00000080,

 SPI_OPEN_MCLKSEL = 0x00800000,


    SPI_OPEN_CKP_HIGH = 0x00000040,
    SPI_OPEN_CKE_REV = 0x00000100,


    SPI_OPEN_MODE8 = 0,
    SPI_OPEN_MODE16 = 0x00000400,
    SPI_OPEN_MODE32 = 0x00000800,


    SPI_OPEN_FRMEN = 0x80000000,
    SPI_OPEN_FSP_IN = 0x40000000,

    SPI_OPEN_FSP_HIGH = 0x20000000,
    SPI_OPEN_FSP_CLK1 = 0x00020000,

    SPI_OPEN_FSP_WIDE = 0x08000000,

    SPI_OPEN_FRM_CNT1 = (0 << 0x00000018),
    SPI_OPEN_FRM_CNT2 = (1 << 0x00000018),
    SPI_OPEN_FRM_CNT4 = (2 << 0x00000018),
    SPI_OPEN_FRM_CNT8 = (3 << 0x00000018),
    SPI_OPEN_FRM_CNT16 = (4 << 0x00000018),
    SPI_OPEN_FRM_CNT32 = (5 << 0x00000018),


    SPI_OPEN_ENHBUF = 0x00010000,

    SPI_OPEN_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_OPEN_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_OPEN_TBE_EMPTY = (1 << 0x00000002),
    SPI_OPEN_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_OPEN_RBF_FULL = (3 << 0x00000000),
    SPI_OPEN_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_OPEN_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_OPEN_RBF_EMPTY = (0 << 0x00000000),


    SPI_OPEN_DISSDO = 0x00001000,
    SPI_OPEN_DISSDI = 0x00000010,
    SPI_OPEN_SIDL = 0x00002000,
    SPI_OPEN_ON = 0x00008000,
}SpiOpenFlags;

typedef enum {
    SPI_OPEN2_SPISGNEXT = 0x00008000,
    SPI_OPEN2_FRMERREN = 0x00001000,
    SPI_OPEN2_SPIROVEN = 0x00000800,
    SPI_OPEN2_SPITUREN = 0x00000400,
    SPI_OPEN2_IGNROV = 0x00000200,
    SPI_OPEN2_IGNTUR = 0x00000100,
    SPI_OPEN2_AUDEN = 0x00000080,
    SPI_OPEN2_AUDMONO = 0x00000008,
    SPI_OPEN2_AUDMOD = 0x00000003,
    SPI_OPEN2_AUDMOD_DSP = 0x00000003,
    SPI_OPEN2_AUDMOD0 = 0x00000001,
    SPI_OPEN2_AUDMOD_LJ = 0x00000001,
    SPI_OPEN2_AUDMOD1 = 0x00000002,
    SPI_OPEN2_AUDMOD_RJ = 0x00000002,
    SPI_OPEN2_AUDMOD_I2S = 0x0,
} SpiOpen2Flags;

typedef enum
{
    SPI_STAT_SPIRBF = 0x00000001,
    SPI_STAT_SPITBF = 0x00000002,
    SPI_STAT_SPITBE = 0x00000008,
    SPI_STAT_SPIRBE = 0x00000020,
 SPI_STAT_FRMERR = 0x00001000,
    SPI_STAT_SPIROV = 0x00000040,
    SPI_STAT_SPISRMT = 0x00000080,
    SPI_STAT_SPITUR = 0x00000100,
    SPI_STAT_SPIBUSY = 0x00000800,
}SpiStatusFlags;
# 237 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnOpen(SpiChannel chn, SpiOpenFlags oFlags, unsigned int srcClkDiv);
# 282 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnOpenEx(SpiChannel chn, SpiOpenFlags oFlags, SpiOpen2Flags oFlags2, unsigned int srcClkDiv);
# 303 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnClose(SpiChannel chn);
# 336 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnChangeMode(SpiChannel chn, int isMaster, int isFrmMaster, int waitBusy);
# 358 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnDataRdy(SpiChannel chn);
# 378 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffEmpty(SpiChannel chn);
# 399 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffFull(SpiChannel chn);
# 418 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffCount(SpiChannel chn);
# 446 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnReadC(SpiChannel chn);
# 473 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnGetC(SpiChannel chn);
# 508 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnGetS(SpiChannel chn, unsigned int *pBuff, unsigned int nChars);
# 530 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffEmpty(SpiChannel chn);
# 550 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffFull(SpiChannel chn);
# 569 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffCount(SpiChannel chn);
# 591 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnWriteC(SpiChannel chn, unsigned int data);
# 613 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnPutC(SpiChannel chn, unsigned int data);
# 637 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnPutS(SpiChannel chn, unsigned int* pBuff, unsigned int nChars);
# 659 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnGetRov(SpiChannel chn, int clear);
# 681 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnIsBusy(SpiChannel chn);
# 702 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnIsSrEmpty(SpiChannel chn);
# 727 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnGetTur(SpiChannel chn);
# 748 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
SpiStatusFlags SpiChnGetStatus(SpiChannel chn);
# 771 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
volatile void* SpiChnBuffer(SpiChannel chn);







typedef enum
{

    SPI_CONFIG_MSTEN = 0x00000020,
    SPI_CONFIG_SMP_END = 0x00000200,
    SPI_CONFIG_MSSEN = 0x10000000,
    SPI_CONFIG_MSSEN_HIGH = 0x20000000,


    SPI_CONFIG_SLVEN = 0,
    SPI_CONFIG_SSEN = 0x00000080,


    SPI_CONFIG_CKP_HIGH = 0x00000040,
    SPI_CONFIG_CKE_REV = 0x00000100,


    SPI_CONFIG_MODE8 = 0,
    SPI_CONFIG_MODE16 = 0x00000400,
    SPI_CONFIG_MODE32 = 0x00000800,


    SPI_CONFIG_FRMEN = 0x80000000,
    SPI_CONFIG_FSP_IN = 0x40000000,

    SPI_CONFIG_FSP_HIGH = 0x20000000,
    SPI_CONFIG_FSP_CLK1 = 0x00020000,

    SPI_CONFIG_FSP_WIDE = 0x08000000,

    SPI_CONFIG_FRM_CNT1 = (0 << 0x00000018),
    SPI_CONFIG_FRM_CNT2 = (1 << 0x00000018),
    SPI_CONFIG_FRM_CNT4 = (2 << 0x00000018),
    SPI_CONFIG_FRM_CNT8 = (3 << 0x00000018),
    SPI_CONFIG_FRM_CNT16 = (4 << 0x00000018),
    SPI_CONFIG_FRM_CNT32 = (5 << 0x00000018),


    SPI_CONFIG_ENHBUF = 0x00010000,

    SPI_CONFIG_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_CONFIG_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_CONFIG_TBE_EMPTY = (1 << 0x00000002),
    SPI_CONFIG_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_CONFIG_RBF_FULL = (3 << 0x00000000),
    SPI_CONFIG_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_CONFIG_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_CONFIG_RBF_EMPTY = (0 << 0x00000000),


    SPI_CONFIG_DISSDO = 0x00001000,
    SPI_CONFIG_DISSDI = 0x00000010,
    SPI_CONFIG_SIDL = 0x00002000,
    SPI_CONFIG_ON = 0x00008000,
} SpiConfigFlags;

typedef enum {
    SPI_CONFIG2_SPISGNEXT = 0x00008000,
    SPI_CONFIG2_FRMERREN = 0x00001000,
    SPI_CONFIG2_SPIROVEN = 0x00000800,
    SPI_CONFIG2_SPITUREN = 0x00000400,
    SPI_CONFIG2_IGNROV = 0x00000200,
    SPI_CONFIG2_IGNTUR = 0x00000100,
    SPI_CONFIG2_AUDEN = 0x00000080,
    SPI_CONFIG2_AUDMONO = 0x00000008,
    SPI_CONFIG2_AUDMOD = 0x00000003,
    SPI_CONFIG2_AUDMOD_DSP =
                          0x00000003,
    SPI_CONFIG2_AUDMOD0 = 0x00000001,
    SPI_CONFIG2_AUDMOD_LJ = 0x00000001,
    SPI_CONFIG2_AUDMOD1 = 0x00000002,
    SPI_CONFIG2_AUDMOD_RJ = 0x00000002,
    SPI_CONFIG2_AUDMOD_I2S = 0x0,
} SpiConfig2Flags;
# 887 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnConfigure(SpiChannel chn, SpiConfigFlags config);
# 921 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnConfigureEx(SpiChannel chn, SpiConfigFlags config, SpiConfig2Flags config2);
# 943 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnEnable(SpiChannel chn, int enable);
# 976 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnSetBitRate(SpiChannel chn, unsigned int srcClk, unsigned int spiClk);
# 998 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnSetBrg(SpiChannel chn, unsigned int brg);
# 1017 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
extern __inline__ unsigned int __attribute__((always_inline)) SpiBrgVal(unsigned int srcClk, unsigned int spiClk)
{
    return (srcClk / (2 * spiClk)) - 1;
}
# 1030 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 1 3
# 61 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef enum
{

 SPI_CON_MSTEN = 0x00000020,
 SPI_CON_SMP = 0x00000200,


 SPI_CON_SLVEN = 0,
 SPI_CON_SSEN = 0x00000080,


 SPI_CON_CKP = 0x00000040,
 SPI_CON_CKE = 0x00000100,


 SPI_CON_MODE8 = 0,
 SPI_CON_MODE16 = 0x00000400,
 SPI_CON_MODE32 = 0x00000800,


 SPI_CON_FRMEN = 0x80000000,
 SPI_CON_FRMSYNC = 0x40000000,

 SPI_CON_FRMPOL = 0x20000000,
 SPI_CON_SPIFE = 0x00020000,



 SPI_CON_DISSDO = 0x00001000,
 SPI_CON_SIDL = 0x00002000,
 SPI_CON_ON = 0x00008000,
}SpiCtrlFlags;
# 604 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
     unsigned PPRE: 2;
     unsigned SPRE: 3;
     unsigned MSTEN: 1;
     unsigned CKP: 1;
     unsigned SSEN: 1;
     unsigned CKE: 1;
     unsigned SMP: 1;
     unsigned MODE16: 1;
     unsigned MODE32: 1;
     unsigned DISSDO: 1;
     unsigned: 17;
     unsigned FRMSYNC: 1;
  unsigned FRMEN: 1;
 };
 unsigned int w;
}SpiOpenConfig1;
# 678 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
  unsigned: 6;
  unsigned SPIROV: 1;
  unsigned: 6;
  unsigned SIDL: 1;
  unsigned: 1;
  unsigned ON: 1;
  unsigned: 1;
  unsigned SPIFE: 1;
  unsigned: 11;
     unsigned FRMPOL: 1;
 };
 unsigned int w;
}SpiOpenConfig2;
# 721 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
  unsigned ipl: 3;
  unsigned ispl: 2;
  unsigned fie: 1;
  unsigned txie: 1;
  unsigned rxie: 1;
 };
 unsigned int w;
}SpiConfigInt;
# 829 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void OpenSPI1(unsigned int config1, unsigned int config2);
# 1081 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getcSPI1(void);
# 1136 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getsSPI1(unsigned int length, unsigned int *rdptr, unsigned int spi_data_wait);
# 1160 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void putsSPI1(unsigned int length, unsigned int *wrptr);
# 1223 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void OpenSPI2(unsigned int config1, unsigned int config2 );
# 1468 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getcSPI2(void);
# 1521 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getsSPI2(unsigned int length, unsigned int *rdptr, unsigned int spi_data_wait);
# 1545 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void putsSPI2(unsigned int length, unsigned int *wrptr);
# 1031 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 2 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 2 3
# 67 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 1 3
# 58 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 1 3
# 66 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
void OSCConfig(unsigned long int source, unsigned long int mult, unsigned long int post, unsigned long int div);
# 137 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
 typedef enum
 {
  OSC_REFOCON_RLSPEN =(1 << 0x0000000B ) ,
  OSC_REFOCON_OE =(1 << 0x0000000C ),
  OSC_REFOCON_SIDLEN =(1 << 0x0000000D ),
  OSC_REFOCON_ON =(1 << 0x0000000F )
 } OSCREFConfigFlags;

 void OSCREFConfig(unsigned long int source, OSCREFConfigFlags config, unsigned long int div);
# 169 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
extern inline void __attribute__((always_inline)) OSCSetPBDIV(unsigned int oscPbDiv)
{
 unsigned int dma_status;
 unsigned int int_status;
 __OSCCONbits_t oscBits;

 do{int_status=INTDisableInterrupts(); dma_status=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA;}while(0);

 oscBits.w=OSCCON;
 oscBits.PBDIV=0;
 oscBits.w|=oscPbDiv;
 OSCCON=oscBits.w;
 oscBits.w=OSCCON;

 do{SYSKEY = 0x33333333; DmaResume(dma_status); INTRestoreInterrupts(int_status);}while(0);
}
# 59 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 2 3
# 108 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPB(unsigned int sys_clock)
{
    unsigned int pb_div;
    unsigned int pb_clock;

    pb_clock = sys_clock;

    if(sys_clock > 80000000)
    {
        pb_div=(1 << 0x00000013);
        pb_clock >>= 1;
    }
    else
    {
        pb_div=(0 << 0x00000013);
    }

    OSCSetPBDIV(pb_div);

    return pb_clock;
}
# 159 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline void __attribute__((always_inline)) SYSTEMConfigWaitStates(unsigned int sys_clock)
{
# 180 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
}
# 210 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigWaitStatesAndPB(unsigned int sys_clock)
{



    unsigned int pb_clock;
    unsigned int int_status;

    pb_clock = SYSTEMConfigPB(sys_clock);
# 238 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    return pb_clock;
}
# 269 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPerformance(unsigned int sys_clock)
{

    unsigned int pb_clk;



    unsigned int int_status;

    pb_clk = SYSTEMConfigWaitStatesAndPB(sys_clock);

    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);
# 291 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 333 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfig(unsigned int sys_clock, unsigned int flags)
{
    unsigned int pb_clk;
    unsigned int int_status;




    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);

    if(flags & 0x00000001)
    {
        SYSTEMConfigWaitStates(sys_clock);
    }

    if(flags & 0x00000002)
    {
        SYSTEMConfigPB(sys_clock);
    }
# 366 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    pb_clk = sys_clock;
    pb_clk >>= OSCCONbits.PBDIV;

    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 68 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 1 3
# 60 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) OpenCoreTimer(unsigned int period);
# 78 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
 void __attribute__((nomips16)) UpdateCoreTimer(unsigned int period);
# 190 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
unsigned int __attribute__((nomips16)) ReadCoreTimer(void);
# 207 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) WriteCoreTimer(unsigned int timer);
# 69 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 1 3
# 59 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 1 3
# 505 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
void putsUART1(const char* buffer);



void putsUART2(const char* buffer);
# 662 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
unsigned int getsUART1(unsigned int length, char* buffer, unsigned int uart_data_wait);



unsigned int getsUART2(unsigned int length, char* buffer, unsigned int uart_data_wait);
# 60 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 2 3
# 78 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef struct
{
 volatile UINT reg;
 volatile UINT clr;
 volatile UINT set;
 volatile UINT inv;
}REG_SET;

typedef struct
{
 volatile REG_SET mode;
 volatile REG_SET sta;
 volatile REG_SET tx;
 volatile REG_SET rx;
 volatile REG_SET brg;
}UART_REGS;

extern UART_REGS * const uartReg[];
# 108 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{


    UART1 = 0,



    UART3A,
# 135 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
    UART_NUMBER_OF_MODULES

} UART_MODULE;
# 159 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DISABLE = 0x00 ,


    UART_ENABLE = 0x80 ,




    UART_PERIPHERAL = 0x01 ,


    UART_RX = 0x02 ,


    UART_TX = 0x04


} UART_ENABLE_MODE;
# 241 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_ENABLE_HIGH_SPEED = 0x00000008 ,


    UART_INVERT_RECEIVE_POLARITY = 0x00000010 ,


    UART_ENABLE_LOOPBACK = 0x00000040 ,


    UART_ENABLE_WAKE_ON_START = 0x00000080 ,



    UART_ENABLE_PINS_BIT_CLOCK = 0x00000300 ,



    UART_ENABLE_PINS_CTS_RTS = 0x00000200 ,



    UART_ENABLE_PINS_RTS = 0x00000100 ,



    UART_ENABLE_PINS_TX_RX_ONLY = 0x00000000 ,




    UART_RTS_WHEN_RX_NOT_FULL = 0x00000000 ,




    UART_RTS_WHEN_TX_NOT_EMPTY = 0x00000800 ,


    UART_ENABLE_IRDA = 0x00001000 ,



    UART_ENABLE_STOP_ON_IDLE = 0x00002000 ,


    UART_INVERT_TRANSMIT_POLARITY = 0x20000000 ,





    UART_SUPPORT_IEEE_485 = 0x00000900

} UART_CONFIGURATION;
# 320 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_INTERRUPT_ON_TX_BUFFER_EMPTY = 0x8000 ,


    UART_INTERRUPT_ON_TX_DONE = 0x4000 ,



    UART_INTERRUPT_ON_TX_NOT_FULL = 0x0000 ,



    UART_INTERRUPT_ON_RX_FULL = 0x00C0 ,



    UART_INTERRUPT_ON_RX_3_QUARTER_FULL = 0x0080 ,



    UART_INTERRUPT_ON_RX_HALF_FULL = 0x0040 ,



    UART_INTERRUPT_ON_RX_NOT_EMPTY = 0x0000

} UART_FIFO_MODE;
# 370 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DATA_SIZE_8_BITS = 0x0000 ,


    UART_DATA_SIZE_9_BITS = 0x0006 ,


    UART_PARITY_ODD = 0x0004 ,


    UART_PARITY_EVEN = 0x0002 ,


    UART_PARITY_NONE = 0x0000 ,


    UART_STOP_BITS_2 = 0x0001 ,


    UART_STOP_BITS_1 = 0x0000

} UART_LINE_CONTROL_MODE;
# 411 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_TRANSMITTER_NOT_FULL = 0x00000200 ,


    UART_TRANSMITTER_EMPTY = 0x00000100 ,


    UART_RECEIVER_IDLE = 0x00000010 ,


    UART_PARITY_ERROR = 0x00000008 ,




    UART_FRAMING_ERROR = 0x00000004 ,


    UART_OVERRUN_ERROR = 0x00000002 ,


    UART_DATA_READY = 0x00000001

} UART_LINE_STATUS;
# 454 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef union
{

    struct
    {
        UINT16 data8bit : 8;
    };


    struct
    {
        UINT16 data9bit : 9;
    };

    UINT16 __data;
} UART_DATA;
# 511 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTEnable( UART_MODULE id, UART_ENABLE_MODE mode );
# 548 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTConfigure ( UART_MODULE id, UART_CONFIGURATION flags );
# 586 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetFifoMode ( UART_MODULE id, UART_FIFO_MODE mode );
# 633 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTSetDataRate ( UART_MODULE id, UINT32 sourceClock, UINT32 dataRate );
# 673 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTGetDataRate( UART_MODULE id, UINT32 sourceClock );
# 710 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetLineControl ( UART_MODULE id, UART_LINE_CONTROL_MODE mode );
# 755 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_LINE_STATUS __attribute__((always_inline)) UARTGetLineStatus ( UART_MODULE id )
{
    return (UART_LINE_STATUS)(uartReg[id]->sta.reg & ((UART_TRANSMITTER_NOT_FULL | UART_TRANSMITTER_EMPTY | UART_RECEIVER_IDLE | UART_PARITY_ERROR | UART_FRAMING_ERROR | UART_OVERRUN_ERROR | UART_DATA_READY)));
}
# 798 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__ ((always_inline)) UARTTransmitterIsReady ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->sta.reg & 0x00000200));
}
# 845 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendDataByte ( UART_MODULE id, BYTE data )
{
    uartReg[id]->tx.reg = data;
}
# 890 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendData( UART_MODULE id, UART_DATA data )
{
    uartReg[id]->tx.reg = data.__data;
}
# 930 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTTransmissionHasCompleted ( UART_MODULE id )
{
    return (BOOL)(0x00000100 == (uartReg[id]->sta.reg & 0x00000100));
}
# 973 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTReceivedDataIsAvailable ( UART_MODULE id )
{
    return (BOOL)(0x00000001 == (uartReg[id]->sta.reg & 0x00000001));
}
# 1014 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BYTE __attribute__((always_inline)) UARTGetDataByte ( UART_MODULE id )
{
    return (BYTE)uartReg[id]->rx.reg;
}
# 1055 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_DATA __attribute__((always_inline)) UARTGetData ( UART_MODULE id )
{
    UART_DATA data;

    data.__data = uartReg[id]->rx.reg;

    return data;
}
# 1104 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetAddress ( UART_MODULE id, BYTE address, BOOL watch );
# 1153 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTWatchForAddress ( UART_MODULE id, BOOL watch );
# 1190 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendBreak ( UART_MODULE id )
{
    uartReg[id]->sta.set = 0x00000800;
}
# 1239 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTStartAutoDataRateDetect ( UART_MODULE id )
{
   uartReg[id]->mode.set = 0x00000020;
}
# 1284 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTDataRateDetected ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->mode.reg & 0x00000020));
}
# 70 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/wdt.h" 1 3
# 71 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/eth.h" 1 3
# 72 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 1 3
# 76 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
# 86 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
    CAN_NUMBER_OF_MODULES

}CAN_MODULE;
# 103 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0,
 CAN_CHANNEL1,
 CAN_CHANNEL2,
 CAN_CHANNEL3,
 CAN_CHANNEL4,
 CAN_CHANNEL5,
 CAN_CHANNEL6,
 CAN_CHANNEL7,
 CAN_CHANNEL8,
 CAN_CHANNEL9,
 CAN_CHANNEL10,
 CAN_CHANNEL11,
 CAN_CHANNEL12,
 CAN_CHANNEL13,
 CAN_CHANNEL14,
 CAN_CHANNEL15,
 CAN_CHANNEL16,
 CAN_CHANNEL17,
 CAN_CHANNEL18,
 CAN_CHANNEL19,
 CAN_CHANNEL20,
 CAN_CHANNEL21,
 CAN_CHANNEL22,
 CAN_CHANNEL23,
 CAN_CHANNEL24,
 CAN_CHANNEL25,
 CAN_CHANNEL26,
 CAN_CHANNEL27,
 CAN_CHANNEL28,
 CAN_CHANNEL29,
 CAN_CHANNEL30,
 CAN_CHANNEL31,
 CAN_ALL_CHANNELS


}CAN_CHANNEL;
# 155 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_NORMAL_OPERATION,



 CAN_DISABLE,




 CAN_LOOPBACK,




 CAN_LISTEN_ONLY,



 CAN_CONFIGURATION,



 CAN_LISTEN_ALL_MESSAGES = 7

}CAN_OP_MODE;
# 205 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_RX_CHANNEL_NOT_EMPTY = 0x1,
 CAN_RX_CHANNEL_HALF_FULL = 0x2,
 CAN_RX_CHANNEL_FULL = 0x4,
 CAN_RX_CHANNEL_OVERFLOW = 0x8,
 CAN_RX_CHANNEL_ANY_EVENT = 0xF,
 CAN_TX_CHANNEL_EMPTY = 0x100,
 CAN_TX_CHANNEL_HALF_EMPTY = 0x200,
 CAN_TX_CHANNEL_NOT_FULL = 0x400,
 CAN_TX_CHANNEL_ANY_EVENT = 0x700

}CAN_CHANNEL_EVENT;
# 230 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_BIT_1TQ,
 CAN_BIT_2TQ,
 CAN_BIT_3TQ,
 CAN_BIT_4TQ,
 CAN_BIT_5TQ,
 CAN_BIT_6TQ,
 CAN_BIT_7TQ,
 CAN_BIT_8TQ

}CAN_BIT_TQ;
# 258 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


 CAN_BIT_TQ phaseSeg2Tq;



 CAN_BIT_TQ phaseSeg1Tq;



 CAN_BIT_TQ propagationSegTq;





 BOOL phaseSeg2TimeSelect;





 BOOL sample3Time;



 CAN_BIT_TQ syncJumpWidth;

}CAN_BIT_CONFIG;
# 301 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0_EVENT,
 CAN_CHANNEL1_EVENT,
 CAN_CHANNEL2_EVENT,
 CAN_CHANNEL3_EVENT,
 CAN_CHANNEL4_EVENT,
 CAN_CHANNEL5_EVENT,
 CAN_CHANNEL6_EVENT,
 CAN_CHANNEL7_EVENT,
 CAN_CHANNEL8_EVENT,
 CAN_CHANNEL9_EVENT,
 CAN_CHANNEL10_EVENT,
 CAN_CHANNEL11_EVENT,
 CAN_CHANNEL12_EVENT,
 CAN_CHANNEL13_EVENT,
 CAN_CHANNEL14_EVENT,
 CAN_CHANNEL15_EVENT,
 CAN_CHANNEL16_EVENT,
 CAN_CHANNEL17_EVENT,
 CAN_CHANNEL18_EVENT,
 CAN_CHANNEL19_EVENT,
 CAN_CHANNEL20_EVENT,
 CAN_CHANNEL21_EVENT,
 CAN_CHANNEL22_EVENT,
 CAN_CHANNEL23_EVENT,
 CAN_CHANNEL24_EVENT,
 CAN_CHANNEL25_EVENT,
 CAN_CHANNEL26_EVENT,
 CAN_CHANNEL27_EVENT,
 CAN_CHANNEL28_EVENT,
 CAN_CHANNEL29_EVENT,
 CAN_CHANNEL30_EVENT,
 CAN_CHANNEL31_EVENT,
 CAN_NO_EVENT = 0x40,
 CAN_ERROR_EVENT,
 CAN_WAKEUP_EVENT,
 CAN_RX_CHANNEL_OVERFLOW_EVENT,
 CAN_ADDRESS_ERROR_EVENT,
 CAN_BUS_BANDWIDTH_ERROR,
 CAN_TIMESTAMP_TIMER_EVENT,
 CAN_MODE_CHANGE_EVENT,
 CAN_INVALID_MESSAGE_RECEIVED_EVENT

}CAN_EVENT_CODE;
# 357 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER0,
 CAN_FILTER1,
 CAN_FILTER2,
 CAN_FILTER3,
 CAN_FILTER4,
 CAN_FILTER5,
 CAN_FILTER6,
 CAN_FILTER7,
 CAN_FILTER8,
 CAN_FILTER9,
 CAN_FILTER10,
 CAN_FILTER11,
 CAN_FILTER12,
 CAN_FILTER13,
 CAN_FILTER14,
 CAN_FILTER15,
 CAN_FILTER16,
 CAN_FILTER17,
 CAN_FILTER18,
 CAN_FILTER19,
 CAN_FILTER20,
 CAN_FILTER21,
 CAN_FILTER22,
 CAN_FILTER23,
 CAN_FILTER24,
 CAN_FILTER25,
 CAN_FILTER26,
 CAN_FILTER27,
 CAN_FILTER28,
 CAN_FILTER29,
 CAN_FILTER30,
 CAN_FILTER31,




    CAN_NUMBER_OF_FILTERS


}CAN_FILTER;
# 410 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER_MASK0,
 CAN_FILTER_MASK1,
 CAN_FILTER_MASK2,
 CAN_FILTER_MASK3,




    CAN_NUMBER_OF_FILTER_MASKS

}CAN_FILTER_MASK;
# 436 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_EID,
 CAN_SID

}CAN_ID_TYPE;
# 458 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_TX_RTR_ENABLED,
 CAN_TX_RTR_DISABLED

}CAN_TX_RTR;
# 479 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_RX_DATA_ONLY,
 CAN_RX_FULL_RECEIVE

}CAN_RX_DATA_MODE;
# 502 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER_MASK_IDE_TYPE,
 CAN_FILTER_MASK_ANY_TYPE

}CAN_FILTER_MASK_TYPE;
# 523 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_LOWEST_PRIORITY,
 CAN_LOW_MEDIUM_PRIORITY,
 CAN_HIGH_MEDIUM_PRIORITY,
 CAN_HIGHEST_PRIORITY

}CAN_TXCHANNEL_PRIORITY;
# 544 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_DNET_FILTER_DISABLE,
 CAN_DNET_FILTER_SIZE_1_BIT,
    CAN_DNET_FILTER_SIZE_2_BIT,
    CAN_DNET_FILTER_SIZE_3_BIT,
 CAN_DNET_FILTER_SIZE_4_BIT,
 CAN_DNET_FILTER_SIZE_5_BIT,
 CAN_DNET_FILTER_SIZE_6_BIT,
 CAN_DNET_FILTER_SIZE_7_BIT,
 CAN_DNET_FILTER_SIZE_8_BIT,
 CAN_DNET_FILTER_SIZE_9_BIT,
 CAN_DNET_FILTER_SIZE_10_BIT,
 CAN_DNET_FILTER_SIZE_11_BIT,
 CAN_DNET_FILTER_SIZE_12_BIT,
 CAN_DNET_FILTER_SIZE_13_BIT,
 CAN_DNET_FILTER_SIZE_14_BIT,
 CAN_DNET_FILTER_SIZE_15_BIT,
 CAN_DNET_FILTER_SIZE_16_BIT,
 CAN_DNET_FILTER_SIZE_17_BIT,
 CAN_DNET_FILTER_SIZE_18_BIT,

}CAN_DNET_FILTER_SIZE;
# 584 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_TX_EVENT = 0x1,



 CAN_RX_EVENT = 0x2,




 CAN_TIMESTAMP_TIMER_OVERFLOW_EVENT = 0x4,




 CAN_OPERATION_MODE_CHANGE_EVENT = 0x8,



    CAN_RX_OVERFLOW_EVENT = 0x800,




 CAN_SYSTEM_ERROR_EVENT = 0x1000,



 CAN_BUS_ERROR_EVENT = 0x2000,




 CAN_BUS_ACTIVITY_WAKEUP_EVENT = 0x4000,



 CAN_INVALID_RX_MESSAGE_EVENT = 0x8000

}CAN_MODULE_EVENT;
# 643 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

 CAN_TX_RX_WARNING_STATE = 0x10000,


 CAN_RX_WARNING_STATE = 0x20000,


 CAN_TX_WARNING_STATE = 0x40000,


 CAN_RX_BUS_PASSIVE_STATE = 0x80000,


    CAN_TX_BUS_PASSIVE_STATE = 0x100000,


 CAN_TX_BUS_OFF_STATE = 0x200000

}CAN_ERROR_STATE;
# 680 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_STOP_IN_IDLE = 0x2000,



 CAN_RX_TIMESTAMP = 0x100000,



 CAN_WAKEUP_BUS_FILTER = 0x400000

}CAN_MODULE_FEATURES;
# 710 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0_MASK = 0x00000001,
 CAN_CHANNEL1_MASK = 0x00000002,
 CAN_CHANNEL2_MASK = 0x00000004,
 CAN_CHANNEL3_MASK = 0x00000008,
 CAN_CHANNEL4_MASK = 0x00000010,
 CAN_CHANNEL5_MASK = 0x00000020,
 CAN_CHANNEL6_MASK = 0x00000040,
 CAN_CHANNEL7_MASK = 0x00000080,
 CAN_CHANNEL8_MASK = 0x00000100,
 CAN_CHANNEL9_MASK = 0x00000200,
 CAN_CHANNEL10_MASK = 0x00000400,
 CAN_CHANNEL11_MASK = 0x00000800,
 CAN_CHANNEL12_MASK = 0x00001000,
 CAN_CHANNEL13_MASK = 0x00002000,
 CAN_CHANNEL14_MASK = 0x00004000,
 CAN_CHANNEL15_MASK = 0x00008000,
 CAN_CHANNEL16_MASK = 0x00010000,
 CAN_CHANNEL17_MASK = 0x00020000,
 CAN_CHANNEL18_MASK = 0x00040000,
 CAN_CHANNEL19_MASK = 0x00080000,
 CAN_CHANNEL20_MASK = 0x00100000,
 CAN_CHANNEL21_MASK = 0x00200000,
 CAN_CHANNEL22_MASK = 0x00400000,
 CAN_CHANNEL23_MASK = 0x00800000,
 CAN_CHANNEL24_MASK = 0x01000000,
 CAN_CHANNEL25_MASK = 0x02000000,
 CAN_CHANNEL26_MASK = 0x04000000,
 CAN_CHANNEL27_MASK = 0x08000000,
 CAN_CHANNEL28_MASK = 0x10000000,
 CAN_CHANNEL29_MASK = 0x20000000,
 CAN_CHANNEL30_MASK = 0x40000000,
 CAN_CHANNEL31_MASK = 0x80000000,
 CAN_ANYCHANNEL_MASK = 0xFFFFFFFF

}CAN_CHANNEL_MASK;
# 761 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

 CAN_TX_CHANNEL_TRANSMITTING = 0x8,


 CAN_TX_CHANNEL_ERROR = 0x10,


 CAN_TX_CHANNEL_ARBITRATION_LOST = 0x20

}CAN_TX_CHANNEL_CONDITION;
# 785 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


 unsigned SID:11;
 unsigned :21;
}CAN_TX_MSG_SID;
# 805 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{



 unsigned DLC:4;


 unsigned RB0:1;
 unsigned :3;


 unsigned RB1:1;



 unsigned RTR:1;



 unsigned EID:18;



 unsigned IDE:1;




 unsigned SRR:1;
 unsigned :2;

}CAN_MSG_EID;
# 857 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

 struct
 {

  CAN_TX_MSG_SID msgSID;


  CAN_MSG_EID msgEID;


  BYTE data[8];
 };



 UINT32 messageWord[4];

}CANTxMessageBuffer;
# 888 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{

 unsigned SID:11;


 unsigned FILHIT:5;



 unsigned CMSGTS:16;

}CAN_RX_MSG_SID;
# 920 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

 struct
 {

  CAN_RX_MSG_SID msgSID;


  CAN_MSG_EID msgEID;



  BYTE data[8];
 };



    BYTE dataOnlyMsgData[8];



 UINT32 messageWord[4];

}CANRxMessageBuffer;
# 993 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAssignMemoryBuffer(CAN_MODULE module, void * buffer, UINT sizeInBytes);
# 1031 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetOperatingMode(CAN_MODULE module, CAN_OP_MODE opmode);
# 1066 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_OP_MODE CANGetOperatingMode(CAN_MODULE module);
# 1113 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFeature(CAN_MODULE module, CAN_MODULE_FEATURES features, BOOL enable);
# 1156 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANDeviceNetFilter(CAN_MODULE module, CAN_DNET_FILTER_SIZE dncnt);
# 1197 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampValue(CAN_MODULE module, UINT value);
# 1232 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTimeStampValue(CAN_MODULE module);
# 1273 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampPrescalar(CAN_MODULE module, UINT prescalar);
# 1315 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModule(CAN_MODULE module, BOOL enable );
# 1377 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetSpeed(CAN_MODULE module, const CAN_BIT_CONFIG * canBitConfig,
                        UINT32 sysClock, UINT32 canBusSpeed );
# 1424 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsActive(CAN_MODULE module);
# 1469 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANResetChannel(CAN_MODULE module, CAN_CHANNEL channel );
# 1511 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsChannelReset(CAN_MODULE module, CAN_CHANNEL channel );
# 1594 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANUpdateChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 1647 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModuleEvent(CAN_MODULE module, CAN_MODULE_EVENT flags, BOOL enable);
# 1687 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearModuleEvent(CAN_MODULE module, CAN_MODULE_EVENT flags);
# 1743 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableChannelEvent(CAN_MODULE module, CAN_CHANNEL channel,CAN_CHANNEL_EVENT flags, BOOL enable);
# 1797 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_MODULE_EVENT CANGetModuleEvent(CAN_MODULE module);
# 1854 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_EVENT_CODE CANGetPendingEventCode(CAN_MODULE module);
# 1914 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelEventStatus(CAN_MODULE module);
# 1975 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelOverflowStatus(CAN_MODULE module);
# 2048 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_EVENT CANGetChannelEvent(CAN_MODULE module, CAN_CHANNEL channel);
# 2089 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearChannelEvent(CAN_MODULE module, CAN_CHANNEL channel, CAN_CHANNEL_EVENT events);
# 2152 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForTx(CAN_MODULE module,CAN_CHANNEL channel, UINT channelSize,
                             CAN_TX_RTR rtren, CAN_TXCHANNEL_PRIORITY priority);
# 2201 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAbortPendingTx(CAN_MODULE module, CAN_CHANNEL channel);
# 2241 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANFlushTxChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 2301 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_TX_CHANNEL_CONDITION CANGetTxChannelCondition(CAN_MODULE module, CAN_CHANNEL channel);
# 2365 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CANTxMessageBuffer * CANGetTxMessageBuffer(CAN_MODULE module, CAN_CHANNEL channel);
# 2422 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsTxAborted(CAN_MODULE module, CAN_CHANNEL channel);
# 2515 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CANRxMessageBuffer * CANGetRxMessage(CAN_MODULE module, CAN_CHANNEL channel);
# 2577 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForRx(CAN_MODULE module, CAN_CHANNEL channel, UINT32 channelSize,
        CAN_RX_DATA_MODE dataOnly);
# 2658 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilterMask(CAN_MODULE module, CAN_FILTER_MASK mask, UINT32 maskbits,
                                CAN_ID_TYPE idType, CAN_FILTER_MASK_TYPE mide);
# 2715 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilter(CAN_MODULE module, CAN_FILTER filter, UINT32 id, CAN_ID_TYPE filterType);
# 2766 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFilter(CAN_MODULE module, CAN_FILTER filter, BOOL enable);
# 2811 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_FILTER CANGetLatestFilterHit(CAN_MODULE module);
# 2874 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANLinkFilterToChannel(CAN_MODULE module, CAN_FILTER filter, CAN_FILTER_MASK mask, CAN_CHANNEL channel);
# 2917 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsFilterDisabled(CAN_MODULE module, CAN_FILTER filter);
# 2970 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetRxErrorCount(CAN_MODULE module);
# 3016 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTxErrorCount(CAN_MODULE module);
# 3073 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_ERROR_STATE CANGetErrorState(CAN_MODULE module);
# 3104 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalModules(void);
# 3129 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalChannels(void);
# 3154 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalFilters(void);
# 3179 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalMasks(void);
# 73 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 118 "../src/USB/../Common/Compiler.h" 2




# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 1 3
# 123 "../src/USB/../Common/Compiler.h" 2
# 112 "../src/USB/usb.h" 2

# 1 "../src/USB/usb_config.h" 1
# 114 "../src/USB/usb.h" 2

# 1 "../src/USB/usb_common.h" 1
# 86 "../src/USB/usb_common.h"
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/include-fixed/limits.h" 1 3 4
# 87 "../src/USB/usb_common.h" 2
# 170 "../src/USB/usb_common.h"
typedef union
{
    BYTE bitmap;
    struct
    {
        BYTE ep_num: 4;
        BYTE zero_pkt: 1;
        BYTE dts: 1;
        BYTE force_dts: 1;
        BYTE direction: 1;
    }field;

} TRANSFER_FLAGS;
# 244 "../src/USB/usb_common.h"
typedef enum
{

    EVENT_NONE = 0,

    EVENT_DEVICE_STACK_BASE = 1,

    EVENT_HOST_STACK_BASE = 100,


    EVENT_HUB_ATTACH,


    EVENT_STALL,


    EVENT_VBUS_SES_REQUEST,




    EVENT_VBUS_OVERCURRENT,





    EVENT_VBUS_REQUEST_POWER,




    EVENT_VBUS_RELEASE_POWER,
# 285 "../src/USB/usb_common.h"
    EVENT_VBUS_POWER_AVAILABLE,



    EVENT_UNSUPPORTED_DEVICE,



    EVENT_CANNOT_ENUMERATE,



    EVENT_CLIENT_INIT_ERROR,





    EVENT_OUT_OF_MEMORY,


    EVENT_UNSPECIFIED_ERROR,



    EVENT_DETACH,




    EVENT_TRANSFER,



    EVENT_SOF,


    EVENT_RESUME,



    EVENT_SUSPEND,



    EVENT_RESET,





    EVENT_DATA_ISOC_READ,





    EVENT_DATA_ISOC_WRITE,
# 352 "../src/USB/usb_common.h"
    EVENT_OVERRIDE_CLIENT_DRIVER_SELECTION,







    EVENT_1MS,


    EVENT_GENERIC_BASE = 400,

    EVENT_MSD_BASE = 500,

    EVENT_HID_BASE = 600,

    EVENT_PRINTER_BASE = 700,

    EVENT_CDC_BASE = 800,

    EVENT_CHARGER_BASE = 900,

    EVENT_AUDIO_BASE = 1000,

 EVENT_USER_BASE = 10000,




    EVENT_BUS_ERROR = 2147483647

} USB_EVENT;
# 396 "../src/USB/usb_common.h"
typedef struct _transfer_event_data
{
    TRANSFER_FLAGS flags;
    UINT32 size;
    BYTE pid;

} USB_TRANSFER_EVENT_DATA;
# 413 "../src/USB/usb_common.h"
typedef struct _vbus_power_data
{
    BYTE port;
    BYTE current;
} USB_VBUS_POWER_EVENT_DATA;
# 426 "../src/USB/usb_common.h"
typedef struct _override_client_driver_data
{
    WORD idVendor;
    WORD idProduct;
    BYTE bDeviceClass;
    BYTE bDeviceSubClass;
    BYTE bDeviceProtocol;
} USB_OVERRIDE_CLIENT_DRIVER_EVENT_DATA;
# 488 "../src/USB/usb_common.h"
typedef BOOL (*USB_EVENT_HANDLER) ( USB_EVENT event, void *data, unsigned int size );
# 116 "../src/USB/usb.h" 2
# 1 "../src/USB/usb_ch9.h" 1
# 114 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_DEVICE_DESCRIPTOR
{
    BYTE bLength;
    BYTE bDescriptorType;
    WORD bcdUSB;
    BYTE bDeviceClass;
    BYTE bDeviceSubClass;
    BYTE bDeviceProtocol;
    BYTE bMaxPacketSize0;
    WORD idVendor;
    WORD idProduct;
    WORD bcdDevice;
    BYTE iManufacturer;
    BYTE iProduct;
    BYTE iSerialNumber;
    BYTE bNumConfigurations;
} USB_DEVICE_DESCRIPTOR;
# 140 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_CONFIGURATION_DESCRIPTOR
{
    BYTE bLength;
    BYTE bDescriptorType;
    WORD wTotalLength;
    BYTE bNumInterfaces;
    BYTE bConfigurationValue;
    BYTE iConfiguration;
    BYTE bmAttributes;
    BYTE bMaxPower;
} USB_CONFIGURATION_DESCRIPTOR;
# 165 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_INTERFACE_DESCRIPTOR
{
    BYTE bLength;
    BYTE bDescriptorType;
    BYTE bInterfaceNumber;
    BYTE bAlternateSetting;
    BYTE bNumEndpoints;
    BYTE bInterfaceClass;
    BYTE bInterfaceSubClass;
    BYTE bInterfaceProtocol;
    BYTE iInterface;
} USB_INTERFACE_DESCRIPTOR;
# 186 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_ENDPOINT_DESCRIPTOR
{
    BYTE bLength;
    BYTE bDescriptorType;
    BYTE bEndpointAddress;
    BYTE bmAttributes;
    WORD wMaxPacketSize;
    BYTE bInterval;
} USB_ENDPOINT_DESCRIPTOR;
# 236 "../src/USB/usb_ch9.h"
typedef struct
{
    BYTE index;
    BYTE type;
    UINT16 language_id;

} DESCRIPTOR_ID;
# 251 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_OTG_DESCRIPTOR
{
    BYTE bLength;
    BYTE bDescriptorType;
    BYTE bmAttributes;
} USB_OTG_DESCRIPTOR;
# 275 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_STRING_DSC
{
    BYTE bLength;
    BYTE bDescriptorType;

} USB_STRING_DESCRIPTOR;
# 294 "../src/USB/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_DEVICE_QUALIFIER_DESCRIPTOR
{
    BYTE bLength;
    BYTE bType;
    WORD bcdUSB;
    BYTE bDeviceClass;
    BYTE bDeviceSubClass;
    BYTE bDeviceProtocol;
    BYTE bMaxPacketSize0;
    BYTE bNumConfigurations;
    BYTE bReserved;

} USB_DEVICE_QUALIFIER_DESCRIPTOR;
# 317 "../src/USB/usb_ch9.h"
typedef union __attribute__ ((packed))
{

    struct __attribute__ ((packed))
    {
        BYTE bmRequestType;
        BYTE bRequest;
        WORD wValue;
        WORD wIndex;
        WORD wLength;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        WORD_VAL W_Value;
        WORD_VAL W_Index;
        WORD_VAL W_Length;
    };
    struct __attribute__ ((packed))
    {
        unsigned Recipient:5;
        unsigned RequestType:2;
        unsigned DataDir:1;
        unsigned :8;
        BYTE bFeature;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        union
        {
            BYTE bmRequestType;
            struct
            {
                BYTE recipient: 5;
                BYTE type: 2;
                BYTE direction: 1;
            };
        }requestInfo;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        BYTE bDscIndex;
        BYTE bDescriptorType;
        WORD wLangID;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        BYTE_VAL bDevADR;
        BYTE bDevADRH;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        BYTE bConfigurationValue;
        BYTE bCfgRSD;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        BYTE bAltID;
        BYTE bAltID_H;
        BYTE bIntfID;
        BYTE bIntfID_H;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        BYTE bEPID;
        BYTE bEPID_H;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned EPNum:4;
        unsigned :3;
        unsigned EPDir:1;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };



} CTRL_TRF_SETUP, SETUP_PKT, *PSETUP_PKT;
# 117 "../src/USB/usb.h" 2


# 1 "../src/USB/usb_device.h" 1
# 130 "../src/USB/usb_device.h"
typedef enum
{



    DETACHED_STATE
                            = 0x00 ,


    ATTACHED_STATE
                            = 0x01 ,


    POWERED_STATE
                            = 0x02 ,


    DEFAULT_STATE
                            = 0x04 ,





    ADR_PENDING_STATE
                            = 0x08 ,


    ADDRESS_STATE
                            = 0x10 ,





    CONFIGURED_STATE
                            = 0x20
} USB_DEVICE_STATE;



typedef enum
{

    EVENT_CONFIGURED
                            = EVENT_DEVICE_STACK_BASE ,


    EVENT_SET_DESCRIPTOR,





    EVENT_EP0_REQUEST,
# 213 "../src/USB/usb_device.h"
    EVENT_ATTACH,




    EVENT_TRANSFER_TERMINATED

} USB_DEVICE_STACK_EVENTS;
# 252 "../src/USB/usb_device.h"
void USBDeviceInit(void);
# 357 "../src/USB/usb_device.h"
void USBDeviceTasks(void);
# 409 "../src/USB/usb_device.h"
void USBEnableEndpoint(BYTE ep, BYTE options);
# 502 "../src/USB/usb_device.h"
void* USBTransferOnePacket(BYTE ep,BYTE dir,BYTE* data,BYTE len);
# 527 "../src/USB/usb_device.h"
void USBStallEndpoint(BYTE ep, BYTE dir);
# 551 "../src/USB/usb_device.h"
void USBCancelIO(BYTE endpoint);
# 648 "../src/USB/usb_device.h"
void USBDeviceDetach(void);
# 693 "../src/USB/usb_device.h"
void USBDeviceAttach(void);
# 732 "../src/USB/usb_device.h"
void USBCtrlEPAllowStatusStage(void);
# 762 "../src/USB/usb_device.h"
void USBCtrlEPAllowDataStage(void);
# 838 "../src/USB/usb_device.h"
void USBDeferOUTDataStage(void);
extern volatile BOOL USBDeferOUTDataStagePackets;
# 908 "../src/USB/usb_device.h"
void USBDeferStatusStage(void);
extern volatile BOOL USBDeferStatusStagePacket;
# 960 "../src/USB/usb_device.h"
BOOL USBOUTDataStageDeferred(void);
# 1043 "../src/USB/usb_device.h"
void USBDeferINDataStage(void);
extern volatile BOOL USBDeferINDataStagePackets;
# 1097 "../src/USB/usb_device.h"
BOOL USBINDataStageDeferred(void);
# 1167 "../src/USB/usb_device.h"
BOOL USBGetRemoteWakeupStatus(void);
# 1224 "../src/USB/usb_device.h"
USB_DEVICE_STATE USBGetDeviceState(void);
# 1280 "../src/USB/usb_device.h"
BOOL USBGetSuspendState(void);
# 1315 "../src/USB/usb_device.h"
BOOL USBIsDeviceSuspended(void);
# 1358 "../src/USB/usb_device.h"
BOOL USBIsBusSuspended(void);
# 1384 "../src/USB/usb_device.h"
void USBSoftDetach(void);
# 1422 "../src/USB/usb_device.h"
BOOL USBHandleBusy(void* handle);
# 1456 "../src/USB/usb_device.h"
WORD USBHandleGetLength(void* handle);
# 1488 "../src/USB/usb_device.h"
WORD USBHandleGetAddr(void*);
# 1588 "../src/USB/usb_device.h"
void* USBGetNextHandle(BYTE ep_num, BYTE ep_dir);
# 1621 "../src/USB/usb_device.h"
void USBEP0Transmit(BYTE options);
# 1649 "../src/USB/usb_device.h"
void USBEP0SendRAMPtr(BYTE* src, WORD size, BYTE Options);
# 1681 "../src/USB/usb_device.h"
void USBEP0SendROMPtr(BYTE* src, WORD size, BYTE Options);
# 1709 "../src/USB/usb_device.h"
void USBEP0Receive(BYTE* dest, WORD size, void (*function));
# 1744 "../src/USB/usb_device.h"
void* USBTxOnePacket(BYTE ep, BYTE* data, WORD len);
# 1781 "../src/USB/usb_device.h"
void* USBRxOnePacket(BYTE ep, BYTE* data, WORD len);
# 1813 "../src/USB/usb_device.h"
BOOL USB_APPLICATION_EVENT_HANDLER(BYTE address, USB_EVENT event, void *pdata, WORD size);
# 1845 "../src/USB/usb_device.h"
void *USBDeviceCBGetDescriptor ( UINT16 *length,
                                    UINT8 *ptr_type,
                                    DESCRIPTOR_ID *id);
# 1919 "../src/USB/usb_device.h"
typedef struct __attribute__ ((packed))
{
    union __attribute__ ((packed))
    {


        BYTE *bRam;
        const BYTE *bRom;
        WORD *wRam;
        const WORD *wRom;
    }pSrc;
    union __attribute__ ((packed))
    {
        struct __attribute__ ((packed))
        {

            BYTE ctrl_trf_mem :1;
            BYTE reserved :5;


            BYTE includeZero :1;

            BYTE busy :1;
        }bits;
        BYTE Val;
    }info;
    WORD_VAL __attribute__((aligned)) wCount;
}IN_PIPE;

extern volatile IN_PIPE inPipes[];

typedef struct __attribute__ ((packed))
{
    union __attribute__ ((packed))
    {


        BYTE *bRam;
        WORD *wRam;
    }pDst;
    union __attribute__ ((packed))
    {
        struct __attribute__ ((packed))
        {
            BYTE reserved :7;

            BYTE busy :1;
        }bits;
        BYTE Val;
    }info;
    WORD_VAL wCount;
    void (*pFunc)(void);
}OUT_PIPE;
# 1981 "../src/USB/usb_device.h"
extern volatile BOOL RemoteWakeup;
extern volatile BOOL USBBusIsSuspended;
extern volatile USB_DEVICE_STATE USBDeviceState;
extern volatile BYTE USBActiveConfiguration;
# 120 "../src/USB/usb.h" 2
# 130 "../src/USB/usb.h"
# 1 "../src/USB/usb_hal.h" 1
# 104 "../src/USB/usb_hal.h"
# 1 "../src/USB/usb_hal_pic32.h" 1
# 224 "../src/USB/usb_hal_pic32.h"
typedef union
{
    WORD UEP[16];
} _UEP;



typedef union _POINTER
{
    struct
    {
        BYTE bLow;
        BYTE bHigh;

    };
    WORD _word;



    BYTE* bRam;

    WORD* wRam;


    const BYTE* bRom;
    const WORD* wRom;




} POINTER;
# 432 "../src/USB/usb_hal_pic32.h"
typedef union __attribute__ ((packed)) _BD_STAT
{
    struct __attribute__ ((packed)){
        unsigned :2;
        unsigned BSTALL :1;
        unsigned DTSEN :1;
        unsigned :2;
        unsigned DTS :1;
        unsigned UOWN :1;
    };
    struct __attribute__ ((packed)){
        unsigned :2;
        unsigned PID0 :1;
        unsigned PID1 :1;
        unsigned PID2 :1;
        unsigned PID3 :1;

    };
    struct __attribute__ ((packed)){
        unsigned :2;
        unsigned PID :4;
    };
    WORD Val;
} BD_STAT;


typedef union __attribute__ ((packed))__BDT
{
    struct __attribute__ ((packed))
    {
        BD_STAT STAT;
        WORD CNT:10;
        DWORD ADR;
    };
    struct __attribute__ ((packed))
    {
        DWORD res :16;
        DWORD count:10;
    };
    DWORD w[2];
    WORD v[4];
    QWORD Val;
} BDT_ENTRY;


typedef union __USTAT
{
    struct
    {
        unsigned char filler1 :2;
        unsigned char ping_pong :1;
        unsigned char direction :1;
        unsigned char endpoint_number :4;
    };
    BYTE Val;
} USTAT_FIELDS;
# 498 "../src/USB/usb_hal_pic32.h"
     extern volatile BYTE USBActiveConfiguration;
     extern volatile IN_PIPE inPipes[1];
     extern volatile OUT_PIPE outPipes[1];

 extern volatile BDT_ENTRY* pBDTEntryOut[2 +1];
 extern volatile BDT_ENTRY* pBDTEntryIn[2 +1];
# 105 "../src/USB/usb_hal.h" 2
# 152 "../src/USB/usb_hal.h"
void OTGCORE_SetDeviceAddr( BYTE addr );
# 191 "../src/USB/usb_hal.h"
    void OTGCORE_ControlUsbResistors( BYTE flags );
# 235 "../src/USB/usb_hal.h"
BOOL USBHALSessionIsValid( void );
# 261 "../src/USB/usb_hal.h"
BOOL USBHALControlBusPower( BYTE cmd );
# 302 "../src/USB/usb_hal.h"
unsigned long USBHALGetLastError( void );
# 348 "../src/USB/usb_hal.h"
void USBHALHandleBusEvent ( void );
# 389 "../src/USB/usb_hal.h"
BOOL OTGCORE_StallPipe( TRANSFER_FLAGS pipe );
# 426 "../src/USB/usb_hal.h"
BOOL OTGCORE_UnstallPipe( TRANSFER_FLAGS pipe );
# 460 "../src/USB/usb_hal.h"
UINT16 OTGCORE_GetStalledEndpoints ( void );
# 497 "../src/USB/usb_hal.h"
BOOL USBHALFlushPipe( TRANSFER_FLAGS pipe );
# 557 "../src/USB/usb_hal.h"
BOOL USBHALTransferData ( TRANSFER_FLAGS flags,
                          void *buffer,
                          unsigned int size );
# 597 "../src/USB/usb_hal.h"
BOOL USBHALSetEpConfiguration ( BYTE ep_num, UINT16 max_pkt_size, UINT16 flags );
# 647 "../src/USB/usb_hal.h"
BOOL USBHALInitialize ( unsigned long flags );
# 131 "../src/USB/usb.h" 2
# 255 "../src/USB/usb_device.c" 2
# 1 "../src/USB/../HardwareProfile.h" 1
# 46 "../src/USB/../HardwareProfile.h"
# 1 "../src/USB/../HardwareProfile - PIC32MX460F512L PIM.h" 1
# 47 "../src/USB/../HardwareProfile.h" 2
# 256 "../src/USB/usb_device.c" 2

# 1 "../src/USB/../USB/usb_device_local.h" 1
# 88 "../src/USB/../USB/usb_device_local.h"
# 1 "../src/USB/../USB/usb_config.h" 1
# 89 "../src/USB/../USB/usb_device_local.h" 2
# 101 "../src/USB/../USB/usb_device_local.h"
typedef union
{
    struct
    {
        unsigned char ping_pong_state :1;
        unsigned char transfer_terminated :1;
    } bits;
    BYTE Val;
} EP_STATUS;
# 258 "../src/USB/usb_device.c" 2
# 282 "../src/USB/usb_device.c"
volatile USB_DEVICE_STATE USBDeviceState;
volatile BYTE USBActiveConfiguration;
volatile BYTE USBAlternateInterface[2];
volatile BDT_ENTRY *pBDTEntryEP0OutCurrent;
volatile BDT_ENTRY *pBDTEntryEP0OutNext;
volatile BDT_ENTRY *pBDTEntryOut[2 +1];
volatile BDT_ENTRY *pBDTEntryIn[2 +1];
volatile BYTE shortPacketStatus;
volatile BYTE controlTransferState;
volatile IN_PIPE inPipes[1];
volatile OUT_PIPE outPipes[1];
volatile BYTE *pDst;
volatile BOOL RemoteWakeup;
volatile BOOL USBBusIsSuspended;
volatile USTAT_FIELDS USTATcopy;
volatile BYTE endpoint_number;
volatile BOOL BothEP0OutUOWNsSet;
volatile EP_STATUS ep_data_in[2 +1];
volatile EP_STATUS ep_data_out[2 +1];
volatile BYTE USBStatusStageTimeoutCounter;
volatile BOOL USBDeferStatusStagePacket;
volatile BOOL USBStatusStageEnabledFlag1;
volatile BOOL USBStatusStageEnabledFlag2;
volatile BOOL USBDeferINDataStagePackets;
volatile BOOL USBDeferOUTDataStagePackets;
# 326 "../src/USB/usb_device.c"
volatile BDT_ENTRY BDT[((2 + 1) * 4)] __attribute__ ((aligned (512)));




volatile CTRL_TRF_SETUP SetupPkt ;
volatile BYTE CtrlTrfData[8] ;
# 356 "../src/USB/usb_device.c"
    extern const USB_DEVICE_DESCRIPTOR device_dsc;






    extern const BYTE *const USB_CD_Ptr[];


extern const BYTE *const USB_SD_Ptr[];
# 378 "../src/USB/usb_device.c"
BOOL USER_USB_CALLBACK_EVENT_HANDLER(int event, void *pdata, WORD size);


static void USBCtrlEPService(void);
static void USBCtrlTrfSetupHandler(void);
static void USBCtrlTrfInHandler(void);
static void USBCheckStdRequest(void);
static void USBStdGetDscHandler(void);
static void USBCtrlEPServiceComplete(void);
static void USBCtrlTrfTxService(void);
static void USBCtrlTrfRxService(void);
static void USBStdSetCfgHandler(void);
static void USBStdGetStatusHandler(void);
static void USBStdFeatureReqHandler(void);
static void USBCtrlTrfOutHandler(void);
static void USBConfigureEndpoint(BYTE EPNum, BYTE direction);
static void USBWakeFromSuspend(void);
static void USBSuspend(void);
static void USBStallHandler(void);
# 466 "../src/USB/usb_device.c"
void USBDeviceInit(void)
{
    BYTE i;

    {IEC1CLR = 0x00000008;};


    U1EIR = 0xFF;;


    U1IR = 0xFF;;


    U1EP0 = 0;

    { UINT8 i; UINT32 *p = (UINT32*)&U1EP1; for(i=0;i<2;i++) { *p = 0; p += 4; } };

    {U1CNFG1 = 0;U1EIE = 0x9F;U1IE = 0x99 | 0x04 | 0x02; U1OTGCON &= 0x000F; U1OTGCON |= 0x00;};


    U1PWRCbits.USBPWR = 1;;


    {U1BDTP3 = (((DWORD)((_paddr_t)(BDT) & 0x1fffffff)) >> 24); U1BDTP2 = (((DWORD)((_paddr_t)(BDT) & 0x1fffffff)) >> 16); U1BDTP1 = (((DWORD)((_paddr_t)(BDT) & 0x1fffffff)) >> 8);};


    for(i=0;i<(sizeof(BDT)/sizeof(BDT_ENTRY));i++)
    {
        BDT[i].Val = 0x00;
    }


    U1CONbits.PPBRST = 1;


    U1ADDR = 0x00;


    U1CONbits.PKTDIS = 0;


    U1CONbits.PPBRST = 0;


    while(U1IRbits.TRNIF == 1)
    {
        (U1IR = (1 << 3));

        inPipes[0].info.Val = 0;
        outPipes[0].info.Val = 0;
        outPipes[0].wCount.Val = 0;
    }



    USBStatusStageEnabledFlag1 = TRUE;
    USBStatusStageEnabledFlag2 = TRUE;

    USBDeferINDataStagePackets = FALSE;
    USBDeferOUTDataStagePackets = FALSE;
    USBBusIsSuspended = FALSE;



 for(i = 0; i < (BYTE)(2 +1u); i++)
 {
  pBDTEntryIn[i] = 0u;
  pBDTEntryOut[i] = 0u;
  ep_data_in[i].Val = 0u;
        ep_data_out[i].Val = 0u;
 }


    pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];

    U1EP0 = 0x0C|0x01;

    BDT[0].ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
    BDT[0].CNT = 8;
    BDT[0].STAT.Val = 0x80|0x00|0x04;


    USBActiveConfiguration = 0;


    USBDeviceState = DETACHED_STATE;
}
# 664 "../src/USB/usb_device.c"
    void __attribute__((interrupt(),vector(30))) _USB1Interrupt( void )




{
    BYTE i;
# 781 "../src/USB/usb_device.c"
    if(USBDeviceState == ATTACHED_STATE)
    {
# 792 "../src/USB/usb_device.c"
        if(!0)
        {
            U1IR = 0xFF;;



            U1IEbits.URSTIE = 1;
            U1IEbits.IDLEIE = 1;
            USBDeviceState = POWERED_STATE;
        }
    }
# 818 "../src/USB/usb_device.c"
    if(U1OTGIRbits.ACTVIF && U1OTGIEbits.ACTVIE)
    {
        (U1OTGIR = (1 << 4));



            USBWakeFromSuspend();

    }




    if(U1PWRCbits.USUSPEND==1)
    {
        INTClearFlag(INT_USB);;
        return;
    }
# 847 "../src/USB/usb_device.c"
    if(U1IRbits.URSTIF && U1IEbits.URSTIE)
    {
        USBDeviceInit();



        {IEC1SET = 0x00000008;};

        USBDeviceState = DEFAULT_STATE;
# 865 "../src/USB/usb_device.c"
        (U1IR = (1 << 0));
    }




    if(U1IRbits.IDLEIF && U1IEbits.IDLEIE)
    {




            USBSuspend();


        (U1IR = (1 << 4));
    }

    if(U1IRbits.SOFIF)
    {
        if(U1IEbits.SOFIE)
        {
            USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SOF,0,1);
        }
        (U1IR = (1 << 2));
# 914 "../src/USB/usb_device.c"
            if(USBStatusStageTimeoutCounter != 0u)
            {
                USBStatusStageTimeoutCounter--;
            }





            if(USBStatusStageTimeoutCounter == 0)
            {
                USBCtrlEPAllowStatusStage();
            }

    }

    if(U1IRbits.STALLIF && U1IEbits.STALLIE)
    {
        USBStallHandler();
    }

    if(U1IRbits.UERRIF && U1IEbits.UERRIE)
    {
        USER_USB_CALLBACK_EVENT_HANDLER(EVENT_BUS_ERROR,0,1);
        U1EIR = 0xFF;;





            (U1IR = (1 << 1));

    }






    if(USBDeviceState < DEFAULT_STATE)
    {
     INTClearFlag(INT_USB);;
     return;
 }




    if(U1IEbits.TRNIE)
    {
     for(i = 0; i < 4u; i++)
  {
      if(U1IRbits.TRNIF)
      {

                USTATcopy.Val = U1STAT;
                endpoint_number = USTATcopy.endpoint_number;

                (U1IR = (1 << 3));




                    if(USTATcopy.direction == 0)
                    {
                        ep_data_out[endpoint_number].bits.ping_pong_state ^= 1;
                    }
                    else
                    {
                        ep_data_in[endpoint_number].bits.ping_pong_state ^= 1;
                    }




                if(endpoint_number == 0)
                {
                    USBCtrlEPService();
                }
                else
                {
                    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER,(BYTE*)&USTATcopy.Val,0);
                }
      }
      else
       break;
  }
 }

    INTClearFlag(INT_USB);;
}
# 1055 "../src/USB/usb_device.c"
void USBEnableEndpoint(BYTE ep, BYTE options)
{
    unsigned char* p;



    if(options & 0x08)
    {
        USBConfigureEndpoint(ep, 0);
    }
    if(options & 0x04)
    {
        USBConfigureEndpoint(ep, 1);
    }





        p = (unsigned char*)(&U1EP0+(4*ep));



    *p = options;
}
# 1172 "../src/USB/usb_device.c"
void* USBTransferOnePacket(BYTE ep,BYTE dir,BYTE* data,BYTE len)
{
    volatile BDT_ENTRY* handle;


    if(dir != 0)
    {

        handle = pBDTEntryIn[ep];
    }
    else
    {

        handle = pBDTEntryOut[ep];
    }



    if(handle == 0)
    {
     return 0;
 }
# 1206 "../src/USB/usb_device.c"
    handle->ADR = ((DWORD)((_paddr_t)(data) & 0x1fffffff));
    handle->CNT = len;
    handle->STAT.Val &= 0x40;
    handle->STAT.Val |= 0x80 | (0x08 & 0x08);


    if(dir != 0)
    {

        ((BYTE_VAL*)&pBDTEntryIn[ep])->Val ^= 0x0008;;
    }
    else
    {

        ((BYTE_VAL*)&pBDTEntryOut[ep])->Val ^= 0x0008;;
    }
    return (void*)handle;
}
# 1249 "../src/USB/usb_device.c"
void USBStallEndpoint(BYTE ep, BYTE dir)
{
    BDT_ENTRY *p;

    if(ep == 0)
    {



        pBDTEntryEP0OutNext->CNT = 8;
        pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
        pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
        pBDTEntryIn[0]->STAT.Val = 0x80|0x04;

    }
    else
    {
        p = (BDT_ENTRY*)(&BDT[(4*ep+2*dir+0)]);
        p->STAT.Val |= 0x04 | 0x80;





        p = (BDT_ENTRY*)(&BDT[(4*ep+2*dir+1)]);
        p->STAT.Val |= 0x04 | 0x80;

    }
}
# 1302 "../src/USB/usb_device.c"
void USBCancelIO(BYTE endpoint)
{
    if(U1CONbits.PKTDIS == 1)
    {


     pBDTEntryIn[endpoint]->Val &= 0x40;
     pBDTEntryIn[endpoint]->Val ^= 0x40;






        ((BYTE_VAL*)&pBDTEntryIn[endpoint])->Val ^= 0x0008;;

     pBDTEntryIn[endpoint]->STAT.Val &= 0x40;
     pBDTEntryIn[endpoint]->STAT.Val ^= 0x40;

    }
}
# 1420 "../src/USB/usb_device.c"
void USBDeviceDetach(void)
{






    {

         U1CON = 0;


         U1IE = 0;


         USBDeviceState = DETACHED_STATE;
# 1464 "../src/USB/usb_device.c"
          return;
    }
# 1485 "../src/USB/usb_device.c"
}
# 1525 "../src/USB/usb_device.c"
void USBDeviceAttach(void)
{

    if(USBDeviceState == DETACHED_STATE)
    {
        if(1 == 1)
        {

            U1CON = 0;


            U1IE = 0;



            {U1CNFG1 = 0;U1EIE = 0x9F;U1IE = 0x99 | 0x04 | 0x02; U1OTGCON &= 0x000F; U1OTGCON |= 0x00;};

            { IEC1SET = 0x00000008; IPC7CLR=0x00FF0000; IPC7SET=0x00100000; INTEnableSystemMultiVectoredInt(); INTEnableInterrupts(); };


            while(!U1CONbits.USBEN){U1CONbits.USBEN = 1;}


            USBDeviceState = ATTACHED_STATE;




        }
    }
}
# 1589 "../src/USB/usb_device.c"
void USBCtrlEPAllowStatusStage(void)
{





    if(USBStatusStageEnabledFlag1 == FALSE)
    {
        USBStatusStageEnabledFlag1 = TRUE;
        if(USBStatusStageEnabledFlag2 == FALSE)
        {
            USBStatusStageEnabledFlag2 = TRUE;



            if(controlTransferState == 2)
            {
                pBDTEntryIn[0]->CNT = 0;
                pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
            }
            else if(controlTransferState == 1)
            {
          BothEP0OutUOWNsSet = FALSE;




          pBDTEntryEP0OutCurrent->CNT = 8;
          pBDTEntryEP0OutCurrent->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
          pBDTEntryEP0OutCurrent->STAT.Val = 0x80|0x04;
          BothEP0OutUOWNsSet = TRUE;



          pBDTEntryEP0OutNext->CNT = 8;
          pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
          pBDTEntryEP0OutNext->STAT.Val = 0x80;
            }
        }
    }
}
# 1659 "../src/USB/usb_device.c"
void USBCtrlEPAllowDataStage(void)
{
    USBDeferINDataStagePackets = FALSE;
    USBDeferOUTDataStagePackets = FALSE;

    if(controlTransferState == 2)
    {

        pBDTEntryEP0OutNext->CNT = 8;
        pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&CtrlTrfData) & 0x1fffffff));
        pBDTEntryEP0OutNext->STAT.Val = 0x80|0x40|(0x08 & 0x08);
    }
    else
    {


  if(SetupPkt.wLength < inPipes[0].wCount.Val)
  {
   inPipes[0].wCount.Val = SetupPkt.wLength;
  }
  USBCtrlTrfTxService();




  pBDTEntryIn[0]->ADR = ((DWORD)((_paddr_t)(&CtrlTrfData) & 0x1fffffff));
  pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
    }
}
# 1712 "../src/USB/usb_device.c"
static void USBConfigureEndpoint(BYTE EPNum, BYTE direction)
{
    volatile BDT_ENTRY* handle;



    handle = (volatile BDT_ENTRY*)&BDT[0];
    handle += (4*EPNum+2*direction+0u);

    handle->STAT.UOWN = 0;




    if(direction == 0)
    {
        pBDTEntryOut[EPNum] = handle;
    }
    else
    {
        pBDTEntryIn[EPNum] = handle;
    }


        handle->STAT.DTS = 0;
        (handle+1)->STAT.DTS = 1;
# 1754 "../src/USB/usb_device.c"
}
# 1785 "../src/USB/usb_device.c"
static void USBCtrlEPServiceComplete(void)
{




    U1CONbits.PKTDIS = 0;





    if(inPipes[0].info.bits.busy == 0)
    {
        if(outPipes[0].info.bits.busy == 1)
        {
            controlTransferState = 2;
# 1812 "../src/USB/usb_device.c"
            if(USBDeferOUTDataStagePackets == FALSE)
            {
                USBCtrlEPAllowDataStage();
            }



            USBStatusStageEnabledFlag2 = FALSE;
            USBStatusStageEnabledFlag1 = FALSE;
        }
        else
        {




            pBDTEntryEP0OutNext->CNT = 8;
            pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
            pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
            pBDTEntryIn[0]->STAT.Val = 0x80|0x04;
        }
    }
    else
    {
  if(SetupPkt.DataDir == (0x80>>7))
  {
   controlTransferState = 1;
# 1852 "../src/USB/usb_device.c"
   if(USBDeferINDataStagePackets == FALSE)
            {
                USBCtrlEPAllowDataStage();
   }
# 1877 "../src/USB/usb_device.c"
            USBStatusStageEnabledFlag2 = FALSE;
            USBStatusStageEnabledFlag1 = FALSE;
            if(USBDeferStatusStagePacket == FALSE)
            {
                USBCtrlEPAllowStatusStage();
            }
  }
  else
  {
# 1896 "../src/USB/usb_device.c"
   controlTransferState = 2;


   pBDTEntryEP0OutNext->CNT = 8;
   pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
   pBDTEntryEP0OutNext->STAT.Val = 0x80|0x04;


            USBStatusStageEnabledFlag2 = FALSE;
            USBStatusStageEnabledFlag1 = FALSE;
   if(USBDeferStatusStagePacket == FALSE)
            {
                USBCtrlEPAllowStatusStage();
            }
  }

    }

}
# 1937 "../src/USB/usb_device.c"
static void USBCtrlTrfTxService(void)
{
    BYTE byteToSend;



    byteToSend = 8;
    if(inPipes[0].wCount.Val < (BYTE)8)
    {
        byteToSend = inPipes[0].wCount.Val;






        if(shortPacketStatus == 0)
        {
            shortPacketStatus = 1;
        }
        else if(shortPacketStatus == 1)
        {
            shortPacketStatus = 2;
        }
    }



    inPipes[0].wCount.Val = inPipes[0].wCount.Val - byteToSend;




    pBDTEntryIn[0]->CNT = byteToSend;



    pDst = (volatile BYTE*)CtrlTrfData;
    if(inPipes[0].info.bits.ctrl_trf_mem == 0x00)
    {
        while(byteToSend)
        {
            *pDst++ = *inPipes[0].pSrc.bRom++;
            byteToSend--;
        }
    }
    else
    {
        while(byteToSend)
        {
            *pDst++ = *inPipes[0].pSrc.bRam++;
            byteToSend--;
        }
    }
}
# 2018 "../src/USB/usb_device.c"
static void USBCtrlTrfRxService(void)
{
    BYTE byteToRead;
    BYTE i;



    byteToRead = pBDTEntryEP0OutCurrent->CNT;





    if(byteToRead > outPipes[0].wCount.Val)
    {
        byteToRead = outPipes[0].wCount.Val;
    }

 outPipes[0].wCount.Val = outPipes[0].wCount.Val - byteToRead;



    for(i=0;i<byteToRead;i++)
    {
        *outPipes[0].pDst.bRam++ = CtrlTrfData[i];
    }



    if(outPipes[0].wCount.Val > 0)
    {
        pBDTEntryEP0OutNext->CNT = 8;
        pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&CtrlTrfData) & 0x1fffffff));
        if(pBDTEntryEP0OutCurrent->STAT.DTS == 0)
        {
            pBDTEntryEP0OutNext->STAT.Val = 0x80|0x40|(0x08 & 0x08);
        }
        else
        {
            pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08);
        }
    }
    else
    {



        pBDTEntryEP0OutNext->CNT = 8;
        pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));



        pBDTEntryEP0OutNext->STAT.Val = 0x80|0x04;






        if(outPipes[0].pFunc != (0L))
        {
# 2087 "../src/USB/usb_device.c"
                outPipes[0].pFunc();

        }
        outPipes[0].info.bits.busy = 0;
# 2104 "../src/USB/usb_device.c"
        if(USBDeferStatusStagePacket == FALSE)
        {
            USBCtrlEPAllowStatusStage();
        }
    }

}
# 2131 "../src/USB/usb_device.c"
static void USBStdSetCfgHandler(void)
{
    BYTE i;


    inPipes[0].info.bits.busy = 1;


    { UINT8 i; UINT32 *p = (UINT32*)&U1EP1; for(i=0;i<2;i++) { *p = 0; p += 4; } };


    memset((void*)&BDT[0], 0x00, sizeof(BDT));


    U1CONbits.PPBRST = 1;




 for(i = 0; i < (BYTE)(2 +1u); i++)
 {
  ep_data_in[i].Val = 0u;
        ep_data_out[i].Val = 0u;
 }


    memset((void*)&USBAlternateInterface,0x00,2);


    U1CONbits.PPBRST = 0;

    pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];


    pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[0];
    pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;


    USBActiveConfiguration = SetupPkt.bConfigurationValue;


    if(USBActiveConfiguration == 0)
    {

        USBDeviceState = ADDRESS_STATE;
    }
    else
    {

        USER_USB_CALLBACK_EVENT_HANDLER(EVENT_CONFIGURED,(void*)&USBActiveConfiguration,1);




        USBDeviceState = CONFIGURED_STATE;
    }
}
# 2206 "../src/USB/usb_device.c"
static void USBStdGetDscHandler(void)
{
    if(SetupPkt.bmRequestType == 0x80)
    {
        inPipes[0].info.Val = 0x00 | 0x80 | 0x40;

        switch(SetupPkt.bDescriptorType)
        {
            case 0x01:



                    inPipes[0].pSrc.bRom = (const BYTE*)&device_dsc;

                inPipes[0].wCount.Val = sizeof(device_dsc);
                break;
            case 0x02:



                    inPipes[0].pSrc.bRom = *(USB_CD_Ptr+SetupPkt.bDscIndex);





                inPipes[0].wCount.byte.LB = *(inPipes[0].pSrc.bRom+2);
                inPipes[0].wCount.byte.HB = *(inPipes[0].pSrc.bRom+3);
                break;
            case 0x03:



                if(SetupPkt.bDscIndex<3)
                {

                    inPipes[0].pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);

                    inPipes[0].wCount.Val = *inPipes[0].pSrc.bRom;
                }
# 2255 "../src/USB/usb_device.c"
                else
                {
                    inPipes[0].info.Val = 0;
                }
                break;
            default:
                inPipes[0].info.Val = 0;
                break;
        }
    }
}
# 2282 "../src/USB/usb_device.c"
static void USBStdGetStatusHandler(void)
{
    CtrlTrfData[0] = 0;
    CtrlTrfData[1] = 0;

    switch(SetupPkt.Recipient)
    {
        case (0x00):
            inPipes[0].info.bits.busy = 1;




            if(1 == 1)
            {
                CtrlTrfData[0]|=0x01;
            }

            if(RemoteWakeup == TRUE)
            {
                CtrlTrfData[0]|=0x02;
            }
            break;
        case (0x01):
            inPipes[0].info.bits.busy = 1;
            break;
        case (0x02):
            inPipes[0].info.bits.busy = 1;



            {
                BDT_ENTRY *p;

                if(SetupPkt.EPDir == 0)
                {
                    p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
                }
                else
                {
                    p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
                }

                if((p->STAT.UOWN == 1) && (p->STAT.BSTALL == 1))
                    CtrlTrfData[0]=0x01;
                break;
            }
    }

    if(inPipes[0].info.bits.busy == 1)
    {
        inPipes[0].pSrc.bRam = (BYTE*)&CtrlTrfData;
        inPipes[0].info.bits.ctrl_trf_mem = 0x01;
        inPipes[0].wCount.v[0] = 2;
    }
}
# 2355 "../src/USB/usb_device.c"
static void USBStallHandler(void)
{
# 2368 "../src/USB/usb_device.c"
    if(U1EP0bits.EPSTALL == 1)
    {

        if((pBDTEntryEP0OutCurrent->STAT.Val == 0x80) && (pBDTEntryIn[0]->STAT.Val == (0x80|0x04)))
        {

            pBDTEntryEP0OutCurrent->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
        }
        U1EP0bits.EPSTALL = 0;
    }

    (U1IR = (1 << 7));
}
# 2398 "../src/USB/usb_device.c"
static void USBSuspend(void)
{
# 2423 "../src/USB/usb_device.c"
    U1OTGIEbits.ACTVIE = 1;
    (U1IR = (1 << 4));





    USBBusIsSuspended = TRUE;






    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SUSPEND,0,0);
}
# 2455 "../src/USB/usb_device.c"
static void USBWakeFromSuspend(void)
{
    USBBusIsSuspended = FALSE;





    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_RESUME,0,0);
# 2475 "../src/USB/usb_device.c"
    U1OTGIEbits.ACTVIE = 0;
# 2495 "../src/USB/usb_device.c"
    {
        (U1OTGIR = (1 << 4));
    }

}
# 2522 "../src/USB/usb_device.c"
static void USBCtrlEPService(void)
{




        USBStatusStageTimeoutCounter = (BYTE)45;



    if((USTATcopy.Val & ~0x04) == 0x00)
    {




            pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[(USTATcopy.Val & 0xFC)>>2];





        pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;

        ((BYTE_VAL*)&pBDTEntryEP0OutNext)->Val ^= 0x0008;


        if(pBDTEntryEP0OutCurrent->STAT.PID == 0xD)
        {
            unsigned char setup_cnt;





            for(setup_cnt = 0; setup_cnt < 8u; setup_cnt++)
            {
                *(BYTE*)((BYTE*)&SetupPkt + setup_cnt) = *(BYTE*)((void *) ((pBDTEntryEP0OutCurrent->ADR) | 0xa0000000));
                pBDTEntryEP0OutCurrent->ADR++;
            }
            pBDTEntryEP0OutCurrent->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));


            USBCtrlTrfSetupHandler();
        }
        else
        {

            USBCtrlTrfOutHandler();
        }
    }
    else if((USTATcopy.Val & ~0x04) == 0x08)
    {


        USBCtrlTrfInHandler();
    }

}
# 2622 "../src/USB/usb_device.c"
static void USBCtrlTrfSetupHandler(void)
{



    shortPacketStatus = 0;
    USBDeferStatusStagePacket = FALSE;
    USBDeferINDataStagePackets = FALSE;
    USBDeferOUTDataStagePackets = FALSE;
    BothEP0OutUOWNsSet = FALSE;
    controlTransferState = 0;
# 2641 "../src/USB/usb_device.c"
    pBDTEntryIn[0]->STAT.Val &= ~(0x80);
    ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0008;
    pBDTEntryIn[0]->STAT.Val &= ~(0x80);
    ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0008;
    pBDTEntryEP0OutNext->STAT.Val &= ~(0x80);

    inPipes[0].info.Val = 0;
    inPipes[0].wCount.Val = 0;
    outPipes[0].info.Val = 0;
    outPipes[0].wCount.Val = 0;





    USBCheckStdRequest();
    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_EP0_REQUEST,0,0);
# 2670 "../src/USB/usb_device.c"
    USBCtrlEPServiceComplete();
}
# 2694 "../src/USB/usb_device.c"
static void USBCtrlTrfOutHandler(void)
{
    if(controlTransferState == 2)
    {
        USBCtrlTrfRxService();
    }
    else
    {


        controlTransferState = 0;






  if(BothEP0OutUOWNsSet == FALSE)
  {
         pBDTEntryEP0OutNext->CNT = 8;
         pBDTEntryEP0OutNext->ADR = ((DWORD)((_paddr_t)(&SetupPkt) & 0x1fffffff));
         pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
  }
  else
  {
   BothEP0OutUOWNsSet = FALSE;
  }
    }
}
# 2747 "../src/USB/usb_device.c"
static void USBCtrlTrfInHandler(void)
{
    BYTE lastDTS;

    lastDTS = pBDTEntryIn[0]->STAT.DTS;


    ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0008;




    if(USBDeviceState == ADR_PENDING_STATE)
    {
        U1ADDR = SetupPkt.bDevADR.Val;
        if(U1ADDR != 0u)
        {
            USBDeviceState=ADDRESS_STATE;
        }
        else
        {
            USBDeviceState=DEFAULT_STATE;
        }
    }


    if(controlTransferState == 1)
    {
        pBDTEntryIn[0]->ADR = ((DWORD)((_paddr_t)(CtrlTrfData) & 0x1fffffff));
        USBCtrlTrfTxService();





        if(shortPacketStatus == 2)
        {


            pBDTEntryIn[0]->STAT.Val = 0x80|0x04;
        }
        else
        {
            if(lastDTS == 0)
            {
                pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
            }
            else
            {
                pBDTEntryIn[0]->STAT.Val = 0x80|0x00|(0x08 & 0x08);
            }
        }
    }
 else
 {



        if(outPipes[0].info.bits.busy == 1)
        {
            if(outPipes[0].pFunc != (0L))
            {
                outPipes[0].pFunc();
            }
            outPipes[0].info.bits.busy = 0;
        }

        controlTransferState = 0;


 }

}
# 2838 "../src/USB/usb_device.c"
static void USBCheckStdRequest(void)
{
    if(SetupPkt.RequestType != (0x00>>5)) return;

    switch(SetupPkt.bRequest)
    {
        case 5:
            inPipes[0].info.bits.busy = 1;
            USBDeviceState = ADR_PENDING_STATE;

            break;
        case 6:
            USBStdGetDscHandler();
            break;
        case 9:
            USBStdSetCfgHandler();
            break;
        case 8:
            inPipes[0].pSrc.bRam = (BYTE*)&USBActiveConfiguration;
            inPipes[0].info.bits.ctrl_trf_mem = 0x01;
            inPipes[0].wCount.v[0] = 1;
            inPipes[0].info.bits.busy = 1;
            break;
        case 0:
            USBStdGetStatusHandler();
            break;
        case 1:
        case 3:
            USBStdFeatureReqHandler();
            break;
        case 10:
            inPipes[0].pSrc.bRam = (BYTE*)&USBAlternateInterface[SetupPkt.bIntfID];
            inPipes[0].info.bits.ctrl_trf_mem = 0x01;
            inPipes[0].wCount.v[0] = 1;
            inPipes[0].info.bits.busy = 1;
            break;
        case 11:
            inPipes[0].info.bits.busy = 1;
            USBAlternateInterface[SetupPkt.bIntfID] = SetupPkt.bAltID;
            break;
        case 7:
            USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SET_DESCRIPTOR,0,0);
            break;
        case 12:
        default:
            break;
    }
}
# 2906 "../src/USB/usb_device.c"
static void USBStdFeatureReqHandler(void)
{
    BDT_ENTRY *p;
    EP_STATUS current_ep_data;

        DWORD* pUEP;
# 2951 "../src/USB/usb_device.c"
    if((SetupPkt.bFeature == 1)&&
       (SetupPkt.Recipient == (0x00)))
    {
        inPipes[0].info.bits.busy = 1;
        if(SetupPkt.bRequest == 3)
            RemoteWakeup = TRUE;
        else
            RemoteWakeup = FALSE;
    }


    if((SetupPkt.bFeature == 0)&&
       (SetupPkt.Recipient == (0x02))&&
       (SetupPkt.EPNum != 0) && (SetupPkt.EPNum <= 2)&&
       (USBDeviceState == CONFIGURED_STATE))
    {


  inPipes[0].info.bits.busy = 1;


        if(SetupPkt.EPDir == 0)
        {
            p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
            current_ep_data.Val = ep_data_out[SetupPkt.EPNum].Val;
        }
        else
        {
            p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
            current_ep_data.Val = ep_data_in[SetupPkt.EPNum].Val;
        }





            if(current_ep_data.bits.ping_pong_state == 0)
            {
                {((BYTE_VAL*)&p)->Val &= ~0x0008;};
            }
            else
            {
                {((BYTE_VAL*)&p)->Val |= 0x0008;};
            }




        if(SetupPkt.EPDir == 0)
        {
            pBDTEntryOut[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
        }
        else
        {
            pBDTEntryIn[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
        }


        if(SetupPkt.bRequest == 3)
        {
            if(p->STAT.UOWN == 1)
            {


                if(SetupPkt.EPDir == 0)
                {
                    ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 1;
                }
                else
                {
                    ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 1;
                }
            }


            p->STAT.Val |= 0x80|0x04;
        }
        else
        {



                ((BYTE_VAL*)&p)->Val ^= 0x0008;;

                if(p->STAT.UOWN == 1)
                {


                    p->STAT.Val &= (~0x80);
                    p->STAT.Val |= 0x40;
                    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
                }
                else
                {

     p->STAT.Val |= 0x40;
                }



                ((BYTE_VAL*)&p)->Val ^= 0x0008;;





                if((current_ep_data.bits.transfer_terminated != 0) || (p->STAT.UOWN == 1))
                {
                    if(SetupPkt.EPDir == 0)
                    {
                        ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 0;
                    }
                    else
                    {
                        ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 0;
                    }

                    p->STAT.Val &= ~(0x80 | 0x40 | 0x04);


                    USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
                }
                else
                {

                    p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
                }
# 3121 "../src/USB/usb_device.c"
                pUEP = (DWORD*)(&U1EP0);
                pUEP += (SetupPkt.EPNum*4);





            *pUEP &= ~0x0002;
        }
    }
}
