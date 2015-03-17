#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/USB/usb_device.c ../src/USB/usb_function_cdc.c ../src/badge15.c ../src/badge_common.c ../src/main.c ../src/usb_descriptors.c ../src/Sound.c ../src/LCDcolor.c ../src/S6B33.c ../src/time_date.c ../src/timer1_int.c ../src/jonesforth.S ../src/TimeDelay.c ../src/touchCTMU.c ../src/flash.c ../src/mario.c ../src/piano.c ../src/assets.c ../src/assetList.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/659838314/usb_device.o ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o ${OBJECTDIR}/_ext/1360937237/badge15.o ${OBJECTDIR}/_ext/1360937237/badge_common.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o ${OBJECTDIR}/_ext/1360937237/Sound.o ${OBJECTDIR}/_ext/1360937237/LCDcolor.o ${OBJECTDIR}/_ext/1360937237/S6B33.o ${OBJECTDIR}/_ext/1360937237/time_date.o ${OBJECTDIR}/_ext/1360937237/timer1_int.o ${OBJECTDIR}/_ext/1360937237/jonesforth.o ${OBJECTDIR}/_ext/1360937237/TimeDelay.o ${OBJECTDIR}/_ext/1360937237/touchCTMU.o ${OBJECTDIR}/_ext/1360937237/flash.o ${OBJECTDIR}/_ext/1360937237/mario.o ${OBJECTDIR}/_ext/1360937237/piano.o ${OBJECTDIR}/_ext/1360937237/assets.o ${OBJECTDIR}/_ext/1360937237/assetList.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/659838314/usb_device.o.d ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d ${OBJECTDIR}/_ext/1360937237/badge15.o.d ${OBJECTDIR}/_ext/1360937237/badge_common.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d ${OBJECTDIR}/_ext/1360937237/Sound.o.d ${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d ${OBJECTDIR}/_ext/1360937237/S6B33.o.d ${OBJECTDIR}/_ext/1360937237/time_date.o.d ${OBJECTDIR}/_ext/1360937237/timer1_int.o.d ${OBJECTDIR}/_ext/1360937237/jonesforth.o.d ${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d ${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d ${OBJECTDIR}/_ext/1360937237/flash.o.d ${OBJECTDIR}/_ext/1360937237/mario.o.d ${OBJECTDIR}/_ext/1360937237/piano.o.d ${OBJECTDIR}/_ext/1360937237/assets.o.d ${OBJECTDIR}/_ext/1360937237/assetList.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/659838314/usb_device.o ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o ${OBJECTDIR}/_ext/1360937237/badge15.o ${OBJECTDIR}/_ext/1360937237/badge_common.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o ${OBJECTDIR}/_ext/1360937237/Sound.o ${OBJECTDIR}/_ext/1360937237/LCDcolor.o ${OBJECTDIR}/_ext/1360937237/S6B33.o ${OBJECTDIR}/_ext/1360937237/time_date.o ${OBJECTDIR}/_ext/1360937237/timer1_int.o ${OBJECTDIR}/_ext/1360937237/jonesforth.o ${OBJECTDIR}/_ext/1360937237/TimeDelay.o ${OBJECTDIR}/_ext/1360937237/touchCTMU.o ${OBJECTDIR}/_ext/1360937237/flash.o ${OBJECTDIR}/_ext/1360937237/mario.o ${OBJECTDIR}/_ext/1360937237/piano.o ${OBJECTDIR}/_ext/1360937237/assets.o ${OBJECTDIR}/_ext/1360937237/assetList.o

