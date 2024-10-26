LevelSelect_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     LevelSelect_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       LevelSelect_DAC
	smpsHeaderFM        LevelSelect_FM1,	$00, $0C
	smpsHeaderFM        LevelSelect_FM2,	$00, $16
	smpsHeaderFM        LevelSelect_FM3,	$E8, $14
	smpsHeaderFM        LevelSelect_FM4,	$E8, $14
	smpsHeaderPSG       LevelSelect_PSG1,	$DC, $05, $00, sTone_01
	smpsHeaderPSG       LevelSelect_PSG2,	$DC, $05, $00, sTone_01
	smpsHeaderPSG       LevelSelect_PSG3,	$F4, $01, $00, $02

; FM1 Data
LevelSelect_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsModSet          $03, $01, $E9, $FF
	dc.b	nC3, $12
	smpsModSet          $00, $00, $00, $00

LevelSelect_Loop00:
	smpsCall            LevelSelect_Call10
	smpsLoop            $01, $06, LevelSelect_Loop00
	smpsCall            LevelSelect_Call11
	smpsCall            LevelSelect_Call12
	smpsCall            LevelSelect_Call13
	smpsJump            LevelSelect_Loop00

LevelSelect_Call10:
	smpsCall            LevelSelect_Call31
	smpsCall            LevelSelect_Call32
	smpsCall            LevelSelect_Call31
	smpsCall            LevelSelect_Call33
	smpsReturn

LevelSelect_Call11:
	smpsCall            LevelSelect_Call2E
	smpsCall            LevelSelect_Call2B
	smpsCall            LevelSelect_Call2F
	smpsCall            LevelSelect_Call30
	smpsReturn

LevelSelect_Call12:
	smpsCall            LevelSelect_Call2A
	smpsCall            LevelSelect_Call2B
	smpsCall            LevelSelect_Call2C
	smpsCall            LevelSelect_Call2D
	smpsReturn

LevelSelect_Call13:
	smpsCall            LevelSelect_Call28
	smpsCall            LevelSelect_Call29
	smpsLoop            $02, $04, LevelSelect_Call13
	smpsReturn

LevelSelect_Call31:
	dc.b	nD3, $06, nD3, nD3, $0C, nD3, nA2, $06, nD3, nRst, nD3, nRst
	dc.b	nA2, nD3, nD3, nA2, nAb2
	smpsReturn

LevelSelect_Call32:
	dc.b	nG2, $06, nG2, nG2, $0C, nG2, nD2, $06, nG2, nRst, nG2, nRst
	dc.b	nD2, nG2, nG2, nA2, $0C
	smpsReturn

LevelSelect_Call33:
	dc.b	nG2, $06, nG2, nG2, $0C, nG2, nD2, $06, nG2, nRst, nG2, nRst
	dc.b	nD2, nG2, nG2, nA2, nG2
	smpsReturn

LevelSelect_Call2E:
	dc.b	nE2, $06, nE2, nRst, $18, nB1, $06, nE2, nRst, nB3, nRst, nE3
	dc.b	nRst, nE2, nBb3, $0C
	smpsReturn

LevelSelect_Call2B:
	dc.b	nA2, $06, nA2, nRst, $18, nE2, $06, nA2, nRst, nA2, nRst, nA2
	dc.b	$0C, nB2, $06, nA2, nB2
	smpsReturn

LevelSelect_Call2F:
	dc.b	nD2, $06, nD2, nRst, $18, nD3, $06, nD2, nRst, $18, nD2, $06
	dc.b	nD2, nA2, nAb2
	smpsReturn

LevelSelect_Call30:
	dc.b	nG2, $06, nG2, nRst, $18, nD2, $06, nG2, nRst, nG2, nRst, nG2
	dc.b	$0C, nG2, $06, nFs2, $0C
	smpsReturn

LevelSelect_Call2A:
	dc.b	nE2, $06, nE2, nRst, $18, nB2, $06, nE3, nRst, nE3, nRst, nE2
	dc.b	$0C, nE2, $06, nB2, nBb2
	smpsReturn

LevelSelect_Call2C:
	dc.b	nD2, $06, nD2, nRst, $18, nA2, $06, nD3, nRst, nD3, nRst, nA2
	dc.b	$12, nD2, $0C
	smpsReturn

