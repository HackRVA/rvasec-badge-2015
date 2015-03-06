# 1 "../src/LCDcolor.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../src/LCDcolor.c"
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 1 3
# 49 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 1 3
# 44 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 3
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
# 10 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 1 3



typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
# 31 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 3
extern int errno;
# 11 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 2 3


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
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 2 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 1 3
# 48 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 1 3
# 45 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 3
       
# 49 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3


# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 1 3
# 62 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_1xx_2xx_legacy.h" 1 3
# 37 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_1xx_2xx_legacy.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/p32xxxx.h" 1 3
# 38 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_1xx_2xx_legacy.h" 2 3
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
# 50 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
# 1 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 1 3
# 65 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 3
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
# 51 "/opt/microchip/xc32/v1.31/bin/../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 2 3


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
# 2 "../src/LCDcolor.c" 2
# 1 "../src/S6B33.h" 1
void S6B33_init_device(void);
void S6B33_rect(int x, int y, int width, int height);
void S6B33_pixel(unsigned short pixel);
# 3 "../src/LCDcolor.c" 2
# 1 "../src/LCDcolor.h" 1
void MS(unsigned char ms);

void LCDReset(void);
void LCDInitPins(void);
void LCDBars();
# 4 "../src/LCDcolor.c" 2
# 1 "../src/drbob.h" 1
# 16 "../src/drbob.h"
const static char drbob_data_cmap[256][3] = {
 { 44, 2, 17},
 { 25, 9, 8},
 { 32, 7, 8},
 { 35, 5, 21},
 { 39, 7, 10},
 { 47, 5, 14},
 { 37, 8, 17},
 { 54, 5, 4},
 { 26, 12, 21},
 { 54, 5, 26},
 { 71, 3, 9},
 { 49, 10, 6},
 { 43, 13, 6},
 { 20, 19, 17},
 { 79, 5, 1},
 { 30, 21, 6},
 { 68, 13, 6},
 { 46, 18, 27},
 { 42, 21, 13},
 { 47, 19, 22},
 { 65, 16, 17},
 { 40, 23, 25},
 { 71, 17, 1},
 { 59, 21, 4},
 { 59, 20, 19},
 { 58, 22, 12},
 { 54, 23, 21},
 { 67, 24, 0},
 { 87, 18, 11},
 { 99, 17, 18},
 {102, 19, 5},
 { 91, 23, 1},
 { 82, 26, 13},
 { 90, 23, 27},
 { 61, 31, 36},
 { 80, 27, 20},
 { 53, 34, 34},
 { 80, 28, 27},
 {101, 24, 35},
 { 73, 34, 30},
 { 65, 37, 28},
 {115, 25, 0},
 { 55, 40, 51},
 { 84, 33, 46},
 { 77, 38, 18},
 { 41, 41, 98},
 { 79, 39, 25},
 { 47, 42, 94},
 { 37, 50, 53},
 { 53, 41,100},
 {104, 34, 26},
 { 97, 38, 9},
 { 49, 44, 91},
 {104, 36, 10},
 { 90, 42, 8},
 { 62, 41,107},
 { 76, 43, 48},
 { 96, 40, 32},
 { 98, 41, 26},
 { 94, 41, 39},
 { 54, 48,102},
 { 85, 45, 41},
 { 58, 49, 91},
 { 70, 50, 51},
 { 62, 48, 98},
 {130, 38, 4},
 { 78, 51, 43},
 { 56, 52, 99},
 {128, 41, 20},
 {121, 48, 3},
 {120, 48, 21},
 {119, 48, 33},
 {111, 52, 27},
 { 62, 59,115},
 { 61, 61,107},
 {114, 55, 19},
 { 67, 60,109},
 {112, 54, 36},
 {107, 55, 44},
 {119, 51, 49},
 {104, 59, 36},
 {106, 57, 53},
 { 79, 62,123},
 { 97, 63, 71},
 { 80, 64,116},
 { 78, 69, 78},
 { 99, 65, 56},
 {148, 52, 50},
 {106, 65, 48},
 { 76, 67,118},
 { 81, 67,105},
 { 76, 67,124},
 {135, 62, 6},
 { 72, 70,116},
 {146, 57, 31},
 { 81, 68,114},
 { 88, 71, 70},
 {145, 57, 48},
 {137, 63, 33},
 {137, 63, 47},
 {131, 68, 35},
 { 85, 73,132},
 {124, 70, 49},
 {131, 68, 49},
 {121, 70, 61},
 { 84, 75,127},
 { 86, 77,122},
 { 78, 79,128},
 { 79, 81,123},
 { 95, 78,119},
 { 95, 84,135},
 { 93, 86,123},
 {171, 69, 62},
 {151, 76, 63},
 {155, 77, 47},
 {146, 81, 46},
 {144, 81, 59},
 { 92, 89,135},
 {134, 85, 60},
 {167, 76, 66},
 {176, 76, 52},
 {191, 73, 52},
 {169, 83, 31},
 {166, 83, 40},
 {161, 84, 62},
 {143, 88, 79},
 {184, 81, 36},
 {109, 94,140},
 { 99, 98,143},
 {134, 94, 86},
 {124, 98, 87},
 {111,100,106},
 {129, 96, 99},
 {166, 88, 75},
 {104,100,139},
 {118,100,100},
 {170, 89, 60},
 {170, 90, 51},
 {115,102,122},
 {161, 94, 72},
 {163, 96, 60},
 {154, 98, 73},
 {113,107,140},
 {110,109,150},
 {183,101, 76},
 {184,102, 66},
 {184,102, 88},
 {195,101, 68},
 {120,119,155},
 {177,111, 91},
 {182,112, 70},
 {131,119,159},
 {183,112, 81},
 {141,121,123},
 {178,116, 82},
 {129,124,152},
 {133,124,143},
 {170,118, 95},
 {194,113, 85},
 {198,113, 74},
 {128,128,162},
 {161,124,117},
 {141,139,170},
 {195,131, 97},
 {158,138,143},
 {204,129,104},
 {207,129, 97},
 {155,138,162},
 {218,129, 75},
 {214,129, 88},
 {147,142,164},
 {197,136,112},
 {211,134, 92},
 {188,140,115},
 {206,138, 91},
 {206,142,107},
 {154,152,177},
 {167,154,184},
 {167,156,166},
 {164,157,175},
 {174,158,157},
 {222,150,105},
 {230,149, 96},
 {163,160,185},
 {229,149,105},
 {220,151,115},
 {227,149,116},
 {216,154,116},
 {195,159,157},
 {228,155,100},
 {223,158,111},
 {215,159,132},
 {229,157,112},
 {173,170,194},
 {237,161,100},
 {232,161,124},
 {228,163,125},
 {186,169,192},
 {242,161,116},
 {239,163,108},
 {179,173,191},
 {224,167,127},
 {187,173,182},
 {239,165,119},
 {194,174,175},
 {188,176,175},
 {234,168,121},
 {239,167,129},
 {237,171,132},
 {229,176,146},
 {235,176,133},
 {233,176,139},
 {196,184,193},
 {204,183,185},
 {198,185,185},
 {193,186,205},
 {223,182,183},
 {211,185,198},
 {216,188,189},
 {212,191,194},
 {205,193,202},
 {207,194,194},
 {230,195,183},
 {215,201,209},
 {221,200,202},
 {215,202,202},
 {212,204,224},
 {231,205,196},
 {229,208,191},
 {228,208,210},
 {222,209,218},
 {231,208,204},
 {223,210,210},
 {236,208,193},
 {224,213,200},
 {229,216,217},
 {239,213,220},
 {235,215,219},
 {239,215,212},
 {227,218,233},
 {234,219,211},
 {234,221,222},
 {246,225,228},
 {240,227,228},
 {238,227,236},
 {244,228,222},
 {254,230,223},
 {247,234,234},
 {252,233,239},
 {252,235,230},
 {245,236,244},
 {245,239,238},
 {248,240,232},
 {252,239,239},
 {255,242,244},
 {250,245,244}
 };
