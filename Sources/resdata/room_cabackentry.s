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
; Room: backent
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 34
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 1
	.byt <(zplane_data-res_start), >(zplane_data-res_start), <(zplane_tiles-res_start), >(zplane_tiles-res_start)		
; No. Walkboxes and offsets to wb data and matrix
	.byt 5, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0,0
; Entry and exit scripts
	.byt 210, 255
; Number of objects in the room and list of ids
	.byt 3,200,202,203 ;201
; Room name (null terminated)
	.asc "backent", 0
; Room tile map
column_data
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 049, 057, 065, 075, 083, 096, 108, 000, 000, 131, 000, 000
	.byt 000, 000, 000, 000, 035, 019, 008, 020, 007, 019, 097, 109, 114, 114, 132, 000, 000
	.byt 000, 000, 000, 015, 007, 019, 009, 021, 007, 019, 098, 110, 114, 114, 133, 000, 000
	.byt 000, 000, 000, 016, 008, 020, 007, 019, 008, 020, 097, 109, 114, 114, 134, 000, 000
	.byt 000, 000, 000, 017, 009, 021, 007, 019, 009, 021, 098, 110, 114, 114, 135, 000, 000
	.byt 000, 000, 004, 018, 007, 019, 008, 020, 007, 019, 097, 109, 114, 114, 136, 000, 000
	.byt 000, 000, 005, 019, 007, 019, 009, 021, 007, 019, 098, 110, 114, 114, 137, 000, 000
	.byt 000, 000, 006, 019, 008, 020, 007, 019, 008, 020, 097, 109, 114, 114, 138, 000, 000
	.byt 000, 000, 007, 019, 009, 021, 007, 019, 009, 021, 098, 110, 114, 123, 000, 000, 000
	.byt 000, 000, 008, 020, 007, 019, 008, 020, 007, 019, 097, 109, 114, 114, 139, 000, 000
	.byt 000, 000, 009, 021, 007, 019, 009, 021, 007, 019, 098, 110, 114, 114, 140, 000, 000
	.byt 000, 000, 007, 019, 008, 020, 007, 019, 008, 020, 097, 109, 114, 114, 141, 000, 000
	.byt 000, 000, 007, 019, 009, 021, 007, 019, 009, 021, 098, 110, 114, 124, 000, 000, 000
	.byt 000, 000, 008, 020, 007, 019, 008, 020, 007, 019, 097, 109, 114, 114, 142, 000, 000
	.byt 000, 000, 009, 021, 007, 019, 009, 021, 007, 019, 098, 110, 114, 114, 143, 000, 000
	.byt 000, 000, 007, 019, 008, 020, 007, 019, 008, 020, 097, 109, 114, 114, 144, 000, 000
	.byt 000, 000, 007, 022, 036, 036, 036, 036, 036, 084, 099, 110, 114, 114, 145, 000, 000
	.byt 000, 000, 008, 023, 037, 050, 050, 050, 076, 085, 100, 109, 114, 114, 146, 000, 000
	.byt 000, 000, 009, 024, 038, 038, 038, 066, 077, 086, 099, 110, 114, 114, 147, 000, 000
	.byt 000, 000, 007, 025, 039, 039, 058, 067, 068, 086, 100, 109, 114, 114, 148, 000, 000
	.byt 000, 000, 007, 026, 000, 000, 059, 068, 068, 086, 099, 110, 114, 114, 149, 000, 000
	.byt 000, 000, 008, 027, 040, 000, 060, 069, 069, 087, 100, 109, 114, 114, 150, 000, 000
	.byt 000, 000, 009, 028, 041, 041, 041, 041, 041, 088, 099, 110, 114, 114, 150, 000, 000
	.byt 000, 000, 007, 019, 008, 020, 007, 019, 008, 020, 097, 109, 115, 125, 151, 000, 000
	.byt 000, 001, 007, 019, 009, 021, 007, 019, 009, 021, 098, 098, 116, 126, 152, 000, 000
	.byt 000, 002, 008, 020, 007, 019, 008, 020, 007, 019, 097, 097, 117, 127, 141, 000, 000
	.byt 000, 003, 009, 021, 042, 051, 061, 070, 078, 089, 101, 098, 118, 128, 153, 000, 000
	.byt 000, 000, 010, 029, 043, 052, 052, 052, 052, 052, 102, 097, 119, 129, 154, 000, 000
	.byt 000, 000, 011, 030, 030, 030, 030, 030, 030, 090, 103, 098, 098, 098, 155, 000, 000
	.byt 000, 000, 012, 031, 044, 053, 062, 071, 079, 091, 104, 111, 097, 097, 156, 000, 000
	.byt 000, 000, 013, 032, 045, 054, 054, 072, 080, 092, 030, 112, 098, 098, 157, 000, 000
	.byt 000, 000, 014, 033, 046, 052, 052, 052, 052, 093, 105, 113, 120, 097, 158, 000, 000
	.byt 000, 000, 000, 034, 047, 030, 030, 073, 081, 094, 106, 106, 121, 130, 159, 000, 000
	.byt 000, 000, 000, 000, 048, 055, 063, 074, 082, 095, 107, 000, 122, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 056, 064, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

