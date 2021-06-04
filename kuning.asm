;; Warna teks DOSBox
;; ------------------------------
;; Warna teks : Kuning
;;
;; (c) 2021 - Febriyanto Nugroho
;;
;; Di assemble menggunakan flat assembler (fasm)
;; C:\> fasm kuning.asm 

org 100h

        mov     dx, 3c8h
        mov     al, 1
        out     dx, al
        inc     dx
        mov     si, palette
        mov     cx, 256*3
        rep     outsb
 
        int     20h

palette:
        repeat 256
                db %-1, %-1, 0
        end repeat