const static char drbob_data[] = {
 235,243,243,241,243,243,243,243,247,247,247,247,247,247,247,247,
 247,255,255,255,255,251,251,251,253,255,255,255,255,255,255,255,
 255,255,255,255,252,255,252,255,255,255,255,251,251,251,252,252,
 251,253,251,252,251,252,250,250,250,251,251,255,250,252,251,251,
 251,250,248,250,253,253,253,253,251,252,251,251,250,244,250,250,
 247,244,251,255,247,249,252,252,253,253,251,251,253,253,247,247,
 249,247,252,249,247,245,245,240,240,240,240,232,231,231,232,231,
 232,232,232,232,221,219,221,214,214,221,223,223,212,202,202,202,
 202,202,205,205,
 232,235,232,232,232,232,235,235,235,241,241,247,254,253,247,247,
 247,255,255,255,254,255,247,251,251,255,255,255,255,255,255,255,
 255,255,255,252,255,255,255,254,255,254,251,251,247,247,247,245,
 243,247,251,251,251,253,250,250,239,156,142,215,244,250,250,235,
 200,200,226,250,250,250,249,251,247,244,235,215,142,142,162,176,
 200,215,244,250,251,251,251,251,247,253,251,253,253,253,254,254,
 255,252,255,252,252,249,245,245,245,241,235,235,235,232,232,232,
 225,225,232,225,219,221,221,219,221,232,230,220,202,212,212,212,
 212,202,205,205,
 232,232,232,232,232,232,232,232,232,232,241,241,247,253,253,247,
 247,253,255,251,255,255,254,251,251,255,255,255,255,255,255,255,
 255,255,255,255,255,255,255,255,255,250,250,247,244,243,241,240,
 245,252,252,252,251,251,230,170,142,91,91,91,128,151,151,111,
 106,108,111,155,193,226,215,179,176,156,142,93,93,91,82,91,
 95,106,176,239,250,250,251,251,251,249,249,249,249,251,254,255,
 255,255,252,255,249,249,249,245,245,241,235,235,235,235,235,232,
 225,225,225,221,219,221,219,221,232,230,220,212,220,220,212,212,
 202,202,205,205,
 232,232,232,232,232,232,232,235,235,232,235,241,247,247,253,253,
 247,247,247,247,251,255,254,253,255,255,255,255,255,255,255,255,
 255,255,255,255,255,255,255,255,250,250,250,244,243,243,245,249,
 252,252,252,255,251,244,142,93,93,91,91,101,105,91,89,105,
 105,101,93,93,93,93,93,93,93,108,93,91,105,91,91,89,
 89,91,101,151,215,230,244,251,251,252,252,249,249,253,251,255,
 255,253,255,254,254,249,253,247,243,241,241,241,241,235,235,235,
 225,225,225,221,221,221,221,232,235,224,220,223,223,220,214,212,
 202,202,205,214,
 232,235,241,232,232,232,235,241,241,241,241,243,253,247,253,255,
 253,247,251,253,254,254,255,255,255,255,255,255,255,255,255,255,
 255,255,255,255,255,251,251,251,255,250,250,244,243,247,254,253,
 252,252,251,251,250,176,106,93,91,105,91,91,89,105,93,105,
 107,101,105,91,93,93,93,93,107,93,106,93,107,105,91,93,
 93,89,91,91,73,93,156,230,244,247,247,247,247,251,253,253,
 253,253,247,247,253,253,253,254,247,247,243,243,243,243,243,241,
 235,235,235,232,225,221,225,235,232,225,223,223,221,221,220,212,
 212,212,214,221,
 232,232,235,241,235,241,247,247,243,243,247,247,251,255,255,255,
 255,251,251,253,254,254,255,255,255,255,255,255,255,251,251,251,
 251,255,255,255,255,255,255,255,255,254,254,254,254,255,255,254,
 255,250,250,239,170,89,105,107,107,107,107,107,106,108,108,108,
 108,101,101,110,105,107,105,105,105,106,106,106,106,106,106,93,
 93,91,91,91,89,90,93,142,215,244,250,250,250,247,247,247,
 247,247,247,247,247,253,253,253,253,253,247,247,247,247,247,247,
 247,241,241,235,232,225,232,241,232,232,232,225,221,221,219,219,
 219,221,214,221,
 232,232,232,235,241,241,243,247,247,243,247,247,253,255,255,255,
 255,251,253,251,253,254,254,255,255,255,255,255,251,251,255,255,
 255,255,255,255,255,255,255,254,254,254,255,254,254,255,254,255,
 250,239,193,134,105,105,105,106,107,107,117,117,117,117,117,128,
 111,117,128,143,128,128,117,110,110,107,108,108,108,106,108,106,
 106,108,108,107,107,105,93,93,93,170,239,250,250,250,250,247,
 242,242,247,247,247,247,247,247,247,247,247,247,247,247,247,247,
 247,243,241,235,232,225,241,241,241,241,235,232,225,225,225,225,
 225,225,225,225,
 232,232,232,235,235,235,241,241,243,241,243,247,253,255,255,255,
 255,255,251,251,255,255,255,255,255,255,255,251,251,251,255,252,
 252,252,255,252,255,255,255,254,255,252,255,255,251,251,244,215,
 170,134,106,105,110,110,110,128,134,128,128,143,143,143,143,143,
 148,148,148,148,148,148,148,143,143,128,128,128,128,117,117,117,
 117,111,111,108,107,105,107,107,91,74,155,226,244,244,248,248,
 242,242,250,244,241,241,243,243,244,241,235,235,229,237,243,247,
 247,247,243,241,235,241,241,241,241,241,235,232,232,225,225,225,
 225,225,225,225,
 235,241,235,235,241,241,241,235,243,247,253,251,251,255,255,255,
 255,255,255,255,255,255,255,255,255,254,255,251,251,255,255,255,
 252,252,251,251,251,250,244,215,215,226,239,239,226,215,155,111,
 106,117,128,128,143,143,148,148,160,160,160,160,162,162,162,162,
 162,162,162,162,162,162,162,162,162,162,162,160,160,160,148,148,
 143,134,143,134,128,128,117,108,107,107,93,108,151,215,226,226,
 226,226,226,226,177,162,183,239,244,244,243,237,237,237,243,250,
 247,247,247,243,241,241,241,241,241,243,241,235,232,232,230,232,
 223,223,225,225,
 241,247,251,247,241,241,241,235,243,243,253,255,255,255,255,255,
 255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
 251,251,252,250,244,215,142,105,89,106,134,111,108,106,106,128,
 128,143,151,151,160,162,162,176,183,183,183,193,193,193,193,200,
 193,200,193,193,193,193,200,193,193,193,193,183,183,176,176,176,
 162,162,162,160,148,148,148,143,134,108,107,93,93,93,106,106,
 89,76,67,73,73,73,89,176,226,239,241,237,237,237,242,242,
 247,247,247,247,241,241,243,241,241,241,237,232,232,232,232,232,
 223,223,220,225,
 241,247,247,253,253,241,241,241,243,243,247,255,255,255,255,255,
 255,255,255,255,255,255,255,255,254,255,255,255,255,255,255,250,
 215,177,177,162,134,91,82,89,101,117,106,108,108,117,134,143,
 151,162,162,176,183,193,183,215,193,215,215,215,215,215,215,212,
 215,212,215,215,220,212,215,212,215,200,193,200,200,202,200,200,
 202,193,176,183,176,176,162,160,148,134,128,107,107,93,93,74,
 76,76,74,74,73,73,73,73,93,111,170,230,237,237,237,242,
 242,242,241,243,241,241,243,241,241,241,237,232,232,232,232,230,
 223,220,212,223,
 235,247,251,253,254,247,241,241,241,243,247,255,255,255,255,255,
 255,255,255,255,255,255,255,255,255,255,255,255,250,255,244,176,
 95,82,82,91,82,82,101,101,101,107,117,117,128,143,151,162,
 162,183,200,200,193,200,178,138,156,179,179,156,131,85,156,131,
 178,178,178,176,176,176,170,156,178,183,183,176,176,176,176,170,
 178,176,176,176,176,193,193,176,162,162,162,143,128,108,93,93,
 76,74,74,74,73,91,73,74,74,74,93,215,235,240,240,240,
 237,230,235,232,232,241,243,241,241,241,235,235,232,232,232,223,
 220,220,212,221,
 235,241,243,247,254,255,243,241,241,241,247,251,255,255,255,255,
 255,255,255,255,255,255,255,255,255,255,255,255,250,250,155,84,
 91,91,82,82,91,89,101,105,107,117,117,128,148,160,176,193,
 197,200,200,178,85,42,21,19,36,34,34,26,42,42,34,25,
 39,34,26,21,21,21,36,42,42,26,34,36,36,40,85,63,
 63,85,156,176,200,183,176,179,179,179,176,160,143,128,108,107,
 89,89,74,76,73,73,73,73,73,73,73,134,230,241,241,237,
 237,236,232,225,221,225,241,241,241,235,229,235,232,232,232,223,
 220,220,220,220,
 235,241,243,247,247,254,255,251,243,243,247,251,255,255,255,255,
 255,255,255,255,255,255,255,255,250,250,255,251,239,156,82,95,
 91,84,110,89,105,107,107,106,108,128,143,160,162,183,200,215,
 215,131,42,21,12,25,12,12,11,12,17,17,25,20,16,26,
 16,26,19,21,19,26,8,26,20,20,24,20,26,12,1,8,
 22,22,37,39,63,85,156,178,178,179,176,176,162,148,143,117,
 107,89,76,76,73,73,73,73,73,60,73,106,226,235,241,240,
 241,237,232,223,221,223,230,241,241,235,229,235,232,232,232,223,
 220,212,212,212,
 241,241,243,243,243,243,251,255,253,243,247,251,255,255,255,255,
 255,255,255,255,255,251,251,255,250,250,244,226,111,89,95,82,
 82,89,89,89,93,106,106,108,128,143,160,183,200,215,212,164,
 85,42,17,12,12,12,12,25,26,26,26,26,37,37,37,35,
 28,25,26,19,26,19,12,24,20,20,20,39,26,24,26,16,
 26,28,39,39,39,42,36,42,42,170,176,183,183,162,160,143,
 117,107,91,91,73,73,76,74,73,73,74,73,176,230,239,241,
 241,231,225,223,223,223,223,241,241,235,237,232,232,232,223,220,
 212,212,212,212,
 237,243,243,241,241,241,247,251,253,253,254,255,255,255,255,251,
 251,254,255,255,255,251,251,251,244,179,155,105,90,95,82,82,
 91,89,91,91,105,107,117,128,143,162,183,215,215,164,131,42,
 9,17,17,12,17,12,25,23,40,26,40,26,40,46,61,59,
 59,37,34,26,26,20,26,40,34,37,59,50,56,50,26,29,
 44,68,81,79,61,61,24,21,8,20,85,176,183,193,176,160,
 143,110,101,91,91,76,67,62,67,67,74,64,95,197,226,241,
 235,232,223,223,223,223,223,237,237,235,237,232,232,225,225,220,
 223,220,220,220,
 230,235,235,244,243,243,244,244,243,247,254,255,255,255,255,251,
 251,254,255,255,255,255,251,230,105,91,91,91,95,91,91,91,
 101,89,91,105,107,117,128,143,162,183,215,212,153,42,18,26,
 9,17,17,9,26,36,23,10,22,40,10,46,39,33,43,79,
 97,65,88,46,14,10,25,46,81,24,30,104,103,87,50,29,
 61,68,68,113,71,86,81,22,8,21,18,42,178,183,183,176,
 156,134,108,93,89,73,73,74,74,67,67,67,74,93,162,183,
 225,232,237,223,223,223,224,230,232,230,237,232,232,232,232,223,
 223,221,220,221,
 230,230,235,241,244,244,241,244,244,243,247,254,255,255,255,251,
 253,251,254,255,255,251,215,111,91,91,91,91,91,91,91,91,
 91,110,107,107,117,128,143,162,183,200,212,153,26,17,17,7,
 19,26,22,26,26,39,31,37,33,43,81,99,58,20,43,79,
 119,119,103,99,78,29,44,44,79,79,50,53,87,87,88,78,
 30,97,99,113,97,71,104,57,35,25,24,25,85,176,193,200,
 170,155,134,108,93,89,73,73,74,73,60,67,67,67,73,111,
 200,241,237,229,229,229,224,224,229,229,232,232,232,232,232,225,
 219,221,214,221,
 230,230,235,235,241,244,241,241,241,247,253,254,255,255,255,251,
 252,247,254,255,255,250,156,82,91,91,91,91,91,91,91,91,
 91,107,107,107,128,143,160,183,200,212,156,34,26,25,7,23,
 23,19,9,35,78,88,30,81,81,71,113,116,133,79,30,30,
 113,124,124,116,119,71,44,22,33,113,113,41,65,113,113,104,
 30,71,113,97,113,53,72,78,35,35,61,34,20,85,200,200,
 200,170,148,134,108,93,76,74,74,73,73,76,108,76,49,76,
 200,239,237,229,229,229,224,224,229,232,232,232,232,232,225,221,
 219,213,221,225,
 235,235,232,232,230,235,235,235,241,243,253,254,255,255,255,251,
 252,252,250,254,250,250,142,82,91,91,91,91,91,91,91,91,
 91,105,107,128,143,160,183,200,212,153,19,17,11,11,23,17,
 19,27,39,71,113,113,29,99,125,77,94,124,133,113,30,30,
 103,136,121,120,112,98,68,14,29,114,113,119,65,133,125,113,
 30,71,113,97,99,53,31,77,58,14,104,50,10,34,178,200,
 215,193,162,148,128,108,93,74,74,74,74,67,108,73,49,76,
 193,237,237,229,229,224,224,229,229,232,232,235,232,232,225,219,
 221,224,225,232,
 241,247,241,232,232,232,232,232,235,235,247,255,255,255,255,255,
 252,252,250,254,250,239,134,84,91,91,91,91,84,84,84,91,
 84,107,117,143,160,176,200,212,131,17,36,26,11,25,23,23,
 44,44,58,97,113,119,119,41,141,116,65,94,119,119,99,31,
 41,113,121,121,121,136,99,28,30,97,119,119,94,120,119,113,
 97,31,71,113,113,71,31,77,50,30,104,104,59,36,131,202,
 220,200,193,162,148,128,108,93,74,74,73,67,60,60,73,82,
 215,226,229,229,224,224,229,229,229,229,232,235,232,225,224,225,
 232,232,225,232,
 241,247,247,243,235,235,235,235,235,235,241,251,255,255,255,255,
 247,252,250,254,254,230,109,95,82,128,106,89,91,89,89,89,
 105,107,128,148,162,200,200,153,17,36,12,19,20,16,26,46,
 81,78,50,97,87,133,133,68,68,139,68,41,119,136,124,71,
 31,98,121,121,121,126,136,68,30,70,133,120,120,94,112,112,
 97,30,31,71,103,77,14,77,50,31,31,125,33,12,39,131,
 220,220,215,183,162,143,111,108,93,74,73,67,67,60,73,109,
 223,230,229,224,224,229,229,229,229,229,235,235,235,232,232,232,
 235,232,225,232,
 241,247,247,247,247,247,247,247,253,243,241,243,251,255,255,255,
 252,250,251,254,255,244,156,95,105,84,89,89,89,89,89,105,
 105,117,143,160,176,215,178,42,36,17,19,34,24,16,34,39,
 61,83,61,80,81,99,113,113,41,71,71,30,99,114,124,97,
 38,80,133,121,126,126,120,97,41,72,119,119,114,65,112,112,
 87,31,32,50,50,71,28,81,38,14,35,81,43,18,26,42,
 131,193,200,193,183,160,143,108,108,74,73,74,67,67,95,215,
 230,232,229,224,229,229,229,229,229,237,241,235,235,235,232,232,
 235,232,232,232,
 241,247,247,247,247,247,243,243,253,254,247,241,247,251,255,255,
 254,255,254,254,254,252,223,111,89,89,89,89,89,89,89,105,
 107,128,151,177,193,200,85,36,4,2,12,17,19,34,34,34,
 39,57,46,28,44,53,68,58,41,30,33,32,56,94,119,79,
 29,58,119,121,126,126,121,119,71,51,97,119,114,68,112,112,
 113,32,35,30,50,88,28,79,38,10,39,83,39,21,15,17,
 36,85,200,183,183,183,160,134,111,93,73,74,74,74,109,230,
 232,231,229,237,229,229,229,229,229,237,235,235,235,232,232,232,
 232,232,225,232,
 235,243,243,247,247,253,243,241,243,254,254,243,241,243,247,255,
 254,255,254,254,252,255,250,138,95,84,84,89,89,89,89,105,
 117,143,160,193,212,156,17,4,0,6,2,21,21,26,26,19,
 26,17,43,17,18,18,18,23,26,5,5,16,28,70,99,113,
 29,32,99,120,126,120,121,133,68,31,99,113,114,68,97,112,
 79,10,9,32,58,44,46,38,33,33,40,26,34,15,18,17,
 17,17,85,170,183,193,176,160,134,108,74,74,74,76,160,226,
 230,232,229,237,229,229,229,229,229,235,235,235,235,232,232,235,
 232,225,221,225,
 235,235,241,243,247,247,247,243,241,242,253,253,247,243,243,253,
 251,250,255,254,251,254,252,167,95,84,84,89,89,89,89,106,
 128,148,183,200,202,63,17,3,3,3,8,6,21,26,26,19,
 5,17,19,19,6,12,18,20,10,5,6,0,22,22,71,104,
 30,28,61,94,112,120,94,133,65,14,57,99,71,94,41,104,
 33,39,5,23,63,40,66,56,33,34,20,26,11,5,4,19,
 17,3,1,85,170,183,183,162,143,111,93,74,73,73,162,230,
 230,229,229,237,237,229,237,237,237,237,235,235,235,232,232,235,
 232,221,221,221,
 235,235,232,235,243,243,243,243,243,241,243,247,254,253,243,247,
 251,251,254,255,255,252,252,167,106,84,84,89,89,89,107,117,
 143,160,193,200,131,17,0,0,3,6,3,4,19,19,12,12,
 0,6,17,6,18,2,12,12,12,6,8,2,11,21,57,61,
 56,32,56,71,94,97,68,125,68,10,46,31,68,53,30,30,
 20,17,17,9,40,40,34,34,34,19,5,11,7,7,6,6,
 6,2,8,1,85,179,176,176,160,111,111,93,73,73,142,226,
 235,232,229,237,237,237,237,237,237,237,237,241,235,232,235,235,
 221,221,219,225,
 241,247,235,241,243,243,243,243,243,243,247,247,254,254,251,251,
 251,251,255,254,252,255,253,220,109,84,84,89,89,105,107,128,
 148,176,200,178,17,3,3,3,3,3,3,3,4,12,12,12,
 12,11,17,6,4,2,12,2,11,8,1,1,1,10,26,35,
 37,24,24,29,57,68,68,104,59,18,31,30,53,41,50,35,
 10,17,17,19,26,26,24,17,24,17,7,11,11,7,17,6,
 8,2,8,2,8,138,179,176,170,142,111,108,73,73,111,230,
 232,229,237,237,237,235,237,237,237,237,235,235,232,235,235,232,
 225,221,225,225,
 241,253,241,235,241,243,243,241,241,243,243,247,255,254,255,251,
 255,255,255,254,252,254,254,230,109,84,110,89,105,105,117,128,
 160,193,215,131,6,5,4,0,3,3,3,5,12,25,21,5,
 17,19,25,23,18,1,5,7,11,12,1,1,8,1,17,17,
 24,4,11,20,37,33,50,61,37,25,18,22,32,53,50,35,
 20,19,12,12,12,12,16,22,39,27,42,39,66,46,25,4,
 1,1,1,2,2,36,156,176,179,155,134,93,93,76,111,230,
 223,232,237,237,237,237,237,237,237,235,237,235,235,235,235,232,
 225,225,225,232,
 241,253,247,235,232,244,241,241,241,243,243,247,254,255,255,255,
 255,255,255,255,255,254,252,220,106,84,110,89,105,105,117,143,
 162,200,215,42,5,4,5,3,3,0,5,5,7,25,44,40,
 66,63,46,66,46,32,23,26,11,2,2,1,1,1,4,4,
 17,2,4,4,12,20,20,37,21,12,10,18,32,28,57,20,
 20,4,4,2,12,7,22,24,46,39,80,129,141,118,86,25,
 8,8,4,2,20,7,56,156,170,170,142,108,89,73,134,230,
 230,232,229,237,237,229,237,237,229,237,235,232,232,235,235,235,
 232,225,232,232,
 241,250,250,241,230,235,241,235,243,247,247,255,255,255,255,255,
 255,255,255,255,252,254,254,220,106,84,89,89,105,105,128,151,
 176,215,202,19,12,12,12,12,6,6,5,5,7,32,58,78,
 71,71,77,88,58,61,61,57,28,11,2,1,1,1,6,4,
 19,2,4,4,2,12,12,12,12,2,10,22,39,104,20,14,
 16,26,24,25,24,22,51,46,72,118,171,173,187,173,75,22,
 1,6,6,26,24,17,34,96,176,162,160,108,93,76,111,226,
 230,232,229,229,237,229,229,229,229,235,235,235,232,235,235,235,
 232,232,232,232,
 241,244,250,243,232,235,237,235,241,247,247,255,255,255,255,255,
 255,255,255,255,255,255,255,220,106,84,105,89,105,117,143,160,
 183,215,164,5,12,12,12,6,5,5,5,7,16,78,102,102,
 99,103,103,103,77,77,58,78,58,22,7,12,1,4,6,6,
 6,2,2,4,4,4,12,12,12,7,25,35,50,71,14,22,
 30,14,22,20,32,57,104,157,191,191,191,187,187,187,118,27,
 7,2,11,35,43,33,34,56,176,176,162,128,93,73,95,200,
 230,235,229,235,229,229,229,229,229,232,235,235,235,235,235,235,
 232,232,232,232,
 241,250,247,247,235,232,235,235,241,243,247,253,254,254,255,255,
 255,255,255,255,255,255,251,223,109,109,109,107,106,128,148,162,
 193,212,131,4,4,12,12,19,4,5,11,22,58,102,99,103,
 113,139,139,103,99,99,71,125,104,58,32,31,25,7,4,6,
 5,2,2,2,4,2,11,2,12,11,16,37,35,28,14,28,
 30,25,32,57,102,157,191,191,187,187,187,187,187,175,154,54,
 15,11,19,37,37,81,20,24,156,170,162,143,108,74,76,156,
 223,235,235,235,232,229,229,225,224,229,232,232,235,235,235,235,
 235,229,232,232,
 241,243,243,247,253,247,253,247,241,247,247,253,254,255,255,255,
 255,255,255,255,255,255,255,235,155,90,90,106,107,143,148,176,
 202,212,85,4,12,12,17,19,11,19,25,58,98,94,114,114,
 124,149,152,140,139,124,124,116,116,116,116,103,58,44,14,19,
 21,18,11,11,3,2,4,4,7,10,35,37,50,28,79,71,
 79,71,141,171,209,209,201,201,201,196,187,187,187,190,175,75,
 26,18,24,33,59,59,28,42,156,176,176,148,108,93,62,111,
 226,223,232,232,232,232,225,225,224,225,225,225,232,237,235,232,
 232,232,232,232,
 235,243,243,243,247,247,253,253,253,247,247,247,253,255,255,255,
 255,255,251,255,255,255,255,244,170,109,106,106,117,134,160,183,
 215,212,42,17,4,12,26,19,11,22,53,72,98,114,136,144,
 165,152,152,140,124,139,139,124,124,124,115,116,99,53,31,31,
 10,11,5,3,12,7,5,24,7,32,57,53,53,70,71,116,
 171,173,191,209,201,201,201,187,190,196,187,187,187,190,175,141,
 16,12,25,33,57,59,7,24,132,179,176,155,111,93,74,90,
 176,226,230,225,232,229,229,225,224,224,229,225,232,232,235,235,
 232,232,232,232,
 235,243,243,247,247,247,247,253,254,254,247,247,253,254,255,255,
 255,255,253,254,254,255,254,255,226,109,109,106,117,128,160,183,
 215,212,21,26,17,12,11,11,25,24,53,98,98,136,144,144,
 152,152,152,137,152,152,152,152,154,150,137,136,124,124,136,99,
 41,28,20,20,14,24,34,24,35,50,77,71,141,163,187,209,
 191,211,201,201,196,196,196,196,195,196,187,196,187,190,175,157,
 22,11,12,28,57,50,10,7,138,178,179,156,134,93,67,67,
 90,200,223,223,223,229,229,229,224,229,232,232,225,221,225,232,
 232,225,232,232,
 235,243,243,247,247,247,247,247,253,253,247,247,247,253,255,255,
 255,254,253,254,254,254,255,255,239,111,95,107,117,143,162,193,
 212,178,21,17,12,12,0,7,20,32,77,102,139,145,159,150,
 166,175,187,196,196,196,196,187,185,187,187,175,175,175,175,165,
 152,100,58,35,28,53,53,53,102,139,171,191,209,209,209,208,
 206,206,210,206,208,196,196,195,195,190,196,196,196,190,187,157,
 32,11,10,14,59,79,20,7,85,178,178,170,142,93,74,67,
 67,109,212,230,223,230,223,224,224,224,232,232,225,221,221,221,
 232,232,232,232,
 235,241,241,241,241,243,247,247,253,253,247,247,247,253,255,255,
 255,254,253,253,250,254,255,250,215,109,106,107,117,143,162,200,
 215,131,21,19,12,11,5,7,5,35,78,124,114,152,166,185,
 196,196,196,211,208,208,210,208,210,210,210,210,201,201,196,196,
 191,171,140,92,116,116,140,191,191,209,209,211,208,208,210,210,
 206,206,206,206,206,190,190,190,195,190,196,187,187,190,187,163,
 72,7,10,25,79,79,22,17,61,179,162,170,142,93,73,67,
 67,60,111,215,226,223,223,224,229,224,225,225,225,225,221,213,
 219,221,225,232,
 235,241,241,241,241,241,243,247,251,251,253,243,247,253,255,255,
 254,254,250,253,253,254,250,251,183,106,106,107,117,143,162,200,
 212,131,17,12,12,5,5,5,7,61,71,124,114,150,175,196,
 196,201,201,210,210,210,210,208,210,210,210,210,210,210,210,210,
 210,201,211,201,201,209,201,211,211,211,211,211,210,210,210,210,
 210,206,208,196,206,208,206,190,190,190,190,196,196,190,181,187,
 100,23,5,10,79,79,32,10,61,179,170,170,134,93,73,60,
 67,67,47,74,155,215,223,223,223,225,225,225,225,225,221,213,
 213,214,232,232,
 241,247,241,235,235,241,243,247,247,247,253,247,247,254,255,255,
 254,250,250,253,250,254,250,244,156,95,105,110,128,148,162,200,
 212,131,36,4,12,12,5,7,11,50,70,98,114,163,208,208,
 210,211,211,211,210,210,210,210,210,210,210,210,210,210,210,210,
 210,210,211,211,209,211,211,211,211,210,210,201,210,210,210,211,
 211,196,208,196,208,208,190,190,190,190,190,190,201,174,174,187,
 116,27,4,10,50,79,61,24,40,183,170,162,134,93,76,67,
 67,62,49,60,52,90,170,220,223,223,224,225,225,225,219,213,
 214,225,232,232,
 241,247,247,243,241,243,243,243,243,251,253,253,247,254,254,254,
 253,253,250,248,251,254,250,215,95,105,105,110,128,148,162,200,
 212,85,21,4,4,12,18,4,11,66,70,116,139,163,196,196,
 210,210,210,210,210,210,210,210,208,208,208,210,208,211,210,201,
 211,211,211,201,201,201,201,211,201,201,210,201,201,211,201,211,
 196,208,208,196,196,208,190,206,206,190,190,201,201,174,174,174,
 154,44,7,10,30,79,46,18,40,183,162,162,142,106,76,67,
 62,67,52,47,45,45,90,212,223,223,224,224,224,224,221,221,
 225,232,225,225,
 235,243,243,247,243,243,247,247,247,244,247,253,254,254,254,253,
 253,253,252,251,251,250,226,106,106,105,105,117,128,148,162,193,
 215,83,17,4,12,18,12,12,18,50,77,116,139,175,187,201,
 201,210,210,210,211,210,210,210,210,208,208,210,211,211,211,211,
 211,211,211,211,211,211,201,211,211,201,210,201,201,211,210,196,
 196,210,210,210,190,210,210,210,210,206,190,206,206,174,175,187,
 165,30,10,25,32,29,16,18,34,183,176,170,142,108,74,67,
 67,52,52,47,47,45,111,215,223,225,223,223,224,224,221,225,
 232,232,225,221,
 235,241,241,241,243,243,247,253,253,247,243,247,254,253,253,250,
 247,247,250,244,244,215,111,90,106,105,105,117,128,148,162,193,
 215,63,3,6,4,4,2,11,40,58,102,116,139,171,211,210,
 210,210,211,210,210,210,211,210,208,208,210,211,211,211,211,211,
 211,211,211,211,211,211,201,211,211,211,211,201,210,210,208,208,
 201,210,210,190,190,206,210,190,190,206,206,206,190,174,174,175,
 165,77,22,7,46,79,18,15,34,183,179,170,142,108,74,67,
 47,47,47,47,45,49,111,223,225,225,223,223,223,224,221,232,
 232,232,221,225,
 232,235,241,243,243,247,253,254,250,250,247,247,253,247,247,244,
 244,250,215,142,127,90,95,74,84,105,105,117,128,148,162,193,
 215,83,6,3,2,2,2,18,32,86,98,114,98,163,201,196,
 201,210,210,210,210,210,210,210,210,208,208,210,211,211,211,211,
 211,211,211,211,201,211,201,211,211,211,210,201,210,210,201,211,
 210,208,201,210,201,206,210,190,190,210,206,206,190,174,174,187,
 163,94,22,25,22,79,24,15,18,156,176,176,142,108,93,67,
 47,47,45,45,49,49,90,200,223,225,224,219,223,224,224,232,
 232,232,225,232,
 232,235,243,243,247,247,253,254,250,247,247,247,247,243,247,244,
 244,239,82,82,82,82,82,95,95,89,105,117,143,151,162,193,
 215,131,6,3,6,2,4,12,28,78,125,124,116,171,201,201,
 201,210,210,210,211,210,210,210,210,210,208,210,211,211,211,211,
 211,211,211,211,211,211,211,211,211,211,210,210,210,211,196,211,
 211,210,208,201,206,196,210,210,206,206,206,206,201,174,175,187,
 174,68,22,11,22,38,20,13,18,156,179,176,148,111,74,67,
 60,47,49,49,45,47,62,170,223,223,223,223,223,224,225,232,
 232,232,225,232,
 232,235,241,243,247,247,253,253,254,247,253,253,241,244,237,244,
 239,109,84,82,82,82,84,89,84,105,105,117,143,151,162,193,
 215,164,21,6,6,4,2,18,25,78,125,116,116,175,211,211,
 201,196,187,201,210,210,210,210,210,208,208,210,211,211,211,211,
 211,211,208,201,201,211,211,201,201,211,201,201,210,210,208,211,
 208,210,210,208,190,190,206,196,196,206,201,201,181,150,163,187,
 172,41,25,16,37,37,29,13,42,156,179,176,155,111,74,74,
 60,60,49,45,49,45,47,90,179,219,223,223,230,224,225,232,
 232,225,225,232,
 235,235,241,243,247,253,253,253,254,253,253,247,235,244,239,212,
 111,89,84,82,82,76,84,84,84,84,110,117,128,148,162,193,
 215,164,6,4,4,4,2,2,23,78,102,116,139,171,201,201,
 201,201,201,210,210,210,210,210,211,208,210,210,210,211,211,211,
 211,211,211,211,208,208,196,211,211,211,210,210,210,210,208,208,
 208,208,208,196,208,206,208,208,206,206,196,187,175,163,175,185,
 172,77,14,10,38,35,33,11,42,156,179,176,155,111,74,74,
 60,60,60,45,45,47,45,45,90,179,219,219,223,224,232,225,
 225,221,221,232,
 235,235,241,243,247,253,253,253,254,254,253,247,241,237,239,138,
 82,91,95,90,90,95,84,84,95,89,105,117,143,148,162,193,
 212,164,6,3,6,6,2,7,26,71,103,116,139,171,211,201,
 201,210,210,210,210,210,210,201,210,210,208,210,210,211,211,211,
 211,211,211,211,208,208,211,208,201,210,201,201,201,210,208,208,
 208,208,208,196,208,208,210,208,206,196,196,175,163,154,175,185,
 166,71,20,12,38,38,38,13,42,156,176,176,155,111,74,74,
 60,47,52,45,45,45,45,45,47,142,219,219,224,229,229,225,
 221,221,214,225,
 235,241,243,243,247,253,253,247,253,254,253,247,241,241,244,212,
 109,89,89,90,90,84,89,89,84,95,105,117,134,148,162,193,
 215,131,3,3,2,6,12,4,26,78,125,103,139,171,201,201,
 201,201,196,208,201,210,208,201,210,208,208,210,211,211,208,201,
 210,208,211,208,208,208,208,208,201,201,201,201,201,210,208,208,
 196,208,208,190,208,190,208,196,196,196,196,175,154,154,171,171,
 172,68,10,23,40,59,10,4,26,156,179,176,148,111,74,74,
 60,52,52,47,47,47,47,49,60,134,219,219,224,229,224,219,
 219,214,221,225,
 235,241,241,243,247,247,247,247,253,254,247,243,241,244,247,247,
 230,109,90,82,82,91,91,93,89,105,105,117,134,148,162,200,
 212,131,3,6,6,6,4,7,26,77,116,103,116,171,187,206,
 196,196,196,208,208,208,208,208,208,208,208,210,211,208,208,208,
 208,210,208,196,208,208,208,208,210,210,201,201,201,211,206,206,
 201,206,206,206,208,190,196,196,196,196,201,171,115,141,171,171,
 166,30,16,10,40,32,14,12,26,179,176,170,148,108,93,67,
 67,52,52,47,47,60,47,49,47,52,170,220,232,223,219,213,
 217,220,219,221,
 235,241,241,243,243,243,247,247,253,254,253,243,243,243,243,247,
 250,200,95,82,82,91,89,89,93,105,105,117,134,148,170,200,
 212,164,0,2,13,2,3,13,20,77,102,99,116,171,187,192,
 190,196,196,196,196,208,208,196,208,206,208,206,208,208,208,208,
 208,208,208,196,196,208,208,210,208,210,201,201,201,201,206,206,
 190,190,206,201,196,196,196,196,187,187,187,163,140,140,171,175,
 150,30,14,9,35,29,15,12,26,156,176,170,142,108,93,67,
 67,52,47,47,47,47,49,45,47,45,52,170,223,224,213,224,
 223,220,214,214,
 241,241,241,243,241,235,241,247,253,253,247,247,247,243,243,243,
 244,226,90,95,82,91,84,93,89,105,105,117,134,148,170,200,
 212,202,17,4,2,1,2,13,24,78,102,98,139,171,187,192,
 190,196,196,196,196,208,208,211,208,206,206,206,206,208,196,206,
 208,196,208,196,196,208,208,208,210,208,206,206,206,206,206,206,
 206,190,206,190,196,190,196,196,190,190,190,174,140,140,171,175,
 175,30,10,11,20,20,25,8,42,156,179,170,142,108,93,67,
 67,52,52,47,47,49,45,45,45,45,62,111,220,212,219,223,
 220,212,214,214,
 235,241,235,241,235,235,241,247,247,247,243,247,247,247,247,247,
 250,230,109,95,84,84,89,89,89,105,105,117,134,148,162,200,
 212,214,83,11,4,1,4,15,35,59,72,100,115,175,181,181,
 181,196,196,196,196,196,208,208,208,208,208,206,206,203,190,190,
 196,190,206,206,190,208,208,208,208,196,206,190,206,206,203,206,
 203,190,190,190,190,192,190,185,181,192,181,175,140,114,163,175,
 163,53,7,10,20,26,14,17,63,179,179,170,142,117,93,67,
 67,52,52,47,45,45,45,45,52,52,52,138,179,212,225,221,
 214,214,214,221,
 241,243,241,241,235,235,235,243,247,243,243,247,247,247,247,247,
 247,243,197,90,84,84,91,89,84,89,105,117,134,148,170,200,
 220,214,63,26,7,1,4,15,37,77,53,100,116,171,196,181,
 187,191,187,209,196,196,208,191,208,191,191,201,206,206,206,190,
 208,190,190,190,196,196,196,196,206,208,206,190,206,206,190,203,
 196,201,201,190,201,190,187,181,181,181,175,175,150,114,154,171,
 163,53,15,10,20,24,20,26,56,183,179,170,148,106,93,67,
 67,52,47,47,45,47,47,47,52,170,215,226,223,223,219,214,
 214,214,214,221,
 241,247,247,243,241,235,235,243,247,243,243,243,247,247,247,253,
 254,254,244,155,84,84,84,89,84,89,105,117,134,148,170,200,
 212,204,83,39,15,12,5,18,59,81,77,100,116,173,196,191,
 191,140,140,154,154,171,171,173,191,191,191,201,190,206,206,206,
 208,206,190,190,208,190,196,196,208,208,206,190,206,208,190,201,
 191,157,157,140,173,191,191,187,185,191,171,175,163,123,140,175,
 171,71,12,15,15,20,24,36,56,156,170,170,148,117,93,60,
 52,52,47,45,45,45,47,62,179,223,232,230,229,224,219,219,
 214,221,225,232,
 241,247,247,247,243,247,247,247,247,243,241,241,243,247,247,254,
 254,249,250,226,95,84,84,84,84,105,110,117,134,148,176,200,
 212,129,59,59,24,2,9,11,33,59,31,103,102,173,173,157,
 71,71,51,39,53,34,51,53,102,141,173,187,196,190,206,206,
 208,181,192,192,192,192,192,196,187,187,190,192,190,201,191,157,
 157,75,54,51,54,86,102,100,116,115,157,154,163,114,137,152,
 166,70,15,1,7,7,7,26,43,156,162,170,148,117,89,67,
 52,47,47,47,45,45,62,215,223,231,231,231,224,218,218,221,
 232,232,232,232,
 241,247,247,247,247,247,247,253,253,253,243,243,243,247,247,254,
 249,249,250,239,109,84,84,89,84,105,110,117,134,160,176,200,
 202,86,81,81,61,22,12,26,59,61,50,103,102,173,141,53,
 31,61,41,56,35,32,28,22,32,32,118,174,191,196,190,206,
 206,192,192,190,192,192,181,192,192,196,196,201,201,187,141,75,
 44,34,22,22,27,31,72,72,80,81,83,100,157,139,115,166,
 165,103,22,1,10,7,9,40,83,129,156,170,148,117,93,67,
 67,64,47,45,47,52,176,223,224,229,231,224,219,218,219,229,
 232,225,225,225,
 241,247,247,243,247,247,247,247,247,253,253,243,241,243,248,253,
 253,253,253,244,109,84,84,95,95,105,105,117,143,160,176,200,
 212,86,81,81,104,32,16,32,57,66,51,104,129,129,53,53,
 30,99,99,98,104,31,28,10,21,14,25,104,163,190,187,190,
 190,192,192,192,181,192,181,181,190,190,190,190,196,171,75,14,
 53,27,35,31,32,63,80,102,102,72,53,70,70,141,116,152,
 165,136,28,13,13,10,19,44,81,132,156,170,155,111,93,67,
 64,47,45,45,47,62,170,220,223,230,219,219,219,219,223,229,
 224,224,221,225,
 241,247,247,247,247,247,247,247,253,254,254,253,243,242,242,248,
 253,254,253,239,109,95,82,84,95,105,105,117,143,160,183,200,
 212,129,81,104,104,32,22,46,61,77,53,81,104,71,71,149,
 165,187,191,191,191,171,173,141,54,22,27,58,100,163,187,187,
 190,190,192,192,192,190,192,192,181,181,190,196,191,149,68,68,
 103,113,118,141,150,163,175,175,173,152,103,69,30,53,116,116,
 169,146,29,13,7,10,40,61,81,132,179,170,155,111,93,67,
 60,47,45,45,45,47,62,155,155,178,217,219,219,219,229,229,
 224,224,224,225,
 235,243,243,243,247,247,247,248,253,254,254,254,243,243,242,248,
 248,253,247,239,109,82,84,95,95,105,105,128,143,160,183,193,
 213,153,35,81,104,50,50,31,71,78,51,77,103,98,149,171,
 191,190,206,208,196,191,191,173,140,51,53,58,78,104,163,175,
 187,190,190,190,190,192,192,181,181,190,187,191,133,99,97,116,
 136,171,175,175,191,187,187,187,191,185,175,137,41,30,104,113,
 159,158,71,14,5,16,46,78,86,164,179,170,142,111,93,93,
 60,47,47,45,45,45,45,47,47,90,178,219,223,230,229,229,
 229,229,225,225,
 235,241,241,243,247,247,247,247,247,253,254,254,247,243,242,248,
 248,253,247,244,109,84,91,95,84,105,110,128,143,160,176,200,
 212,153,16,78,78,79,50,71,104,102,51,100,154,139,152,165,
 165,181,174,174,150,150,171,154,140,69,53,57,59,72,116,163,
 191,187,187,192,192,192,181,181,187,187,187,139,103,99,97,114,
 144,140,140,137,150,150,150,175,166,175,186,185,139,70,103,114,
 158,158,68,10,16,39,59,81,104,178,178,170,148,111,93,89,
 60,52,47,47,45,45,49,47,47,111,223,237,229,229,229,229,
 229,224,225,225,
 235,241,243,243,247,247,243,243,247,247,253,254,247,242,247,253,
 253,250,244,239,109,82,91,91,84,89,110,117,143,160,176,200,
 212,132,83,61,50,59,99,113,113,102,69,157,152,114,152,149,
 137,122,154,157,157,171,171,171,139,72,53,50,57,58,72,115,
 163,187,190,192,192,190,192,187,187,187,100,77,51,57,103,94,
 115,137,141,123,150,157,157,140,163,163,172,186,171,139,139,124,
 145,166,114,37,32,39,61,59,129,183,178,170,142,111,93,74,
 60,52,47,47,60,73,45,49,162,226,237,230,224,229,229,229,
 224,225,221,221,
 235,243,243,243,247,243,241,243,247,247,247,253,243,243,243,247,
 250,250,244,223,95,82,82,84,89,84,105,117,134,160,176,200,
 202,153,56,39,35,77,113,113,124,71,69,163,163,163,140,100,
 72,157,157,129,129,104,129,140,102,102,102,32,59,57,77,77,
 141,175,187,190,181,181,192,187,175,118,75,51,51,78,102,102,
 115,118,118,96,88,130,129,141,116,115,163,186,165,136,124,114,
 145,165,144,58,39,61,59,37,132,183,179,170,142,111,108,67,
 60,52,47,45,45,49,67,111,223,230,230,229,224,229,229,224,
 221,221,214,221,
 241,243,241,241,241,241,241,243,247,243,247,253,247,243,242,242,
 248,242,235,138,84,82,82,91,84,89,105,128,143,160,170,179,
 202,153,34,5,20,77,98,149,99,99,124,175,175,163,102,51,
 53,153,161,129,26,37,63,135,96,188,88,57,58,58,77,78,
 102,163,187,190,181,192,190,187,154,104,51,51,31,50,58,104,
 129,66,63,86,86,130,130,130,102,102,139,163,159,136,136,136,
 136,158,158,53,61,59,37,39,96,202,179,170,142,108,74,60,
 89,60,47,47,45,45,52,220,235,240,229,229,229,229,224,225,
 225,221,214,221,
 241,241,235,241,241,241,241,242,244,247,253,253,253,247,242,243,
 248,242,219,138,95,82,84,84,84,84,106,106,134,160,170,183,
 202,153,0,7,24,71,94,124,114,114,149,186,185,171,100,44,
 130,214,232,131,48,48,85,131,135,240,204,51,31,72,77,78,
 81,154,196,190,192,192,181,163,115,77,71,79,71,53,129,180,
 180,63,63,66,86,96,225,246,161,80,125,158,159,159,123,123,
 136,158,144,72,57,28,37,39,56,179,179,170,142,108,74,67,
 60,47,47,45,47,47,183,241,240,234,229,229,237,232,225,225,
 221,221,221,225,
 241,241,235,235,235,241,243,243,244,250,253,253,253,247,243,244,
 237,223,111,84,84,84,84,84,95,95,106,117,128,148,162,183,
 202,164,61,24,10,50,104,133,120,136,165,186,184,174,92,115,
 188,221,225,135,96,63,131,130,180,240,222,157,70,71,77,88,
 80,154,187,190,190,192,181,152,144,139,120,144,133,113,222,235,
 180,48,48,96,96,96,240,227,161,104,116,163,172,159,147,136,
 144,158,158,70,30,39,39,39,83,178,179,155,142,106,76,60,
 52,45,60,60,67,138,230,241,240,240,237,240,229,231,232,232,
 225,225,225,225,
 243,253,241,235,235,241,241,241,244,243,247,247,253,253,243,242,
 215,109,84,84,84,84,89,84,95,95,105,117,128,143,160,176,
 200,164,86,61,39,79,94,124,144,144,165,184,192,190,163,171,
 163,187,173,173,130,86,118,130,191,191,191,149,124,99,103,77,
 75,173,201,190,190,181,181,166,146,150,174,172,166,158,171,222,
 188,135,96,66,118,141,191,187,154,125,150,175,172,172,147,136,
 144,158,159,31,28,20,39,59,83,178,176,155,134,106,76,60,
 60,47,60,52,67,179,237,238,238,238,235,232,232,232,232,231,
 225,221,221,225,
 243,253,243,235,235,241,241,241,241,243,243,243,247,250,248,230,
 111,82,84,73,73,84,89,95,95,89,89,106,117,143,160,176,
 193,164,86,56,28,50,103,144,144,144,166,184,192,190,187,175,
 175,181,189,190,201,201,201,201,187,171,149,144,120,120,119,97,
 41,163,196,192,192,203,181,184,174,189,192,192,186,165,136,146,
 149,171,157,154,163,187,187,181,172,174,175,174,182,184,147,120,
 147,159,147,41,37,20,37,61,153,179,176,155,134,106,73,60,
 60,47,60,49,62,200,237,237,238,238,235,235,232,232,232,225,
 221,221,225,232,
 243,253,243,235,235,243,247,247,247,247,249,249,243,244,242,178,
 90,84,91,91,91,89,93,93,93,95,89,110,117,134,160,176,
 200,164,61,59,37,70,94,149,144,144,165,184,192,190,203,192,
 192,192,189,192,196,187,196,181,174,165,145,126,147,147,136,94,
 68,185,195,195,192,192,203,192,192,192,199,203,203,184,145,123,
 136,163,172,172,196,185,182,181,182,184,184,189,182,169,158,147,
 147,159,158,41,35,16,37,83,164,183,170,155,111,106,73,60,
 60,60,49,60,62,200,230,237,237,237,237,229,229,229,229,224,
 224,229,232,232,
 241,253,247,241,243,243,247,247,247,253,249,249,253,247,242,167,
 84,84,91,91,91,89,93,93,93,95,89,106,117,134,160,176,
 200,202,61,37,28,57,98,158,144,144,166,172,192,190,206,192,
 192,196,187,192,191,175,175,163,150,152,145,159,159,159,136,114,
 41,185,196,195,198,192,203,203,203,198,192,203,203,190,172,150,
 136,163,166,172,172,181,184,184,182,184,182,182,182,168,159,147,
 159,169,158,68,50,33,81,83,178,179,162,142,106,89,73,60,
 60,49,45,64,138,230,237,237,237,229,229,229,229,229,229,229,
 229,229,225,225,
 241,247,243,241,241,241,243,243,247,247,253,254,254,254,248,212,
 111,84,84,82,91,91,76,95,93,95,89,105,117,134,148,162,
 183,200,132,37,32,28,70,149,144,147,172,186,190,190,192,192,
 196,185,175,163,173,157,154,150,154,175,150,181,172,172,152,116,
 103,191,196,195,207,203,203,203,203,203,195,190,206,208,187,175,
 163,154,152,150,166,172,172,172,184,184,184,182,182,169,166,159,
 159,169,158,68,71,79,59,83,179,183,162,142,106,89,73,60,
 60,60,47,90,223,237,237,237,229,229,229,229,229,229,229,229,
 229,224,225,225,
 235,243,235,235,235,235,241,241,243,243,247,253,253,247,247,250,
 226,111,90,95,84,89,84,89,95,95,89,105,106,134,142,162,
 176,202,164,57,58,50,70,136,144,147,166,186,185,187,196,195,
 196,196,175,154,163,154,163,163,187,187,187,192,181,174,150,116,
 116,196,196,195,207,195,195,203,206,206,206,190,190,206,201,201,
 185,175,174,163,163,175,186,195,195,186,186,184,184,186,169,169,
 168,168,145,99,103,79,59,132,202,176,155,134,93,89,73,73,
 60,60,67,200,237,237,238,238,238,237,229,229,229,237,237,237,
 229,224,225,225,
 241,247,243,235,235,235,241,237,237,244,247,247,247,247,247,247,
 244,215,90,95,106,84,84,84,95,95,89,89,106,117,134,155,
 162,197,178,81,53,104,116,144,147,147,166,175,187,190,196,196,
 206,190,190,196,201,201,201,201,196,201,190,192,192,172,150,113,
 125,201,196,196,207,195,195,195,206,206,206,206,206,190,190,203,
 185,187,187,187,175,185,192,186,198,184,186,184,184,184,169,169,
 168,168,136,99,125,71,81,200,179,162,142,111,89,73,73,73,
 73,60,142,226,237,238,238,238,240,240,237,237,237,237,237,229,
 224,224,225,225,
 241,247,247,242,243,243,243,247,247,253,247,247,253,253,253,253,
 248,230,90,95,82,82,91,95,90,95,89,89,106,117,134,160,
 167,200,164,83,115,116,99,147,159,147,166,186,198,190,198,195,
 195,190,192,206,196,206,208,206,210,206,206,203,192,172,150,139,
 154,195,196,196,207,206,206,206,206,206,206,206,206,203,190,203,
 207,207,192,192,192,192,203,203,198,186,184,184,184,184,169,159,
 169,168,147,113,149,71,56,178,179,170,143,106,95,73,73,64,
 64,67,156,230,237,238,238,238,237,235,237,237,237,237,237,229,
 224,224,225,225,
 235,243,243,242,247,243,243,247,247,247,247,247,247,253,253,253,
 248,248,111,90,82,91,84,95,95,110,95,95,106,117,134,151,
 177,197,167,102,137,140,103,144,159,159,186,185,184,198,198,207,
 192,203,203,203,203,206,206,206,206,206,206,203,203,184,166,152,
 171,208,208,208,208,206,206,206,206,206,206,206,203,203,206,206,
 203,206,203,203,192,203,203,203,203,198,203,203,184,184,169,169,
 169,169,147,94,125,116,78,156,179,156,134,106,89,76,67,64,
 64,64,156,230,237,238,238,238,237,237,237,237,237,237,237,229,
 224,224,224,225,
 235,243,243,242,242,247,243,243,243,243,247,247,253,254,254,253,
 253,250,167,90,91,91,76,84,84,84,84,95,106,117,134,151,
 162,193,200,124,136,139,99,126,159,159,159,172,184,189,199,203,
 192,203,203,203,203,206,206,206,206,206,206,203,184,184,145,145,
 187,196,208,196,206,206,206,206,206,206,206,206,206,206,206,206,
 206,206,207,203,203,203,203,203,203,203,198,182,184,184,169,159,
 159,169,147,68,144,137,104,156,176,156,134,95,76,67,64,64,
 64,62,156,223,229,238,238,238,238,237,237,237,229,229,229,224,
 224,224,221,225,
 235,243,247,242,242,247,247,241,241,243,243,247,254,254,253,253,
 247,247,250,155,90,84,84,84,84,84,89,89,106,117,117,143,
 162,200,200,124,144,146,99,137,159,159,145,175,196,189,199,203,
 203,203,203,203,203,203,206,206,206,206,206,203,184,184,159,137,
 209,208,206,196,206,206,206,206,206,206,206,206,206,206,206,206,
 206,206,192,192,203,203,203,203,203,203,198,184,184,184,169,159,
 159,169,147,98,152,165,137,138,176,142,117,89,76,60,64,60,
 60,67,111,212,229,236,238,238,238,237,237,237,229,237,229,224,
 224,224,225,225,
 235,241,241,242,242,247,247,241,241,243,247,253,254,254,253,247,
 247,247,250,239,90,90,84,84,84,84,84,84,95,106,117,143,
 155,183,217,129,166,146,99,113,172,159,145,163,190,199,199,199,
 203,198,203,203,203,203,203,203,203,203,203,198,184,172,145,150,
 208,208,206,206,206,206,190,190,206,206,206,206,206,206,206,206,
 206,192,203,192,203,203,203,203,203,198,198,184,184,184,169,159,
 159,169,137,98,149,165,157,153,162,142,106,89,76,64,64,60,
 60,64,111,200,223,224,231,238,238,238,237,237,229,229,229,224,
 224,224,225,225,
 235,241,241,243,242,247,253,247,243,243,247,253,254,254,253,247,
 247,247,247,250,156,90,90,89,84,84,84,84,95,106,117,134,
 148,176,193,161,158,149,99,98,159,159,123,140,174,189,199,199,
 198,198,198,203,203,203,203,203,206,203,192,184,169,186,137,163,
 208,190,206,206,190,190,181,174,196,206,206,190,190,206,196,206,
 206,206,203,203,203,192,203,203,189,198,184,184,184,169,169,159,
 159,169,123,53,149,171,116,167,160,142,106,76,76,64,89,89,
 60,62,67,193,220,224,231,231,235,241,237,229,229,229,224,224,
 224,229,225,225,
 235,241,241,243,242,247,247,254,247,243,247,253,254,254,254,247,
 247,254,253,248,237,111,89,84,84,84,84,84,95,106,117,134,
 151,162,200,188,115,116,32,71,169,158,124,136,175,181,203,203,
 198,198,203,203,203,203,203,203,203,203,172,169,159,163,145,175,
 208,208,206,190,190,206,190,174,192,208,208,196,190,196,181,190,
 196,206,203,203,206,203,199,199,189,203,189,184,184,169,159,159,
 159,169,139,30,104,116,129,176,148,111,95,76,64,64,60,47,
 47,47,60,90,212,223,224,224,231,237,237,229,224,229,229,224,
 224,229,221,221,
 235,235,241,241,243,247,247,253,247,247,253,253,254,254,254,247,
 247,252,249,249,248,167,109,89,84,84,84,84,95,106,106,134,
 134,151,183,215,173,81,81,97,158,158,124,114,166,181,198,198,
 198,198,198,198,198,203,203,203,192,150,122,159,165,163,145,175,
 196,190,190,190,190,190,192,172,174,181,196,196,185,175,174,150,
 175,181,206,206,203,203,199,199,189,182,182,184,182,172,159,122,
 169,169,145,164,164,129,164,162,143,90,89,76,64,60,67,60,
 47,49,47,67,90,197,223,225,232,229,237,237,237,237,237,229,
 224,224,225,225,
 232,241,241,241,243,243,247,247,247,247,253,253,253,254,254,247,
 247,253,249,254,254,239,138,89,95,89,89,89,89,95,106,117,
 134,151,162,202,212,215,188,133,158,159,124,68,124,158,184,182,
 194,198,184,198,198,198,198,185,150,137,159,166,166,166,145,187,
 196,208,196,201,196,196,196,174,172,185,195,185,122,137,154,154,
 139,163,191,187,199,199,194,199,189,192,182,184,185,186,137,123,
 169,169,161,213,202,197,178,160,134,90,76,76,60,60,60,60,
 60,49,49,47,62,138,197,226,224,224,224,229,229,229,237,237,
 229,229,232,232,
 241,243,241,241,243,243,243,243,243,247,247,253,253,253,254,247,
 247,253,249,252,249,250,179,90,89,89,89,89,89,105,106,110,
 128,142,155,176,200,220,216,171,158,158,136,100,99,139,186,198,
 182,203,190,206,198,207,185,122,150,150,137,175,171,163,150,186,
 208,208,196,192,190,196,196,181,181,185,186,166,122,122,163,163,
 115,140,154,191,190,194,194,194,182,184,184,172,175,149,114,123,
 166,166,188,213,200,183,162,151,111,93,76,67,64,60,60,60,
 60,47,47,47,52,52,95,197,230,232,224,229,229,229,237,237,
 237,237,232,232,
 241,243,241,241,241,243,243,243,243,247,247,247,253,253,247,247,
 247,253,249,249,253,250,197,95,89,89,89,89,89,106,106,106,
 134,134,155,176,193,215,216,188,165,158,114,103,103,114,171,186,
 182,198,198,201,196,166,122,137,165,152,137,154,173,163,115,152,
 185,195,192,203,192,192,196,187,171,163,165,137,137,150,187,187,
 163,123,92,150,175,190,189,182,182,184,172,152,140,124,94,114,
 165,165,188,212,202,183,160,134,106,74,76,64,60,60,60,60,
 47,49,49,47,52,47,49,90,223,235,229,229,229,229,229,229,
 237,229,232,232,
 241,243,243,243,247,241,241,241,241,247,247,247,253,253,247,243,
 247,253,249,249,253,248,197,95,89,89,89,89,89,105,106,117,
 128,134,142,162,176,215,217,216,165,158,116,54,98,118,152,186,
 182,182,192,201,171,94,144,166,165,165,100,75,54,54,75,100,
 144,166,185,196,184,185,187,173,116,30,69,140,150,187,185,181,
 175,115,69,75,154,175,181,174,163,163,152,136,98,70,68,124,
 171,171,188,202,200,162,148,127,106,74,64,60,60,60,60,47,
 47,47,49,52,62,52,47,109,223,232,229,229,237,229,229,224,
 229,229,232,232,
 235,241,243,243,247,247,241,235,241,247,254,253,247,253,243,243,
 247,247,252,249,247,250,151,84,89,89,89,89,89,89,89,105,
 106,117,142,155,176,193,217,216,165,146,116,88,88,88,116,152,
 186,184,175,171,98,152,165,166,159,99,77,54,54,27,54,68,
 68,125,171,175,172,171,116,31,28,30,157,154,174,195,181,181,
 172,154,98,75,100,154,163,150,154,158,136,139,70,70,70,124,
 157,149,204,202,179,162,151,110,95,74,64,60,60,47,47,60,
 47,47,47,52,52,47,47,134,223,223,229,224,237,229,229,224,
 224,229,232,232,
 235,243,243,243,247,247,243,241,241,247,254,254,253,247,241,241,
 243,247,252,249,247,230,110,82,84,89,89,89,89,89,89,105,
 106,134,142,148,162,183,202,213,146,146,99,88,81,88,98,116,
 152,150,137,115,115,165,171,171,140,78,77,27,25,37,32,28,
 50,102,78,58,78,81,78,58,32,157,191,201,201,203,181,181,
 184,175,140,103,31,118,157,154,116,114,94,70,70,53,70,99,
 171,149,202,202,176,160,127,95,76,67,64,60,60,47,47,47,
 47,47,49,52,52,47,49,111,220,223,229,224,229,229,224,219,
 219,229,232,232,
 235,241,241,241,243,247,247,243,241,243,254,254,247,243,235,241,
 247,251,249,249,247,230,95,82,84,89,89,89,89,89,89,105,
 107,117,134,148,162,183,200,218,173,149,70,102,80,78,78,72,
 124,114,115,137,150,165,165,144,58,57,50,35,33,35,37,58,
 32,51,32,35,54,54,58,78,157,190,190,190,189,192,184,185,
 181,172,171,141,72,102,141,70,103,71,98,99,99,103,70,139,
 171,188,202,200,170,143,127,84,76,74,64,60,60,47,60,60,
 47,47,49,52,52,47,49,67,170,225,229,224,224,224,219,219,
 224,229,232,232,
 235,235,235,241,241,247,247,253,247,247,253,254,243,241,241,243,
 247,243,249,249,247,230,109,82,82,84,84,84,89,89,89,105,
 107,117,134,142,160,176,200,213,191,139,103,102,80,80,31,72,
 99,116,149,150,166,165,165,71,16,35,37,33,37,35,59,59,
 58,58,32,35,57,75,72,173,196,192,189,190,189,181,184,181,
 181,169,169,157,77,58,77,70,103,99,99,68,113,103,98,141,
 157,188,202,179,162,143,110,89,76,67,60,60,47,47,64,64,
 47,47,49,52,47,47,47,52,90,225,224,224,224,219,219,224,
 229,229,225,232,
 235,235,235,235,241,245,247,253,253,253,254,254,241,241,241,243,
 243,247,242,247,247,241,155,91,82,84,84,84,89,89,89,89,
 106,117,128,143,148,162,179,212,188,116,102,104,31,79,71,54,
 71,136,152,150,163,166,102,71,20,16,37,16,16,35,35,57,
 57,43,37,46,75,102,163,187,207,192,203,192,203,192,195,191,
 175,171,171,171,104,53,70,70,115,124,114,113,116,99,98,157,
 173,204,202,170,155,134,106,84,76,60,55,49,49,47,52,52,
 47,45,45,47,45,45,49,62,138,221,219,219,221,219,224,229,
 229,219,214,225,
 232,232,232,235,241,245,249,249,247,254,254,254,241,235,241,243,
 247,247,248,248,243,244,167,84,84,89,89,76,84,89,89,89,
 105,108,117,143,148,162,176,200,212,104,102,102,77,77,99,53,
 75,163,150,152,136,103,100,39,20,20,39,20,20,35,61,32,
 37,43,35,51,102,163,175,195,198,207,207,195,172,172,141,139,
 125,103,72,72,58,77,116,140,145,145,137,139,116,98,103,125,
 161,202,179,170,148,111,106,76,76,64,55,55,49,47,52,60,
 47,45,45,47,49,90,142,167,212,223,221,221,225,225,232,225,
 221,219,221,221,
 232,232,232,235,235,245,249,247,247,254,254,254,247,235,235,237,
 247,242,242,243,243,243,138,95,91,84,84,76,76,89,89,89,
 105,107,117,128,148,160,170,200,212,161,78,102,99,99,103,72,
 140,185,185,166,166,116,72,39,16,20,20,24,37,34,37,37,
 35,57,102,157,171,187,187,185,181,163,149,115,92,69,75,58,
 75,51,46,75,75,140,152,165,158,166,158,149,116,103,103,129,
 161,178,176,155,142,117,95,76,67,64,55,55,47,52,67,67,
 47,67,52,90,170,223,232,232,230,229,232,232,232,232,232,232,
 232,225,225,225,
 232,232,232,232,232,232,241,243,247,247,253,254,247,235,241,242,
 247,247,243,243,247,247,138,95,84,84,84,89,89,84,84,89,
 89,105,117,128,143,148,162,183,200,180,104,78,99,113,133,72,
 118,187,185,186,186,149,104,32,16,24,36,61,63,56,61,37,
 10,88,118,149,171,171,154,141,115,98,53,70,51,118,104,22,
 40,36,40,54,137,173,166,166,159,159,165,141,116,103,125,132,
 164,179,170,155,134,106,89,76,67,60,49,49,49,47,52,52,
 52,67,90,200,240,240,240,240,237,236,237,235,235,232,232,232,
 225,225,221,221,
 232,225,232,232,225,232,235,241,243,247,253,254,243,235,241,242,
 247,247,242,248,247,247,179,84,84,89,84,76,84,89,84,84,
 89,105,107,117,128,148,162,176,200,202,86,86,119,133,149,98,
 102,175,174,174,172,171,157,28,31,36,63,135,180,180,180,153,
 86,46,80,77,149,139,116,115,118,161,188,231,231,214,214,135,
 40,40,80,145,165,169,169,172,166,172,169,114,70,77,104,129,
 179,179,155,142,111,89,76,76,67,60,60,60,47,47,64,67,
 67,90,197,235,240,228,240,238,231,229,232,232,232,232,232,232,
 232,221,221,221,
 230,235,241,232,225,232,235,241,243,247,254,247,235,235,241,243,
 243,241,237,248,247,247,200,84,84,89,84,76,84,89,84,84,
 84,105,105,117,128,143,160,162,183,202,153,86,68,113,149,98,
 75,163,175,172,172,154,141,81,46,63,96,153,225,240,235,245,
 245,245,245,240,227,238,249,252,251,249,249,249,247,240,221,96,
 96,81,149,166,172,169,169,172,172,172,172,92,53,104,104,153,
 178,170,155,134,106,76,76,76,67,62,52,60,47,47,64,62,
 62,167,223,230,231,227,228,227,224,224,224,225,225,225,232,232,
 225,225,221,221,
 235,235,235,235,235,241,243,243,247,253,247,241,235,241,243,243,
 241,235,237,247,247,250,200,84,89,89,89,84,84,89,84,84,
 95,84,105,117,128,143,148,162,183,200,202,46,75,114,144,114,
 69,154,174,174,174,150,141,104,86,46,86,135,225,235,240,245,
 249,249,252,249,252,252,252,253,251,252,249,245,245,221,130,51,
 75,154,175,165,169,169,169,172,172,174,166,69,77,104,104,161,
 179,170,148,117,106,105,73,64,62,67,67,52,60,60,64,62,
 111,215,229,232,231,229,231,231,231,229,231,225,225,225,224,225,
 225,221,214,221,
 230,223,223,232,235,241,243,243,247,253,243,241,241,243,241,235,
 235,241,242,242,247,247,179,95,89,89,89,89,89,89,106,106,
 95,95,105,107,117,143,148,160,162,200,202,66,51,115,152,136,
 100,115,191,181,181,181,163,102,32,61,61,66,96,180,234,240,
 245,249,249,252,252,252,252,252,251,245,234,234,234,188,51,80,
 157,190,190,190,181,172,169,169,169,169,140,70,58,125,129,188,
 178,155,134,106,89,110,89,67,62,62,62,67,60,60,64,62,
 155,232,231,231,229,237,229,229,231,231,225,225,225,225,225,225,
 225,221,214,225,
 232,232,232,232,232,235,241,243,253,254,253,243,241,241,235,235,
 235,239,242,241,243,244,138,82,89,89,89,89,89,89,89,89,
 89,105,105,107,128,128,148,160,162,177,202,153,46,75,152,124,
 123,100,175,190,181,174,163,103,58,81,59,56,36,40,130,205,
 240,240,234,221,205,234,240,205,205,227,221,233,233,157,141,163,
 163,190,198,181,172,169,169,169,172,163,140,69,103,129,161,197,
 176,148,134,106,89,76,76,67,67,67,62,67,60,49,64,111,
 220,232,231,231,237,229,229,229,229,231,231,231,232,231,231,225,
 221,221,221,225,
 232,235,232,232,232,241,243,243,253,254,254,247,241,235,235,235,
 244,237,240,235,244,220,90,82,84,89,89,89,89,89,89,89,
 89,105,105,110,117,128,143,151,162,176,202,202,104,53,152,144,
 114,98,163,181,181,190,163,141,58,81,61,21,21,21,40,104,
 188,245,231,231,240,234,240,246,246,246,246,222,157,140,171,187,
 187,181,192,172,169,172,172,172,172,174,98,69,116,161,180,200,
 170,142,117,95,89,76,76,64,60,67,67,67,64,134,177,223,
 234,231,231,231,237,238,229,232,224,229,231,231,231,231,231,231,
 225,221,221,225,
 235,241,241,241,241,241,235,243,247,254,254,253,247,243,232,235,
 237,237,235,235,230,142,95,82,91,89,76,89,95,89,89,95,
 89,105,105,106,117,128,143,143,160,176,200,213,132,31,116,158,
 144,139,139,187,181,181,181,141,78,57,39,19,8,8,40,88,
 130,222,231,238,238,227,222,218,188,173,157,154,171,175,187,190,
 187,190,174,174,172,172,172,172,172,140,69,100,125,161,202,197,
 155,142,106,95,76,76,76,64,64,67,67,67,142,226,242,242,
 240,238,231,238,238,231,231,225,224,224,224,231,231,231,231,231,
 231,225,221,225,
 232,232,232,235,241,243,241,241,243,253,253,253,254,254,247,241,
 241,241,235,239,151,84,91,89,89,89,89,89,89,89,89,95,
 106,106,106,117,128,128,143,148,160,162,193,212,164,59,99,152,
 144,124,149,181,181,181,187,173,81,46,11,8,1,18,77,104,
 100,100,102,102,102,70,98,116,139,140,150,175,187,196,190,190,
 190,190,190,181,184,184,184,184,150,140,69,102,129,188,202,170,
 155,111,106,89,76,76,76,64,64,64,64,134,223,237,245,238,
 238,238,238,238,238,231,231,224,224,224,231,231,238,231,231,231,
 225,225,225,225,
 232,225,225,225,232,235,241,241,243,247,253,253,253,253,254,247,
 245,240,235,177,84,82,91,84,89,89,89,89,89,89,95,106,
 106,106,117,117,128,134,143,148,148,162,183,200,212,104,70,149,
 144,124,152,185,181,187,187,157,25,22,1,21,26,51,77,102,
 141,115,115,140,114,140,154,150,175,187,190,190,192,203,181,190,
 190,190,190,190,192,184,184,186,150,92,104,104,161,202,179,170,
 142,111,106,89,76,76,67,64,64,64,95,197,237,241,233,238,
 238,237,238,238,238,231,224,225,224,224,224,231,231,231,231,231,
 231,225,225,232,
 241,243,241,241,241,235,241,242,243,247,247,247,247,247,253,253,
 249,243,235,177,95,95,89,95,89,89,89,89,89,89,95,106,
 106,117,117,128,134,134,143,148,160,162,176,200,212,132,59,149,
 144,140,144,185,185,191,171,51,22,2,1,25,44,44,88,141,
 157,171,196,187,174,187,190,174,190,190,206,192,192,181,189,181,
 190,174,190,189,184,182,184,166,145,92,75,132,164,202,170,155,
 134,106,95,89,76,76,76,64,64,64,155,237,237,233,233,238,
 236,237,231,231,231,231,224,221,219,221,229,237,231,231,231,231,
 231,225,221,225,
 241,247,247,247,247,243,241,243,243,243,247,243,247,247,247,253,
 249,249,247,244,167,90,90,90,95,89,89,95,95,106,106,117,
 117,134,134,134,143,148,148,160,160,162,176,193,212,217,71,139,
 144,152,152,166,185,191,75,44,25,1,12,40,66,80,80,115,
 157,173,175,196,196,195,196,187,190,187,174,172,172,172,172,181,
 190,190,190,181,184,172,172,166,115,31,88,132,179,179,170,148,
 134,106,95,89,76,76,76,76,76,111,220,237,242,238,238,238,
 231,238,231,231,231,231,221,219,219,225,238,238,231,231,231,231,
 225,221,221,221,
 235,241,243,247,247,247,254,254,253,253,253,253,247,247,247,249,
 253,248,253,253,250,212,179,134,106,89,95,106,106,117,128,128,
 134,142,148,148,160,160,162,162,162,162,177,183,202,218,129,99,
 152,152,137,158,171,98,51,18,8,25,27,88,88,88,80,104,
 129,140,140,152,165,152,152,150,154,150,152,145,145,169,172,184,
 181,181,181,184,184,169,172,149,100,53,66,153,200,176,155,134,
 111,95,95,89,76,76,89,89,89,170,232,235,237,237,238,231,
 231,231,231,231,231,231,219,221,224,225,237,238,240,231,231,221,
 221,214,214,221,
 232,235,235,241,243,243,243,247,253,253,254,254,253,247,247,247,
 253,254,253,254,254,254,249,244,142,106,106,106,117,134,134,151,
 160,162,162,167,170,179,176,176,176,183,183,183,200,220,218,104,
 158,158,145,144,98,25,25,6,1,23,66,114,102,51,46,58,
 72,75,69,100,94,94,98,113,114,114,114,136,145,150,169,181,
 181,175,184,184,184,169,166,136,53,53,132,178,178,170,148,134,
 111,106,89,89,76,76,76,76,106,200,231,232,229,237,229,229,
 237,231,231,231,231,231,224,224,229,237,238,238,238,231,224,219,
 219,219,214,221,
 235,235,235,241,241,243,243,242,247,247,254,254,254,247,251,251,
 249,254,253,253,254,254,254,249,220,138,111,142,143,148,160,162,
 183,183,177,197,202,205,205,200,193,193,183,193,200,219,219,161,
 141,158,149,103,27,8,1,8,21,66,149,161,116,70,39,57,
 51,58,51,69,70,70,113,114,124,124,144,144,145,163,185,187,
 196,187,184,184,184,165,165,98,57,34,153,202,183,162,142,117,
 106,106,95,89,89,76,76,89,106,197,230,224,224,229,229,229,
 237,238,231,231,231,224,231,238,238,238,240,240,240,231,224,224,
 219,219,219,221,
 232,232,232,232,235,241,243,242,247,247,253,254,255,254,253,247,
 247,247,253,247,247,253,253,247,250,142,142,142,160,162,176,193,
 197,217,215,217,221,234,223,220,215,215,200,193,200,219,219,188,
 161,165,99,51,1,1,2,13,59,157,163,165,139,77,39,57,
 72,72,94,103,99,98,124,114,144,145,145,144,158,175,185,181,
 190,189,189,169,186,165,146,53,39,83,202,202,176,155,134,117,
 106,95,95,89,89,76,76,89,89,167,229,224,224,229,229,237,
 237,231,231,238,238,238,238,238,238,238,240,240,238,231,224,219,
 219,219,221,225,
 232,225,225,232,232,235,241,242,247,253,253,253,255,255,254,247,
 247,247,247,247,247,247,243,243,244,155,155,162,176,183,200,215,
 212,218,217,217,216,216,216,217,225,220,212,212,212,219,223,224,
 161,104,58,36,1,4,1,20,157,166,163,124,71,78,88,102,
 123,149,152,152,145,145,159,159,158,159,158,169,172,184,181,181,
 192,189,182,168,169,158,104,30,59,164,202,178,170,148,134,117,
 106,106,95,89,89,76,76,76,89,138,224,224,224,224,229,229,
 229,238,238,238,238,238,231,231,231,231,240,240,238,231,231,219,
 219,224,225,225,
 232,225,225,225,232,235,241,242,247,247,253,254,254,255,254,247,
 247,247,247,247,247,243,243,247,242,197,170,179,200,215,220,223,
 219,173,149,146,146,146,146,141,224,223,220,212,212,223,224,231,
 188,37,39,26,25,4,12,75,157,163,163,94,57,61,80,140,
 175,185,166,175,186,185,181,190,192,181,184,185,184,184,184,192,
 192,184,168,169,159,149,71,61,135,202,202,170,162,155,134,117,
 106,106,95,95,89,76,89,76,89,138,229,229,224,224,229,229,
 229,237,238,238,238,231,231,231,231,231,238,231,231,231,231,224,
 219,219,221,221,
 232,225,225,232,232,235,241,242,243,247,247,247,253,254,254,251,
 247,247,247,247,247,243,243,247,247,250,250,250,244,223,224,204,
 145,154,157,146,112,147,144,144,130,232,225,221,223,225,223,180,
 34,36,36,36,22,25,53,125,171,150,139,68,58,80,118,163,
 185,187,181,181,181,190,190,190,192,184,184,192,184,192,181,192,
 192,182,169,172,152,125,78,132,200,202,178,170,162,148,134,117,
 106,106,95,95,89,89,76,89,89,167,237,229,224,229,229,224,
 229,237,238,238,238,231,231,231,231,231,231,231,231,231,231,224,
 219,219,214,214,
 225,225,225,232,232,235,237,235,235,241,243,247,247,254,255,254,
 247,247,247,247,247,247,247,247,247,248,254,254,249,246,188,104,
 146,146,141,103,124,120,120,119,71,164,221,225,231,232,205,34,
 37,36,25,22,25,36,98,145,158,137,98,79,78,78,154,175,
 187,187,190,190,187,190,190,190,185,192,192,192,192,192,181,181,
 181,172,169,145,150,72,72,178,202,202,179,170,155,148,134,111,
 117,106,106,106,106,89,89,76,89,167,229,229,229,237,229,224,
 237,237,237,238,238,231,231,231,231,231,231,231,231,224,224,219,
 219,213,214,214,
 225,225,225,232,232,232,229,229,237,235,241,243,247,253,254,255,
 253,247,247,253,253,247,247,253,253,249,253,254,249,188,124,146,
 146,97,31,14,65,119,133,133,29,96,221,225,225,205,66,39,
 19,23,25,25,36,66,123,144,145,99,50,81,58,92,163,185,
 171,174,174,187,185,195,195,185,186,186,192,192,192,192,192,181,
 181,172,159,137,77,59,132,220,220,200,179,170,160,148,134,117,
 110,106,106,106,106,95,89,95,89,155,229,229,229,229,229,229,
 237,237,238,231,231,231,231,224,231,231,231,231,231,231,224,219,
 213,213,205,205,
 223,225,232,232,223,229,229,229,237,235,235,241,243,247,254,254,
 253,247,247,253,253,253,247,247,249,249,253,249,238,114,149,157,
 78,25,7,30,97,119,133,79,10,30,96,221,221,66,40,22,
 22,20,25,25,46,86,116,139,133,99,71,71,72,92,163,174,
 175,174,190,187,185,185,186,186,195,186,192,190,192,181,181,192,
 172,169,149,140,72,77,214,221,212,202,179,170,155,148,142,128,
 111,110,105,106,106,93,106,93,95,90,213,225,224,231,229,238,
 238,238,231,231,231,231,231,231,231,229,229,231,231,231,224,219,
 219,213,205,214,
 223,223,223,223,223,223,223,230,232,235,241,241,241,247,253,254,
 247,243,247,247,247,247,247,247,248,249,248,242,171,136,145,77,
 31,30,31,97,119,119,99,7,10,10,17,63,66,39,40,37,
 37,35,39,66,80,104,116,139,114,71,71,50,77,141,175,181,
 181,190,190,190,181,192,192,190,195,192,192,189,189,189,189,172,
 166,145,144,104,66,180,232,221,212,202,179,170,155,148,142,134,
 111,110,107,105,106,106,109,90,95,138,178,219,221,231,231,227,
 227,231,231,231,231,231,231,231,231,231,224,224,224,224,224,219,
 219,213,214,214,
 225,223,223,223,223,223,223,223,230,235,235,241,241,247,247,253,
 243,243,243,243,243,243,247,247,249,252,253,246,116,123,123,29,
 79,119,133,124,133,94,44,15,6,6,2,24,26,26,22,37,
 35,35,56,130,161,129,77,99,99,99,103,71,103,114,171,181,
 181,184,174,172,181,192,192,192,192,192,181,182,182,181,174,172,
 152,116,116,78,153,232,223,220,212,200,176,162,160,151,148,134,
 134,111,117,111,111,155,200,215,215,220,235,232,232,229,229,231,
 231,231,231,231,224,231,231,231,231,224,218,213,219,219,213,214,
 221,214,214,214,
 225,225,225,225,225,223,223,229,235,235,235,235,241,243,247,247,
 235,235,243,241,243,243,243,245,252,252,252,238,144,147,147,120,
 119,119,146,146,114,69,44,13,8,13,4,6,11,26,35,35,
 39,56,153,223,225,213,81,104,104,103,103,71,103,141,171,186,
 181,184,184,184,186,184,192,186,192,190,192,182,184,184,169,150,
 118,77,72,129,231,230,223,220,212,200,183,162,160,160,151,143,
 134,134,117,170,220,244,244,242,242,244,235,232,232,232,229,229,
 229,236,229,224,231,224,231,224,224,219,213,213,213,213,213,214,
 204,205,205,205,
 225,225,225,225,225,232,229,229,235,235,232,235,241,243,247,247,
 243,235,235,241,241,243,243,243,252,252,251,246,102,144,158,146,
 146,119,124,124,144,98,29,10,8,8,6,2,24,36,34,34,
 39,83,223,232,232,231,180,81,104,102,103,71,71,116,149,165,
 165,186,172,186,186,175,185,186,185,185,187,184,166,166,158,118,
 118,86,86,232,232,230,223,220,215,200,183,176,162,160,151,143,
 142,142,200,244,241,235,238,237,238,231,231,231,225,224,224,224,
 223,217,219,219,219,224,219,219,219,213,213,213,204,213,213,205,
 205,205,205,205,
 225,225,225,225,232,232,232,229,235,241,241,241,243,243,243,247,
 247,247,235,235,241,241,241,243,247,247,247,243,104,86,66,58,
 31,30,69,141,152,152,28,16,9,8,1,6,12,19,21,34,
 63,214,225,230,230,232,237,180,81,77,102,102,70,102,124,124,
 116,144,136,144,152,157,152,152,152,141,141,152,145,149,98,70,
 51,132,229,235,235,223,223,220,215,197,193,183,162,162,160,148,
 148,170,235,241,241,235,240,231,231,224,221,214,214,213,213,212,
 217,213,204,213,213,213,213,213,213,213,204,204,204,213,204,204,
 205,205,205,205,
 232,225,225,225,232,225,235,237,235,241,241,241,243,241,241,243,
 247,253,247,241,241,243,247,253,248,253,242,247,153,30,21,21,
 25,35,46,113,149,158,71,10,0,1,1,13,19,17,36,42,
 164,223,223,223,225,232,235,241,180,102,102,51,78,70,70,53,
 58,77,102,69,98,116,115,102,102,103,103,125,98,102,80,22,
 96,232,235,235,232,223,223,220,212,200,193,183,176,162,162,155,
 156,220,242,235,238,240,240,231,224,221,219,213,213,213,212,212,
 212,212,202,202,202,202,202,202,202,202,202,202,202,202,202,202,
 202,180,180,205,
 232,232,225,225,225,232,235,229,232,235,232,235,235,232,232,241,
 243,247,247,243,247,247,253,247,249,247,252,252,153,21,7,12,
 7,22,34,71,139,144,116,22,15,21,1,1,21,21,21,96,
 221,223,223,223,224,232,235,241,241,222,188,129,88,78,78,58,
 77,77,102,77,77,72,72,102,61,43,72,80,130,130,86,153,
 235,235,212,213,235,232,223,223,220,215,200,193,183,176,170,170,
 179,242,237,238,237,231,231,231,225,219,219,213,213,213,212,212,
 213,212,212,202,202,202,202,202,202,202,202,202,202,204,178,178,
 202,180,205,205,
 232,232,225,225,232,232,229,229,232,232,232,232,232,232,232,235,
 241,247,242,247,242,247,243,243,245,247,249,252,252,13,6,8,
 4,17,23,58,119,144,139,32,25,15,21,1,1,21,42,221,
 223,223,223,223,229,232,241,241,243,245,245,238,245,240,240,240,
 231,231,231,180,129,88,61,57,57,33,43,61,130,221,235,241,
 243,241,223,229,232,232,223,223,220,212,215,193,193,183,170,179,
 239,237,237,238,238,231,229,225,219,220,219,219,219,212,204,204,
 213,212,212,202,212,212,202,202,204,202,202,202,202,202,202,202,
 202,205,205,205,
 232,232,232,232,232,224,224,229,232,225,232,232,232,232,232,232,
 237,242,243,243,242,237,237,242,243,247,249,249,249,130,5,4,
 19,21,20,25,70,144,146,72,54,26,21,13,13,21,178,223,
 223,223,223,223,230,235,241,243,245,245,245,245,245,245,245,245,
 245,245,245,245,245,243,245,240,240,235,232,241,241,243,243,243,
 243,241,241,235,230,230,223,223,220,220,215,215,193,193,179,223,
 242,238,238,237,231,229,224,224,224,224,219,213,213,213,213,213,
 213,214,202,202,202,212,212,212,202,202,202,202,202,202,202,202,
 202,202,205,205,
 232,232,232,232,225,224,229,229,232,232,232,232,225,232,232,232,
 229,229,237,237,237,229,237,237,243,243,247,249,249,205,36,18,
 2,17,19,22,86,124,144,75,44,36,17,21,2,131,232,232,
 223,223,223,230,237,241,243,245,245,245,245,245,245,245,249,245,
 245,245,245,245,245,245,245,245,245,243,243,243,243,241,241,241,
 241,241,241,241,235,230,230,223,223,220,220,215,200,200,215,237,
 242,238,238,238,229,224,224,224,224,219,219,219,213,213,213,213,
 213,214,212,202,212,202,212,212,202,202,202,202,202,202,202,202,
 204,204,205,205,
 232,232,232,232,232,224,224,229,224,232,232,225,225,232,232,232,
 235,237,229,229,229,229,237,237,241,243,247,245,245,249,96,1,
 13,13,1,15,53,113,144,102,46,36,19,26,36,235,241,235,
 230,223,230,237,241,241,243,245,245,245,245,243,247,247,249,247,
 245,247,245,245,245,243,243,247,243,243,243,243,243,241,241,241,
 241,241,241,241,241,235,230,230,223,223,220,220,215,215,220,242,
 242,238,238,238,229,229,224,224,224,219,224,219,213,219,219,213,
 213,213,212,212,219,212,212,202,202,212,202,202,202,202,204,204,
 204,204,205,205,
 232,232,225,232,232,224,224,229,224,229,224,224,229,232,229,229,
 229,229,229,229,229,229,237,237,241,241,243,245,245,245,180,63,
 1,13,4,13,23,104,139,104,44,34,34,63,205,251,247,247,
 235,237,237,237,241,241,243,243,243,243,243,247,247,247,247,247,
 247,243,243,243,243,243,243,243,243,243,243,243,243,243,243,243,
 243,242,241,241,241,235,235,230,230,223,223,220,220,219,223,242,
 242,238,238,237,229,229,224,224,224,224,224,213,213,219,219,219,
 213,202,212,202,212,212,202,202,212,212,204,204,204,204,204,204,
 204,204,205,205,
 232,232,225,232,232,232,224,224,224,224,224,229,229,229,229,229,
 229,229,224,229,229,229,229,235,237,241,243,245,249,245,241,164,
 18,2,1,5,15,46,46,40,34,34,63,221,247,247,247,247,
 247,247,247,247,247,247,247,243,243,243,243,243,247,247,247,247,
 247,243,243,243,243,247,243,243,243,243,243,243,243,241,241,243,
 243,242,243,243,241,241,241,235,232,230,223,223,223,223,242,242,
 238,238,238,231,229,229,229,224,224,224,219,213,219,219,219,213,
 213,204,212,202,178,178,202,202,212,213,214,204,204,204,204,205,
 205,205,205,214,
 232,232,232,232,232,229,224,224,224,229,229,237,230,229,229,229,
 229,229,229,229,229,229,229,237,237,242,242,246,246,245,243,235,
 63,1,1,8,8,23,32,39,40,63,221,247,247,251,247,247,
 247,247,253,253,247,247,247,247,243,243,243,243,243,247,243,243,
 243,243,243,243,247,243,243,243,243,243,247,243,243,243,243,243,
 243,243,243,243,243,241,241,235,235,230,230,230,237,242,242,246,
 238,238,238,231,231,229,229,224,224,224,219,219,219,219,219,219,
 213,213,212,212,202,202,202,202,202,212,214,204,205,205,204,205,
 205,205,205,214,
 232,225,232,232,225,224,229,229,229,229,237,237,229,229,229,229,
 229,229,229,229,229,229,229,237,237,237,242,246,246,245,247,247,
 240,135,2,1,2,18,23,36,96,225,247,247,247,247,243,243,
 247,249,247,249,247,247,247,247,243,241,241,243,243,243,243,243,
 243,247,247,247,243,243,243,243,247,243,243,243,243,241,247,243,
 243,243,243,241,241,241,241,241,235,235,235,241,242,242,246,238,
 238,238,238,231,229,229,229,224,224,224,224,224,219,219,219,213,
 213,213,212,214,219,219,212,202,202,204,204,205,205,205,205,205,
 214,205,205,205,
 232,225,225,232,232,229,229,229,229,229,229,229,224,229,237,237,
 229,229,229,230,229,229,229,237,237,237,242,242,246,243,245,247,
 243,240,135,42,63,96,135,180,243,249,247,249,245,247,247,245,
 247,245,245,221,241,245,235,243,243,232,225,225,235,221,225,221,
 225,221,241,232,232,232,232,232,235,235,232,225,225,225,219,232,
 225,225,232,232,221,225,235,241,235,235,235,243,242,246,246,238,
 238,238,238,229,229,229,229,224,224,224,224,219,219,219,219,213,
 213,213,221,219,213,213,202,202,202,202,205,204,205,205,205,205,
 214,205,205,214,
 232,232,225,232,232,229,229,229,224,229,229,229,229,229,229,237,
 237,229,229,229,229,229,229,237,235,237,237,242,242,243,245,245,
 245,249,253,243,225,221,245,247,247,249,249,249,249,249,249,249,
 249,247,247,221,214,231,221,235,232,214,205,205,232,205,205,214,
 214,214,232,232,221,225,224,205,214,235,225,214,221,225,205,221,
 221,221,225,221,205,221,243,247,243,241,242,242,242,242,242,242,
 238,237,237,229,229,232,224,224,224,224,224,219,219,219,213,213,
 213,213,221,214,213,213,204,204,204,180,180,205,204,205,205,204,
 204,205,205,205,
 232,232,225,225,232,232,229,229,224,229,229,229,229,229,229,229,
 229,229,229,229,229,229,229,237,237,237,237,241,243,243,245,245,
 245,245,249,249,249,249,249,249,249,249,249,249,249,249,249,249,
 249,247,247,247,247,235,235,243,243,235,243,235,245,241,241,235,
 235,235,235,241,241,241,235,232,235,241,243,241,235,235,243,235,
 232,235,241,235,235,247,247,247,247,247,242,242,242,242,242,237,
 237,237,237,229,229,229,224,224,224,224,224,224,219,213,213,213,
 219,219,221,213,213,204,204,204,204,204,205,205,204,204,204,205,
 205,205,204,205
 };
