$DEFINE __RQMEMORY

$IFNDEF __WIN32API

Const HEAP_CREATE_ALIGN_16 = &H10000
Const HEAP_CREATE_ENABLE_TRACING = &H20000
Const HEAP_DISABLE_COALESCE_ON_FREE = &H80
Const HEAP_FREE_CHECKING_ENABLED = &H40
Const HEAP_GENERATE_EXCEPTIONS = &H4
Const HEAP_GROWABLE = &H2
Const HEAP_MAXIMUM_TAG = &HFFF
Const HEAP_NO_SERIALIZE = &H1
Const HEAP_PSEUDO_TAG_FLAG = &H8000
Const HEAP_REALLOC_IN_PLACE_ONLY = &H10
Const HEAP_TAG_SHIFT = 18
Const HEAP_TAIL_CHECKING_ENABLED = &H20
Const HEAP_ZERO_MEMORY = &H8

Declare Function HeapCreate Lib "kernel32" Alias "HeapCreate" (ByVal flOptions As Long, ByVal dwInitialSize As Long, ByVal dwMaximumSize As Long) As Long
Declare Function HeapDestroy Lib "kernel32" Alias "HeapDestroy" (ByVal hHeap As Long) As Long
Declare Function HeapAlloc Lib "kernel32" Alias "HeapAlloc" (ByVal hHeap As Long, ByVal dwFlags As Long, ByVal dwBytes As Long) As Long
Declare Function HeapReAlloc Lib "kernel32" Alias "HeapReAlloc" (ByVal hHeap As Long, ByVal dwFlags As Long, lpMem As Long, ByVal dwBytes As Long) As Long
Declare Function HeapFree Lib "kernel32" Alias "HeapFree" (ByVal hHeap As Long, ByVal dwFlags As Long, lpMem As Long) As Long
Declare Function HeapSize Lib "kernel32" Alias "HeapSize" (ByVal hHeap As Long, ByVal dwFlags As Long, lpMem As Long) As Long
Declare Function GetProcessHeap Lib "kernel32" Alias "GetProcessHeap" () As Long

$ENDIF

Function PtrSize(P&) As Integer
    DefInt Size = 0 
    If P& Then
       Size = HeapSize(GetProcessHeap,HEAP_NO_SERIALIZE,P&)
    End If
    Result = Size
End Function

Sub PtrFree(BYREF P&)
    If P& Then 
       HeapFree(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,P&)
       P& = 0
    End If
End Sub

Function NewZStr(S As String) As Integer
    DefStr cs = s + Chr$(0)
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,Len(cs))
    If Ptr Then MemCpy Ptr,VarPTR(cs),Len(cs)
    Result = Ptr
End Function

Function NewStr(S As String) As Integer
    DefStr Cs = s
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,Len(Cs))
    If Ptr Then MemCpy Ptr,VarPTR(Cs),Len(Cs)
    Result = Ptr
End Function

Function StrFromPtr(P&) As String
    If P& Then
       DefInt L = HeapSize(GetProcessHeap,HEAP_NO_SERIALIZE,P&)
       DefStr s = Space$(L)
       MemCpy VarPTR(s),P&,L
       Result = s
    Else
       Result = ""
    End If
End Function

Function NewPtr(Size&,Typ&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,Size&)
    If Ptr Then MemCpy Ptr,Typ&,Size&
    Result = Ptr
End Function

Function NewFloat(Typ#) As Integer
    DefDbl F = Typ#
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Double))
    If Ptr Then MemCpy Ptr,VarPTR(F),SizeOf(Double)
    Result = Ptr
End Function

Function FloatFromPtr(P&) As Double
    Dim M As QMemoryStream
    DefDbl F = 0
    If P& Then
       M.Position = 0
       M.MemCopyFrom(P&,8)
       M.Position = 0
       F = M.ReadNum(8)
       M.Close
       Result = F
    Else
       Result = 0
    End If
End Function

Function NewInteger(Typ&) As Integer
    DefInt I = Typ&
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Integer))
    If Ptr Then MemCpy Ptr,VarPTR(I),SizeOf(Integer)
    Result = Ptr
End Function

Function IntFromPtr(P&) As Integer
    Dim M As QMemoryStream
    DefInt I = 0
    If P& Then
       M.Position = 0
       M.MemCopyFrom(P&,4)
       M.Position = 0
       I = M.ReadNum(4)
       M.Close
       Result = I
    Else
       Result = 0
    End If
End Function

Function ReAllocate(BYREF P&,Count&) As Integer
    If P& Then
       P& = HeapReAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,P&,PtrSize(P&)*Count&)
    End If
    Result = P&
End Function

Function Allocate(Count&) As Integer
    Result = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,Count&)
End Function

Function Ptr(P&,Size&,Index&) As Integer
    Result = 0
    If P& Then
       DefInt Count = PtrSize(P&)/Size&
       If Index& < Count Then
          Result = P& + Index&*Size&
       End If
    End If
End Function

Function NewByteArray(Count&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Byte)*Count&)
    Result = Ptr
End Function

Function NewIntArray(Count&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Integer)*Count&)
    Result = Ptr
End Function

Function NewSngArray(Count&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Single)*Count&)
    Result = Ptr
End Function

Function NewDblArray(Count&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(Double)*Count&)
    Result = Ptr
End Function

Function NewStrArray(Count&) As Integer
    DefInt Ptr = HeapAlloc(GetProcessHeap,HEAP_NO_SERIALIZE Or HEAP_ZERO_MEMORY,SizeOf(String)*Count&)
    Result = Ptr
End Function