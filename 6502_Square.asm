main:
  LDX #$00      ; pixel color value
  LDY #$00      ; pixel location on the current line

1loop:
  TXA
  STA $0200, X
  PHA
  INX
  INX
  INX
  INY
  CPY #$00
  BNE 1loop 

2loop:
  TXA
  STA $0300, X
  PHA
  INX
  INX
  INX
  INY
  CPY #$00
  BNE 2loop

3loop:
  TXA
  STA $0400, X
  PHA
  INX
  INX
  INX
  INY
  CPY #$00
  BNE 3loop

4loop:
  TXA
  STA $0500, X
  PHA
  INX
  INX
  INX
  INY
  CPY #$00
  BNE 4loop


 