# 5 "../src/LCDcolor.c" 2
# 1 "../src/mayo.h" 1
# 14 "../src/mayo.h"
const static char mayo_data_cmap[256][3] = {
 { 1, 4, 0},
 { 11, 3, 1},
 { 0, 7, 10},
 { 4, 6, 19},
 { 0, 10, 3},
 { 10, 9, 0},
 { 3, 12, 0},
 { 0, 12, 21},
 { 0, 15, 16},
 { 7, 13, 16},
 { 15, 10, 26},
 { 0, 17, 9},
 { 4, 20, 6},
 { 3, 21, 0},
 { 2, 20, 25},
 { 9, 19, 15},
 { 16, 18, 15},
 { 5, 25, 33},
 { 13, 24, 24},
 { 5, 28, 10},
 { 7, 28, 32},
 { 19, 27, 12},
 { 15, 28, 23},
 { 13, 31, 4},
 { 25, 26, 22},
 { 8, 31, 23},
 { 15, 28, 33},
 { 28, 27, 8},
 { 25, 28, 15},
 { 7, 32, 31},
 { 23, 28, 34},
 { 8, 36, 0},
 { 33, 27, 22},
 { 16, 32, 32},
 { 13, 32, 41},
 { 20, 30, 42},
 { 0, 40, 3},
 { 42, 27, 9},
 { 35, 27, 32},
 { 23, 33, 33},
 { 23, 39, 5},
 { 23, 36, 41},
 { 19, 38, 40},
 { 32, 37, 14},
 { 7, 47, 2},
 { 26, 39, 34},
 { 30, 37, 43},
 { 19, 45, 4},
 { 49, 37, 4},
 { 42, 38, 19},
 { 25, 40, 50},
 { 38, 39, 33},
 { 31, 41, 42},
 { 27, 41, 57},
 { 22, 45, 34},
 { 46, 39, 31},
 { 40, 40, 45},
 { 31, 45, 50},
 { 14, 55, 7},
 { 41, 42, 59},
 { 32, 51, 11},
 { 34, 52, 20},
 { 24, 56, 16},
 { 15, 62, 0},
 { 47, 51, 24},
 { 31, 55, 32},
 { 12, 63, 12},
 { 42, 49, 66},
 { 68, 45, 30},
 { 37, 51, 63},
 { 24, 59, 26},
 { 38, 52, 56},
 { 33, 59, 9},
 { 45, 52, 47},
 { 35, 56, 43},
 { 23, 63, 15},
 { 59, 51, 30},
 { 53, 53, 41},
 { 62, 50, 46},
 { 57, 51, 58},
 { 44, 59, 22},
 { 61, 55, 23},
 { 28, 71, 19},
 { 24, 77, 14},
 { 36, 75, 13},
 { 33, 78, 8},
 { 34, 75, 42},
 { 34, 76, 33},
 { 86, 60, 39},
 { 73, 61, 73},
 { 57, 65, 82},
 { 43, 74, 43},
 { 47, 74, 34},
 { 46, 72, 57},
 { 48, 75, 23},
 { 50, 72, 49},
 { 37, 78, 30},
 { 53, 73, 40},
 { 35, 80, 25},
 { 67, 69, 40},
 { 55, 70, 77},
 { 57, 77, 2},
 { 86, 63, 57},
 { 76, 68, 38},
 { 58, 74, 36},
 { 69, 69, 55},
 { 45, 74, 77},
 { 75, 67, 69},
 { 42, 81, 33},
 { 99, 62, 62},
 { 80, 74, 23},
 { 36, 91, 5},
 { 42, 88, 32},
 { 67, 77, 75},
 { 91, 74, 37},
 { 85, 75, 65},
 { 93, 75, 49},
 { 45, 92, 22},
 { 60, 88, 29},
 { 43, 93, 30},
 { 48, 90, 46},
 { 48, 89, 56},
 { 82, 81, 40},
 { 41, 93, 48},
 { 57, 89, 42},
 { 52, 91, 39},
 { 44, 93, 43},
 { 74, 82, 65},
 { 65, 86, 57},
 { 82, 80, 69},
 {105, 75, 54},
 { 55, 88, 74},
 {108, 76, 40},
 { 65, 89, 42},
 { 84, 83, 48},
 { 44, 97, 40},
 { 98, 78, 71},
 { 83, 84, 59},
 { 52, 97, 42},
 { 46,103, 38},
 { 43,105, 33},
 { 48,107, 27},
 { 67,101, 33},
 { 50,109, 12},
 { 57,105, 35},
 { 51,106, 48},
 { 86, 98, 35},
 { 66,106, 30},
 { 56,105, 72},
 { 68,104, 50},
 { 54,107, 63},
 { 88,101, 31},
 { 64,107, 44},
 {107, 92, 66},
 {101, 95, 65},
 { 66,104, 79},
 { 61,108, 55},
 { 69,105, 66},
 { 67,109, 39},
 {112, 94, 57},
 {101, 98, 57},
 {120, 93, 63},
 { 82,104, 67},
 {115, 93, 84},
 {111, 98, 48},
 {106, 96, 85},
 { 93,102, 67},
 { 54,118, 36},
 { 58,118, 45},
 {126, 97, 57},
 { 64,118, 39},
 { 88,109, 60},
 { 69,117, 46},
 { 81,109, 90},
 { 60,119, 53},
 { 88,106,109},
 { 71,118, 41},
 {105,104, 86},
 { 77,118, 48},
 { 73,118, 62},
 {133,101, 54},
 { 63,121, 67},
 { 80,120, 29},
 { 64,119, 87},
 { 66,125, 31},
 { 66,122, 75},
 {133,102, 77},
 { 75,120, 78},
 { 66,125, 58},
 { 83,120, 61},
 {115,110, 77},
 { 70,128, 48},
 {124,109, 82},
 { 84,127, 81},
 { 80,135, 68},
 { 99,128, 86},
 { 75,138, 63},
 {121,123, 78},
 { 80,140, 37},
 { 86,134, 80},
 { 92,134, 63},
 { 99,133, 64},
 { 99,132, 74},
 { 81,137, 80},
 { 78,141, 53},
 { 85,139, 57},
 { 98,131,101},
 { 91,138, 59},
 { 94,134, 98},
 { 82,138,100},
 {130,124, 98},
 {103,138, 55},
 {144,122, 93},
 {137,126, 81},
 {116,132,129},
 {158,125, 85},
 {153,127, 85},
 {157,130, 74},
 {143,136, 73},
 { 93,150, 84},
 { 95,148,100},
 {127,138,105},
 {109,146, 81},
 {106,150, 84},
 { 91,155, 79},
 {137,139,118},
 { 99,158, 54},
 { 95,158, 75},
 {106,155, 81},
 {111,155, 70},
 {100,159, 63},
 {145,142,113},
 {153,143, 99},
 {107,162,105},
 {107,162,118},
 {133,161, 91},
 {109,168, 98},
 {132,161,115},
 {115,171, 82},
 {180,151,104},
 {167,156,110},
 {180,154, 97},
 {162,159,132},
 {121,176,116},
 {180,162, 93},
 {157,164,151},
 {179,174,148},
 {135,190,144},
 {185,178,131},
 {136,195,124},
 {138,201, 64},
 {201,197,133},
 {207,197,119},
 {201,197,173},
 {158,221,157},
 {238,235,170}
 };
