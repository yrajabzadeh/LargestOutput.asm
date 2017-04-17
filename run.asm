.model small
.stack 100h
.data
msg db 10,13,’Enter a number$’
msg db2 10,13,’The quotient is$’
msg db3 10,13,’The product is$’
x dw ?
y dw ?
.code
extra PutDec: near
extra GetDec: near
main proc
mov AX, @data
mov DS, AX
mov AH, 9h
lea dx, msg
int 21h
call GetDec
mov x, AX
mov AH, 9h
lea dx, msg
int 21h
call GetDec
mov y, AX
lea dx, msg2
int21h
mov DX, 0
mov AX, x
DIV y
call PutDec
mov AH, 04ch
int 21h
 call GetDec
mov y, AX
mov AX, x
lea dx, msg3
int 21h
mov AX, x
mul y
call PutDec
mov AH, 04ch
int 21h
main endp
endp
