main:
  LDX #$00      ; pixel color value
  LDY #$00      ; pixel location on the current line
  ;DEX (uncomment me for fun)
  ;DEY (... and me, too)

firstloop:
  TXA
  STA ($00), Y
  PHA
  INX
  INY
  CPY #$ff 
  ;change me to 10 for NTSC bars or 00 for stairs
  BNE firstloop 

secondloop:
  PLA
  STA ($00), Y
  INY
  INX
  CPY #$ff  
  ;Change to 20 for NTSC bars or 00 for stairs
  BNE secondloop
 
nextline:
  ; add $20 to address $00 to go to next line
  LDA $00
  CLC
  ADC #$20
  STA $00
  BCC main
  INC $01
 
  ; stop if beyond memory mapped to screen
  LDA $01
  CMP #$06
  BCC main
  BRK