const static char mayo_data[] = {
 226,226,191,174,236,219,184,238,184,111,83,83,233,219,196,196,
 204,198,191,204,219,196,191,191,191,238,141,117,117,119,117,141,
 238,223,170,196,219,243,233,196,174,170,172,141,141,170,172,204,
 226,230,227,191,85,152,222,126,83,141,229,204,238,196,83,117,
 83,98,144,170,191,174,149,119,83,174,85,85,85,223,238,178,
 205,198,249,229,184,207,238,219,170,172,145,126,112,126,181,196,
 207,204,227,184,167,227,141,85,174,219,227,227,184,191,184,196,
 191,174,179,150,112,112,87,83,144,184,143,204,167,141,140,141,
 119,83,111,184,
 226,230,191,224,238,238,170,238,230,184,145,220,243,223,194,207,
 194,196,227,194,227,227,188,191,194,223,243,176,144,144,170,204,
 238,143,111,158,224,181,220,233,224,194,170,139,158,141,174,170,
 204,227,198,191,141,179,179,82,112,178,140,238,205,117,174,139,
 123,174,174,174,179,194,196,152,194,188,141,83,83,207,223,170,
 178,238,229,141,111,191,227,227,167,174,139,139,150,179,149,174,
 204,226,238,170,111,227,205,111,83,170,238,229,205,170,140,158,
 194,141,119,145,185,185,157,126,140,204,141,167,144,144,141,141,
 139,119,83,141,
 226,204,167,174,223,224,170,226,238,229,243,234,233,233,236,238,
 238,236,229,219,224,196,167,203,219,194,174,174,191,219,238,238,
 238,191,141,117,191,141,119,233,243,219,199,174,152,158,98,83,
 205,238,184,205,168,85,119,135,145,84,181,224,194,203,233,233,
 243,243,243,233,220,199,145,181,233,194,188,139,117,147,141,205,
 182,228,144,83,83,174,204,227,191,191,145,117,98,96,82,117,
 172,227,238,205,182,227,204,143,85,85,191,143,230,198,141,117,
 178,191,83,87,123,135,189,149,141,204,204,184,141,168,158,141,
 141,139,139,140,
 226,198,170,172,228,233,227,227,238,227,219,220,233,219,204,196,
 196,227,238,227,224,196,219,223,209,152,141,191,223,228,205,238,
 230,141,117,117,140,205,219,233,243,249,233,145,82,82,75,66,
 170,238,198,230,167,194,196,196,174,174,219,223,243,219,181,174,
 203,199,199,199,185,181,119,152,243,222,203,220,233,199,178,227,
 178,207,84,82,83,167,170,230,198,140,144,82,66,87,112,119,
 117,229,236,170,170,238,227,184,139,141,167,85,226,198,207,174,
 141,198,126,44,44,86,135,139,174,198,170,184,204,191,141,168,
 144,145,119,117,
 226,205,196,219,224,219,219,170,230,227,205,194,145,117,158,170,
 143,143,204,204,194,224,219,227,196,174,174,196,196,158,167,238,
 226,111,111,85,191,249,249,219,139,196,233,199,108,66,63,117,
 184,230,226,238,228,205,236,194,174,219,196,174,203,174,174,174,
 196,199,179,156,150,181,139,158,141,174,203,233,220,233,236,236,
 170,211,147,66,112,174,184,204,227,111,145,98,126,108,75,83,
 152,249,223,66,119,227,227,111,168,191,205,111,198,198,141,150,
 223,205,194,119,44,36,31,58,119,191,184,141,204,227,184,117,
 144,174,119,117,
 227,207,196,200,194,194,196,168,198,227,170,119,66,63,140,167,
 111,111,198,204,227,191,170,191,224,219,196,141,139,191,204,238,
 230,184,140,227,249,247,174,141,119,83,188,243,203,145,152,141,
 227,226,204,238,205,170,176,174,194,174,83,83,181,174,174,145,
 181,156,126,149,202,179,119,82,83,145,179,233,149,174,236,223,
 200,172,202,84,63,140,140,204,227,111,140,174,156,112,58,63,
 247,233,220,63,63,196,227,143,111,141,182,168,191,194,117,58,
 112,194,223,194,112,75,31,44,112,184,204,204,184,227,223,236,
 219,174,141,119,
 227,191,141,181,194,199,196,194,226,238,143,141,82,117,140,167,
 141,111,204,204,167,141,140,141,141,174,219,178,85,198,226,238,
 226,182,236,238,238,224,119,85,170,141,139,174,243,181,139,141,
 224,238,184,204,205,140,85,191,196,119,112,83,174,172,141,83,
 144,139,150,193,181,112,82,75,94,82,145,243,188,196,223,119,
 144,172,223,235,174,140,184,143,227,111,144,196,179,70,96,112,
 236,227,220,181,98,167,238,140,85,176,144,172,149,125,108,75,
 44,63,141,236,174,117,82,83,144,140,204,204,227,224,249,243,
 181,98,196,144,
 194,194,233,249,243,233,219,223,236,238,227,191,170,191,170,174,
 191,168,198,184,141,184,170,168,117,144,194,219,229,230,198,238,
 226,238,238,227,219,140,176,85,150,141,119,85,194,219,119,194,
 249,249,184,207,205,83,117,219,174,139,139,117,191,139,119,172,
 172,174,196,219,119,83,83,156,112,66,98,203,220,233,199,181,
 222,176,228,236,236,194,170,111,238,143,141,172,203,112,63,174,
 174,196,233,220,139,144,228,207,83,126,125,125,86,47,72,149,
 112,98,119,170,224,191,119,178,172,184,204,204,191,249,220,145,
 187,83,196,174,
 224,236,219,196,196,188,196,196,228,238,228,182,168,170,188,191,
 194,191,219,196,170,167,182,144,140,141,141,194,227,207,182,204,
 249,236,194,227,174,174,172,117,85,179,112,82,96,220,220,199,
 220,233,174,222,196,98,194,189,126,149,152,123,168,117,141,194,
 207,196,196,243,119,145,181,156,98,149,220,220,233,243,243,234,
 203,174,178,227,227,238,211,111,238,141,141,174,220,126,145,196,
 158,168,194,181,179,149,179,185,121,91,65,65,65,23,133,178,
 178,172,174,141,168,205,205,176,144,204,227,170,236,249,220,138,
 138,145,203,144,
 233,199,145,181,181,111,174,191,191,111,227,204,141,140,117,119,
 141,152,170,144,117,170,205,204,196,144,144,205,194,152,84,149,
 193,117,194,219,174,126,181,150,98,157,148,91,97,91,173,187,
 173,187,206,195,173,173,206,187,157,121,121,126,179,189,193,189,
 179,202,189,193,193,193,156,82,87,112,199,234,243,220,181,156,
 135,119,176,205,205,204,198,226,238,226,205,196,219,220,219,220,
 194,203,209,199,187,157,128,65,60,54,45,25,13,87,179,141,
 141,176,174,140,141,141,207,196,184,184,111,167,254,223,199,247,
 120,47,194,196,
 220,220,199,199,202,139,168,170,168,141,204,207,191,82,63,82,
 119,194,191,111,111,111,170,184,141,172,194,191,188,60,6,13,
 40,72,189,156,181,185,181,187,187,155,173,155,131,113,100,113,
 131,113,113,113,113,175,175,175,173,206,173,173,208,206,208,195,
 206,173,155,195,187,187,148,87,86,86,157,234,234,156,126,126,
 152,139,141,167,176,184,170,198,198,184,111,188,249,243,220,209,
 237,234,206,173,86,74,45,45,54,45,22,11,31,126,191,85,
 66,75,82,119,168,141,168,205,205,167,111,205,249,199,138,234,
 247,87,149,194,
 155,183,187,185,208,199,189,174,174,144,168,191,140,117,98,82,
 83,196,196,117,85,111,182,141,111,85,85,145,120,6,6,6,
 12,25,65,120,187,148,155,131,155,131,113,113,113,113,113,106,
 100,90,100,90,113,175,175,175,175,214,214,214,214,214,214,214,
 214,214,214,214,214,173,214,206,173,206,208,206,209,187,208,185,
 179,179,178,205,204,184,184,198,198,204,117,149,249,247,120,47,
 91,173,93,65,45,51,52,45,52,25,28,23,70,142,223,141,
 83,83,83,63,144,168,141,140,191,205,141,238,228,117,181,150,
 247,237,158,196,
 52,54,74,91,93,128,173,149,126,125,112,152,141,152,117,139,
 83,194,188,139,117,140,184,167,111,83,98,126,62,6,9,5,
 6,6,12,23,74,93,93,106,113,106,100,100,106,106,71,90,
 71,71,71,69,67,100,90,90,113,175,175,175,175,175,175,175,
 175,175,175,175,113,100,175,131,173,173,155,173,187,173,131,86,
 86,96,126,178,207,194,191,196,196,224,152,157,247,234,128,65,
 49,45,77,39,24,45,42,45,22,13,54,70,87,170,227,191,
 83,82,98,112,83,83,85,111,141,170,141,230,227,194,152,112,
 156,254,196,196,
 42,29,29,33,33,54,54,74,93,93,121,121,126,117,119,119,
 145,203,174,172,117,141,168,184,144,98,112,126,61,6,37,24,
 28,6,4,2,6,18,52,71,90,90,71,106,100,79,69,71,
 69,42,57,57,69,67,53,57,53,100,90,175,175,90,90,100,
 106,90,100,100,90,106,71,100,113,106,71,106,113,113,113,77,
 93,65,104,162,171,193,185,125,150,193,187,155,173,93,54,45,
 32,28,24,24,45,51,32,21,13,23,91,150,139,167,204,204,
 83,70,84,82,75,112,83,117,143,141,198,230,227,249,194,156,
 58,199,236,194,
 20,29,26,29,39,33,33,57,71,71,93,131,121,126,112,152,
 181,145,199,174,83,117,172,174,152,138,150,193,19,13,49,77,
 55,49,24,4,4,8,9,18,42,69,69,71,69,71,69,52,
 59,69,45,57,71,57,69,71,42,57,57,71,69,71,69,67,
 69,67,67,69,67,71,71,69,57,67,53,50,69,71,69,71,
 71,93,127,131,91,95,93,65,95,93,93,74,64,25,39,21,
 32,38,38,38,32,39,16,5,8,65,120,189,194,207,205,191,
 117,66,72,44,58,82,152,152,141,170,226,226,196,223,219,149,
 75,82,219,204,
 33,18,22,24,33,45,45,42,69,71,71,74,74,86,121,157,
 120,123,157,157,121,120,157,179,157,120,149,183,13,5,55,77,
 77,55,49,32,4,2,9,6,6,18,29,52,42,42,56,57,
 69,57,50,42,53,53,67,57,50,50,50,50,57,57,69,69,
 50,69,69,59,73,67,71,50,53,50,50,59,53,59,57,45,
 57,71,71,74,71,74,52,57,45,74,52,45,33,43,25,28,
 27,24,43,28,27,5,5,4,31,65,86,126,203,227,227,170,
 117,83,44,31,23,44,112,170,184,143,238,198,85,203,196,199,
 66,44,145,224,
 28,29,18,8,22,33,77,45,45,69,53,69,69,106,93,131,
 128,155,155,131,155,131,173,155,155,131,155,155,14,5,55,77,
 78,55,51,51,28,6,2,4,6,5,8,4,9,11,9,21,
 50,51,29,50,41,59,50,53,52,52,50,50,50,57,53,69,
 67,53,67,53,50,67,71,59,50,59,50,52,57,59,50,42,
 71,57,57,57,53,53,42,34,18,8,9,14,9,13,15,21,
 28,24,24,5,6,4,6,27,95,95,86,87,145,224,205,204,
 194,63,58,72,126,187,149,152,140,111,229,204,63,139,196,196,
 171,44,36,223,
 8,18,18,8,7,26,42,50,56,53,67,71,71,67,71,106,
 100,93,93,106,106,100,106,100,100,100,113,106,10,16,51,78,
 77,74,55,38,28,16,4,4,1,6,2,4,2,2,7,9,
 12,26,30,21,39,29,50,56,50,42,57,57,57,53,69,59,
 71,59,57,53,57,50,69,71,71,57,41,69,59,50,35,50,
 34,41,34,26,26,29,14,7,9,2,1,4,6,28,25,11,
 12,25,25,4,6,5,25,31,91,86,61,70,83,170,204,205,
 207,172,149,189,149,152,84,85,117,85,204,238,66,139,174,196,
 219,83,44,196,
 8,14,21,18,18,33,33,42,69,69,69,53,69,53,67,69,
 67,67,67,69,69,100,100,106,90,100,100,90,71,27,51,78,
 68,55,28,38,24,32,0,4,6,4,6,11,5,4,4,2,
 12,19,21,18,26,26,42,50,53,41,57,69,42,53,67,50,
 57,59,69,59,59,53,53,50,69,67,53,41,50,69,41,53,
 34,52,20,28,16,15,6,2,2,4,2,6,2,2,13,9,
 11,28,15,9,11,27,54,65,95,121,86,120,96,117,191,204,
 204,196,149,135,75,60,72,83,85,85,170,238,191,139,181,196,
 219,199,145,196,
 18,18,20,29,29,41,50,57,57,69,53,57,59,69,69,67,
 67,71,69,67,69,69,67,67,100,90,90,69,57,38,73,89,
 77,51,55,77,55,28,9,0,2,2,6,6,4,4,2,2,
 5,3,3,9,9,18,34,50,53,53,50,57,53,50,69,57,
 59,57,52,69,57,50,50,59,56,59,50,50,53,50,53,41,
 45,29,14,8,9,6,7,2,2,2,6,11,11,11,6,11,
 25,8,11,11,28,25,74,91,155,155,121,126,139,174,191,204,
 198,170,117,120,87,70,94,84,83,85,191,226,223,141,174,196,
 174,174,196,194,
 20,18,29,26,34,53,57,69,69,69,67,67,53,67,69,53,
 67,53,69,67,67,69,69,69,69,69,67,69,57,38,77,107,
 89,77,78,42,52,24,38,16,15,2,6,6,4,4,6,6,
 6,6,4,9,7,17,34,50,57,50,53,50,57,42,59,57,
 57,53,50,50,50,59,50,50,41,57,57,56,53,50,42,34,
 33,22,4,4,2,4,2,2,2,4,2,2,6,11,11,12,
 12,9,9,18,25,54,91,131,148,120,157,185,199,150,119,198,
 198,184,83,125,156,121,125,98,83,85,140,205,205,63,66,174,
 139,145,188,141,
 18,20,20,29,41,71,69,50,53,67,69,69,59,59,53,53,
 69,53,53,67,69,67,69,69,67,67,69,59,52,52,73,89,
 107,79,71,55,52,38,39,39,16,6,6,4,1,6,4,6,
 4,4,4,2,5,9,30,50,50,42,41,41,50,35,50,59,
 50,50,41,53,50,53,50,35,35,71,50,34,50,50,41,26,
 26,29,8,4,2,4,4,2,3,2,2,11,11,8,18,15,
 9,8,14,22,25,54,93,91,128,121,156,185,193,125,83,172,
 204,184,141,98,185,157,138,96,98,82,63,191,140,98,66,125,
 98,83,174,167,
 18,18,26,29,57,53,67,69,57,53,53,69,69,69,53,67,
 67,59,57,67,59,67,67,69,69,59,53,59,59,38,52,79,
 107,89,71,79,52,39,39,39,16,2,6,6,4,6,2,6,
 4,2,6,4,4,9,35,41,50,50,42,53,71,42,34,41,
 41,34,50,50,71,53,42,35,17,50,53,35,41,50,42,18,
 18,25,8,4,4,4,6,6,2,6,2,4,11,11,15,9,
 15,9,17,14,45,74,131,86,120,121,157,150,150,138,112,176,
 143,170,172,112,112,121,125,112,120,112,85,170,85,117,44,82,
 82,63,174,191,
 25,33,29,41,50,71,50,57,57,53,50,53,53,53,57,69,
 69,53,53,59,50,69,69,69,59,50,50,59,71,42,56,71,
 90,79,52,42,56,42,42,39,8,6,2,6,4,4,6,4,
 4,6,7,2,9,9,18,50,57,52,41,34,53,50,34,34,
 50,42,41,53,35,41,41,41,20,52,52,26,35,42,41,29,
 33,22,11,6,2,6,4,6,6,4,6,4,11,8,4,6,
 9,39,29,26,45,74,93,131,131,149,149,152,119,126,83,168,
 170,83,189,98,70,157,193,185,199,189,174,191,144,152,87,157,
 94,108,119,191,
 41,42,45,42,53,50,50,53,42,42,41,50,42,50,42,57,
 53,69,71,69,57,57,57,50,50,26,56,53,38,50,78,90,
 90,69,30,45,51,56,29,22,15,6,1,6,6,2,6,6,
 4,4,2,2,9,9,3,34,53,50,41,41,50,53,50,34,
 41,42,42,35,26,42,52,35,17,34,42,29,34,34,29,42,
 33,18,2,4,2,4,6,6,2,2,11,6,11,2,2,6,
 6,9,29,33,42,74,93,93,91,120,157,189,189,178,117,111,
 170,66,112,145,193,187,193,208,193,193,174,196,144,174,202,237,
 195,171,152,174,
 42,41,41,57,52,50,73,42,52,56,35,42,41,41,50,57,
 50,53,53,50,50,50,42,35,35,34,42,56,39,79,71,107,
 71,52,30,45,42,42,39,26,18,2,4,2,4,6,2,6,
 4,4,2,6,4,9,20,41,53,50,34,34,50,57,57,20,
 42,41,41,42,26,20,50,7,22,26,34,41,34,33,33,33,
 33,6,11,4,6,4,2,4,0,2,2,11,6,6,11,2,
 2,2,7,14,45,74,77,74,74,91,120,152,191,203,191,191,
 191,83,149,152,185,148,187,183,183,179,174,204,196,181,234,235,
 195,206,202,223,
 45,42,42,42,41,42,52,42,42,45,33,42,42,52,50,52,
 50,50,53,53,50,41,29,26,26,30,42,38,39,50,79,69,
 56,42,42,45,45,33,18,8,9,2,6,4,2,4,2,4,
 4,4,2,2,2,2,9,20,33,50,34,26,50,50,57,34,
 29,29,33,29,20,18,26,20,18,18,7,20,34,39,33,29,
 18,2,4,6,6,2,4,4,5,6,2,28,9,2,8,2,
 1,12,21,25,45,74,74,93,93,93,120,149,152,174,196,178,
 194,170,179,189,189,157,187,148,157,156,181,170,219,194,220,237,
 202,190,218,195,
 29,29,39,29,29,39,20,29,42,35,41,41,41,42,42,57,
 50,57,59,53,41,34,35,39,30,38,39,39,52,77,107,79,
 79,74,52,30,26,18,4,4,15,0,4,6,6,15,11,2,
 2,2,2,5,0,2,5,14,29,33,35,34,41,67,50,35,
 17,29,18,18,33,14,14,14,11,14,8,14,41,42,12,29,
 18,9,4,4,6,6,5,2,2,4,22,39,11,2,9,9,
 18,39,22,25,54,74,74,93,91,149,87,112,135,126,112,66,
 172,144,234,203,181,123,148,157,150,150,179,174,227,224,203,220,
 197,197,197,218,
 20,18,7,14,18,26,18,18,33,33,26,17,33,35,50,52,
 42,45,41,35,33,20,33,29,39,35,39,39,57,71,107,71,
 35,26,29,21,22,28,9,6,11,5,6,6,4,15,16,15,
 2,2,2,5,2,2,6,9,9,11,33,42,29,50,57,26,
 7,14,8,7,33,18,12,18,20,28,9,9,26,29,18,18,
 11,4,2,7,2,2,4,7,4,9,39,29,4,6,9,9,
 45,51,39,45,25,54,65,86,121,171,120,120,125,75,58,47,
 152,117,223,220,199,150,125,121,149,187,209,174,219,238,223,199,
 171,160,218,218,
 9,8,8,9,11,11,29,20,18,20,29,29,26,39,42,39,
 34,41,34,26,26,22,26,20,35,52,30,7,45,52,42,39,
 39,39,18,39,38,16,11,6,2,2,2,2,1,21,28,39,
 16,1,2,2,1,2,2,2,7,2,7,41,35,52,45,33,
 14,8,9,9,26,10,9,18,11,9,11,11,20,26,18,11,
 4,2,2,4,2,7,2,4,1,18,45,9,4,9,4,9,
 39,39,29,45,22,45,74,91,95,157,149,189,108,44,44,82,
 138,170,172,181,199,220,187,157,150,209,220,199,196,238,219,194,
 133,146,213,218,
 9,11,9,9,8,9,8,14,11,18,21,18,20,33,33,33,
 26,39,39,39,17,14,18,18,18,33,16,18,29,18,51,39,
 50,39,18,18,18,28,9,6,4,4,2,4,9,24,38,45,
 50,16,2,7,1,2,2,2,2,4,9,39,42,41,26,28,
 8,9,9,2,18,15,11,8,4,9,9,4,11,11,11,11,
 4,2,2,2,2,2,2,6,11,16,14,9,6,9,16,18,
 28,45,21,12,28,65,61,86,145,179,126,149,60,31,70,149,
 185,191,191,181,174,189,203,199,185,209,220,156,119,204,207,182,
 146,151,146,218,
 12,4,11,9,6,8,8,8,9,9,9,18,18,22,29,20,
 18,20,26,26,18,17,7,14,18,18,9,9,7,15,14,30,
 56,52,59,42,38,9,4,11,11,4,4,2,0,32,64,56,
 79,52,9,4,2,2,6,2,2,2,5,20,39,18,9,9,
 2,8,6,9,8,8,6,4,9,4,7,4,4,11,12,12,
 6,4,2,2,2,2,2,2,9,6,6,9,0,15,5,16,
 7,18,21,11,23,65,47,82,149,178,119,126,58,47,72,149,
 194,204,174,174,174,156,156,193,219,189,125,126,117,178,207,178,
 146,146,110,218,
 4,2,11,2,2,9,8,9,8,8,2,9,7,18,18,29,
 7,20,26,26,18,17,18,14,14,14,9,6,12,4,2,9,
 38,71,79,79,52,9,1,4,2,5,0,5,0,16,30,55,
 77,50,9,2,4,2,4,2,2,2,4,9,14,4,7,9,
 0,8,11,2,4,2,4,6,6,6,2,2,4,4,4,6,
 6,4,2,4,2,6,6,6,2,6,4,4,6,15,28,28,
 9,9,12,25,80,124,126,138,174,167,117,126,47,25,21,31,
 174,198,144,176,176,145,139,126,203,199,152,123,83,82,201,211,
 151,110,110,195,
 6,6,2,6,9,4,4,6,9,9,9,9,8,28,18,15,
 18,18,20,26,18,29,26,7,15,8,9,14,18,4,2,0,
 16,51,71,77,50,9,9,9,1,2,16,7,9,16,38,7,
 30,55,35,2,2,2,4,4,2,4,2,4,4,2,2,2,
 6,9,8,4,4,2,2,6,4,1,2,6,6,6,4,2,
 6,4,2,4,6,2,2,2,6,2,2,2,5,8,8,2,
 6,2,2,25,120,126,125,139,196,178,145,178,96,61,65,44,
 119,223,172,119,174,158,152,156,126,150,223,117,44,47,149,211,
 146,110,101,171,
 6,6,4,6,6,9,9,6,12,11,4,9,9,25,14,15,
 8,18,18,14,9,9,18,7,9,6,2,15,9,2,5,4,
 5,30,50,56,35,11,9,18,14,39,79,52,56,51,38,9,
 9,1,4,1,4,3,2,2,2,4,6,4,2,2,2,9,
 6,9,9,4,6,2,2,4,6,4,2,2,6,6,6,2,
 2,5,4,2,6,4,6,6,6,15,4,2,2,4,6,4,
 5,2,13,65,61,66,120,70,98,119,152,145,120,157,148,193,
 174,224,196,152,126,139,126,125,119,87,119,195,96,72,189,223,
 133,94,149,189,
 4,4,4,6,2,6,12,11,2,9,9,12,8,8,11,18,
 18,18,9,9,14,14,9,6,6,4,14,9,9,1,2,4,
 2,15,73,46,52,35,39,39,39,38,67,79,67,59,52,38,
 2,2,9,9,18,12,8,2,4,6,4,4,4,2,2,2,
 2,4,11,11,2,2,2,6,6,6,3,4,2,2,6,2,
 2,6,6,6,2,4,6,6,13,11,1,1,5,2,6,6,
 2,2,15,74,91,87,82,47,70,58,96,96,44,31,66,157,
 203,203,219,194,145,121,120,87,171,96,44,112,203,152,147,178,
 147,147,149,118,
 2,4,2,2,6,4,2,4,4,11,9,6,9,8,9,14,
 18,14,8,11,11,9,9,9,9,11,7,21,5,4,2,4,
 2,14,71,52,50,90,90,79,52,56,90,90,107,67,50,52,
 9,5,4,8,22,25,14,2,7,4,6,6,2,4,2,2,
 4,6,9,2,2,2,4,2,2,6,2,6,6,2,6,2,
 2,7,2,6,4,4,2,6,2,6,6,0,1,1,4,4,
 2,2,12,74,95,70,47,36,87,47,149,58,31,21,23,86,
 185,150,196,139,138,86,54,25,97,162,87,31,149,178,85,118,
 178,149,94,118,
 6,2,2,6,2,2,4,6,11,2,11,9,9,9,9,15,
 9,11,9,9,9,4,4,2,6,18,22,7,11,2,2,2,
 1,2,24,50,69,113,100,100,67,59,90,175,90,100,79,56,
 16,2,2,2,5,29,25,9,2,2,2,2,4,0,6,2,
 2,4,11,4,4,4,2,6,6,2,2,2,2,6,2,4,
 2,4,2,2,6,4,2,6,6,4,4,6,4,2,6,6,
 15,11,22,54,93,125,58,31,133,47,157,31,19,19,23,13,
 155,157,179,138,70,54,31,61,155,128,60,44,83,224,200,172,
 189,146,101,101,
 6,4,2,6,4,4,6,2,4,2,11,4,4,11,9,9,
 9,6,4,11,6,6,2,4,9,41,39,18,8,4,4,2,
 2,2,2,7,42,71,71,69,50,52,100,113,107,90,79,39,
 9,2,2,9,9,18,29,9,2,2,3,2,2,2,4,4,
 2,2,11,4,6,6,6,6,6,6,2,2,1,4,4,4,
 2,4,4,2,4,4,4,6,4,4,6,4,2,2,2,4,
 8,18,22,25,65,162,157,44,120,63,195,21,23,23,31,31,
 91,157,157,126,58,72,128,206,121,23,74,70,85,223,205,201,
 178,151,146,133,
 2,2,2,6,2,2,2,6,4,2,2,6,6,9,4,6,
 11,8,11,6,2,4,6,4,26,45,20,14,4,6,2,0,
 1,1,2,5,9,18,45,35,39,35,53,107,106,71,56,16,
 4,2,2,2,2,9,4,6,2,2,2,2,2,2,7,2,
 2,2,6,4,2,2,2,6,2,4,2,4,6,2,4,6,
 4,2,2,2,2,2,2,2,6,6,2,5,4,1,4,6,
 5,2,7,33,65,126,203,96,84,63,193,31,19,19,31,31,
 61,123,150,120,47,66,187,206,61,23,23,86,111,229,176,178,
 178,149,160,101,
 4,4,2,2,2,2,6,6,4,4,2,4,6,9,9,8,
 11,6,11,6,2,2,2,9,42,73,39,18,9,2,7,2,
 4,1,2,2,4,4,9,11,2,8,9,18,39,14,9,2,
 2,6,2,4,4,9,6,2,2,2,2,2,7,2,2,6,
 6,4,6,2,6,6,2,6,2,2,2,2,6,6,7,4,
 2,2,4,4,2,9,6,2,2,6,2,2,0,1,4,2,
 4,15,9,22,65,149,174,149,82,84,125,40,23,23,31,62,
 86,148,179,126,47,120,208,121,47,40,61,150,141,224,170,85,
 147,189,149,133,
 4,4,4,6,2,2,2,2,2,2,4,4,6,4,6,2,
 4,11,6,4,2,2,2,8,45,42,30,14,13,4,1,0,
 2,4,6,4,6,2,4,2,2,2,7,2,0,2,4,2,
 2,2,4,2,8,6,9,6,2,4,2,2,2,2,6,2,
 2,4,4,6,4,2,4,6,6,6,6,6,6,6,4,2,
 6,2,4,2,6,4,4,6,1,2,4,4,5,2,2,6,
 4,9,15,42,95,126,126,156,135,152,108,31,72,87,128,162,
 157,156,193,120,87,187,123,75,84,87,126,152,141,228,125,31,
 94,193,183,82,
 4,2,2,6,4,2,2,4,2,2,2,2,6,2,4,6,
 4,6,6,6,4,5,2,7,71,50,35,14,11,9,2,5,
 2,2,4,6,2,2,2,4,2,2,1,7,2,2,2,0,
 1,2,2,2,2,4,9,5,2,6,2,2,2,4,6,5,
 6,6,6,6,5,2,2,2,6,2,2,2,2,6,5,2,
 4,2,2,4,8,8,4,2,2,2,2,2,0,2,2,9,
 6,9,18,45,65,156,139,145,179,222,31,75,96,157,86,86,
 86,86,86,87,121,206,86,75,70,112,202,139,83,224,117,31,
 58,189,234,87,
 6,2,6,2,2,2,2,7,2,3,2,2,2,2,4,4,
 4,4,6,2,5,0,5,3,53,42,26,9,9,6,9,2,
 4,2,2,2,6,2,2,2,2,4,2,1,4,0,2,2,
 2,4,4,2,9,9,11,4,2,4,6,2,2,2,2,2,
 2,4,6,7,6,2,6,6,2,5,6,6,6,6,2,2,
 6,4,5,4,9,9,4,6,5,0,1,9,6,2,9,6,
 9,8,14,45,70,125,149,117,141,219,152,126,112,112,125,121,
 86,86,36,86,206,121,70,66,96,189,203,98,82,202,125,36,
 66,174,233,157,
 6,4,4,2,5,6,4,2,6,2,7,2,2,4,2,6,
 6,4,6,4,1,0,5,9,50,50,39,14,9,2,9,2,
 4,4,6,4,6,2,2,2,2,2,4,15,9,5,9,2,
 2,5,9,9,6,6,2,6,4,6,2,4,2,4,2,2,
 4,2,4,2,6,2,7,2,2,4,4,6,7,6,6,2,
 4,4,11,8,11,4,9,9,8,14,15,9,9,2,9,14,
 7,7,18,45,65,126,202,174,191,223,199,126,157,126,86,183,
 148,75,44,206,183,86,86,185,193,220,189,179,199,203,179,75,
 119,174,220,179,
 1,6,7,4,2,2,6,6,4,6,4,2,4,2,6,2,
 4,4,0,6,4,1,2,7,50,53,34,26,15,9,9,9,
 2,4,6,4,4,2,2,2,2,4,4,9,9,15,9,9,
 4,2,11,11,4,9,8,11,11,4,6,2,6,2,2,4,
 6,2,6,4,4,2,4,4,6,6,6,2,4,2,2,6,
 6,11,8,12,14,15,11,9,14,9,14,15,9,8,14,18,
 20,29,33,29,65,121,158,222,207,194,187,189,185,220,209,208,
 208,187,206,235,193,199,220,209,199,199,187,199,199,199,194,199,
 203,194,219,203,
 4,5,6,6,6,2,4,4,2,6,2,2,2,7,2,2,
 2,4,2,2,6,0,4,7,53,57,59,26,26,18,15,8,
 4,6,6,4,4,2,2,2,4,2,6,4,9,15,18,18,
 12,6,8,15,8,4,6,6,6,4,4,2,2,4,2,2,
 4,2,2,4,4,6,2,2,4,4,6,4,5,4,1,4,
 4,11,11,21,18,22,18,26,17,14,9,9,9,11,14,26,
 35,33,45,39,54,65,63,119,223,117,66,87,87,123,123,86,
 86,47,208,121,75,156,156,108,87,66,70,87,96,149,152,149,
 181,196,203,243,
 4,6,2,2,2,2,4,4,6,6,6,4,2,4,2,2,
 2,2,2,4,0,1,2,14,50,69,52,34,25,26,14,15,
 15,9,4,4,4,1,2,2,4,4,4,2,9,9,9,28,
 18,15,9,21,15,11,8,9,4,11,2,2,2,2,2,2,
 4,6,6,4,6,2,6,6,6,4,6,6,7,2,4,11,
 11,11,15,18,25,29,45,39,22,14,14,18,18,26,45,33,
 29,29,45,33,65,86,82,82,196,98,82,96,91,87,47,19,
 31,86,193,58,87,157,149,150,112,84,112,150,149,193,193,179,
 83,119,117,224,
 2,2,6,2,4,2,2,6,1,4,4,4,4,4,2,2,
 2,4,2,2,2,1,6,18,42,71,50,35,33,26,18,14,
 18,14,15,9,20,18,5,6,11,4,8,2,2,2,9,15,
 18,28,8,28,20,15,15,18,15,6,8,2,2,2,4,4,
 4,2,6,6,6,4,4,6,6,6,2,6,2,4,11,11,
 15,18,33,41,42,45,53,42,52,45,26,18,18,17,26,33,
 39,33,45,45,65,120,149,194,196,174,126,66,87,86,86,44,
 31,121,157,58,58,58,138,199,199,203,220,219,203,194,203,149,
 145,181,178,196,
 6,6,2,2,2,2,4,6,6,2,2,2,4,2,4,2,
 2,2,2,2,1,2,2,14,34,53,50,42,34,33,29,20,
 15,18,15,18,21,33,20,15,9,9,11,2,2,5,9,14,
 24,18,18,20,28,22,18,18,22,15,9,15,6,2,6,6,
 6,11,6,6,6,4,4,2,6,4,2,2,4,2,6,12,
 12,25,45,45,50,57,74,57,50,42,41,42,25,18,18,17,
 33,33,42,54,91,121,120,196,181,157,208,202,156,157,149,128,
 149,193,75,47,120,145,196,199,199,185,185,199,199,199,193,179,
 145,174,170,191,
 2,2,4,2,6,7,2,4,4,2,2,2,2,4,2,2,
 2,2,2,4,0,2,9,17,34,41,53,35,50,34,34,34,
 22,21,20,18,18,26,26,18,8,9,6,4,8,15,16,18,
 39,51,55,56,30,28,39,25,39,25,29,18,11,2,2,2,
 6,2,2,4,2,2,2,2,7,6,4,6,2,2,4,4,
 9,18,26,52,52,57,52,42,56,45,52,41,39,26,39,45,
 41,45,45,54,91,120,126,179,63,44,195,199,179,199,187,193,
 195,199,128,171,157,181,174,145,145,123,123,150,123,112,120,126,
 150,150,181,174,
 4,2,2,2,2,4,2,4,2,4,2,2,2,2,6,6,
 6,4,4,2,7,2,9,20,34,17,34,34,26,34,34,33,
 26,14,18,20,18,39,26,17,18,14,8,8,9,14,26,45,
 50,52,42,52,33,45,39,39,18,39,39,39,15,6,6,2,
 11,11,6,2,4,4,2,2,6,2,2,2,2,7,4,4,
 11,8,39,42,52,42,42,56,45,79,52,45,42,45,45,45,
 42,42,41,51,65,75,145,219,149,19,87,193,87,82,193,206,
 162,120,47,19,31,126,181,139,123,123,145,126,120,123,138,87,
 44,66,156,152,
 4,2,4,2,6,4,6,6,2,4,2,2,2,2,2,4,
 4,4,2,4,1,7,9,20,34,34,34,34,26,33,34,26,
 26,25,17,18,7,17,14,18,17,18,9,15,9,18,39,56,
 50,56,35,56,52,38,29,38,17,38,42,42,28,4,6,2,
 2,4,6,2,4,4,6,4,6,6,2,4,4,4,4,6,
 6,11,15,20,39,29,42,50,71,69,56,42,52,45,41,45,
 52,45,42,54,65,82,189,135,243,121,31,193,157,126,187,72,
 31,40,23,19,31,112,196,174,126,121,135,123,135,150,126,86,
 86,36,44,82,
 2,4,2,4,2,4,2,4,6,2,6,2,2,3,2,4,
 4,4,2,2,0,2,14,26,33,34,35,35,17,26,33,33,
 26,17,20,18,17,18,17,17,15,9,11,9,14,18,39,46,
 52,50,32,52,38,30,35,7,18,30,38,39,24,9,6,6,
 6,4,2,2,4,6,2,6,2,6,4,6,0,4,2,5,
 2,2,4,9,18,17,17,35,50,52,42,52,42,42,42,52,
 42,42,74,45,65,125,174,112,220,220,44,70,179,126,58,47,
 47,157,162,44,47,60,174,191,139,126,120,139,63,82,193,108,
 70,61,47,44,
 6,2,6,2,6,2,6,6,2,2,6,2,2,2,2,2,
 6,4,2,7,4,2,12,35,34,41,42,42,34,26,34,34,
 35,17,17,26,18,17,17,20,18,14,18,21,18,17,24,39,
 38,39,38,34,24,7,15,8,9,9,16,30,14,9,5,2,
 4,2,4,4,2,2,2,6,2,6,2,4,2,4,2,6,
 4,6,4,2,9,9,11,7,26,39,42,50,73,42,42,54,
 52,42,54,74,61,149,120,112,194,189,63,44,123,150,75,44,
 193,236,223,125,31,31,152,174,119,112,138,108,58,66,193,145,
 86,70,86,121,
 2,6,2,4,4,2,2,2,6,2,2,2,2,2,2,2,
 2,7,2,2,2,2,2,18,34,34,41,34,41,34,34,35,
 34,41,34,26,17,26,26,20,20,29,20,20,25,29,39,51,
 39,39,45,32,9,4,2,2,4,6,5,11,15,9,9,2,
 2,4,4,6,2,6,2,6,6,2,4,4,4,2,4,1,
 4,6,7,2,1,9,18,22,24,39,39,56,46,45,49,45,
 45,45,54,70,47,157,72,120,194,139,63,58,70,157,112,152,
 238,219,191,98,36,47,152,178,158,98,112,112,75,75,112,157,
 125,70,86,120,
 4,6,6,4,4,2,6,2,2,6,4,4,2,6,2,3,
 2,4,4,2,3,2,9,18,29,34,42,50,41,53,42,41,
 50,41,50,42,53,50,42,34,39,33,26,18,18,18,26,39,
 30,39,24,28,9,5,7,6,2,4,4,0,2,2,2,4,
 2,0,2,4,4,6,6,2,4,4,6,7,2,4,2,5,
 4,4,2,2,0,0,21,77,99,77,18,35,30,39,30,42,
 35,45,54,70,82,126,36,149,196,194,117,125,58,108,199,243,
 236,140,174,149,125,112,141,174,174,112,150,157,96,66,87,96,
 157,150,121,157,
 2,6,2,4,2,6,2,2,4,2,4,2,2,2,2,6,
 4,2,2,4,5,2,4,17,20,20,34,41,34,34,35,34,
 50,59,53,50,50,50,52,53,50,42,33,20,25,22,26,20,
 32,24,6,6,6,2,4,1,2,5,6,5,2,2,4,7,
 1,5,1,2,4,4,6,6,4,6,2,4,6,2,0,2,
 5,1,0,2,14,107,177,240,248,190,105,45,30,14,29,30,
 25,54,70,87,152,152,83,174,205,211,174,152,98,119,224,249,
 135,58,126,135,187,181,191,191,174,179,189,145,135,112,120,44,
 84,185,193,87,
 2,6,6,2,2,4,2,2,4,2,2,4,2,2,2,2,
 4,6,2,4,2,4,2,7,17,20,35,34,29,34,41,41,
 41,41,42,42,50,50,59,57,41,33,33,20,20,22,7,7,
 24,28,76,99,103,77,16,16,4,5,0,1,4,5,2,4,
 2,2,2,4,4,2,6,6,4,6,6,2,4,4,0,0,
 4,5,16,50,175,214,242,248,255,251,165,89,39,18,29,21,
 18,54,91,179,196,184,141,158,191,176,172,152,85,194,236,219,
 63,44,96,112,123,145,181,194,199,220,199,145,157,156,126,66,
 31,96,157,44,
 2,2,6,4,2,2,4,2,2,4,2,4,2,6,2,0,
 1,1,5,2,2,2,8,8,20,17,20,34,34,34,53,50,
 50,34,35,41,42,35,42,41,29,29,26,25,21,18,18,52,
 77,137,248,248,246,214,28,115,225,129,49,5,5,0,5,1,
 4,2,5,2,4,6,6,4,4,6,6,4,6,1,5,2,
 6,43,231,253,175,165,210,251,255,255,221,173,34,39,39,29,
 54,65,157,222,194,196,174,141,170,191,174,141,191,223,196,181,
 135,58,108,123,126,123,123,188,168,196,199,199,188,149,126,66,
 58,84,171,162,
 2,2,4,2,2,2,2,2,2,4,2,4,4,6,2,2,
 2,1,6,4,2,2,9,7,14,20,20,20,42,34,33,34,
 41,34,34,33,20,20,20,41,42,33,17,18,24,3,18,79,
 129,248,255,253,253,245,214,214,253,251,251,154,37,5,4,2,
 4,0,2,6,6,6,4,9,4,2,2,2,6,2,1,5,
 27,190,253,246,77,49,232,252,255,253,231,175,34,26,39,25,
 54,155,150,203,194,227,191,144,141,205,188,111,194,189,117,112,
 149,98,98,96,123,138,112,119,167,152,156,145,145,179,179,149,
 149,60,36,70,
 4,2,2,4,2,2,4,2,2,2,4,2,4,2,2,5,
 2,2,2,2,2,2,6,8,17,18,20,20,33,34,34,41,
 34,41,26,34,26,20,20,20,41,29,20,18,21,28,14,28,
 99,248,255,251,246,245,245,127,242,251,251,251,64,5,4,1,
 4,4,6,2,7,1,11,11,8,9,6,2,2,6,4,6,
 122,251,251,248,99,122,218,251,255,248,165,107,50,39,25,29,
 29,121,152,194,196,196,194,200,201,117,58,194,200,123,47,66,
 112,149,123,119,138,87,66,63,178,85,83,150,126,112,108,126,
 183,128,60,44,
 6,4,2,4,2,2,4,4,2,2,2,2,4,6,4,2,
 2,4,3,2,4,7,2,4,7,7,17,20,26,26,34,34,
 35,34,20,20,26,17,17,29,26,20,29,18,11,1,1,32,
 76,248,255,251,248,166,105,137,248,251,255,251,153,37,4,4,
 4,4,5,4,4,2,12,8,15,11,4,4,4,2,2,5,
 190,255,251,252,218,218,244,255,255,210,175,67,26,18,30,25,
 74,121,189,194,194,196,196,219,112,36,112,205,194,112,47,72,
 75,126,174,220,108,47,40,47,98,149,36,44,92,72,72,72,
 47,31,87,149,
 4,4,2,2,2,2,7,6,4,2,4,4,2,2,4,6,
 6,2,6,4,2,2,2,9,8,14,18,20,17,20,20,20,
 17,20,33,34,20,17,20,14,29,26,14,9,12,8,9,24,
 37,197,255,255,252,218,110,244,252,251,255,248,99,24,28,5,
 4,2,4,2,2,0,9,28,25,9,4,2,4,4,1,6,
 64,248,255,251,251,252,251,251,242,177,107,50,39,21,25,54,
 91,152,196,204,194,203,220,228,112,58,171,219,112,47,97,120,
 98,96,135,203,199,31,23,47,72,189,31,31,43,40,47,61,
 31,47,87,203,
 4,4,2,4,4,4,2,2,4,6,2,2,4,2,2,2,
 2,2,2,4,5,2,2,2,8,9,7,18,17,17,20,33,
 20,29,34,34,26,17,7,9,7,22,18,9,11,4,9,9,
 28,81,248,255,255,252,244,244,252,255,255,197,37,2,51,5,
 1,2,4,4,6,8,9,15,12,9,2,2,6,2,1,5,
 6,122,248,255,255,251,248,232,177,113,69,30,34,20,19,65,
 149,172,191,168,191,174,189,174,85,141,222,174,47,19,23,87,
 135,84,98,149,220,149,31,31,31,171,44,47,40,23,47,91,
 162,193,193,157,
 2,6,4,4,2,2,2,2,2,2,2,4,2,2,5,2,
 4,4,2,1,2,4,2,2,9,8,18,20,20,20,26,29,
 17,20,20,26,29,26,20,14,11,17,20,21,8,8,2,9,
 38,24,99,248,255,255,255,255,255,251,240,103,6,1,32,15,
 4,2,2,7,2,4,8,8,9,11,6,4,2,4,4,6,
 6,5,76,154,210,190,165,115,77,56,42,39,26,25,61,152,
 174,141,168,144,98,66,112,117,117,205,207,72,23,27,21,87,
 82,138,126,139,179,193,86,31,44,125,120,31,47,62,162,220,
 185,120,70,23,
 2,6,2,4,4,4,6,2,2,4,4,2,2,6,2,2,
 2,2,6,2,2,2,2,2,9,12,20,18,14,9,14,20,
 17,26,34,17,33,20,14,14,8,18,26,18,15,8,2,9,
 7,38,21,64,231,241,248,248,248,213,103,37,0,5,30,55,
 2,2,2,2,2,9,8,15,8,4,4,2,4,4,2,21,
 9,16,24,51,50,56,79,50,42,30,20,39,29,23,87,181,
 191,144,152,75,31,47,117,142,178,204,111,72,92,80,44,152,
 152,139,174,174,138,150,120,47,72,63,152,87,157,206,162,108,
 58,47,31,19,
 2,2,2,4,2,4,4,6,4,2,2,2,4,2,4,2,
 2,4,2,5,2,2,2,2,8,9,7,18,9,9,9,14,
 17,29,35,29,26,20,17,18,17,20,22,39,18,9,2,1,
 3,7,16,28,73,107,136,134,99,55,37,0,2,3,55,42,
 16,4,2,2,3,6,9,8,9,9,2,4,2,6,2,45,
 52,52,56,50,41,49,41,34,35,29,22,33,25,61,157,178,
 141,139,126,23,31,47,123,141,205,141,117,189,202,222,149,179,
 194,174,199,194,181,189,185,87,58,108,193,199,187,70,31,23,
 23,31,23,47,
 2,6,2,6,2,5,2,2,2,4,4,4,2,2,6,4,
 2,2,2,2,4,2,4,6,6,9,8,8,8,9,9,8,
 7,14,17,20,26,17,14,14,7,18,17,26,29,26,8,6,
 11,9,29,21,51,39,38,51,51,39,35,35,56,35,38,56,
 18,2,2,2,4,9,8,9,12,9,2,6,2,6,6,29,
 45,42,52,52,59,45,45,39,39,39,25,24,43,80,112,117,
 117,152,47,21,21,47,84,188,172,144,141,174,174,174,174,168,
 158,135,179,145,156,185,145,157,125,149,120,31,31,23,31,47,
 97,171,149,220,
 4,2,2,2,4,2,2,4,6,6,2,2,4,2,4,2,
 1,2,2,2,2,2,6,4,9,4,4,9,9,9,9,9,
 8,14,35,29,20,20,17,14,14,7,11,20,33,29,14,14,
 9,9,9,7,18,20,39,35,56,52,52,56,50,52,52,52,
 18,9,1,4,4,4,4,9,2,4,6,4,4,4,5,21,
 42,52,20,38,26,24,39,39,26,17,18,25,23,62,75,84,
 152,125,31,25,23,47,126,112,83,117,139,152,196,199,174,178,
 144,181,220,58,60,193,187,193,96,72,94,31,23,31,121,193,
 193,199,220,156,
 2,6,2,1,4,1,2,4,2,2,4,2,4,2,2,2,
 2,1,2,7,9,2,2,4,4,2,12,11,2,4,12,2,
 2,6,9,9,14,18,17,14,14,14,7,7,26,33,33,20,
 18,14,8,9,14,20,38,33,38,35,59,56,59,56,71,50,
 18,2,4,6,2,2,6,8,11,2,4,5,4,4,2,18,
 71,52,42,45,42,51,30,30,39,33,25,54,91,94,84,119,
 179,149,44,23,31,58,189,126,94,98,112,181,196,220,203,203,
 203,181,220,135,25,60,183,120,70,44,72,60,95,173,162,87,
 75,199,157,23,
 6,6,2,2,4,6,2,4,2,4,2,4,6,2,6,2,
 5,7,2,2,2,2,2,2,2,2,2,2,4,11,9,9,
 9,6,6,2,9,14,14,7,14,14,14,12,20,17,20,34,
 26,26,18,17,20,26,35,45,35,41,52,59,56,52,50,52,
 26,11,6,2,6,9,15,12,11,11,6,6,4,4,2,21,
 71,42,45,42,52,45,29,45,33,21,21,91,157,181,174,144,
 149,125,124,23,31,94,157,94,94,94,75,98,119,174,181,181,
 181,203,243,237,31,23,95,162,86,44,61,92,128,61,36,19,
 120,220,66,23,
 4,4,4,7,2,5,2,1,4,5,5,7,2,0,4,2,
 4,2,2,6,2,2,2,2,3,2,2,2,2,6,4,6,
 2,9,9,6,2,9,9,9,9,9,7,14,18,29,34,34,
 20,17,26,26,26,20,35,50,34,41,56,50,53,50,50,33,
 18,4,6,4,2,15,26,21,14,11,11,6,4,4,2,18,
 73,57,52,42,42,45,41,33,25,25,61,86,126,141,141,139,
 119,96,133,72,75,149,133,60,97,60,72,84,82,135,145,58,
 44,112,220,247,125,62,72,128,128,60,60,72,40,25,31,66,
 179,126,62,44,
 4,2,2,4,2,2,5,2,2,2,2,1,4,2,4,4,
 2,4,2,2,4,4,2,2,6,4,2,4,6,2,11,6,
 9,4,6,2,2,7,2,2,2,6,6,9,8,14,17,29,
 26,20,34,34,35,35,35,35,35,35,42,59,53,35,52,35,
 18,9,0,4,9,29,26,20,18,15,8,2,2,5,2,26,
 57,71,42,74,42,42,45,25,25,65,70,96,98,98,117,144,
 119,84,92,92,72,179,94,128,64,60,72,152,112,98,193,126,
 66,152,179,249,233,162,31,61,128,128,61,58,47,44,72,157,
 189,58,83,182,
 6,2,2,2,4,2,0,2,4,6,2,2,2,2,2,2,
 2,2,2,2,4,6,4,4,4,6,6,6,6,6,2,12,
 9,2,2,0,2,2,2,7,2,2,2,9,9,14,29,20,
 34,26,26,34,42,35,34,34,34,35,35,35,50,35,50,52,
 29,8,4,6,9,16,17,42,20,26,18,9,2,2,2,39,
 71,71,52,45,45,42,39,25,65,74,97,126,112,96,117,118,
 117,82,44,47,133,199,94,99,80,80,72,149,112,83,126,149,
 120,125,178,202,243,162,19,13,97,121,97,31,44,70,87,193,
 96,44,58,238,
 4,6,4,4,4,7,2,4,2,7,4,2,2,4,4,2,
 4,4,4,2,2,2,6,4,4,4,2,6,6,2,6,2,
 2,9,9,9,6,7,2,2,2,2,2,9,4,9,18,33,
 41,20,34,34,34,42,42,35,42,42,50,34,35,34,50,35,
 9,9,2,6,2,18,18,26,41,41,29,14,9,1,2,26,
 46,45,50,52,49,39,25,45,74,128,120,120,112,126,119,152,
 83,63,60,47,149,189,104,99,48,60,63,117,152,83,126,82,
 179,179,194,174,233,199,60,13,13,128,96,60,60,75,96,112,
 31,31,85,250,
 6,2,2,6,4,2,2,4,2,2,2,4,2,4,4,4,
 2,2,2,2,4,2,4,2,2,2,2,4,6,4,6,2,
 2,6,6,4,4,2,2,2,3,2,6,4,2,2,9,8,
 20,20,34,35,50,53,34,50,35,42,53,35,41,34,42,41,
 15,2,2,2,2,14,20,42,50,69,50,34,9,2,7,35,
 34,53,42,42,45,33,25,45,97,121,135,120,112,112,158,189,
 119,58,125,94,118,149,162,99,37,60,82,140,191,158,98,63,
 83,194,194,222,233,220,120,23,6,91,86,98,62,62,120,47,
 23,23,182,250,
 6,6,2,2,2,2,3,1,5,2,0,9,1,2,7,2,
 2,2,4,2,2,2,6,4,2,4,2,7,4,4,2,4,
 6,4,4,4,4,4,4,2,2,3,2,2,1,2,2,9,
 10,17,33,35,42,56,41,59,42,50,50,41,50,50,41,29,
 14,2,2,2,2,8,20,41,50,57,71,50,14,2,2,18,
 52,52,56,51,42,39,39,29,93,120,157,189,157,156,179,181,
 149,83,98,149,84,152,133,64,81,92,179,141,205,194,98,75,
 83,152,202,223,249,243,189,72,23,96,126,98,82,75,61,31,
 19,31,144,250,
 6,4,2,4,4,6,2,0,2,5,5,2,0,4,2,2,
 2,2,4,2,4,7,2,2,2,4,1,2,4,2,2,4,
 6,4,4,4,9,4,9,4,6,2,9,2,2,2,2,2,
 4,9,14,34,42,35,42,35,35,35,50,56,41,50,56,26,
 14,5,7,2,4,9,20,35,50,59,67,59,18,9,2,18,
 29,42,26,39,39,34,18,45,74,148,234,234,209,233,234,220,
 189,119,85,179,82,126,133,64,80,80,189,196,224,219,156,75,
 98,117,118,200,234,236,233,112,72,62,120,66,94,97,40,23,
 19,31,198,250,
 2,4,2,7,2,2,2,2,4,3,2,0,2,2,2,4,
 4,2,2,4,2,2,7,2,1,2,2,1,4,4,4,4,
 2,4,6,8,11,8,4,9,9,9,4,9,9,9,4,2,
 9,9,9,18,35,41,34,35,26,34,41,42,42,42,34,34,
 25,9,4,2,9,15,33,41,50,69,69,57,26,5,9,20,
 41,33,33,35,10,30,39,52,31,121,185,209,208,206,209,208,
 234,187,152,181,135,120,72,61,72,72,141,207,219,219,203,157,
 94,72,118,174,224,224,223,152,94,72,125,96,91,60,12,13,
 13,19,227,250,
 4,4,4,2,4,2,2,2,2,2,2,1,2,4,2,2,
 2,2,2,2,4,2,2,7,0,1,7,2,5,4,2,2,
 2,2,4,6,0,11,4,11,8,9,6,12,11,8,8,11,
 9,15,26,20,26,35,29,35,26,14,14,18,26,33,39,33,
 39,14,4,7,2,7,34,53,53,67,69,50,20,4,9,29,
 39,39,33,34,26,34,35,42,65,148,187,220,234,208,220,208,
 209,185,185,189,185,181,87,121,183,187,194,196,227,220,209,220,
 199,152,178,176,194,238,219,196,156,75,125,133,65,40,27,21,
 13,21,211,250,
 6,6,6,5,2,0,2,2,4,2,2,2,4,6,6,2,
 4,2,2,9,2,2,5,2,2,2,1,0,2,1,4,2,
 4,2,2,6,2,6,9,9,2,6,9,2,9,9,2,9,
 7,14,29,52,42,34,17,17,17,17,7,18,22,33,35,26,
 29,18,2,6,2,11,41,69,59,69,53,50,17,9,11,33,
 33,42,39,26,34,39,39,42,74,183,209,234,234,193,206,220,
 234,209,199,181,179,185,181,209,220,194,219,196,219,224,199,220,
 237,233,236,223,196,236,224,219,176,96,84,108,58,60,43,74,
 61,47,143,250,
 2,2,2,2,2,1,2,6,4,2,6,6,2,2,6,4,
 2,2,5,5,1,2,0,1,2,2,1,5,2,0,1,9,
 2,2,7,2,2,2,2,9,9,4,9,4,8,8,15,12,
 16,32,34,56,52,50,35,20,18,18,18,7,22,20,26,26,
 26,26,9,2,2,18,42,69,59,69,53,50,33,9,9,29,
 26,33,26,30,39,39,39,74,74,206,206,183,183,220,234,234,
 209,209,183,185,179,156,156,185,220,220,219,224,228,224,196,199,
 233,233,227,219,227,238,229,219,196,152,82,94,23,23,21,65,
 61,72,182,250,
 6,4,4,4,2,2,4,2,2,2,2,2,2,2,6,4,
 2,2,2,3,2,2,1,6,28,42,77,73,21,32,16,16,
 16,5,0,5,1,7,2,6,6,9,12,8,9,11,11,16,
 21,74,45,50,42,30,33,26,26,14,9,18,14,20,18,20,
 17,21,15,2,2,14,50,69,67,53,50,67,34,8,11,20,
 26,26,26,39,33,35,39,45,77,97,162,156,112,157,234,234,
 187,148,156,150,185,187,185,209,209,233,219,227,224,224,203,196,
 219,228,219,236,219,224,219,224,219,191,63,94,23,23,19,13,
 13,31,174,226,
 4,2,2,2,2,4,6,4,6,2,2,2,2,2,2,6,
 2,4,2,2,9,4,15,49,105,77,73,77,51,49,55,55,
 51,56,24,16,1,2,0,7,2,9,4,8,11,4,8,38,
 45,79,79,56,34,20,14,18,18,14,8,12,11,7,18,18,
 39,20,14,2,3,41,69,67,67,50,69,69,69,26,18,20,
 34,20,17,30,38,30,77,105,127,99,95,208,199,145,209,199,
 209,209,187,183,185,203,199,209,199,220,219,219,236,224,196,196,
 194,236,236,227,228,141,141,236,236,204,152,92,23,23,23,43,
 19,13,36,229,
 2,4,6,4,4,7,0,5,2,2,2,2,4,2,4,2,
 4,2,4,2,4,1,51,129,107,73,51,77,129,165,129,105,
 78,78,68,78,51,16,2,2,2,2,6,4,6,15,27,52,
 78,79,78,71,56,35,34,17,18,28,18,18,9,12,8,29,
 18,39,18,9,9,59,69,67,69,57,67,71,67,50,29,29,
 26,18,18,26,30,24,107,115,173,177,128,162,234,220,203,187,
 112,187,203,185,185,203,181,145,145,181,200,224,224,223,194,219,
 219,224,178,141,203,144,117,228,238,219,205,118,47,23,61,40,
 19,19,75,205,
 2,2,2,2,4,2,2,2,4,4,4,2,2,2,2,2,
 2,4,1,5,4,28,64,73,77,49,76,137,210,210,190,105,
 103,103,105,68,78,55,28,1,0,7,4,15,21,39,77,45,
 78,68,55,52,35,35,34,35,14,12,11,18,20,18,18,22,
 26,39,17,14,18,57,71,50,50,42,50,57,42,26,39,33,
 33,14,16,38,18,38,49,76,99,154,127,128,208,233,209,150,
 112,66,123,150,145,145,145,145,145,139,141,224,238,219,194,233,
 233,196,168,170,196,174,83,181,249,238,238,189,58,23,60,60,
 72,120,174,191,
 4,2,2,4,2,2,2,4,2,1,4,2,4,6,6,4,
 2,1,4,3,0,77,105,68,51,49,177,210,165,165,115,103,
 95,99,99,99,99,49,32,21,1,1,13,27,77,51,77,49,
 55,78,78,78,52,38,38,52,17,14,15,9,9,12,21,12,
 18,18,18,9,14,42,50,45,42,41,41,33,18,17,33,39,
 39,29,39,21,49,28,24,77,76,134,166,128,185,220,220,126,
 58,58,82,156,126,98,119,145,158,139,174,224,236,224,181,223,
 172,170,182,191,170,194,181,98,220,249,227,229,117,58,75,72,
 152,194,196,227,
 4,2,2,2,2,4,6,2,4,2,4,6,2,2,2,4,
 2,1,4,1,7,73,107,105,78,105,177,210,177,129,78,55,
 77,103,103,88,105,76,49,55,27,24,51,77,77,55,78,78,
 78,89,89,89,78,78,78,38,30,35,18,18,7,9,14,16,
 18,29,14,9,2,16,39,22,18,20,33,26,39,38,33,18,
 39,45,105,105,105,105,49,32,49,76,99,128,162,199,193,75,
 58,62,112,126,120,96,112,123,126,156,170,205,174,170,150,145,
 85,112,178,168,143,236,254,145,156,254,249,229,229,117,83,149,
 194,172,204,229,
 2,4,2,2,4,7,1,4,2,2,2,2,4,4,2,2,
 2,2,1,3,28,68,105,107,105,165,210,210,165,105,76,68,
 77,88,77,103,107,129,78,49,64,55,55,77,55,78,102,102,
 109,102,102,109,109,109,89,68,38,64,24,28,32,18,16,14,
 15,18,26,12,9,9,16,28,15,18,32,18,30,39,16,32,
 49,129,245,253,253,253,245,115,48,43,99,146,128,149,156,145,
 96,96,125,135,112,112,120,125,112,117,117,205,85,83,145,145,
 139,117,167,170,141,191,254,249,126,199,254,227,227,228,191,174,
 174,143,198,205,
 2,2,2,2,4,4,2,4,2,2,2,2,7,2,2,2,
 2,0,6,9,39,105,105,107,105,165,192,177,136,68,68,115,
 105,105,77,76,115,115,76,51,49,55,48,68,68,68,88,109,
 109,109,102,109,102,109,102,68,68,68,68,55,55,24,38,24,
 6,16,3,16,5,24,16,0,5,9,30,16,1,5,16,24,
 55,105,165,165,225,242,253,246,165,48,78,127,137,99,128,162,
 133,126,126,120,112,108,138,123,112,119,119,228,66,66,138,152,
 138,178,178,143,184,184,223,254,219,87,199,236,204,227,227,144,
 82,141,198,182,
 2,4,4,2,2,2,7,2,4,2,2,2,2,4,4,4,
 2,2,9,6,51,107,107,105,136,165,165,165,76,77,115,88,
 99,77,76,76,99,76,77,55,49,49,37,37,68,68,109,136,
 102,102,109,109,102,102,102,130,130,88,88,48,68,37,27,32,
 24,32,5,5,5,5,37,37,5,27,27,37,24,49,28,37,
 28,37,27,49,76,129,192,242,246,103,48,103,134,134,134,124,
 118,120,120,149,149,150,149,138,149,179,176,207,63,83,119,181,
 174,174,139,140,168,170,191,247,249,119,83,196,172,191,207,191,
 82,117,198,182,
 4,2,2,4,4,4,2,2,4,4,2,2,2,2,2,0,
 2,5,1,28,77,107,107,107,165,177,165,99,68,77,105,102,
 103,76,105,99,76,76,55,68,49,76,48,68,68,68,102,136,
 136,102,109,109,109,130,161,161,116,130,88,68,68,68,68,68,
 37,37,27,5,37,49,88,88,130,88,88,130,186,212,210,153,
 77,37,37,43,48,76,99,190,242,212,48,103,137,154,154,122,
 128,133,125,126,145,156,149,123,138,108,98,194,85,63,98,156,
 181,144,83,117,167,172,141,191,243,178,119,174,141,170,205,205,
 182,117,182,152,
 2,2,2,7,2,2,2,1,2,2,4,2,2,2,6,4,
 5,0,6,21,73,73,77,107,177,165,165,115,99,102,129,137,
 76,77,115,137,99,76,76,55,68,76,68,68,68,68,88,109,
 130,102,102,109,163,186,161,132,132,132,169,132,132,132,132,132,
 132,161,130,68,88,186,212,216,216,215,161,161,215,240,239,240,
 190,103,64,55,49,49,88,134,212,242,192,64,103,137,134,137,
 122,92,92,94,171,149,138,87,112,44,58,201,82,58,83,174,
 196,119,83,83,144,141,170,140,207,170,174,174,188,141,184,205,
 207,158,182,178,
 2,4,4,2,1,4,6,2,2,2,2,4,2,4,4,4,
 4,0,9,73,95,73,77,129,177,163,163,102,77,115,165,103,
 76,80,95,137,99,99,80,103,76,88,88,88,88,88,109,109,
 136,109,88,136,161,161,161,161,161,169,169,169,169,169,180,169,
 216,217,215,180,169,215,239,239,216,216,164,216,239,239,239,239,
 216,192,116,99,76,48,68,76,153,242,242,154,99,114,134,137,
 153,154,154,124,128,126,152,96,96,47,58,178,85,75,112,189,
 181,85,96,139,119,140,184,141,172,141,141,139,196,174,158,191,
 184,205,205,178,
 4,2,2,2,5,0,2,6,2,4,4,2,4,2,1,0,
 1,5,9,107,105,107,107,165,165,163,129,105,76,129,163,99,
 77,105,99,92,104,92,80,64,114,103,130,130,88,88,88,130,
 136,161,163,161,163,161,161,186,215,215,216,212,215,215,215,216,
 217,217,216,215,216,217,217,240,216,217,216,215,239,248,248,240,
 240,232,213,116,76,76,76,103,154,231,242,231,190,137,137,116,
 137,154,166,160,166,162,162,72,72,44,75,201,84,112,119,152,
 174,117,117,145,139,141,144,170,170,178,84,85,181,191,141,191,
 207,184,211,211,
 2,2,4,2,7,5,4,4,4,2,4,2,2,2,5,4,
 0,4,24,42,77,45,105,177,177,165,105,55,68,102,115,99,
 80,80,128,120,133,133,92,65,137,154,161,88,88,88,88,136,
 163,161,161,116,130,161,161,186,215,215,215,215,216,217,217,217,
 216,217,215,215,215,216,239,239,239,239,215,217,248,239,248,240,
 216,232,232,190,153,137,88,88,137,154,192,210,210,190,166,134,
 153,153,154,160,166,160,149,94,62,72,58,178,117,112,66,139,
 174,139,117,178,66,85,182,168,184,191,178,119,139,196,168,168,
 191,198,167,207,
 2,4,7,1,1,4,7,4,4,6,2,6,2,0,2,1,
 1,0,29,77,45,55,77,165,165,163,102,78,102,136,102,76,
 105,128,95,94,133,156,133,80,99,164,154,130,88,88,88,116,
 161,161,130,130,130,161,186,212,212,216,215,215,215,217,215,215,
 217,215,217,216,215,239,239,240,239,216,217,239,239,239,240,241,
 240,240,216,231,192,192,154,130,99,76,76,154,210,190,153,154,
 192,212,190,153,116,122,162,149,133,44,72,196,112,72,44,112,
 174,119,140,141,63,140,170,141,140,191,191,141,139,174,191,167,
 178,205,205,182,
 4,4,4,2,2,4,2,4,2,2,2,2,4,2,0,2,
 4,5,38,79,77,55,78,165,177,163,136,102,136,115,129,78,
 95,173,61,44,149,189,126,94,92,160,153,116,88,130,130,161,
 161,161,161,130,161,186,186,213,212,212,215,216,215,215,215,215,
 216,217,215,217,215,217,239,240,241,239,239,239,239,239,239,239,
 240,240,240,232,210,197,190,153,103,105,114,137,190,190,153,154,
 154,192,190,134,114,154,192,171,171,72,58,179,66,31,47,117,
 152,117,211,117,141,184,140,143,143,191,207,170,139,168,191,141,
 117,167,204,182,
 2,4,2,4,2,2,2,2,2,4,2,2,4,4,5,4,
 1,0,45,71,71,52,89,165,165,129,88,102,136,129,105,76,
 105,99,19,47,133,125,40,92,99,160,190,154,88,88,130,161,
 161,161,186,186,186,161,186,212,216,216,212,216,212,215,232,216,
 217,217,217,215,217,215,239,239,239,239,239,240,240,240,240,240,
 239,240,232,231,212,210,197,192,154,137,88,134,137,154,166,153,
 137,190,192,192,116,154,171,190,171,94,108,189,47,31,58,125,
 117,170,198,170,184,141,111,111,143,184,205,167,141,141,188,145,
 117,117,207,182,
 2,4,7,2,2,2,2,4,6,4,4,2,2,3,4,4,
 6,6,28,51,73,52,107,115,136,105,105,105,116,136,102,78,
 105,43,21,72,104,72,23,60,80,92,160,160,190,114,114,132,
 161,161,161,186,186,161,161,186,212,216,212,212,212,216,215,215,
 215,215,217,215,217,215,217,239,239,239,240,239,239,217,217,239,
 216,216,213,232,210,192,166,154,116,129,136,99,134,165,159,134,
 153,154,190,210,190,134,122,160,149,149,152,179,58,31,58,117,
 141,196,198,184,141,119,58,83,141,184,205,205,140,174,188,145,
 145,119,191,223,
 2,2,4,4,2,4,2,2,2,4,6,1,2,4,1,3,
 0,2,0,74,79,73,105,129,107,129,136,107,129,107,76,77,
 105,99,80,92,92,60,27,27,23,97,104,160,190,154,159,130,
 130,161,161,161,161,161,161,186,186,212,212,216,212,212,213,215,
 217,216,217,217,217,217,215,239,239,240,239,240,240,216,216,232,
 232,213,212,212,192,153,153,154,137,134,137,129,129,115,153,154,
 116,154,154,210,192,116,134,160,149,152,168,189,60,47,87,149,
 170,204,191,152,83,108,36,98,119,141,198,205,170,174,181,150,
 126,119,145,224,
 6,6,2,2,2,2,2,2,2,2,4,4,5,0,5,5,
 2,5,2,45,55,49,105,115,105,105,107,105,105,105,78,77,
 127,105,43,72,95,31,13,27,23,65,128,99,137,154,159,130,
 132,132,161,161,169,169,161,216,212,212,212,212,212,212,216,212,
 216,213,216,215,216,215,216,241,239,240,239,240,240,240,240,240,
 232,210,190,159,159,154,153,153,137,154,165,154,154,154,192,154,
 114,114,137,153,154,122,134,137,149,189,174,168,112,149,82,84,
 176,184,170,66,58,82,44,119,139,140,170,194,167,145,185,181,
 145,145,156,174,
 2,0,2,2,2,2,2,4,4,2,0,6,2,5,0,0,
 0,2,5,51,71,136,165,165,129,105,105,105,105,115,95,76,
 99,162,133,94,72,19,31,60,23,44,133,92,99,116,161,161,
 161,161,161,169,186,186,186,212,212,212,212,216,213,212,232,212,
 232,212,213,215,217,215,215,240,240,239,240,240,232,232,232,232,
 232,213,190,154,153,153,154,166,153,154,154,154,190,192,190,154,
 122,103,116,114,114,114,99,64,84,152,178,194,174,82,58,119,
 191,141,141,83,84,98,82,179,194,168,168,170,188,141,181,174,
 187,185,139,174,
 2,2,4,2,6,2,2,2,2,6,2,2,0,1,2,6,
 2,15,45,73,105,165,177,165,129,115,105,102,105,68,105,105,
 127,60,60,126,157,108,72,84,189,195,195,162,99,114,130,159,
 159,132,161,161,186,212,216,216,212,216,212,215,213,212,213,232,
 232,216,216,213,213,213,215,240,239,240,240,232,232,231,210,210,
 210,190,159,160,166,190,190,166,190,190,153,154,197,210,216,114,
 114,114,134,116,122,122,160,80,60,83,223,207,117,112,117,174,
 158,111,117,144,83,117,152,152,96,75,145,141,158,145,145,174,
 181,203,179,145,
 2,4,2,4,2,2,2,2,5,7,1,0,2,2,2,1,
 18,39,35,51,77,115,165,165,102,88,115,129,129,77,76,127,
 133,40,31,98,112,118,152,174,201,235,189,122,114,116,116,130,
 130,130,130,161,161,186,186,186,212,212,216,212,212,212,216,232,
 216,232,216,216,216,213,232,232,232,232,232,240,231,225,210,210,
 210,192,190,186,190,190,197,197,213,197,166,192,186,192,190,159,
 114,114,114,134,137,154,154,80,72,149,200,168,139,117,152,119,
 117,83,119,174,83,83,112,82,66,31,58,139,141,139,145,174,
 181,181,181,145,
 2,4,2,2,6,2,2,6,4,2,2,2,0,1,4,25,
 45,30,39,30,78,115,165,165,136,136,88,103,129,127,99,127,
 128,97,97,91,66,75,119,174,194,189,171,160,166,153,153,161,
 116,130,130,161,161,161,186,186,212,216,216,212,232,232,232,232,
 232,232,239,240,213,192,197,197,197,197,210,221,221,225,210,210,
 210,210,213,212,212,210,210,225,210,190,190,190,212,192,159,159,
 159,116,116,114,114,137,137,43,31,125,181,117,117,119,117,117,
 119,85,119,145,85,83,82,82,66,70,87,152,139,117,112,145,
 117,135,126,145,
 1,2,5,2,2,6,4,2,4,2,1,2,5,2,2,11,
 25,32,24,55,105,165,163,165,115,136,136,115,129,127,99,95,
 128,162,60,44,47,58,152,194,201,178,145,149,154,166,190,137,
 130,116,132,130,161,169,169,169,186,161,186,216,212,232,215,232,
 242,242,248,242,197,146,124,162,162,128,162,206,221,221,214,214,
 245,242,231,197,197,210,210,210,210,210,192,192,190,164,169,164,
 159,164,114,114,114,154,122,72,72,117,174,63,135,112,58,98,
 112,112,139,140,117,83,112,82,82,125,112,83,117,119,112,144,
 82,82,145,199,
 1,7,2,2,2,2,2,2,4,2,1,0,0,1,2,1,
 9,7,21,55,105,165,165,136,102,102,165,165,127,95,95,95,
 97,87,58,47,44,126,200,178,189,178,171,149,133,166,190,161,
 130,130,132,130,161,161,180,161,161,169,186,215,212,232,239,240,
 246,246,248,242,197,189,149,149,133,128,99,137,177,221,225,245,
 245,245,225,210,210,210,210,197,212,210,159,159,192,164,159,164,
 164,159,76,116,99,134,166,94,150,200,219,84,108,82,66,83,
 119,98,83,117,117,145,181,135,120,157,96,66,98,135,126,139,
 98,185,220,209,
 2,4,4,2,2,2,4,2,2,2,2,1,5,2,1,4,
 43,39,38,52,77,115,136,136,78,78,129,115,127,127,128,86,
 97,65,47,31,152,199,125,84,141,201,179,152,133,104,137,134,
 134,161,161,161,130,164,164,169,169,159,161,212,232,242,246,246,
 246,246,246,240,225,189,171,94,72,60,40,40,128,162,221,245,
 245,245,231,210,210,210,197,210,210,213,134,130,161,164,164,164,
 164,159,76,137,99,40,133,133,222,228,202,75,44,75,98,126,
 82,82,85,117,119,174,219,209,209,199,199,82,75,145,145,150,
 135,199,234,209,
 6,2,4,6,4,6,6,2,6,2,2,0,0,4,4,24,
 45,52,56,51,77,105,129,103,68,88,105,129,105,95,131,128,
 61,60,44,152,202,152,60,146,101,143,178,178,162,80,43,137,
 114,159,161,159,161,159,164,169,169,161,169,212,242,246,253,253,
 246,246,231,197,197,149,189,149,60,80,43,43,60,162,195,221,
 245,245,231,225,210,210,177,213,192,164,159,159,159,164,164,159,
 164,159,76,99,137,40,189,223,196,181,126,44,66,96,125,126,
 75,66,119,117,144,203,220,234,234,234,193,112,126,203,209,199,
 187,126,203,209,
 2,2,2,4,6,2,4,6,4,4,4,2,5,2,4,43,
 74,42,45,38,78,136,165,102,77,107,105,105,73,51,95,99,
 80,60,118,205,200,84,149,237,235,211,170,172,126,94,92,166,
 160,154,190,164,159,169,159,159,164,159,190,225,246,246,253,246,
 231,231,231,231,197,160,146,195,133,92,60,23,60,162,171,206,
 245,245,231,231,225,213,197,213,164,164,164,213,213,164,164,169,
 164,134,76,177,128,60,157,149,98,112,96,121,87,75,84,152,
 117,145,112,83,141,174,145,220,234,234,219,209,233,234,233,233,
 223,108,87,199,
 4,6,4,2,2,4,4,4,6,4,6,2,4,1,0,5,
 45,56,24,42,129,165,136,105,115,107,107,115,77,51,77,77,
 80,82,194,204,144,84,72,171,237,211,211,176,189,202,202,189,
 202,197,190,190,177,197,160,166,197,197,210,225,242,231,242,212,
 210,192,137,166,221,197,92,87,193,72,47,23,40,72,189,145,
 206,245,245,210,225,210,213,213,192,116,114,159,159,159,164,159,
 164,76,64,177,97,62,70,120,87,126,96,125,98,96,96,119,
 126,139,139,85,144,152,82,120,123,185,233,199,220,233,199,156,
 119,83,63,98,
 4,2,2,2,6,6,4,4,2,6,6,6,4,2,2,6,
 22,30,14,51,107,129,129,105,105,129,107,107,95,77,65,40,
 40,149,196,141,98,58,72,151,189,211,207,167,174,179,202,202,
 195,133,61,124,195,190,134,160,160,190,177,197,166,192,212,231,
 225,246,231,154,99,99,40,31,126,125,60,47,60,58,149,189,
 162,195,245,210,197,197,213,213,164,159,122,137,164,164,164,164,
 159,76,80,166,64,72,84,98,82,121,66,75,87,82,98,119,
 119,158,196,83,152,112,66,86,148,234,234,44,82,98,98,83,
 83,139,126,96,
 2,6,6,2,2,4,2,6,4,2,6,4,4,4,4,6,
 8,11,24,35,78,105,115,78,105,129,107,107,105,137,128,60,
 94,178,203,112,63,98,133,87,83,178,204,170,147,179,171,150,
 96,47,47,128,206,70,61,206,195,195,173,190,210,210,137,27,
 43,122,197,242,160,43,49,72,96,133,72,58,40,47,96,189,
 118,128,221,242,210,190,190,212,190,153,153,154,160,159,164,164,
 154,103,48,60,60,60,87,82,112,108,87,84,108,135,193,158,
 174,139,200,141,194,66,87,193,234,209,199,157,58,72,84,117,
 85,119,152,126,
 2,2,4,4,2,6,4,4,6,6,2,6,4,2,6,4,
 2,1,26,43,77,105,105,77,102,129,129,105,105,177,162,133,
 189,158,117,98,119,126,112,112,144,191,205,144,75,82,75,66,
 124,86,86,183,234,31,70,206,193,157,162,162,197,225,221,80,
 40,92,166,202,221,95,65,61,60,94,124,104,60,60,58,152,
 188,98,162,225,242,231,210,210,210,210,166,166,166,160,122,116,
 134,80,60,61,70,87,157,189,199,220,233,233,220,237,233,149,
 66,63,140,219,189,66,126,209,209,209,208,179,75,83,98,117,
 85,141,152,145,
 6,4,6,4,2,4,4,4,6,6,2,4,4,2,4,6,
 6,15,39,74,105,129,105,105,102,105,105,105,95,128,162,171,
 150,112,117,149,139,139,139,138,152,167,205,112,84,72,92,125,
 87,162,157,208,220,31,70,206,120,70,138,171,149,149,221,197,
 92,171,162,133,92,91,80,65,92,94,133,92,80,40,47,84,
 178,147,126,128,221,242,231,242,242,242,210,190,154,154,166,166,
 122,80,97,128,157,199,199,222,220,193,179,125,126,193,243,233,
 149,83,111,229,117,63,98,181,203,199,185,87,66,125,112,119,
 98,117,139,145,
 2,6,6,6,6,6,4,2,4,4,6,2,4,2,0,6,
 6,28,45,45,127,127,105,105,115,107,105,77,77,86,133,149,
 98,125,193,179,145,139,126,126,96,152,211,147,85,72,133,133,
 72,86,195,234,185,31,121,193,123,82,126,152,174,138,171,173,
 128,92,72,60,23,60,60,80,133,124,189,92,40,27,23,44,
 147,200,98,47,166,221,242,246,253,253,246,192,154,166,197,197,
 166,160,195,171,193,185,156,126,135,66,75,58,36,82,126,220,
 247,219,170,227,85,58,75,112,145,150,138,121,75,96,117,119,
 83,98,112,145,
 4,2,6,6,4,6,4,6,4,4,4,4,4,6,1,2,
 25,45,74,93,127,127,129,129,129,129,105,51,64,171,149,94,
 149,185,156,112,112,135,126,125,58,118,228,147,94,149,149,125,
 60,44,157,209,150,86,187,234,157,126,139,139,144,156,193,94,
 47,47,23,23,21,21,23,80,94,94,125,150,72,31,25,19,
 82,191,138,47,40,92,195,242,253,253,253,210,192,197,197,197,
 128,92,91,60,82,75,44,125,125,126,66,98,96,75,98,82,
 152,243,227,204,117,66,75,84,98,112,126,126,84,86,98,117,
 83,83,96,126,
 6,6,6,4,6,2,4,4,4,4,4,5,5,2,4,13,
 64,74,74,105,127,127,127,127,163,99,105,43,97,193,149,146,
 126,96,60,108,96,98,86,62,58,142,229,152,94,133,126,94,
 65,31,156,220,138,120,206,234,181,174,141,168,174,117,152,87,
 47,61,47,21,19,43,43,104,61,94,82,125,120,66,23,60,
 98,188,172,58,23,72,118,190,225,242,253,242,166,154,133,171,
 124,125,75,44,84,66,47,126,112,112,117,152,117,82,82,75,
 66,117,236,229,196,63,82,126,82,112,125,96,87,75,98,112,
 117,75,84,98,
 6,6,4,4,6,4,4,2,4,4,2,2,2,5,4,25,
 74,93,93,93,93,127,127,129,137,105,65,65,162,189,126,108,
 72,75,87,66,75,108,60,23,72,142,230,84,60,61,120,97,
 92,44,121,199,123,87,209,243,194,172,141,141,98,58,96,157,
 58,44,60,23,27,43,40,60,61,62,72,125,125,121,86,70,
 144,141,191,149,149,222,243,195,99,166,245,242,221,160,87,87,
 86,120,157,126,139,112,126,150,112,145,149,196,199,203,145,98,
 82,141,219,219,194,82,58,152,96,75,112,96,96,82,83,112,
 117,66,72,84,
 6,6,4,4,6,4,6,4,2,5,4,6,4,11,25,54,
 65,93,93,93,95,105,105,95,99,81,65,95,128,149,133,60,
 70,65,60,47,87,62,31,40,92,149,228,72,43,62,92,70,
 40,47,149,150,120,87,208,233,219,191,172,125,94,94,82,145,
 124,60,80,60,61,40,43,40,92,72,75,126,94,126,149,119,
 181,172,219,224,196,220,156,47,80,88,225,225,221,128,120,120,
 120,75,135,156,126,123,149,152,117,119,168,181,203,220,233,219,
 188,194,205,111,196,172,63,126,119,126,108,112,108,82,85,83,
 85,83,75,84,
 2,6,6,2,4,2,2,2,2,0,4,6,6,13,54,65,
 93,91,91,93,93,95,91,65,74,91,97,120,120,120,62,97,
 97,60,31,47,94,23,60,80,80,84,236,118,61,61,47,23,
 23,65,148,150,87,86,234,220,172,170,152,36,31,80,92,87,
 157,125,60,61,60,72,60,92,97,60,72,112,152,185,189,199,
 145,119,141,196,191,112,31,40,43,76,177,225,221,171,96,82,
 125,92,98,156,112,96,87,82,112,125,126,112,112,138,126,174,
 196,236,205,140,111,196,141,168,141,145,150,149,125,112,98,84,
 83,98,63,82,
 6,2,2,5,4,6,5,2,4,5,2,11,25,31,61,61,
 86,128,93,86,95,86,91,91,87,121,120,94,96,94,121,60,
 31,31,47,162,162,47,64,48,27,133,238,58,94,62,86,31,
 44,87,156,121,96,123,234,194,141,172,112,60,31,31,94,108,
 138,120,66,61,65,91,87,156,126,156,156,157,156,117,126,179,
 138,157,126,174,194,75,31,21,21,49,137,173,206,162,72,86,
 86,135,181,189,126,112,87,75,62,124,82,87,112,120,138,117,
 196,238,196,191,191,196,196,194,191,119,138,120,126,96,96,98,
 82,98,84,84,
 6,4,2,2,2,4,1,1,2,1,6,19,65,65,70,61,
 70,121,128,86,86,95,104,86,120,120,108,96,108,94,47,31,
 19,47,94,149,162,60,23,43,47,126,229,75,94,112,125,70,
 87,120,156,123,120,123,243,199,141,176,119,126,94,91,44,44,
 82,125,112,125,148,187,187,179,189,125,96,36,44,63,149,199,
 222,120,58,139,199,149,62,23,21,13,40,64,128,128,60,66,
 96,82,126,203,181,126,86,47,86,72,44,96,112,96,98,119,
 228,228,135,119,181,196,196,191,172,58,75,108,108,84,72,58,
 58,98,112,112,
 4,4,6,2,2,2,2,0,4,4,4,19,65,95,86,65,
 95,93,155,86,97,86,86,91,86,125,125,126,133,94,47,61,
 70,61,133,133,44,12,28,27,47,174,227,83,120,112,119,112,
 157,199,157,123,87,123,243,191,168,168,117,112,126,126,96,125,
 189,199,185,189,189,149,181,112,112,87,82,47,47,120,174,125,
 187,108,63,126,203,194,126,87,23,13,23,23,80,60,70,72,
 75,98,126,117,174,156,135,61,86,47,58,44,66,82,66,144,
 219,181,47,47,82,145,203,191,176,66,66,94,66,82,125,70,
 31,82,98,96,
 4,2,2,2,5,1,5,5,4,13,25,65,65,121,120,91,
 61,97,95,123,121,123,87,86,96,123,149,117,96,60,47,65,
 60,86,75,31,61,70,61,80,121,174,205,117,138,98,152,174,
 193,193,157,123,82,112,234,191,170,144,170,174,181,179,189,156,
 157,125,112,126,98,123,150,150,150,123,126,87,157,157,125,44,
 96,125,108,126,119,194,174,87,31,13,60,70,86,70,31,47,
 60,98,135,83,139,126,149,125,150,121,75,47,36,84,82,207,
 228,75,23,31,44,85,181,172,170,119,96,125,96,120,124,96,
 87,82,66,126,
 6,2,4,0,2,0,2,4,11,21,65,65,91,121,131,155,
 86,86,86,86,121,150,123,123,120,138,156,149,117,96,75,66,
 60,96,62,98,108,149,149,157,108,112,205,147,58,112,174,174,
 112,87,157,112,87,135,238,191,167,176,178,188,172,139,98,63,
 44,44,70,87,98,135,96,98,87,125,185,187,149,87,58,47,
 58,126,123,112,138,174,219,96,31,23,47,95,124,86,70,36,
 58,82,112,119,139,119,98,126,157,152,150,126,87,112,167,227,
 196,75,44,47,66,150,174,117,140,144,84,112,185,125,58,75,
 86,138,145,185,
 4,4,2,0,5,2,6,6,25,65,61,86,86,121,148,131,
 131,121,86,87,121,126,157,150,126,112,126,123,152,126,82,58,
 87,125,157,149,189,193,98,62,36,66,194,83,82,126,174,126,
 63,98,150,126,193,199,196,191,168,144,144,139,112,112,82,75,
 47,47,58,82,87,126,91,70,61,193,120,82,86,96,72,40,
 60,150,179,112,126,141,219,138,96,60,62,125,121,96,82,44,
 82,112,82,63,83,117,139,117,123,181,185,220,220,194,229,227,
 188,126,125,125,156,203,112,82,119,141,85,152,193,47,44,47,
 70,185,181,185,
 2,1,4,5,2,4,6,25,40,65,91,131,148,120,148,155,
 155,148,121,123,123,123,145,156,138,123,138,126,119,168,181,200,
 174,126,112,156,120,58,44,82,96,139,170,84,138,126,174,139,
 82,150,157,148,125,139,174,144,176,135,123,152,149,120,86,97,
 61,60,60,75,92,112,66,121,185,120,75,94,96,62,62,62,
 62,157,148,62,152,98,152,199,179,156,87,82,112,96,87,112,
 150,181,145,203,219,194,194,209,199,185,234,233,219,224,227,227,
 144,84,126,156,179,179,75,63,83,117,174,171,66,72,31,31,
 87,145,145,150,
 6,2,2,5,4,6,4,25,95,155,91,86,157,148,183,183,
 183,148,148,157,123,123,150,145,145,119,135,138,139,170,174,196,
 144,112,126,87,47,82,63,82,126,168,172,119,156,139,181,196,
 150,157,121,86,31,112,176,158,112,58,66,66,75,47,47,70,
 62,62,66,87,120,123,121,183,97,92,91,120,70,61,70,70,
 87,157,120,47,120,82,152,194,199,152,112,157,185,193,220,199,
 189,194,220,196,145,145,181,145,181,233,234,157,83,178,238,196,
 188,139,126,149,193,152,66,62,98,178,196,58,44,86,95,36,
 86,121,145,150,
 2,2,4,6,6,6,25,61,93,47,60,87,149,185,187,183,
 183,148,148,148,121,123,119,145,174,139,174,156,158,83,83,152,
 188,181,66,47,58,66,66,108,139,141,141,63,66,126,149,181,
 82,84,123,62,31,174,144,139,66,58,58,58,60,44,31,75,
 120,149,150,126,157,193,157,70,94,97,97,80,80,80,65,70,
 86,193,121,21,125,156,179,219,219,203,193,135,156,92,66,82,
 145,150,126,117,98,112,123,234,247,187,125,98,63,191,219,144,
 174,189,191,196,189,126,84,63,191,219,75,31,31,128,155,148,
 112,125,145,150
 };
