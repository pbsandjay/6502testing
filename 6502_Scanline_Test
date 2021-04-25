;copy code and put in any box @ ;https://skilldrick.github.io/easy6502/
;This has way too many nop
;instructions... I'll fix it later
;probably gotta find the timing
;from the MHz of the emualated system


;this is to simulate how 
;scanlines work for older
;consoles...
;for the nes,
;it can only refresh graphics
;during vblanking
;tinyurl.com/vblank
;obviously you would use
;NMI or IRQ

main:
  LDX #$00      ; pixel color value
  LDY #$00      ; pixel location on the current line


firstloop:
  TXA
  STA $0200, X
  PHA
  INX
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  INY
  CPY #$00 
  ;Change to 20 for NTSC bars or 00 for stairs
  BNE firstloop

secondloop:
  TXA
  STA $0300, X
  PHA
  INX
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  INY
  CPY #$00 
  ;Change to 20 for NTSC bars or 00 for stairs
  BNE secondloop

thirdloop:
  TXA
  STA $0400, X
  PHA
  INX
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  INY
  CPY #$00 
  ;Change to 20 for NTSC bars or 00 for stairs
  BNE thirdloop

fourthloop:
  TXA
  STA $0500, X
  PHA
  INX
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP
  NOP 
  NOP
  NOP  
  NOP 
  NOP
  NOP
  INY
  CPY #$00 
  ;Change to 20 for NTSC bars or 00 for stairs
  BNE fourthloop

 