LevelSelect_Call2D:
	dc.b	nG2, $06, nG2, nRst, $12, nG2, $06, nD2, nD3, nG2, nG2, nRst
	dc.b	nG2, $0C, nD3, $06, nG3, nD3
	smpsReturn

LevelSelect_Call28:
	dc.b	nC3, $06, nC3, nC3, $0C, nC3, nG2, $06, nC3, nRst, nC3, nRst
	dc.b	nG2, nC3, nC3, nG2, nFs2
	smpsReturn

LevelSelect_Call29:
	dc.b	nF2, $06, nF2, nF2, $0C, nF2, nC2, $06, nF2, nRst, nF2, nRst
	dc.b	nC2, nF2, nF2, nG2, $0C
	smpsReturn

; FM2 Data
LevelSelect_FM2:
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nRst, $04, nD3, nD3

LevelSelect_Jump03:
	smpsCall            LevelSelect_Call0C
	dc.b	nRst, $60, nRst, nRst, $54
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nD3, nD3
	smpsCall            LevelSelect_Call0C
	dc.b	nRst, $60, nRst, nRst, $48
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	dc.b	nRst, $0C, nD6
	smpsModSet          $22, $02, $01, $02
	smpsCall            LevelSelect_Call0D
	smpsCall            LevelSelect_Call0E
	smpsCall            LevelSelect_Call0F
	dc.b	nG5, $60
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModSet          $01, $03, $01, $03
	dc.b	nRst, $60, nRst, nRst, nRst, $0C, nG5, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nG5
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nBb5, nC6
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nC6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nCs6, $03, nD6, $0F, nC6, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nC6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nD6
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nD6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nEb6
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nEb6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nF6, $06, nG6
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nG6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nBb6, $12, nA6, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nA6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nBb6, nC7
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nC7
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nF6, $03, nFs6, $0F, nF6, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nF6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nEb6, $12, nC6, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nC6
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nRst, $30, nRst, $54
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nRst, $04, nD3, nD3
	smpsJump            LevelSelect_Jump03

LevelSelect_Call0C:
	smpsPan             panCenter, $00
	smpsCall            LevelSelect_Call27
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	smpsCall            LevelSelect_Call27
	smpsAlterVol        $08
	smpsPan             panRight, $00
	smpsCall            LevelSelect_Call27
	smpsAlterVol        $0C
	smpsPan             panCenter, $00
	smpsCall            LevelSelect_Call27
	smpsAlterVol        $E8
	smpsReturn

LevelSelect_Call0D:
	dc.b	nCs6, $0C, nB5, $06, nCs6, nRst, nB5, nRst, nA5, $2A, nA5, $06
	dc.b	nB5, nC6, $0C, nB5, $06, nC6, nRst, nB5, nRst, nA5, $12, nG5
	dc.b	$0C, nFs5, nG5, nA5, $24, nD5, $3C, nRst, $48, nRst, $0C, nD6
	dc.b	nCs6, $0C, nB5, $06, nCs6, nRst, nB5, nRst, nA5, $2A, nA5, $06
	dc.b	nB5, nC6, $0C, nB5, $06, nC6, nRst, nB5, nRst, nA5, $12, nG5
	dc.b	$0C, nFs5, nG5, nA5, $24, nD5, $24, nEb6, $03, nE6, $09, nD6
	dc.b	$0C, smpsNoAttack, $30, nRst, $24, nD6, $06, nE6, nFs6, $0C, nE6, $06
	dc.b	nFs6, nRst, nG6, nRst, nFs6, $12, nE6, $0C, nD6, nCs6, nD6, $0C
	dc.b	nCs6, $06, nD6, nRst, nE6, nRst, nA5, $1E, nRst, $18, nRst, $0C
	dc.b	nG5, $0C, nFs5, $06, nG5, nRst, $06, nA5, $12, nG5, $0C, nFs5
	dc.b	nE5, nFs5, $12, nD5, $12, nA4, $24, nRst, $18, nFs6, $0C, nE6
	dc.b	$06, nFs6, nRst, nG6, nRst, nFs6, $12, nE6, $0C, nD6, nCs6, nD6
	dc.b	$0C, nCs6, $06, nD6, nRst, nE6, nRst, nA5, $1E, nRst, $18, nRst
	dc.b	$0C, nAb6, $03, nA6, $09, nRst, $06, nG6, $12, nFs6, $0C, nG6
	dc.b	nA6, nD6, $0C
	smpsReturn

