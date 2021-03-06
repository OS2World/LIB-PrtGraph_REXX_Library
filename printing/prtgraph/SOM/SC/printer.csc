#
# This file was generated by the VX-REXX Class Browser
#

#include "somobj.sc"
#include "core.sc"
#include "visible.sc"
#include "primiti.sc"
#include "desctxt.sc"

class: VRPrinter,
    local,
    classprefix = VRPrinterClass_,
    external prefix = VRPrinterInstance_,
    major version = 1,
    minor version = 1;

parent class: VRDescriptiveText;

release order:
    vrStemFetchLong, vrStemFetchString, vrStemSetValue, 
    vrStemSetValueLong, vrGet_LeftMargin, vrGet_RightMargin, 
    vrGet_TopMargin, vrGet_BottomMargin, vrGet_PageWidth, 
    vrGet_PageHeight, vrGet_Printing, vrGet_CurrentPrinter, 
    vrGet_CurrentDevice, vrSet_LineSpace, vrGet_LineSpace, 
    vrGet_Version, vrSet_PrintColor, vrGet_PrintColor, 
    vrSet_ColorEnabled, vrGet_ColorEnabled, vrSet_Measures, 
    vrGet_Measures, vrGet_PageNum, vrGet_JobName, 
    vrGet_DefaultPrinter, vrGet_MinLeftMar, vrGet_MinRightMar, 
    vrGet_MinTopMar, vrGet_MinBottomMar, vrGet_FormName, 
    vrGet_FormWidth, vrGet_FormHeight, vrSet_ShowProgress, 
    vrGet_ShowProgress, vrGet_XPos, vrGet_YPos, 
    vrGet_XposTwips, vrGet_YposTwips, vrRXMethod_ClosePrintJob, 
    vrRXMethod_DefineTable, vrRXMethod_EndRow, vrRXMethod_EndTable, 
    vrRXMethod_GoTo, vrRXMethod_JobProperties, vrRXMethod_PrintJustified, 
    vrRXMethod_PrintCentered, vrRXMethod_PrintRight, vrRXMethod_PrintLeft, 
    vrRXMethod_PrintLine, vrRXMethod_PrintBox, vrRXMethod_PrintBitmap, 
    vrRXMethod_PrintFile, vrRXMethod_StartCol, vrRXMethod_StartRow, 
    vrRXMethod_StartTable, vrRXMethod_SetHeader, vrRXMethod_SetHeaderMode, 
    vrRXMethod_SetFooter, vrRXMethod_SetMargins, vrRXMethod_SetPrinter, 
    vrRXMethod_PrinterDialog, vrRXMethod_FontDialog, vrRXMethod_OpenPrintJob, 
    vrRXMethod_NewPage, vrRXMethod_PrinterList, vrRXMethod_Tab, 
    vrRXMethod_SetHeaderLineFont, vrRXMethod_PrintObjectImage, vrRXMethod_ResetColHeader, 
    vrRXMethod_ResetHeader, vrRXMethod_AbortPrintJob, vrRXMethod_BlockFits, 
    vrRXMethod_LineFits, vrRXMethod_SetProgressTexts, vrRXMethod_MoveX, 
    vrRXMethod_MoveY, vrRXMethod_PrintWinImage, vrRXMethod_LoadResMod, 
    vrRXMethod_FreeResMod, vrRXMethod_PrintJPEG, vrRXMethod_StringLength, 
    vrRXMethod_GotoX, vrRXMethod_GotoY, vrRXMethod_GotoTab, 
    vrRXMethod_DrawLine, vrRXMethod_PrintBullet, vrWM_INITCAP, 
    vrShowHelp, vrRXMethod_SaveJobProps, vrRXMethod_ReadJobProps;

passthru: C.h, after;

#include "vrprint.h"
#include "d:\prtgraph\prt_int.h"
#include "d:\prtgraph\prt_dlg.h"
#define  WM_INITCAP  (WM_USER + 10)

#ifdef __WATCOMC__
    #pragma aux VRPrinterCClassData "*"
    #pragma aux VRPrinterClassData "*"
    #pragma aux M_VRPrinterCClassData "*"
    #pragma aux M_VRPrinterClassData "*"
#endif
endpassthru;


passthru: C.ih, after;

#include "vxrexx.h"

endpassthru;

data:

char        pszColor[ 32];
PJOB_TYPE   hPrt;


methods:


