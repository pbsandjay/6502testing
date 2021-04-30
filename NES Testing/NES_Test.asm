	org $BFF0

	db "NES",$1a		;ID
	db $01				;Rom pages (16k each)
	db $0				;CHR-ROM pages
	db %01000010		;mmmmFTBM		mmmm = mapper no bottom 4 bits , Four screen vram layout, Trainer at &7000, Battery ram at &6000, Mirror (0=horiz, 1=vert)
	db %00000000		;mmmm--PV 		mapper (top 4 bits...  Pc10 arcade, Vs unisystem )
	db 0				;Ram pages
	db 0,0,0,0,0,0,0
						;We selected Mapper 4 - it has 8k VRAM , 8K Sram and 128k rom
z_Regs 		equ $60
Cursor_X 	equ $40
Cursor_Y 	equ Cursor_X+1
SpPage 		equ $0100	
UserRam 	equ $200
vblanked 	equ $7F		;Zero page address of Vblank count


nmihandler:				;This procuedure runs after each frame (See footer.asm)
	php
	inc vblanked		;Alter Vblank Zero page entry
	plp
irqhandler:
	rti					;Do nothing

ProgramStart:
	sei					;Interrupts off
	cld					;Clear Decimal flag
	
	ldx #$ff			;Set up stack
	txs
	
	lda #%10000000		;Turn on extra ram at $6000-%7FFF
	sta $A001						
	
	
	lda #%10111111	;(Sprite enable/back enable/Sprite leftstrip / backleftstrip)
	sta $2001		;PPUMASK
	
	lda #$80		;NMI enable (Vblank)
	sta $2000		;PPUCTRL - VPHB SINN
	
	
;Cartridge Footer	
	org $FFFA
	dw nmihandler			;FFFA - Interrupt handler
	dw ProgramStart			;FFFC - Entry point
	dw irqhandler			;FFFE - IRQ Handler
	
	
	
	
	
	
	