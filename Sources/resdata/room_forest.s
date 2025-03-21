;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OASIS resource data file
;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Common header
#include "..\params.h"
#include "..\object.h"
#include "..\script.h"
#include "..\resource.h"
#include "..\verbs.h"

#include "..\gameids.h"

#include "..\language.h"

*=$500
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Room: Forest
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 41
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 3, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 2, 200, 201
; Room name (null terminated)
	.asc "Forest", 0
; Room tile map
column_data
	.byt 001, 025, 039, 055, 079, 022, 022, 128, 143, 063, 152, 155, 157, 161, 000, 000, 000
	.byt 002, 026, 040, 056, 080, 089, 106, 129, 144, 063, 153, 152, 158, 162, 173, 000, 000
	.byt 003, 027, 041, 057, 000, 090, 107, 130, 145, 151, 154, 156, 159, 163, 174, 000, 000
	.byt 004, 028, 042, 058, 000, 091, 108, 131, 146, 022, 022, 022, 160, 164, 175, 000, 000
	.byt 005, 029, 043, 000, 000, 000, 109, 132, 147, 022, 022, 022, 022, 165, 176, 000, 000
	.byt 006, 000, 044, 000, 000, 000, 110, 133, 148, 022, 022, 022, 022, 166, 177, 000, 000
	.byt 007, 000, 045, 059, 000, 000, 111, 134, 149, 022, 022, 022, 022, 022, 178, 000, 000
	.byt 008, 030, 046, 000, 000, 000, 112, 135, 150, 022, 022, 022, 022, 022, 179, 000, 000
	.byt 009, 031, 047, 060, 081, 092, 113, 136, 022, 022, 022, 022, 022, 022, 180, 000, 000
	.byt 010, 032, 048, 010, 082, 093, 010, 137, 022, 123, 022, 022, 022, 022, 181, 000, 000
	.byt 011, 033, 049, 061, 083, 094, 114, 138, 102, 124, 022, 022, 022, 022, 182, 000, 000
	.byt 012, 034, 050, 062, 084, 095, 115, 139, 103, 125, 022, 022, 022, 022, 022, 000, 000
	.byt 013, 035, 051, 000, 085, 096, 116, 140, 104, 126, 022, 022, 022, 022, 022, 000, 000
	.byt 014, 036, 052, 063, 063, 097, 117, 022, 105, 127, 022, 022, 022, 022, 022, 000, 000
	.byt 015, 015, 053, 064, 086, 098, 118, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 016, 037, 054, 065, 087, 099, 119, 141, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 017, 022, 022, 066, 068, 100, 120, 142, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 018, 038, 022, 067, 069, 101, 121, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 018, 038, 022, 068, 070, 022, 122, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 019, 022, 022, 069, 073, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 019, 022, 022, 070, 071, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 020, 022, 022, 071, 088, 022, 123, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 020, 022, 022, 072, 075, 102, 124, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 021, 022, 022, 073, 072, 103, 125, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 022, 021, 022, 071, 068, 104, 126, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 022, 020, 022, 022, 022, 105, 127, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 022, 023, 022, 074, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 022, 024, 022, 074, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 022, 000, 000
	.byt 022, 024, 022, 022, 071, 022, 022, 022, 022, 022, 022, 022, 022, 022, 183, 000, 000
	.byt 022, 018, 022, 022, 072, 022, 022, 022, 022, 022, 022, 022, 022, 022, 184, 000, 000
	.byt 022, 018, 022, 022, 073, 022, 022, 022, 022, 022, 022, 022, 022, 022, 184, 000, 000
	.byt 022, 019, 022, 075, 071, 022, 022, 022, 022, 022, 022, 022, 022, 022, 185, 000, 000
	.byt 022, 019, 022, 076, 022, 022, 022, 022, 022, 022, 022, 022, 022, 167, 186, 000, 000
	.byt 022, 020, 022, 077, 074, 022, 022, 022, 022, 022, 022, 022, 022, 168, 187, 000, 000
	.byt 021, 020, 022, 078, 074, 022, 022, 022, 022, 022, 022, 022, 022, 169, 188, 000, 000
	.byt 020, 022, 022, 066, 022, 022, 022, 022, 022, 022, 022, 022, 022, 170, 189, 000, 000
	.byt 023, 022, 022, 067, 022, 022, 022, 022, 022, 022, 022, 022, 022, 171, 190, 000, 000
	.byt 024, 022, 022, 068, 022, 022, 022, 022, 022, 022, 022, 022, 022, 172, 000, 000, 000

