.MODEL SMALL

.CODE

ORG 100h

Proses :

MOV AX,0F000h ; Masukkan nilai F000 pada AX

MOV ES,AX ; Copykan nilai AX ke ES

MOV BX,0FFF5h ; Penunjuk Offset

XOR SI,SI ; Jadikan SI=0

MOV CX,8 ; Counter untuk LOOP

Ulang:

MOV DL,ES:[BX][SI] ; Ambil isi alamat ES:BX+SI

MOV AH,02h ; Nilai servis mencetak karakter

INT 21h ; Cetak !!

INC SI ; SI:=SI+1

LOOP Ulang ; Lompat ke Ulang sampai CX=0

INT 20h ; Selesai ! kembali ke DOS

END Proses