#
# Instance methods
#

    override somInit;
    -- VRPrinterInstance_somInit
    override somUninit;
    -- VRPrinterInstance_somUninit
    override vrLocalCreateWindow;
    -- VRPrinterInstance_vrLocalCreateWindow
    ULONG vrStemFetchLong( PSZ pszStem, ULONG index, PBOOL pOk );
    -- VRPrinterInstance_vrStemFetchLong
    PSZ vrStemFetchString( PSZ pszStem, ULONG index, PBOOL pOk );
    -- VRPrinterInstance_vrStemFetchString
    BOOL vrStemSetValue( PSZ pszStem, ULONG index, PSZ pszValue );
    -- VRPrinterInstance_vrStemSetValue
    BOOL vrStemSetValueLong( PSZ pszStem, ULONG index, ULONG ulValue );
    -- VRPrinterInstance_vrStemSetValueLong

#
# REXX Properties
#

    bool vrGet_LeftMargin( PULONG val );
    -- VRPrinterInstance_vrGet_LeftMargin
    bool vrGet_RightMargin( PULONG val );
    -- VRPrinterInstance_vrGet_RightMargin
    bool vrGet_TopMargin( PULONG val );
    -- VRPrinterInstance_vrGet_TopMargin
    bool vrGet_BottomMargin( PULONG val );
    -- VRPrinterInstance_vrGet_BottomMargin
    bool vrGet_PageWidth( PULONG val );
    -- VRPrinterInstance_vrGet_PageWidth
    bool vrGet_PageHeight( PULONG val );
    -- VRPrinterInstance_vrGet_PageHeight
    bool vrGet_Printing( BOOL *on );
    -- VRPrinterInstance_vrGet_Printing
    bool vrGet_CurrentPrinter( PSZ *str );
    -- VRPrinterInstance_vrGet_CurrentPrinter
    bool vrGet_CurrentDevice( PSZ *str );
    -- VRPrinterInstance_vrGet_CurrentDevice
    bool vrSet_LineSpace( ULONG val );
    -- VRPrinterInstance_vrSet_LineSpace
    bool vrGet_LineSpace( PULONG val );
    -- VRPrinterInstance_vrGet_LineSpace
    bool vrGet_Version( PSZ *str );
    -- VRPrinterInstance_vrGet_Version
    bool vrSet_PrintColor( PSZ str );
    -- VRPrinterInstance_vrSet_PrintColor
    bool vrGet_PrintColor( PSZ *str );
    -- VRPrinterInstance_vrGet_PrintColor
    bool vrSet_ColorEnabled( BOOL on );
    -- VRPrinterInstance_vrSet_ColorEnabled
    bool vrGet_ColorEnabled( BOOL *on );
    -- VRPrinterInstance_vrGet_ColorEnabled
    bool vrSet_Measures( PSZ str );
    -- VRPrinterInstance_vrSet_Measures
    bool vrGet_Measures( PSZ *str );
    -- VRPrinterInstance_vrGet_Measures
    bool vrGet_PageNum( PULONG val );
    -- VRPrinterInstance_vrGet_PageNum
    bool vrGet_JobName( PSZ *str );
    -- VRPrinterInstance_vrGet_JobName
    bool vrGet_DefaultPrinter( PSZ *str );
    -- VRPrinterInstance_vrGet_DefaultPrinter
    bool vrGet_MinLeftMar( PULONG val );
    -- VRPrinterInstance_vrGet_MinLeftMar
    bool vrGet_MinRightMar( PULONG val );
    -- VRPrinterInstance_vrGet_MinRightMar
    bool vrGet_MinTopMar( PULONG val );
    -- VRPrinterInstance_vrGet_MinTopMar
    bool vrGet_MinBottomMar( PULONG val );
    -- VRPrinterInstance_vrGet_MinBottomMar
    bool vrGet_FormName( PSZ *str );
    -- VRPrinterInstance_vrGet_FormName
    bool vrGet_FormWidth( PULONG val );
    -- VRPrinterInstance_vrGet_FormWidth
    bool vrGet_FormHeight( PULONG val );
    -- VRPrinterInstance_vrGet_FormHeight
    override vrSet_WordBreak;
    -- VRPrinterInstance_vrSet_WordBreak
    override vrGet_WordBreak;
    -- VRPrinterInstance_vrGet_WordBreak
    bool vrSet_ShowProgress( BOOL on );
    -- VRPrinterInstance_vrSet_ShowProgress
    bool vrGet_ShowProgress( BOOL *on );
    -- VRPrinterInstance_vrGet_ShowProgress
    bool vrGet_XPos( PULONG val );
    -- VRPrinterInstance_vrGet_XPos
    bool vrGet_YPos( PULONG val );
    -- VRPrinterInstance_vrGet_YPos
    bool vrGet_XposTwips( PULONG val );
    -- VRPrinterInstance_vrGet_XposTwips
    bool vrGet_YposTwips( PULONG val );
    -- VRPrinterInstance_vrGet_YposTwips