LevelSelect_Call0E:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nD6, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nD6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nE6, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nE6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nFs6, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nFs6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nG6, $0C
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nG6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	smpsReturn

LevelSelect_Call0F:
	smpsCall            LevelSelect_Call25
	smpsCall            LevelSelect_Call25
	smpsCall            LevelSelect_Call25
	smpsCall            LevelSelect_Call26
	smpsReturn

LevelSelect_Call27:
	smpsSetvoice        $04
	dc.b	nE4, $0C
	smpsSetvoice        $05
	smpsNoteFill        $05
	dc.b	nE3, $06, nE3
	smpsNoteFill        $00
	smpsReturn

LevelSelect_Call25:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nA6, $18
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nA6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nD6, $18
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nD6, $18
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nD6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $E8
	dc.b	nA6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nA6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nG6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nG6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nFs6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nFs6, $06
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nG6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nG6, $06
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nAb6, $0C
	smpsReturn

LevelSelect_Call26:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nA6, $18
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nA6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nD6, $18
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nD6, $18
	smpsPan             panRight, $00
	smpsAlterVol        $0C
	dc.b	nD6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $E8
	dc.b	nC6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nC6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nB5, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nB5, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nC6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nC6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	dc.b	nD6, $0C
	smpsPan             panLeft, $00
	smpsAlterVol        $0C
	dc.b	nD6, $0C
	smpsPan             panCenter, $00
	smpsAlterVol        $F4
	smpsReturn

; FM3 Data
LevelSelect_FM3:
	dc.b	nRst, $18

LevelSelect_Jump02:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsCall            LevelSelect_Call09
	smpsCall            LevelSelect_Call0A
	smpsCall            LevelSelect_Call0A
	smpsCall            LevelSelect_Call0B
	smpsJump            LevelSelect_Jump02

LevelSelect_Call09:
	smpsCall            LevelSelect_Call23
	smpsCall            LevelSelect_Call24
	smpsLoop            $02, $0C, LevelSelect_Call09
	smpsReturn

LevelSelect_Call0A:
	dc.b	nFs6, $24, nB4, $18, nE5, $0C, nFs6, $18, nFs6, $30, nE6, $18
	dc.b	nE6, nE6, $24, nA4, $18, nD5, $12, nE6, $12, nE6, $24, nG4
	dc.b	$0C, nD6, $18, nD6
	smpsReturn

LevelSelect_Call0B:
	dc.b	nC5, $0C, nBb5, nC5, $06, nBb5, $0C, nC5, $06, nBb5, $0C, nC5
	dc.b	$06, nBb5, $0C, nC5, $06, nBb5, $0C, nC5, $0C, nA5, nC5, $06
	dc.b	nA5, $0C, nC5, $06, nA5, $0C, nC5, $06, nA5, $0C, nC5, $06
	dc.b	nA5, $0C
	smpsLoop            $02, $04, LevelSelect_Call0B
	smpsReturn

LevelSelect_Call23:
	dc.b	nD4, $0C, nCs6, nD4, $06, nCs6, $0C, nD4, $06, nE6, $0C, nD5
	dc.b	$06, nE6, $0C, nD5, $06, nE6, $0C
	smpsReturn

LevelSelect_Call24:
	dc.b	nG4, $0C, nC6, nG4, $06, nC6, $0C, nG4, $06, nE6, $0C, nG4
	dc.b	$06, nE6, $0C, nG4, $06, nE6, $0C
	smpsReturn

; FM4 Data
LevelSelect_FM4:
	dc.b	nRst, $18

LevelSelect_Jump01:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsCall            LevelSelect_Call06
	smpsCall            LevelSelect_Call07
	smpsCall            LevelSelect_Call07
	smpsCall            LevelSelect_Call08
	smpsJump            LevelSelect_Jump01

LevelSelect_Call06:
	smpsCall            LevelSelect_Call21
	smpsCall            LevelSelect_Call22
	smpsLoop            $02, $0C, LevelSelect_Call06
	smpsReturn

LevelSelect_Call07:
	dc.b	nD6, $24, nRst, $18, nRst, $0C, nD6, $18, nD6, $30, nCs6, $18
	dc.b	nCs6, nC6, $24, nRst, $18, nRst, $12, nC6, $12, nC6, $24, nRst
	dc.b	$0C, nB5, $18, nB5
	smpsReturn

