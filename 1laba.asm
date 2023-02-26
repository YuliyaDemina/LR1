.686
.model flat,stdcall
.stack 100h
.data 
X dw 87
Y dw 60
Z dw -2
M dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:
ROR X,2  
MOV ax,X
SUB ax,Y
ROR Y,2
MOV bx,Z
AND bx,Y
ADD ax,bx
MOV M,ax
exit:
Invoke ExitProcess,M
End Start