#
# REXX Methods
#

    bool vrRXMethod_ClosePrintJob( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), generate apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_ClosePrintJob
    bool vrRXMethod_DefineTable( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_DefineTable
    bool vrRXMethod_EndRow( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_EndRow
    bool vrRXMethod_EndTable( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_EndTable
    bool vrRXMethod_GoTo( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_GoTo
    bool vrRXMethod_JobProperties( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_JobProperties
    bool vrRXMethod_PrintJustified( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintJustified
    bool vrRXMethod_PrintCentered( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintCentered
    bool vrRXMethod_PrintRight( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintRight
    bool vrRXMethod_PrintLeft( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintLeft
    bool vrRXMethod_PrintLine( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintLine
    bool vrRXMethod_PrintBox( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintBox
    bool vrRXMethod_PrintBitmap( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintBitmap
    bool vrRXMethod_PrintFile( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintFile
    bool vrRXMethod_StartCol( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_StartCol
    bool vrRXMethod_StartRow( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_StartRow
    bool vrRXMethod_StartTable( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_StartTable
    bool vrRXMethod_SetHeader( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetHeader
    bool vrRXMethod_SetHeaderMode( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetHeaderMode
    bool vrRXMethod_SetFooter( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetFooter
    bool vrRXMethod_SetMargins( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetMargins
    bool vrRXMethod_SetPrinter( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetPrinter
    bool vrRXMethod_PrinterDialog( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrinterDialog
    bool vrRXMethod_FontDialog( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_FontDialog
    bool vrRXMethod_OpenPrintJob( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_OpenPrintJob
    bool vrRXMethod_NewPage( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_NewPage
    bool vrRXMethod_PrinterList( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrinterList
    bool vrRXMethod_Tab( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_Tab
    bool vrRXMethod_SetHeaderLineFont( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetHeaderLineFont
    bool vrRXMethod_PrintObjectImage( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintObjectImage
    bool vrRXMethod_ResetColHeader( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_ResetColHeader
    bool vrRXMethod_ResetHeader( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_ResetHeader
    bool vrRXMethod_AbortPrintJob( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_AbortPrintJob
    bool vrRXMethod_BlockFits( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_BlockFits
    bool vrRXMethod_LineFits( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_LineFits
    bool vrRXMethod_SetProgressTexts( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SetProgressTexts
    bool vrRXMethod_MoveX( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_MoveX
    bool vrRXMethod_MoveY( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_MoveY
    bool vrRXMethod_PrintWinImage( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintWinImage
    bool vrRXMethod_LoadResMod( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_LoadResMod
    bool vrRXMethod_FreeResMod( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_FreeResMod
    bool vrRXMethod_PrintJPEG( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintJPEG
    bool vrRXMethod_StringLength( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_StringLength
    bool vrRXMethod_GotoX( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_GotoX
    bool vrRXMethod_GotoY( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_GotoY
    bool vrRXMethod_GotoTab( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_GotoTab
    bool vrRXMethod_DrawLine( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_DrawLine
    bool vrRXMethod_PrintBullet( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_PrintBullet
    bool vrRXMethod_SaveJobProps( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_SaveJobProps
    bool vrRXMethod_ReadJobProps( LONG argc, PRXSTRING argv, PLONG argsused, PRXSTRING retstr, PVRMETHEXTRA rxdata ), apply = VRPrinter_RXMethod_stub;
    -- VRPrinterInstance_vrRXMethod_ReadJobProps

#
# Message handlers
#

    MRESULT vrWM_INITCAP( HWND hWnd, ULONG msg, MPARAM mp1, MPARAM mp2 ), generate apply = VRPrinter_WM_stub;
    -- VRPrinterInstance_vrWM_INITCAP

#
# Class methods
#

    override vrLocalClassInit, class;
    -- VRPrinterClass_vrLocalClassInit
    override vrLocalWindowClassInit, class;
    -- VRPrinterClass_vrLocalWindowClassInit
    override somInit, class;
    -- VRPrinterClass_somInit
    override somUninit, class;
    -- VRPrinterClass_somUninit
    bool vrShowHelp( HWND root_frame ), class;
    -- VRPrinterClass_vrShowHelp