; Room tile set
tiles_start
	.byt $40, $40, $40, $40, $40, $40, $55, $40	; tile #1
	.byt $40, $40, $40, $40, $40, $7F, $55, $40	; tile #2
	.byt $40, $40, $40, $40, $40, $40, $50, $40	; tile #3
	.byt $40, $40, $40, $40, $41, $41, $41, $47	; tile #4
	.byt $40, $40, $45, $5F, $55, $7F, $55, $7F	; tile #5
	.byt $41, $47, $55, $7F, $55, $7F, $55, $7F	; tile #6
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #7
	.byt $50, $7C, $54, $7E, $54, $7E, $54, $7E	; tile #8
	.byt $45, $5F, $55, $7F, $55, $7F, $55, $7F	; tile #9
	.byt $40, $58, $53, $73, $57, $75, $57, $77	; tile #10
	.byt $40, $40, $7F, $5D, $7F, $77, $7F, $5D	; tile #11
	.byt $40, $40, $7F, $77, $7F, $5D, $7F, $77	; tile #12
	.byt $40, $40, $40, $48, $55, $4A, $55, $4A	; tile #13
	.byt $40, $40, $40, $40, $40, $68, $4C, $64	; tile #14
	.byt $40, $40, $40, $40, $40, $40, $45, $40	; tile #15
	.byt $40, $40, $40, $40, $40, $41, $55, $40	; tile #16
	.byt $40, $46, $45, $5F, $55, $7F, $55, $40	; tile #17
	.byt $45, $47, $55, $7F, $55, $7F, $55, $40	; tile #18
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $40	; tile #19
	.byt $54, $7E, $54, $7E, $54, $7C, $50, $40	; tile #20
	.byt $55, $7F, $55, $7F, $55, $5F, $45, $40	; tile #21
	.byt $40, $4F, $57, $5B, $5D, $5E, $5F, $5F	; tile #22
	.byt $40, $7F, $7F, $7F, $7F, $7F, $5F, $6C	; tile #23
	.byt $40, $7E, $7E, $7E, $7E, $70, $40, $40	; tile #24
	.byt $40, $7E, $7E, $7E, $40, $40, $40, $50	; tile #25
	.byt $40, $7F, $7F, $7F, $7F, $43, $40, $40	; tile #26
	.byt $40, $7F, $7F, $7F, $7F, $7F, $5E, $4D	; tile #27
	.byt $40, $7C, $7A, $76, $6E, $5E, $7E, $7E	; tile #28
	.byt $57, $75, $57, $77, $57, $75, $57, $47	; tile #29
	.byt $7F, $77, $7F, $5D, $7F, $77, $7F, $5D	; tile #30
	.byt $7F, $5D, $7F, $76, $7E, $5C, $7E, $76	; tile #31
	.byt $55, $4A, $55, $6A, $55, $6A, $55, $6A	; tile #32
	.byt $4C, $6D, $4F, $67, $4F, $6D, $4F, $47	; tile #33
	.byt $40, $60, $78, $58, $78, $70, $78, $58	; tile #34
	.byt $41, $43, $45, $4F, $45, $5F, $55, $7F	; tile #35
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $40	; tile #36
	.byt $70, $70, $60, $60, $40, $44, $40, $48	; tile #37
	.byt $40, $44, $40, $60, $40, $44, $40, $60	; tile #38
	.byt $40, $40, $40, $50, $40, $40, $40, $50	; tile #39
	.byt $43, $43, $41, $40, $40, $40, $40, $40	; tile #40
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $40	; tile #41
	.byt $55, $7F, $55, $7F, $55, $7F, $54, $7E	; tile #42
	.byt $4F, $4D, $5F, $57, $5F, $5D, $7F, $77	; tile #43
	.byt $7E, $5C, $7D, $70, $79, $52, $75, $72	; tile #44
	.byt $54, $68, $51, $69, $53, $6B, $53, $69	; tile #45
	.byt $5F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #46
	.byt $7C, $74, $7C, $5C, $7F, $77, $7F, $5D	; tile #47
	.byt $40, $40, $40, $40, $70, $5C, $7E, $77	; tile #48
	.byt $40, $40, $41, $41, $41, $41, $41, $40	; tile #49
	.byt $40, $44, $40, $48, $40, $44, $40, $48	; tile #50
	.byt $54, $7E, $54, $7D, $55, $7B, $53, $41	; tile #51
	.byt $7F, $5D, $7F, $77, $7F, $5D, $7F, $77	; tile #52
	.byt $75, $52, $75, $6A, $65, $4A, $65, $72	; tile #53
	.byt $53, $6B, $53, $69, $53, $6B, $53, $69	; tile #54
	.byt $7F, $5D, $7F, $77, $7F, $5C, $79, $72	; tile #55
	.byt $40, $40, $60, $50, $40, $60, $50, $68	; tile #56
	.byt $41, $43, $41, $43, $45, $47, $45, $5F	; tile #57
	.byt $40, $40, $40, $50, $40, $40, $40, $41	; tile #58
	.byt $40, $40, $40, $40, $40, $42, $44, $7F	; tile #59
	.byt $40, $40, $40, $40, $40, $68, $40, $78	; tile #60
	.byt $53, $57, $6F, $6D, $6F, $67, $6F, $6D	; tile #61
	.byt $75, $52, $75, $72, $75, $52, $75, $72	; tile #62
	.byt $75, $52, $75, $72, $75, $52, $65, $6A	; tile #63
	.byt $54, $6A, $54, $6A, $54, $60, $40, $60	; tile #64
	.byt $55, $5F, $55, $5F, $55, $5F, $55, $40	; tile #65
	.byt $40, $44, $40, $60, $41, $41, $40, $47	; tile #66
	.byt $42, $43, $42, $7F, $40, $6A, $40, $7F	; tile #67
	.byt $40, $6A, $40, $7F, $40, $6A, $40, $7F	; tile #68
	.byt $40, $68, $40, $78, $40, $68, $40, $78	; tile #69
	.byt $6F, $57, $5F, $6D, $6F, $47, $4F, $4D	; tile #70
	.byt $75, $52, $75, $72, $75, $4A, $65, $6A	; tile #71
	.byt $53, $6B, $53, $69, $53, $63, $57, $65	; tile #72
	.byt $7F, $77, $7F, $5D, $7F, $77, $7E, $5C	; tile #73
	.byt $65, $4A, $55, $4A, $55, $4A, $54, $68	; tile #74
	.byt $45, $4F, $45, $4F, $45, $4F, $45, $4F	; tile #75
	.byt $40, $40, $40, $43, $44, $46, $44, $47	; tile #76
	.byt $48, $4A, $40, $7F, $40, $6A, $40, $7F	; tile #77
	.byt $5F, $57, $5F, $5D, $4F, $67, $57, $75	; tile #78
	.byt $65, $4A, $55, $4A, $55, $4A, $55, $4A	; tile #79
	.byt $57, $67, $4F, $6D, $4F, $67, $4F, $6D	; tile #80
	.byt $7C, $74, $7D, $5A, $79, $72, $75, $52	; tile #81
	.byt $50, $68, $50, $68, $50, $68, $50, $68	; tile #82
	.byt $45, $4F, $45, $4F, $45, $4F, $45, $40	; tile #83
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #84
	.byt $40, $4A, $50, $5A, $50, $5F, $40, $40	; tile #85
	.byt $40, $6A, $40, $6A, $40, $7F, $40, $40	; tile #86
	.byt $40, $68, $40, $68, $40, $78, $40, $40	; tile #87
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #88
	.byt $57, $67, $4F, $6D, $4F, $67, $4F, $4D	; tile #89
	.byt $7F, $77, $7F, $5D, $7E, $76, $7C, $58	; tile #90
	.byt $55, $4A, $55, $4A, $55, $6A, $55, $6A	; tile #91
	.byt $4F, $67, $4F, $6D, $5F, $57, $5F, $5D	; tile #92
	.byt $7F, $5D, $7F, $77, $7E, $5C, $7E, $76	; tile #93
	.byt $75, $6A, $55, $4A, $55, $6A, $55, $6A	; tile #94
	.byt $50, $68, $54, $68, $54, $68, $50, $60	; tile #95
	.byt $4D, $4F, $47, $4F, $4D, $4F, $47, $4F	; tile #96
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #97
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #98
	.byt $40, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #99
	.byt $40, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #100
	.byt $5F, $57, $60, $7F, $5D, $7F, $77, $7F	; tile #101
	.byt $7F, $5C, $41, $7F, $77, $7F, $5D, $7F	; tile #102
	.byt $70, $4F, $77, $7F, $5D, $7F, $77, $7F	; tile #103
	.byt $40, $7C, $5C, $7D, $75, $7D, $5D, $7C	; tile #104
	.byt $7D, $5C, $79, $72, $79, $5A, $71, $72	; tile #105
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #106
	.byt $50, $60, $50, $60, $50, $60, $40, $60	; tile #107
	.byt $4D, $4F, $47, $4F, $4D, $47, $43, $40	; tile #108
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $40	; tile #109
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $40	; tile #110
	.byt $76, $7E, $5C, $7F, $77, $7F, $5D, $7F	; tile #111
	.byt $7F, $77, $4F, $61, $59, $7D, $74, $7F	; tile #112
	.byt $75, $52, $75, $72, $65, $4A, $45, $4A	; tile #113
	.byt $77, $77, $40, $7E, $7E, $7E, $40, $77	; tile #114
	.byt $7B, $78, $42, $76, $7B, $7A, $42, $7A	; tile #115
	.byt $7D, $47, $41, $44, $44, $74, $4E, $45	; tile #116
	.byt $77, $7F, $7D, $5F, $47, $43, $49, $68	; tile #117
	.byt $59, $79, $71, $79, $58, $70, $71, $60	; tile #118
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $5F	; tile #119
	.byt $70, $7C, $5D, $7F, $77, $7F, $5D, $7F	; tile #120
	.byt $40, $40, $40, $71, $5D, $7F, $77, $7E	; tile #121
	.byt $40, $40, $40, $40, $60, $70, $50, $40	; tile #122
	.byt $77, $77, $40, $7E, $76, $72, $40, $61	; tile #123
	.byt $77, $77, $40, $7E, $7E, $62, $40, $41	; tile #124
	.byt $76, $7B, $42, $7A, $7A, $76, $43, $78	; tile #125
	.byt $44, $44, $74, $4E, $45, $44, $44, $74	; tile #126
	.byt $5C, $4B, $48, $48, $68, $5C, $48, $40	; tile #127
	.byt $61, $60, $41, $40, $41, $40, $41, $40	; tile #128
	.byt $47, $6F, $4D, $6F, $47, $6F, $45, $63	; tile #129
	.byt $5C, $7C, $74, $7C, $5C, $78, $70, $78	; tile #130
	.byt $04, $04, $04, $04, $04, $04, $04, $04	; tile #131
	.byt $40, $5F, $4F, $4F, $47, $40, $40, $40	; tile #132
	.byt $40, $7F, $7F, $7F, $7F, $4F, $47, $43	; tile #133
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7C, $7C	; tile #134
	.byt $40, $7F, $7F, $7F, $7F, $70, $40, $40	; tile #135
	.byt $40, $7F, $7F, $7F, $7E, $40, $40, $40	; tile #136
	.byt $40, $7F, $7A, $60, $40, $40, $40, $40	; tile #137
	.byt $40, $7F, $40, $40, $40, $40, $40, $40	; tile #138
	.byt $40, $7F, $5F, $40, $40, $40, $40, $40	; tile #139
	.byt $40, $7F, $7C, $40, $40, $40, $40, $40	; tile #140
	.byt $40, $60, $40, $40, $40, $40, $40, $40	; tile #141
	.byt $40, $47, $43, $41, $40, $40, $40, $40	; tile #142
	.byt $40, $7F, $7F, $7F, $4F, $43, $40, $40	; tile #143
	.byt $40, $7F, $7F, $7F, $7F, $7F, $40, $40	; tile #144
	.byt $40, $7F, $7F, $7F, $7F, $7F, $43, $41	; tile #145
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7E	; tile #146
	.byt $40, $7F, $7F, $7F, $7F, $7C, $60, $40	; tile #147
	.byt $40, $7F, $7F, $7F, $60, $40, $40, $40	; tile #148
	.byt $40, $7F, $7F, $7C, $40, $40, $40, $40	; tile #149
	.byt $40, $7F, $7F, $40, $40, $40, $40, $40	; tile #150
	.byt $42, $7D, $7F, $4F, $40, $40, $40, $40	; tile #151
	.byt $71, $7B, $7F, $7F, $58, $40, $40, $40	; tile #152
	.byt $03, $06, $03, $06, $03, $06, $03, $06	; tile #153
	.byt $53, $69, $54, $4A, $55, $42, $41, $40	; tile #154
	.byt $5D, $7F, $77, $40, $54, $6A, $55, $40	; tile #155
	.byt $77, $7F, $5D, $7F, $40, $6A, $55, $40	; tile #156
	.byt $5D, $7F, $77, $40, $55, $6A, $55, $40	; tile #157
	.byt $77, $7F, $5D, $40, $50, $68, $55, $40	; tile #158
	.byt $58, $70, $70, $40, $40, $40, $40, $40	; tile #159