LevelSelect_Call08:
	dc.b	nRst, $0C, nG6, nRst, $06, nG6, $0C, nRst, $06, nG6, $0C, nRst
	dc.b	$06, nG6, $0C, nRst, $06, nG6, $0C
	smpsLoop            $02, $08, LevelSelect_Call08
	smpsReturn

LevelSelect_Call21:
	dc.b	nRst, $0C, nA5, nRst, $06, nA5, $0C, nRst, $06, nCs6, $0C, nRst
	dc.b	$06, nCs6, $0C, nRst, $06, nCs6, $0C
	smpsReturn

LevelSelect_Call22:
	dc.b	nRst, $0C, nA5, nRst, $06, nA5, $0C, nRst, $06, nC6, $0C, nRst
	dc.b	$06, nC6, $0C, nRst, $06, nC6, $0C
	smpsReturn

; PSG1 Data
LevelSelect_PSG1:
	dc.b	nRst, $24
	smpsAlterNote       $FF

LevelSelect_Jump06:
	smpsCall            LevelSelect_Call14
	dc.b	smpsNoAttack, $60
	smpsCall            LevelSelect_Call14
	dc.b	smpsNoAttack, $2A
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	smpsCall            LevelSelect_Call15
	smpsPSGAlterVol     $FE
	dc.b	nRst, $06
	smpsPSGAlterVol     $02
	smpsPSGvoice        $11
	smpsAlterNote       $FF
	smpsCall            LevelSelect_Call0D
	smpsAlterPitch      $F4
	dc.b	nC6, $0C, nB5, $18, nC6, nD6, $24
	smpsCall            LevelSelect_Call19
	smpsCall            LevelSelect_Call19
	smpsCall            LevelSelect_Call19
	dc.b	nA6, $24, nD6, $3C, nC6, $18, nB5, nC6, nD6
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FE
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $60, nRst, nRst, $2A
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	smpsCall            LevelSelect_Call15
	smpsPSGAlterVol     $FE
	dc.b	nRst, $06
	smpsJump            LevelSelect_Jump06

LevelSelect_Call14:
	smpsPSGvoice        $11
	smpsModSet          $22, $02, $01, $02
	dc.b	nA5, $60, smpsNoAttack, $48, nD5, $18, nA5, $60
	smpsReturn

LevelSelect_Call15:
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nA5, $06, nG5, nFs5, nE5, nD5, nCs5, nB4, nA4
	smpsPSGAlterVol     $01
	smpsReturn

LevelSelect_Call19:
	dc.b	nA6, $24, nD6, $3C, nA6, $18, nG6, nFs6, $12, nG6, nAb6, $0C
	smpsReturn

; PSG2 Data
LevelSelect_PSG2:
	dc.b	nRst, $18

LevelSelect_Jump05:
	smpsCall            LevelSelect_Call14
	dc.b	smpsNoAttack, $60
	smpsCall            LevelSelect_Call14
	dc.b	smpsNoAttack, $30
	smpsCall            LevelSelect_Call15
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	smpsPSGvoice        $11
	dc.b	nRst, $30, nFs5, $18, nG5
	smpsCall            LevelSelect_Call16
	smpsCall            LevelSelect_Call17
	smpsCall            LevelSelect_Call17
	smpsCall            LevelSelect_Call18
	smpsCall            LevelSelect_Call15
	smpsJump            LevelSelect_Jump05

LevelSelect_Call16:
	smpsPSGvoice        $11
	smpsModSet          $22, $02, $01, $02
	dc.b	nA5, $60, smpsNoAttack, $30, nC6, $18, nD6, nA5, $60, smpsNoAttack, $60, nA5
	dc.b	$60, smpsNoAttack, $30, nC6, $18, nD6, nA5, $60
	smpsPSGAlterVol     $01
	dc.b	nD6, $18, nE6, nFs6, nG6
	smpsPSGAlterVol     $FF
	smpsReturn

LevelSelect_Call17:
	smpsPSGvoice        $08
	smpsPSGAlterVol     $01
	dc.b	nG3, $24, nRst, $18, nRst, $0C, nG3, $18, nG3, $30, nG3, $18
	dc.b	nG3, nF3, $24, nRst, $18, nRst, $12, nF3, $12, nF3, $24, nRst
	dc.b	$0C, nF3, $18, nF3
	smpsPSGAlterVol     $FF
	smpsReturn

