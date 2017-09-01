;This is some simple assembly code to perform a counting operation using the Z80 processor
;the current value of the counter is written to the data bus

;Declaring this codes position in memory
	org 0000

;VARIABLES
InitialCount: .byte 0; The Variable that stores the initial value to count from

;MAIN CODE
	ld a,InitialCount
mainloop:
	ld (0),a
	inc a
	jr mainloop