zplane_data
	.byt 000, 000, 000, 000, 000, 000, 003, 006, 006, 006, 006, 006, 006, 006, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 004, 007, 009, 009, 009, 012, 006, 006, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 024, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 025, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 026, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 027, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 028, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 029, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 030, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 018, 031, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 032, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 033, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 034, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 019, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 035, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 036, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 003, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 037, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 016, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 038, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 039, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 040, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 041, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 041, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 042, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 043, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 020, 034, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 014, 021, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 015, 022, 044, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 041, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 045, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 041, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 041, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 016, 023, 046, 006, 006
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 013, 017, 006, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 001, 005, 008, 010, 010, 011, 006, 006, 006, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 002, 006, 006, 006, 006, 006, 006, 006, 006, 006, 006, 006
	.byt 000, 000, 000, 000, 000, 002, 006, 006, 006, 006, 006, 006, 006, 006, 006, 006, 006
zplane_tiles
	.byt $40, $40, $40, $40, $50, $5F, $5F, $47	; tile #1
	.byt $40, $40, $40, $40, $40, $7F, $7F, $7F	; tile #2
	.byt $40, $40, $40, $40, $40, $40, $7F, $7F	; tile #3
	.byt $40, $40, $40, $40, $40, $40, $78, $60	; tile #4
	.byt $43, $41, $41, $41, $41, $43, $41, $41	; tile #5
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #6
	.byt $60, $60, $60, $60, $60, $60, $70, $70	; tile #7
	.byt $41, $41, $41, $41, $43, $43, $43, $43	; tile #8
	.byt $70, $70, $70, $70, $70, $70, $70, $70	; tile #9
	.byt $47, $47, $47, $47, $47, $47, $47, $47	; tile #10
	.byt $4F, $4F, $4F, $4F, $4F, $5F, $5F, $5F	; tile #11
	.byt $70, $70, $70, $70, $70, $78, $7C, $7E	; tile #12
	.byt $40, $41, $41, $41, $41, $41, $41, $41	; tile #13
	.byt $46, $46, $46, $46, $47, $4F, $4F, $5F	; tile #14
	.byt $40, $40, $40, $40, $40, $40, $60, $60	; tile #15
	.byt $40, $40, $40, $40, $40, $40, $40, $41	; tile #16
	.byt $43, $43, $43, $47, $47, $4F, $4F, $7F	; tile #17
	.byt $40, $40, $40, $40, $48, $4C, $4E, $5E	; tile #18
	.byt $40, $40, $40, $40, $40, $5C, $7C, $7E	; tile #19
	.byt $40, $40, $40, $40, $40, $43, $43, $47	; tile #20
	.byt $5F, $5F, $5F, $7F, $7F, $7F, $7F, $7F	; tile #21
	.byt $70, $70, $70, $70, $70, $70, $78, $7C	; tile #22
	.byt $41, $43, $43, $43, $43, $47, $47, $47	; tile #23
	.byt $40, $60, $70, $70, $78, $7F, $7F, $7F	; tile #24
	.byt $40, $40, $40, $40, $40, $70, $78, $7C	; tile #25
	.byt $40, $40, $40, $40, $40, $40, $43, $43	; tile #26
	.byt $40, $40, $40, $40, $40, $4F, $7F, $7F	; tile #27
	.byt $40, $40, $40, $40, $41, $7F, $7F, $7F	; tile #28
	.byt $40, $40, $45, $5F, $7F, $7F, $7F, $7F	; tile #29
	.byt $40, $40, $7F, $7F, $7F, $7F, $7F, $7F	; tile #30
	.byt $5E, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #31
	.byt $40, $40, $60, $7F, $7F, $7F, $7F, $7F	; tile #32
	.byt $40, $40, $43, $7F, $7F, $7F, $7F, $7F	; tile #33
	.byt $4F, $5F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #34
	.byt $70, $78, $7C, $7E, $7F, $7F, $7F, $7F	; tile #35
	.byt $40, $40, $40, $40, $70, $7C, $7F, $7F	; tile #36
	.byt $40, $40, $40, $40, $40, $40, $7C, $7E	; tile #37
	.byt $40, $40, $40, $40, $40, $43, $5F, $7F	; tile #38
	.byt $40, $40, $40, $40, $5F, $7F, $7F, $7F	; tile #39
	.byt $40, $40, $40, $43, $7F, $7F, $7F, $7F	; tile #40
	.byt $40, $40, $40, $7F, $7F, $7F, $7F, $7F	; tile #41
	.byt $40, $40, $40, $70, $7F, $7F, $7F, $7F	; tile #42
	.byt $40, $40, $40, $40, $67, $7F, $7F, $7F	; tile #43
	.byt $7C, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #44
	.byt $40, $40, $40, $40, $7F, $7F, $7F, $7F	; tile #45
	.byt $47, $47, $4F, $7F, $7F, $7F, $7F, $7F	; tile #46
	
	