; Room tile set
tiles_start
	.byt $40, $46, $5C, $50, $40, $40, $40, $40	; tile #1
	.byt $40, $40, $67, $40, $40, $40, $40, $60	; tile #2
	.byt $40, $40, $60, $60, $58, $4E, $42, $46	; tile #3
	.byt $7A, $43, $42, $40, $40, $40, $40, $50	; tile #4
	.byt $7E, $54, $40, $40, $40, $40, $40, $40	; tile #5
	.byt $7F, $7F, $47, $41, $40, $40, $40, $40	; tile #6
	.byt $7B, $7F, $7E, $7E, $40, $40, $40, $40	; tile #7
	.byt $40, $40, $62, $53, $5B, $73, $63, $43	; tile #8
	.byt $44, $5D, $7D, $7D, $7D, $7D, $5D, $45	; tile #9
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #10
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #11
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $70	; tile #12
	.byt $7F, $70, $78, $70, $7F, $7F, $7E, $72	; tile #13
	.byt $7A, $40, $40, $40, $40, $43, $43, $45	; tile #14
	.byt $06, $06, $06, $06, $06, $06, $06, $06	; tile #15
	.byt $41, $43, $4F, $4F, $4F, $5F, $5F, $5F	; tile #16
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $7F, $7F	; tile #17
	.byt $7F, $7F, $C0, $C0, $C0, $C0, $C0, $C0	; tile #18
	.byt $7F, $7F, $C0, $C0, $C0, $C0, $C0, $7F	; tile #19
	.byt $7F, $7F, $7F, $7F, $C0, $C0, $C0, $7F	; tile #20
	.byt $7F, $7F, $7F, $7F, $C0, $7F, $7F, $7F	; tile #21
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #22
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $C0, $7F	; tile #23
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $C0, $C0	; tile #24
	.byt $40, $50, $40, $64, $63, $7F, $7F, $7F	; tile #25
	.byt $7E, $77, $77, $7F, $7F, $7F, $7D, $7E	; tile #26
	.byt $7F, $7F, $7F, $53, $7D, $7F, $7F, $5F	; tile #27
	.byt $40, $60, $78, $70, $7F, $7F, $7F, $5F	; tile #28
	.byt $40, $40, $40, $40, $60, $78, $7E, $60	; tile #29
	.byt $43, $43, $41, $40, $40, $40, $40, $40	; tile #30
	.byt $51, $41, $41, $41, $41, $41, $41, $40	; tile #31
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $77	; tile #32
	.byt $5B, $41, $51, $40, $60, $60, $40, $70	; tile #33
	.byt $70, $70, $60, $40, $40, $42, $40, $60	; tile #34
	.byt $60, $40, $40, $41, $42, $40, $40, $48	; tile #35
	.byt $48, $58, $4C, $44, $40, $41, $43, $42	; tile #36
	.byt $47, $5F, $7F, $5F, $7F, $5F, $7F, $7F	; tile #37
	.byt $C0, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #38
	.byt $7F, $64, $41, $42, $40, $40, $40, $40	; tile #39
	.byt $7D, $7C, $74, $44, $40, $60, $62, $67	; tile #40
	.byt $7F, $52, $68, $40, $40, $40, $41, $4F	; tile #41
	.byt $47, $40, $50, $59, $4B, $7F, $7F, $7F	; tile #42
	.byt $64, $48, $40, $40, $77, $7F, $7D, $51	; tile #43
	.byt $40, $40, $40, $40, $60, $6D, $7C, $70	; tile #44
	.byt $40, $40, $40, $40, $40, $42, $68, $6F	; tile #45
	.byt $40, $42, $43, $40, $40, $40, $40, $40	; tile #46
	.byt $40, $7B, $4C, $40, $40, $41, $41, $41	; tile #47
	.byt $5D, $7B, $51, $40, $40, $72, $77, $7F	; tile #48
	.byt $77, $65, $54, $40, $40, $40, $40, $60	; tile #49
	.byt $55, $7F, $72, $7A, $40, $40, $40, $43	; tile #50
	.byt $70, $78, $5D, $7A, $40, $48, $40, $70	; tile #51
	.byt $41, $42, $51, $42, $55, $4A, $55, $6A	; tile #52
	.byt $06, $06, $03, $03, $03, $03, $03, $02	; tile #53
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $5F, $4F	; tile #54
	.byt $7D, $5D, $78, $58, $4C, $40, $42, $40	; tile #55
	.byt $7F, $7F, $40, $40, $40, $43, $48, $40	; tile #56
	.byt $5E, $79, $40, $40, $40, $60, $4B, $40	; tile #57
	.byt $74, $60, $40, $40, $40, $40, $60, $40	; tile #58
	.byt $4C, $40, $40, $40, $40, $40, $40, $40	; tile #59
	.byt $41, $41, $41, $41, $41, $41, $40, $40	; tile #60
	.byt $40, $40, $40, $60, $60, $60, $48, $78	; tile #61
	.byt $4E, $40, $40, $40, $40, $40, $40, $40	; tile #62
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #63
	.byt $03, $02, $03, $02, $03, $02, $03, $02	; tile #64
	.byt $4F, $5F, $4F, $4F, $47, $65, $67, $4F	; tile #65
	.byt $7F, $7E, $7F, $7E, $7E, $7F, $7E, $5F	; tile #66
	.byt $7F, $7F, $5F, $7F, $7F, $6F, $75, $5B	; tile #67
	.byt $7F, $7F, $7F, $7F, $77, $6B, $7F, $5C	; tile #68
	.byt $7F, $7F, $7F, $7F, $73, $5D, $6F, $7A	; tile #69
	.byt $7F, $7F, $7F, $7F, $7D, $6D, $5B, $75	; tile #70
	.byt $7F, $7F, $7F, $7F, $7A, $77, $7A, $7B	; tile #71
	.byt $7F, $7F, $7F, $5F, $7F, $4F, $75, $5B	; tile #72
	.byt $7F, $7F, $75, $7A, $78, $62, $6E, $59	; tile #73
	.byt $7F, $7F, $7F, $7F, $7F, $7D, $6F, $6D	; tile #74
	.byt $7F, $7F, $75, $7A, $78, $62, $6E, $5F	; tile #75
	.byt $7F, $7F, $7F, $7E, $7F, $55, $6B, $5F	; tile #76
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7A, $7F	; tile #77
	.byt $7F, $7F, $7F, $7F, $7F, $55, $6F, $7F	; tile #78
	.byt $40, $40, $40, $40, $40, $40, $7C, $7B	; tile #79
	.byt $40, $40, $40, $40, $40, $40, $40, $64	; tile #80
	.byt $40, $40, $40, $40, $40, $40, $54, $7F	; tile #81
	.byt $5D, $7B, $76, $7F, $5D, $7B, $76, $7E	; tile #82
	.byt $77, $7C, $40, $60, $67, $6B, $41, $41	; tile #83
	.byt $48, $60, $42, $42, $40, $78, $7C, $6B	; tile #84
	.byt $40, $40, $40, $40, $48, $48, $40, $70	; tile #85
	.byt $02, $02, $02, $02, $02, $02, $02, $06	; tile #86
	.byt $5F, $4F, $47, $77, $63, $43, $45, $5B	; tile #87
	.byt $7F, $7F, $6F, $6B, $6D, $5F, $6E, $57	; tile #88
	.byt $7E, $7F, $7E, $7E, $7F, $7F, $7F, $7F	; tile #89
	.byt $40, $40, $40, $40, $78, $7E, $7F, $7F	; tile #90
	.byt $40, $40, $40, $40, $40, $40, $70, $78	; tile #91
	.byt $67, $46, $40, $40, $40, $40, $40, $40	; tile #92
	.byt $50, $40, $46, $7F, $5D, $7F, $77, $7F	; tile #93
	.byt $40, $40, $40, $60, $73, $77, $5B, $7B	; tile #94
	.byt $73, $40, $40, $40, $7F, $7F, $7F, $7F	; tile #95
	.byt $70, $40, $40, $46, $7F, $7F, $7F, $7F	; tile #96
	.byt $55, $6A, $54, $41, $7F, $60, $40, $71	; tile #97
	.byt $40, $43, $7F, $7F, $7F, $47, $40, $78	; tile #98
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $49, $45	; tile #99
	.byt $7F, $7F, $7E, $79, $67, $55, $7F, $55	; tile #100
	.byt $7F, $43, $7D, $54, $7E, $54, $73, $4F	; tile #101
	.byt $7F, $7F, $7F, $7F, $7C, $78, $71, $62	; tile #102
	.byt $7F, $7F, $70, $49, $55, $69, $55, $68	; tile #103
	.byt $7F, $7F, $7F, $43, $78, $7E, $7F, $7F	; tile #104
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $47, $73	; tile #105
	.byt $7F, $7F, $7F, $74, $68, $78, $7F, $7F	; tile #106
	.byt $7F, $7F, $7F, $4D, $40, $44, $7C, $7E	; tile #107
	.byt $78, $7C, $7C, $68, $40, $40, $55, $4A	; tile #108
	.byt $40, $40, $40, $40, $55, $6A, $55, $6A	; tile #109
	.byt $40, $40, $40, $40, $40, $68, $55, $6A	; tile #110
	.byt $40, $40, $45, $4A, $55, $6A, $55, $6A	; tile #111
	.byt $40, $68, $54, $6A, $55, $6A, $55, $6A	; tile #112
	.byt $42, $40, $40, $41, $55, $69, $55, $69	; tile #113
	.byt $71, $78, $50, $78, $70, $7C, $58, $78	; tile #114
	.byt $43, $40, $40, $40, $40, $40, $40, $40	; tile #115
	.byt $7F, $7F, $5F, $5F, $4F, $47, $43, $45	; tile #116
	.byt $7C, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #117
	.byt $5C, $71, $65, $4E, $5E, $6E, $71, $7F	; tile #118
	.byt $7F, $55, $7E, $51, $67, $5F, $7E, $7E	; tile #119
	.byt $78, $47, $43, $78, $7B, $73, $47, $7B	; tile #120
	.byt $7F, $7F, $7C, $40, $67, $6F, $6F, $7F	; tile #121
	.byt $7F, $7F, $7F, $4F, $63, $7F, $7F, $7F	; tile #122
	.byt $7F, $7C, $71, $6A, $65, $70, $7F, $7F	; tile #123
	.byt $45, $4A, $55, $6A, $55, $4A, $70, $7F	; tile #124
	.byt $54, $6A, $54, $69, $53, $62, $40, $7F	; tile #125
	.byt $7F, $7F, $7F, $7F, $70, $47, $7F, $7F	; tile #126
	.byt $79, $7C, $7C, $41, $5F, $7F, $7F, $7F	; tile #127
	.byt $6F, $6A, $68, $60, $4F, $71, $40, $40	; tile #128
	.byt $7F, $5F, $4F, $4C, $41, $4E, $40, $40	; tile #129
	.byt $7F, $7E, $7F, $4F, $48, $40, $40, $40	; tile #130
	.byt $65, $62, $55, $72, $44, $44, $40, $40	; tile #131
	.byt $55, $6A, $55, $6A, $55, $42, $40, $5F	; tile #132
	.byt $55, $6A, $55, $6A, $54, $41, $7F, $67	; tile #133
	.byt $55, $6A, $55, $68, $47, $7F, $7F, $7F	; tile #134
	.byt $55, $6A, $54, $41, $7F, $7F, $7F, $7F	; tile #135
	.byt $41, $5D, $7D, $7E, $7F, $7F, $7F, $7F	; tile #136
	.byt $5D, $7F, $77, $5C, $63, $7F, $7F, $7F	; tile #137
	.byt $70, $7D, $5B, $47, $7F, $7F, $7F, $7F	; tile #138
	.byt $40, $40, $41, $7F, $7F, $7F, $7F, $7F	; tile #139
	.byt $43, $47, $6F, $7F, $7F, $7F, $7F, $7F	; tile #140
	.byt $7F, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #141
	.byt $59, $7C, $7F, $7F, $7F, $7F, $7F, $7F	; tile #142
	.byt $40, $40, $40, $40, $40, $40, $40, $42	; tile #143
	.byt $40, $40, $40, $40, $40, $40, $40, $68	; tile #144
	.byt $40, $40, $40, $40, $40, $40, $44, $69	; tile #145
	.byt $40, $40, $40, $40, $40, $40, $5F, $7F	; tile #146
	.byt $5F, $4C, $44, $40, $40, $40, $6E, $7F	; tile #147
	.byt $4F, $46, $42, $40, $40, $48, $7F, $7F	; tile #148
	.byt $7F, $4F, $45, $40, $40, $67, $7F, $7F	; tile #149
	.byt $7F, $7F, $7F, $4F, $47, $5F, $7F, $7F	; tile #150
	.byt $53, $67, $47, $4F, $5F, $5F, $5F, $5F	; tile #151
	.byt $55, $6A, $54, $68, $45, $4A, $55, $6A	; tile #152
	.byt $54, $69, $55, $69, $54, $6A, $55, $6A	; tile #153
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $4F, $6F	; tile #154
	.byt $55, $6A, $45, $6A, $40, $48, $45, $4A	; tile #155
	.byt $4F, $6F, $4F, $6F, $47, $63, $51, $68	; tile #156
	.byt $55, $42, $40, $40, $40, $40, $40, $42	; tile #157
	.byt $55, $6A, $44, $40, $40, $40, $40, $4A	; tile #158
	.byt $54, $6A, $45, $42, $55, $6A, $55, $6A	; tile #159
	.byt $5F, $4F, $4F, $6F, $4F, $6F, $4F, $5F	; tile #160
	.byt $55, $6A, $40, $40, $40, $40, $5F, $40	; tile #161
	.byt $55, $6A, $45, $42, $40, $40, $60, $7E	; tile #162
	.byt $55, $6A, $55, $6A, $50, $40, $40, $41	; tile #163
	.byt $5F, $5F, $5F, $50, $40, $40, $44, $7F	; tile #164
	.byt $7F, $7F, $7F, $4F, $42, $61, $4F, $67	; tile #165
	.byt $7F, $7F, $7F, $7F, $5F, $7F, $7F, $7F	; tile #166
	.byt $7F, $7F, $7F, $7F, $7E, $7F, $7F, $7F	; tile #167
	.byt $7F, $7F, $7F, $7C, $50, $61, $7F, $7F	; tile #168
	.byt $7F, $7F, $7F, $43, $40, $40, $78, $7F	; tile #169
	.byt $7F, $7F, $7F, $7F, $43, $40, $40, $60	; tile #170
	.byt $7F, $7F, $7C, $50, $40, $40, $41, $5F	; tile #171
	.byt $7F, $7F, $40, $40, $40, $40, $7E, $40	; tile #172
	.byt $42, $40, $40, $40, $40, $40, $40, $40	; tile #173
	.byt $7F, $43, $40, $40, $40, $40, $40, $40	; tile #174
	.byt $7F, $7F, $41, $40, $40, $6E, $41, $40	; tile #175
	.byt $73, $79, $40, $40, $7F, $40, $70, $40	; tile #176
	.byt $7F, $7F, $7F, $4F, $60, $40, $40, $40	; tile #177
	.byt $7F, $7F, $6F, $40, $40, $40, $40, $40	; tile #178
	.byt $7F, $7F, $7F, $4F, $40, $40, $40, $40	; tile #179
	.byt $7F, $7F, $7F, $7F, $47, $40, $40, $40	; tile #180
	.byt $7F, $7F, $7F, $7F, $7B, $40, $40, $40	; tile #181
	.byt $7F, $7F, $7F, $7F, $7E, $4B, $40, $42	; tile #182
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $70, $7C	; tile #183
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $40, $40	; tile #184
	.byt $7F, $7F, $7F, $7F, $78, $40, $40, $40	; tile #185
	.byt $7F, $7F, $7F, $7E, $43, $40, $40, $40	; tile #186
	.byt $7F, $7F, $60, $40, $7F, $40, $43, $40	; tile #187
	.byt $7F, $7F, $60, $40, $40, $5D, $60, $40	; tile #188
	.byt $7F, $70, $40, $40, $40, $40, $40, $40	; tile #189
	.byt $50, $40, $40, $40, $40, $40, $40, $40	; tile #190