# 6 "../src/LCDcolor.c" 2


void MS(unsigned char ms)
{




}



void LCDInitPins(void) {

   TRISCbits.TRISC9 = 0;
   LATCbits.LATC9 = 0;
   CNPDCbits.CNPDC9 = 1;


   TRISCbits.TRISC8 = 0;
   LATCbits.LATC8 = 0;
   CNPDCbits.CNPDC8 = 1;


   TRISCbits.TRISC7 = 0;
   LATCbits.LATC7 = 0;
   CNPDCbits.CNPDC7 = 1;


   TRISCbits.TRISC6 = 0;
   LATCbits.LATC6 = 0;
   CNPDCbits.CNPDC6 = 1;


   TRISBbits.TRISB9 = 0;
   LATBbits.LATB9 = 0;
   CNPDBbits.CNPDB9 = 1;


   TRISBbits.TRISB8 = 0;
   LATBbits.LATB8 = 0;
   CNPDBbits.CNPDB8 = 1;
}

void LCDClear(void) {
}

void LCDDelay()
{
   unsigned int i;
   for(i=0; i<1000; i++) ;
}

void LCDReset(void) {

   LATBbits.LATB8 = 0;
   LATCbits.LATC8 = 0;

   LCDDelay();

   LATCbits.LATC8 = 1;
   LATBbits.LATB8 = 1;

   LCDDelay();

   S6B33_init_device();
}