; Walkbox Data
wb_data
	.byt 001, 007, 010, 011, $01
	.byt 008, 014, 011, 011, $01
	.byt 015, 022, 010, 011, $01
	.byt 028, 032, 012, 013, $01
	.byt 023, 028, 011, 011, $01

; Walk matrix
wb_matrix
	.byt 0, 1, 1, 1, 1
	.byt 0, 1, 2, 2, 2
	.byt 1, 1, 2, 4, 4
	.byt 4, 4, 4, 3, 4
	.byt 2, 2, 2, 3, 4
; Palette Information is stored as one column only for now...
/*
; Palette
palette
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6
*/

res_end
.)



; Object resource 200: Entry to cave
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 200
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 3,7	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 33,13	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 32,13	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Cave",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cueva",0	;Object's name
#endif		
#ifdef FRENCH
	.asc "Grotte",0	;Object's name
#endif		
res_end
.)

/*
; Object resource 201: Stair
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 201
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 5,6	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 18,9	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 19,10	;Walk position (col, row)
	.byt FACING_UP
	.byt 0	; Color of text
	.asc "Door",0	;Object's name
res_end
.)

*/
; Object resource 202: Pulley
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 2,6		; Size (cols rows)
	.byt $ff		; Room
	.byt 12,10		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 15,10		; Walk position (col, row)
	.byt FACING_LEFT		; Facing direction for interaction
	.byt 0			; Color of text

	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH	
	.asc "Chain",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cadena",0	;Object's name