; Walkbox Data
wb_data
	.byt 008, 036, 011, 012, $01
	.byt 015, 036, 008, 010, $01
	.byt 027, 036, 006, 007, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 1
	.byt 0, 1, 2
	.byt 1, 1, 2


res_end
.)

; Object exit
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 2,17		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 36,16		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 36,$fe		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Path",0
#endif
#ifdef SPANISH
	.asc "Camino",0
#endif
#ifdef FRENCH
	.asc "Chemin",0
#endif
res_end	
.)


; Object Forest
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt OBJ_FLAG_PROP|OBJ_FLAG_FROMDISTANCE	; If OBJ_FLAG_PROP skip all costume data
	.byt 5,15		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 0,14		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt $ff,$ff		; Walk position (col, row)
	.byt FACING_LEFT		; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Forest",0
#endif
#ifdef SPANISH
	.asc "Bosque",0
#endif
#ifdef FRENCH
	.asc "For","Z"+3,"t",0 ; "Forêt"
#endif
res_end	
.)

; Object resource: Stick
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 5,2		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 13,6		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 15,8		; Walk position (col, row)
	.byt FACING_UP		; Facing direction for interaction
	.byt 00			; Color of text

	; META: TODO
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200			; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Logs",0
#endif
#ifdef SPANISH
	.asc "Troncos",0
