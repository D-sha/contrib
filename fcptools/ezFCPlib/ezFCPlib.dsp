# Microsoft Developer Studio Project File - Name="ezFCPlib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ezFCPlib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ezFCPlib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ezFCPlib.mak" CFG="ezFCPlib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ezFCPlib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ezFCPlib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ezFCPlib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ezFCPlib___Win32_Release"
# PROP BASE Intermediate_Dir "ezFCPlib___Win32_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ezFCPlib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "ezFCPlib___Win32_Debug"
# PROP BASE Intermediate_Dir "ezFCPlib___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "ezFCPlib - Win32 Release"
# Name "ezFCPlib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\_fcpCompat.c
# End Source File
# Begin Source File

SOURCE=.\_fcpGlobals.c
# End Source File
# Begin Source File

SOURCE=.\_fcpInfo.c
# End Source File
# Begin Source File

SOURCE=.\_fcpLog.c
# End Source File
# Begin Source File

SOURCE=.\_fcpMetadata.c
# End Source File
# Begin Source File

SOURCE=.\_fcpPut.c
# End Source File
# Begin Source File

SOURCE=.\_fcpRecvResponse.c
# End Source File
# Begin Source File

SOURCE=.\_fcpSock.c
# End Source File
# Begin Source File

SOURCE=.\_fcpUtil.c
# End Source File
# Begin Source File

SOURCE=.\fcpCloseKey.c
# End Source File
# Begin Source File

SOURCE=.\fcpCreation.c
# End Source File
# Begin Source File

SOURCE=.\fcpMakeSvkKeypair.c
# End Source File
# Begin Source File

SOURCE=.\fcpOpenKey.c
# End Source File
# Begin Source File

SOURCE=.\fcpPutKeyFromFile.c
# End Source File
# Begin Source File

SOURCE=.\fcpStartup.c
# End Source File
# Begin Source File

SOURCE=.\fcpWriteKey.c
# End Source File
# Begin Source File

SOURCE=.\mimetype.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\ezFCPlib.h
# End Source File
# End Group
# End Target
# End Project