#endif		
#ifdef FRENCH
	.asc "Cha","Z"+4,"ne",0	; "Chaîne"
#endif
res_end	
.)


; Object resource 203: Gate
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 203
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 5,7		; Size (cols rows)
	.byt $ff		; Room
	.byt 18,9		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 16,10		; Walk position (col, row)
	.byt FACING_RIGHT		; Facing direction for interaction
	.byt 0			; Color of text

	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 201		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH	
	.asc "Gate",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Verja",0	;Object's name
#endif		
#ifdef FRENCH
	.asc "Grille",0	;Object's name
#endif
res_end	
.)



; Costume for pulley and chain
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
; Animatory state 0 (pulley1.png)
.byt 0, 0, 0, 0, 0
.byt 1, 2, 0, 0, 0
.byt 3, 4, 0, 0, 0
.byt 5, 5, 0, 0, 0
.byt 5, 5, 0, 0, 0
.byt 5, 5, 0, 0, 0
.byt 6, 7, 0, 0, 0
; Animatory state 1 (pulley2.png)
.byt 0, 0, 0, 0, 0
.byt 8, 9, 0, 0, 0
.byt 10, 11, 0, 0, 0
.byt 12, 13, 0, 0, 0
.byt 12, 13, 0, 0, 0
.byt 12, 13, 0, 0, 0
.byt 14, 15, 0, 0, 0
; Animatory state 2 (pulley3.png)
.byt 0, 0, 0, 0, 0
.byt 1, 2, 0, 0, 0
.byt 16, 17, 0, 0, 0
.byt 18, 18, 0, 0, 0
.byt 18, 18, 0, 0, 0
.byt 18, 18, 0, 0, 0
.byt 19, 20, 0, 0, 0
; Animatory state 3 (pulley4.png)
.byt 0, 0, 0, 0, 0
.byt 8, 9, 0, 0, 0
.byt 21, 22, 0, 0, 0
.byt 13, 12, 0, 0, 0
.byt 13, 12, 0, 0, 0
.byt 13, 12, 0, 0, 0
.byt 23, 24, 0, 0, 0
; Animatory state 4 (pulley5stopped.png)
.byt 0, 0, 0, 0, 0
.byt 8, 9, 0, 0, 0
.byt 25, 26, 0, 0, 0
.byt 27, 13, 0, 0, 0
.byt 12, 13, 0, 0, 0
.byt 12, 13, 0, 0, 0
.byt 14, 15, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $0, $0, $0, $3, $7, $f, $3e, $e
; Tile graphic 2
.byt $0, $20, $20, $30, $38, $3c, $1f, $1c
; Tile graphic 3
.byt $f, $7, $3, $8, $4, $4, $a, $a
; Tile graphic 4
.byt $3c, $38, $32, $22, $24, $4, $a, $a
; Tile graphic 5
.byt $4, $4, $a, $a, $4, $4, $a, $a
; Tile graphic 6
.byt $4, $4, $0, $0, $0, $0, $0, $0
; Tile graphic 7
.byt $4, $4, $0, $0, $0, $0, $0, $0
; Tile graphic 8
.byt $0, $0, $10, $b, $7, $f, $e, $e
; Tile graphic 9
.byt $0, $0, $2, $34, $38, $3c, $1c, $1c
; Tile graphic 10
.byt $f, $7, $b, $10, $4, $a, $a, $4
; Tile graphic 11
.byt $3c, $38, $34, $2, $8, $4, $4, $a
; Tile graphic 12
.byt $4, $a, $a, $4, $4, $a, $a, $4
; Tile graphic 13
.byt $a, $4, $4, $a, $a, $4, $4, $a
; Tile graphic 14
.byt $4, $a, $0, $0, $0, $0, $0, $0
; Tile graphic 15
.byt $a, $4, $0, $0, $0, $0, $0, $0
; Tile graphic 16
.byt $f, $7, $3, $4, $a, $a, $4, $4
; Tile graphic 17
.byt $3c, $38, $34, $24, $2a, $a, $4, $4
; Tile graphic 18
.byt $a, $a, $4, $4, $a, $a, $4, $4
; Tile graphic 19
.byt $a, $a, $0, $0, $0, $0, $0, $0
; Tile graphic 20
.byt $a, $a, $0, $0, $0, $0, $0, $0
; Tile graphic 21
.byt $f, $7, $b, $10, $a, $4, $4, $a
; Tile graphic 22
.byt $3c, $38, $34, $2, $4, $a, $a, $4
; Tile graphic 23
.byt $a, $4, $0, $0, $0, $0, $0, $0
; Tile graphic 24
.byt $4, $a, $0, $0, $0, $0, $0, $0
; Tile graphic 25
.byt $f, $7, $b, $14, $e, $1b, $e, $4
; Tile graphic 26
.byt $3c, $38, $34, $2, $8, $4, $4, $a
; Tile graphic 27
.byt $0, $a, $a, $4, $4, $a, $a, $4
costume_masks
; Tile mask 1
.byt $7e, $7c, $78, $70, $40, $40, $40, $40
; Tile mask 2
.byt $4f, $47, $47, $43, $40, $40, $40, $40
; Tile mask 3
.byt $40, $60, $60, $60, $60, $60, $60, $60
; Tile mask 4
.byt $40, $41, $40, $40, $40, $40, $60, $60
; Tile mask 5
.byt $60, $60, $60, $60, $60, $60, $60, $60
; Tile mask 6
.byt $40, $40, $40, $60, $ff, $ff, $ff, $ff
; Tile mask 7
.byt $40, $40, $40, $40, $ff, $ff, $ff, $ff
; Tile mask 8
.byt $ff, $47, $40, $40, $60, $60, $60, $60
; Tile mask 9
.byt $ff, $78, $40, $40, $41, $41, $41, $41
; Tile mask 10
.byt $60, $60, $40, $40, $40, $60, $60, $60
; Tile mask 11
.byt $41, $41, $40, $40, $60, $60, $60, $60
; Tile mask 12
.byt $60, $60, $60, $60, $60, $60, $60, $60
; Tile mask 13
.byt $60, $60, $60, $60, $60, $60, $60, $60
; Tile mask 14
.byt $40, $40, $40, $60, $ff, $ff, $ff, $ff
; Tile mask 15
.byt $40, $40, $40, $40, $ff, $ff, $ff, $ff
; Tile mask 16
.byt $40, $60, $60, $60, $60, $60, $60, $60
; Tile mask 17
.byt $40, $41, $41, $40, $40, $40, $60, $60
; Tile mask 18
.byt $60, $60, $60, $60, $60, $60, $60, $60
; Tile mask 19
.byt $40, $40, $40, $60, $ff, $ff, $ff, $ff
; Tile mask 20
.byt $40, $40, $40, $40, $ff, $ff, $ff, $ff
; Tile mask 21
.byt $60, $60, $40, $40, $40, $60, $60, $60
; Tile mask 22
.byt $41, $41, $40, $40, $60, $60, $60, $60
; Tile mask 23
.byt $40, $40, $40, $60, $ff, $ff, $ff, $ff
; Tile mask 24
.byt $40, $40, $40, $40, $ff, $ff, $ff, $ff
; Tile mask 25
.byt $60, $60, $40, $40, $40, $40, $40, $60
; Tile mask 26
.byt $41, $41, $40, $40, $40, $40, $40, $60
; Tile mask 27
.byt $60, $60, $60, $60, $60, $60, $60, $60
res_end
.)