# Source Files
SOURCEFILES=../src/USB/usb_device.c ../src/USB/usb_function_cdc.c ../src/badge15.c ../src/badge_common.c ../src/main.c ../src/usb_descriptors.c ../src/Sound.c ../src/LCDcolor.c ../src/S6B33.c ../src/time_date.c ../src/timer1_int.c ../src/jonesforth.S ../src/TimeDelay.c ../src/touchCTMU.c ../src/flash.c ../src/mario.c ../src/piano.c ../src/assets.c ../src/assetList.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128D
MP_LINKER_FILE_OPTION=,--script="../src/app_32MX250F128D.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/jonesforth.o: ../src/jonesforth.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o.ok ${OBJECTDIR}/_ext/1360937237/jonesforth.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/jonesforth.o.d" "${OBJECTDIR}/_ext/1360937237/jonesforth.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/jonesforth.o.d"  -o ${OBJECTDIR}/_ext/1360937237/jonesforth.o ../src/jonesforth.S -save-temps=obj -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/jonesforth.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/_ext/1360937237/jonesforth.o: ../src/jonesforth.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/jonesforth.o.ok ${OBJECTDIR}/_ext/1360937237/jonesforth.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/jonesforth.o.d" "${OBJECTDIR}/_ext/1360937237/jonesforth.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/jonesforth.o.d"  -o ${OBJECTDIR}/_ext/1360937237/jonesforth.o ../src/jonesforth.S -save-temps=obj -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/jonesforth.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/659838314/usb_device.o: ../src/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659838314 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659838314/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/659838314/usb_device.o.d" -o ${OBJECTDIR}/_ext/659838314/usb_device.o ../src/USB/usb_device.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/659838314/usb_function_cdc.o: ../src/USB/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659838314 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o ../src/USB/usb_function_cdc.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/badge15.o: ../src/badge15.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge15.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/badge15.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/badge15.o.d" -o ${OBJECTDIR}/_ext/1360937237/badge15.o ../src/badge15.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/badge_common.o: ../src/badge_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/badge_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/badge_common.o.d" -o ${OBJECTDIR}/_ext/1360937237/badge_common.o ../src/badge_common.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.o: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o ../src/usb_descriptors.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/Sound.o: ../src/Sound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Sound.o.d" -o ${OBJECTDIR}/_ext/1360937237/Sound.o ../src/Sound.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/LCDcolor.o: ../src/LCDcolor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCDcolor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCDcolor.o ../src/LCDcolor.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/S6B33.o: ../src/S6B33.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/S6B33.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/S6B33.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/S6B33.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/S6B33.o.d" -o ${OBJECTDIR}/_ext/1360937237/S6B33.o ../src/S6B33.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/time_date.o: ../src/time_date.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time_date.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/time_date.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/time_date.o.d" -o ${OBJECTDIR}/_ext/1360937237/time_date.o ../src/time_date.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/timer1_int.o: ../src/timer1_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timer1_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer1_int.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer1_int.o ../src/timer1_int.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/TimeDelay.o: ../src/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1360937237/TimeDelay.o ../src/TimeDelay.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/touchCTMU.o: ../src/touchCTMU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/touchCTMU.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d" -o ${OBJECTDIR}/_ext/1360937237/touchCTMU.o ../src/touchCTMU.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/flash.o: ../src/flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/flash.o.d" -o ${OBJECTDIR}/_ext/1360937237/flash.o ../src/flash.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/mario.o: ../src/mario.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mario.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mario.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mario.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mario.o.d" -o ${OBJECTDIR}/_ext/1360937237/mario.o ../src/mario.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/piano.o: ../src/piano.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/piano.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/piano.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/piano.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/piano.o.d" -o ${OBJECTDIR}/_ext/1360937237/piano.o ../src/piano.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/assets.o: ../src/assets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assets.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assets.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/assets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/assets.o.d" -o ${OBJECTDIR}/_ext/1360937237/assets.o ../src/assets.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/assetList.o: ../src/assetList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assetList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assetList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/assetList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/assetList.o.d" -o ${OBJECTDIR}/_ext/1360937237/assetList.o ../src/assetList.c   -save-temps=obj -w -G0
	
else
${OBJECTDIR}/_ext/659838314/usb_device.o: ../src/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659838314 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659838314/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/659838314/usb_device.o.d" -o ${OBJECTDIR}/_ext/659838314/usb_device.o ../src/USB/usb_device.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/659838314/usb_function_cdc.o: ../src/USB/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659838314 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/659838314/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/659838314/usb_function_cdc.o ../src/USB/usb_function_cdc.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/badge15.o: ../src/badge15.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge15.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge15.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/badge15.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/badge15.o.d" -o ${OBJECTDIR}/_ext/1360937237/badge15.o ../src/badge15.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/badge_common.o: ../src/badge_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/badge_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/badge_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/badge_common.o.d" -o ${OBJECTDIR}/_ext/1360937237/badge_common.o ../src/badge_common.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.o: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/1360937237/usb_descriptors.o ../src/usb_descriptors.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/Sound.o: ../src/Sound.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Sound.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Sound.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Sound.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Sound.o.d" -o ${OBJECTDIR}/_ext/1360937237/Sound.o ../src/Sound.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/LCDcolor.o: ../src/LCDcolor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCDcolor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCDcolor.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCDcolor.o ../src/LCDcolor.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/S6B33.o: ../src/S6B33.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/S6B33.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/S6B33.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/S6B33.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/S6B33.o.d" -o ${OBJECTDIR}/_ext/1360937237/S6B33.o ../src/S6B33.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/time_date.o: ../src/time_date.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time_date.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/time_date.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/time_date.o.d" -o ${OBJECTDIR}/_ext/1360937237/time_date.o ../src/time_date.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/timer1_int.o: ../src/timer1_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timer1_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer1_int.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer1_int.o ../src/timer1_int.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/TimeDelay.o: ../src/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1360937237/TimeDelay.o ../src/TimeDelay.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/touchCTMU.o: ../src/touchCTMU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/touchCTMU.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/touchCTMU.o.d" -o ${OBJECTDIR}/_ext/1360937237/touchCTMU.o ../src/touchCTMU.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/flash.o: ../src/flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/flash.o.d" -o ${OBJECTDIR}/_ext/1360937237/flash.o ../src/flash.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/mario.o: ../src/mario.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mario.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mario.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mario.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mario.o.d" -o ${OBJECTDIR}/_ext/1360937237/mario.o ../src/mario.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/piano.o: ../src/piano.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/piano.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/piano.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/piano.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/piano.o.d" -o ${OBJECTDIR}/_ext/1360937237/piano.o ../src/piano.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/assets.o: ../src/assets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assets.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assets.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/assets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/assets.o.d" -o ${OBJECTDIR}/_ext/1360937237/assets.o ../src/assets.c   -save-temps=obj -w -G0
	
${OBJECTDIR}/_ext/1360937237/assetList.o: ../src/assetList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assetList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/assetList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/assetList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM -I"../src" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/assetList.o.d" -o ${OBJECTDIR}/_ext/1360937237/assetList.o ../src/assetList.c   -save-temps=obj -w -G0
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/app_32MX250F128D.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -save-temps=obj  -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--defsym=_min_stack_size=2048,--gc-sections,-Map="mappit",--report-mem,--cref,-s,-G0
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/app_32MX250F128D.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -save-temps=obj -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--defsym=_min_stack_size=2048,--gc-sections,-Map="mappit",--report-mem,--cref,-s,-G0
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Badge15.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
