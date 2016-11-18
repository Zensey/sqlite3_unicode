CC      = cl
LIBS = kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib

M = /MACHINE:X86
#M = /MACHINE:X64

CFLAGS = /MD /GS /GL /W3 /Gy /Zc:wchar_t /I"..\sqlite-autoconf-3130000" /Gm- /O2 /sdl /fp:precise /D "_WINDLL" /D "_MBCS" /errorReport:prompt /WX- /Zc:forScope /Gd /Oi /EHsc /nologo /c
LINK = /ERRORREPORT:PROMPT /NOLOGO /NXCOMPAT /DYNAMICBASE /OPT:REF /OPT:ICF /IMPLIB:"ext.lib" /DLL /TLBID:1 /LTCG

RM  = rm -f

default: all

all: Hello

Hello: sqlite3_unicode.c
	$(CC) $(CFLAGS) $(M) sqlite3_unicode.c
	link.exe $(LINK) $(M) sqlite3_unicode.obj /OUT:"unicode.dll"

clean veryclean:
	$(RM) Hello