LevelSelect_Call18:
	dc.b	nRst, $0C, nEb4, nRst, $06, nEb4, $0C, nRst, $06, nEb4, $0C, nRst
	dc.b	$06, nEb4, $0C, nRst, $06, nEb4, $0C
	smpsLoop            $02, $07, LevelSelect_Call18
	dc.b	nRst, $0C, nEb4, nRst, $06, nEb4, $0C, nRst, $06
	smpsReturn

; PSG3 Data
LevelSelect_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $18

LevelSelect_Jump04:
	smpsPSGvoice        $02
	dc.b	nB6, $06
	smpsPSGAlterVol     $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $08
	dc.b	nB6
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $02
	dc.b	nB6, $06
	smpsPSGAlterVol     $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $08
	dc.b	nB6, $0C
	smpsPSGvoice        $02
	dc.b	nB6, $06
	smpsPSGAlterVol     $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $08
	dc.b	nB6
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $02
	dc.b	nB6, $06
	smpsPSGAlterVol     $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsPSGvoice        $08
	dc.b	nB6
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	dc.b	nB6
	smpsPSGAlterVol     $FE
	smpsJump            LevelSelect_Jump04

; DAC Data
LevelSelect_DAC:
	dc.b	dElectricFloorTom, $06, dElectricFloorTom, nRst, dElectricFloorTom

LevelSelect_Jump00:
	smpsCall            LevelSelect_Call00
	smpsCall            LevelSelect_Call01
	smpsCall            LevelSelect_Call00
	smpsCall            LevelSelect_Call02
	smpsCall            LevelSelect_Call00
	smpsCall            LevelSelect_Call03
	smpsCall            LevelSelect_Call00
	smpsCall            LevelSelect_Call04
	smpsCall            LevelSelect_Call00
	smpsCall            LevelSelect_Call05
	smpsJump            LevelSelect_Jump00

LevelSelect_Call00:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call20
	smpsReturn

LevelSelect_Call01:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1F
	smpsReturn

LevelSelect_Call02:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1E
	smpsReturn

LevelSelect_Call03:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1D
	smpsReturn

LevelSelect_Call04:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1C
	smpsReturn

LevelSelect_Call05:
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1A
	smpsCall            LevelSelect_Call1B
	smpsReturn

LevelSelect_Call1A:
	dc.b	dKickS3, $18, dSnareGo, $06, nRst, nRst, dElectricFloorTom, dKickS3, dElectricFloorTom, nRst, nRst, dSnareGo
	dc.b	nRst, nRst, nRst
	smpsReturn

LevelSelect_Call20:
	dc.b	dKickS3, $18, dSnareGo, $06, nRst, nRst, dElectricFloorTom, dKickS3, dElectricFloorTom, nRst, nRst, dSnareGo
	dc.b	nRst, nRst, dElectricFloorTom
	smpsReturn

LevelSelect_Call1F:
	dc.b	dElectricLowTom, $06, dElectricLowTom, nRst, dElectricLowTom, dElectricLowTom, nRst, dElectricLowTom, dElectricLowTom, dKickS3, dElectricFloorTom, dElectricFloorTom
	dc.b	dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsReturn

LevelSelect_Call1E:
	dc.b	dKickS3, $18, dSnareGo, $06, nRst, nRst, dElectricFloorTom, dKickS3, dElectricFloorTom, nRst, nRst, dElectricFloorTom
	dc.b	dElectricFloorTom, nRst, dElectricFloorTom
	smpsReturn

LevelSelect_Call1D:
	dc.b	dKickS3, $06, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom, nRst, dElectricFloorTom, dKickS3, $85, $85
	dc.b	nRst, $86, nRst, $87, nRst
	smpsReturn

LevelSelect_Call1C:
	dc.b	dKickS3, $0C, dKickS3, dElectricFloorTom, dKickS3, dElectricFloorTom, dKickS3, dElectricFloorTom, $06, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsReturn

LevelSelect_Call1B:
	dc.b	dSnareGo, $0C, dKickS3, dSnareGo, dKickS3, $04, dKickS3, dKickS3, dElectricFloorTom, $06, dElectricFloorTom, dElectricFloorTom
	dc.b	dElectricFloorTom, nRst, dElectricFloorTom, dElectricFloorTom, dElectricFloorTom
	smpsReturn