; Costume for Gate
.(
.byt RESOURCE_COSTUME
.word (res_end - res_start + 4)
.byt 201
res_start
	; Pointers to tiles
	.byt <(costume_tiles-res_start-8), >(costume_tiles-res_start-8)
	.byt <(costume_masks-res_start-8), >(costume_masks-res_start-8)
	; Number of costumes included
	.byt 1
	;Offsets to animatory states for each costume
	.byt <(anim_states - res_start), >(anim_states - res_start)
anim_states
; Animatory state 0 (cagate1.png)
.byt 1, 2, 3, 4, 5
.byt 6, 7, 7, 7, 8
.byt 9, 9, 9, 9, 9
.byt 10, 10, 10, 10, 10
.byt 11, 11, 11, 11, 11
.byt 10, 10, 10, 10, 10
.byt 11, 11, 11, 11, 11
; Animatory state 1 (cagate2.png)
.byt 12, 13, 14, 15, 16
.byt 17, 9, 9, 9, 18
.byt 7, 7, 7, 7, 7
.byt 9, 9, 9, 9, 9
.byt 7, 7, 7, 7, 7
.byt 9, 9, 9, 9, 9
.byt 19, 19, 19, 19, 19
; Animatory state 2 (cagate3.png)
.byt 1, 2, 3, 4, 5
.byt 20, 10, 10, 10, 21
.byt 11, 11, 11, 11, 11
.byt 10, 10, 10, 10, 10
.byt 11, 11, 11, 11, 11
.byt 19, 19, 19, 19, 19
.byt 0, 0, 0, 0, 0
; Animatory state 3 (cagate4.png)
.byt 12, 13, 14, 15, 16
.byt 17, 9, 9, 9, 18
.byt 7, 7, 7, 7, 7
.byt 9, 9, 9, 9, 9
.byt 19, 19, 19, 19, 19
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
; Animatory state 4 (cagate5.png)
.byt 1, 2, 3, 4, 5
.byt 20, 10, 10, 10, 21
.byt 11, 11, 11, 11, 11
.byt 19, 19, 19, 19, 19
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
; Animatory state 5 (cagate6.png)
.byt 12, 13, 14, 15, 16
.byt 17, 9, 9, 9, 18
.byt 19, 19, 19, 19, 19
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $0, $3f, $3f, $3f, $3f, $3f, $1f, $2c
; Tile graphic 2
.byt $0, $3e, $3e, $3e, $3e, $30, $4, $c
; Tile graphic 3
.byt $0, $3e, $3e, $3e, $0, $c, $c, $c
; Tile graphic 4
.byt $0, $3f, $3f, $3f, $3f, $3, $8, $c
; Tile graphic 5
.byt $0, $3f, $3f, $3f, $3f, $3f, $1e, $d
; Tile graphic 6
.byt $30, $34, $2c, $2c, $c, $c, $c, $c
; Tile graphic 7
.byt $c, $c, $c, $c, $c, $c, $c, $c
; Tile graphic 8
.byt $3, $b, $d, $d, $c, $c, $c, $c
; Tile graphic 9
.byt $1e, $36, $36, $1e, $c, $c, $c, $c
; Tile graphic 10
.byt $c, $c, $c, $c, $c, $c, $c, $1e
; Tile graphic 11
.byt $36, $36, $1e, $c, $c, $c, $c, $c
; Tile graphic 12
.byt $0, $3f, $3f, $3f, $3f, $3f, $1f, $2c
; Tile graphic 13
.byt $0, $3e, $3e, $3e, $3e, $30, $4, $c
; Tile graphic 14
.byt $0, $3e, $3e, $3e, $0, $c, $c, $c
; Tile graphic 15
.byt $0, $3f, $3f, $3f, $3f, $3, $8, $c
; Tile graphic 16
.byt $0, $3f, $3f, $3f, $3f, $3f, $1e, $d
; Tile graphic 17
.byt $32, $36, $26, $2e, $c, $c, $c, $c
; Tile graphic 18
.byt $13, $33, $35, $1d, $c, $c, $c, $c
; Tile graphic 19
.byt $c, $4, $0, $0, $0, $0, $0, $0
; Tile graphic 20
.byt $30, $34, $2c, $2c, $c, $c, $c, $1e
; Tile graphic 21
.byt $3, $b, $d, $d, $c, $c, $c, $1e
costume_masks
; Tile mask 1
.byt $40, $40, $40, $40, $40, $40, $40, $43
; Tile mask 2
.byt $40, $40, $40, $40, $40, $41, $61, $61
; Tile mask 3
.byt $40, $40, $40, $40, $40, $61, $61, $61
; Tile mask 4
.byt $40, $40, $40, $40, $40, $60, $61, $61
; Tile mask 5
.byt $40, $40, $40, $40, $40, $40, $60, $60
; Tile mask 6
.byt $43, $41, $41, $41, $61, $61, $61, $61
; Tile mask 7
.byt $61, $61, $61, $61, $61, $61, $61, $61
; Tile mask 8
.byt $60, $60, $60, $60, $61, $61, $61, $61
; Tile mask 9
.byt $40, $40, $40, $40, $61, $61, $61, $61
; Tile mask 10
.byt $61, $61, $61, $61, $61, $61, $61, $40
; Tile mask 11
.byt $40, $40, $40, $61, $61, $61, $61, $61
; Tile mask 12
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 13
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 14
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 15
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 16
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 17
.byt $40, $40, $40, $40, $61, $61, $61, $61
; Tile mask 18
.byt $40, $40, $40, $40, $61, $61, $61, $61
; Tile mask 19
.byt $61, $71, $7b, $ff, $ff, $ff, $ff, $ff
; Tile mask 20
.byt $43, $41, $41, $41, $61, $61, $61, $40
; Tile mask 21
.byt $60, $60, $60, $60, $61, $61, $61, $40
res_end
.)



#include "..\scripts\cabackentry.s"