void LCDLogo(void) {
}


void putPixel(unsigned char x, unsigned char y, unsigned char pix_val)
{
}

void LCDline(int x0, int y0, int x1, int y1) {
  void putPixel(unsigned char x, unsigned char y, unsigned char pix_val);

  int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
  int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1;
  int err = (dx>dy ? dx : -dy)/2, e2;

  for(;;){
    putPixel(x0,y0,1);
    if (x0==x1 && y0==y1) break;
    e2 = err;
    if (e2 >-dx) { err -= dy; x0 += sx; }
    if (e2 < dy) { err += dx; y0 += sy; }
  }
}
# 112 "../src/LCDcolor.c"
void LCDcolor(unsigned short pixel);

void LCDmayo()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char hpixel[3];
    unsigned char *hdata;

    S6B33_rect(0, 0, 131, 131);

    hdata = (unsigned char *)mayo_data;

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            {hpixel[0] = mayo_data_cmap[(unsigned char)hdata[0]][0]; hpixel[1] = mayo_data_cmap[(unsigned char)hdata[0]][1]; hpixel[2] = mayo_data_cmap[(unsigned char)hdata[0]][2]; hdata ++; };
            pixel = (unsigned short)(
                     ( ((hpixel[0] >> 3) & 0b11111) << 11) |
                     ( ((hpixel[1] >> 3) & 0b11111) << 6) |

                     ( ((hpixel[2] >> 3) & 0b11111) )
                    );
            S6B33_pixel(pixel);
       }
    }
}