#endif
#ifdef FRENCH
	.asc "Troncs",0
#endif
res_end	
.)

.(
.byt RESOURCE_COSTUME
.word (res_end - res_start + 4)
.byt 200
res_start
	; Pointers to tiles
	.byt <(costume_tiles-res_start-8), >(costume_tiles-res_start-8)
	.byt <(costume_masks-res_start-8), >(costume_masks-res_start-8)
	; Number of costumes included
	.byt 1
	;Offsets to animatory states for each costume
	.byt <(anim_states - res_start), >(anim_states - res_start)
anim_states
; Animatory state 0 (wood1.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 3, 4, 5
.byt 0, 0, 0, 6, 7
; Animatory state 1 (wood2.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 8, 9, 10, 11, 12
.byt 13, 14, 15, 16, 7
costume_tiles
; Tile graphic 1
.byt $0, $0, $e, $5, $3, $0, $0, $0
; Tile graphic 2
.byt $0, $0, $0, $10, $3f, $5, $0, $0
; Tile graphic 3
.byt $0, $0, $0, $0, $20, $15, $f, $0
; Tile graphic 4
.byt $0, $0, $0, $0, $0, $0, $3f, $15
; Tile graphic 5
.byt $0, $0, $0, $0, $0, $0, $0, $c
; Tile graphic 6
.byt $0, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 7
.byt $2c, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 8
.byt $0, $0, $0, $0, $0, $0, $3, $15
; Tile graphic 9
.byt $0, $0, $0, $0, $0, $0, $38, $15
; Tile graphic 10
.byt $0, $0, $0, $0, $0, $0, $1, $15
; Tile graphic 11
.byt $0, $0, $0, $0, $0, $0, $3f, $15
; Tile graphic 12
.byt $0, $0, $0, $0, $0, $0, $2c, $c
; Tile graphic 13
.byt $1f, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 14
.byt $3f, $5, $0, $0, $0, $0, $0, $0
; Tile graphic 15
.byt $3f, $14, $0, $0, $0, $0, $0, $0
; Tile graphic 16
.byt $3f, $0, $0, $0, $0, $0, $0, $0
costume_masks
; Tile mask 1
.byt $ff, $71, $60, $60, $70, $7c, $ff, $ff
; Tile mask 2
.byt $ff, $ff, $4f, $40, $40, $40, $78, $ff
; Tile mask 3
.byt $ff, $ff, $ff, $5f, $40, $40, $40, $70
; Tile mask 4
.byt $ff, $ff, $ff, $ff, $5f, $40, $40, $40
; Tile mask 5
.byt $ff, $ff, $ff, $ff, $ff, $ff, $43, $41
; Tile mask 6
.byt $60, $ff, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 7
.byt $41, $43, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 8
.byt $ff, $ff, $ff, $ff, $ff, $7c, $60, $40
; Tile mask 9
.byt $ff, $ff, $ff, $ff, $ff, $47, $40, $40
; Tile mask 10
.byt $ff, $ff, $ff, $ff, $ff, $7e, $40, $40
; Tile mask 11
.byt $ff, $ff, $ff, $ff, $ff, $40, $40, $40
; Tile mask 12
.byt $ff, $ff, $ff, $ff, $ff, $43, $41, $41
; Tile mask 13
.byt $40, $60, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 14
.byt $40, $40, $78, $ff, $ff, $ff, $ff, $ff
; Tile mask 15
.byt $40, $40, $43, $ff, $ff, $ff, $ff, $ff
; Tile mask 16
.byt $40, $40, $ff, $ff, $ff, $ff, $ff, $ff
res_end
.)


#include "..\scripts\forest.s"