LevelSelect_Voices:
;	Voice $00
;	$3C
;	$01, $F1, $F0, $01, 	$1B, $1F, $1F, $1E, 	$15, $11, $15, $09
;	$06, $10, $0F, $10, 	$1C, $5F, $3F, $3F, 	$0C, $80, $0F, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $0F, $0F, $00
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $15, $11, $15
	smpsVcDecayRate2    $10, $0F, $10, $06
	smpsVcDecayLevel    $03, $03, $05, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0C
	smpsVcTotalLevel    $00, $0F, $00, $0C

;	Voice $01
;	$30
;	$5A, $F1, $52, $01, 	$1F, $1F, $5F, $1F, 	$18, $19, $18, $17
;	$0F, $0B, $0B, $0C, 	$3F, $2F, $1F, $3F, 	$0E, $17, $16, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $0F, $05
	smpsVcCoarseFreq    $01, $02, $01, $0A
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $17, $18, $19, $18
	smpsVcDecayRate2    $0C, $0B, $0B, $0F
	smpsVcDecayLevel    $03, $01, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $17, $0E

;	Voice $02
;	$3D
;	$95, $F2, $0B, $60, 	$1F, $1C, $1F, $1D, 	$15, $0E, $14, $0E
;	$0B, $0A, $0A, $0B, 	$3D, $1D, $3C, $1E, 	$16, $83, $82, $83
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $00, $0F, $09
	smpsVcCoarseFreq    $00, $0B, $02, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $14, $0E, $15
	smpsVcDecayRate2    $0B, $0A, $0A, $0B
	smpsVcDecayLevel    $01, $03, $01, $03
	smpsVcReleaseRate   $0E, $0C, $0D, $0D
	smpsVcTotalLevel    $03, $02, $03, $16

;	Voice $03
;	$2C
;	$60, $01, $F1, $F2, 	$1F, $1F, $1F, $1F, 	$0B, $09, $0F, $0A
;	$05, $03, $04, $04, 	$0F, $1F, $1F, $1F, 	$17, $85, $18, $86
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $0F, $0F, $00, $06
	smpsVcCoarseFreq    $02, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $09, $0B
	smpsVcDecayRate2    $04, $04, $03, $05
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $18, $05, $17

;	Voice $04
;	$3B
;	$55, $83, $71, $25, 	$1E, $1F, $AF, $5F, 	$16, $06, $00, $05
;	$02, $03, $0D, $02, 	$1E, $1E, $1E, $1D, 	$11, $13, $17, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $07, $08, $05
	smpsVcCoarseFreq    $05, $01, $03, $05
	smpsVcRateScale     $01, $02, $00, $00
	smpsVcAttackRate    $1F, $2F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $06, $16
	smpsVcDecayRate2    $02, $0D, $03, $02
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0D, $0E, $0E, $0E
	smpsVcTotalLevel    $00, $17, $13, $11

;	Voice $05
;	$3B
;	$F0, $60, $51, $00, 	$1F, $1F, $AF, $5F, 	$09, $0C, $0D, $09
;	$0E, $0B, $0B, $07, 	$1D, $1C, $1D, $1E, 	$0E, $10, $13, $83
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $06, $0F
	smpsVcCoarseFreq    $00, $01, $00, $00
	smpsVcRateScale     $01, $02, $00, $00
	smpsVcAttackRate    $1F, $2F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0D, $0C, $09
	smpsVcDecayRate2    $07, $0B, $0B, $0E
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0E, $0D, $0C, $0D
	smpsVcTotalLevel    $03, $13, $10, $0E

;	Voice $06
;	$3C
;	$F2, $01, $05, $F0, 	$11, $1C, $1E, $1D, 	$13, $0F, $10, $0F
;	$08, $0A, $05, $0B, 	$3D, $1D, $3C, $1E, 	$12, $83, $15, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $0F, $00, $00, $0F
	smpsVcCoarseFreq    $00, $05, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1E, $1C, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $10, $0F, $13
	smpsVcDecayRate2    $0B, $05, $0A, $08
	smpsVcDecayLevel    $01, $03, $01, $03
	smpsVcReleaseRate   $0E, $0C, $0D, $0D
	smpsVcTotalLevel    $03, $15, $03, $12