void LCDdrbob()
{
    unsigned char i,j;
    unsigned short pixel;
    unsigned char hpixel[3];
    unsigned char *hdata;

    S6B33_rect(0, 0, 131, 131);

    hdata = (unsigned char *)drbob_data;

    for (i=0; i<132; i++) {
       for (j=0; j<132; j++) {
            {hpixel[0] = drbob_data_cmap[(unsigned char)hdata[0]][0]; hpixel[1] = drbob_data_cmap[(unsigned char)hdata[0]][1]; hpixel[2] = drbob_data_cmap[(unsigned char)hdata[0]][2]; hdata ++; };
            pixel = (unsigned short)(
                     ( ((hpixel[0] >> 3) & 0b11111) << 11) |
                     ( ((hpixel[1] >> 3) & 0b11111) << 6) |

                     ( ((hpixel[2] >> 3) & 0b11111) )
                    );
            S6B33_pixel(pixel);
       }
    }
}

void LCDcolor(unsigned short pixel)
{
    unsigned char i,j;

    S6B33_rect(0, 0, 131, 131);

    for (i=0; i<132; i++)
       for (j=0; j<132; j++)
               S6B33_pixel(pixel);
}

void LCDblack()
{
    LCDcolor(0b0000000000000000);
}

void LCDwhite()
{
    LCDcolor(0b1111111111111111);
}

void LCDred()
{
    LCDcolor(0b1111100000000000);
}

void LCDgreen()
{
    LCDcolor(0b0000011111100000);
}

void LCDblue()
{
    LCDcolor(0b0000000000011111);
}

void LCDBars()
{
    unsigned char i,j;
    unsigned short pixel;

    S6B33_rect(0, 0, 131, 131);

    for (i=0; i<16; i++) {
       for (j=0; j<132; j++) {



            if ((j % 16) == 0) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b1111111111111111);
            }

            if ((j % 16) == 1) {


               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b1111111111111111);
            }


            if ((j % 16) == 2) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b0000000000000000);
            }

            if ((j % 16) == 3) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b0000000000000000);
            }


            if ((j % 16) == 4) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b1111100000000000);
            }

            if ((j % 16) == 5) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b1111100000000000);
            }


            if ((j % 16) == 6) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b0000011111100000);
            }

            if ((j % 16) == 7) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b0000011111100000);
            }


            if ((j % 16) == 8) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b0000000000011111);
            }

            if ((j % 16) == 9) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b0000000000011111);
            }



            if ((j % 16) == 10) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b1111100000011111);
            }

            if ((j % 16) == 11) {

               if (j < 32)
                   S6B33_pixel(0b1111111111111111);
               else
                   S6B33_pixel(0b1111100000011111);
            }



            if ((j % 16) == 12) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b0000011111111111);
            }

            if ((j % 16) == 13) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b0000011111111111);
            }


            if ((j % 16) == 14) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b1111111111100000);
            }

            if ((j % 16) == 15) {

               if (j < 32)
                   S6B33_pixel(0b0000000000000000);
               else
                   S6B33_pixel(0b1111111111100000);
            }

        }
    }

    for (i=16; i<33; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=33; i<49; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=49; i<66; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=66; i<82; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=82; i<98; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=98; i<114; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)0 >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }


    for (i=114; i<132; i++)
       for (j=0; j<132; j++) {
            pixel = (unsigned short)(
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 11 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 6 ) |
                 ( (((unsigned short)j >> 2) & 0b0000000000011111) << 0)
            );
            S6B33_pixel(pixel);
       }

}
