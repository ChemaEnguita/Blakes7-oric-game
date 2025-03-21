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
; Room: Liberator passage
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 20
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 5, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 255, 255
; Number of objects in the room and list of ids
	.byt 3, 200, 201, 202
; Room name (null terminated)
	.asc "Passage A", 0
; Room tile map
column_data
	.byt 001, 001, 001, 042, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 001, 001, 001, 044, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 001, 001, 001, 045, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 002, 001, 001, 046, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 003, 001, 001, 036, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 004, 001, 001, 047, 056, 056, 056, 056, 056, 088, 088, 088, 088, 088, 144, 103, 103
	.byt 005, 001, 001, 038, 059, 066, 056, 056, 056, 088, 088, 088, 088, 143, 145, 103, 103
	.byt 006, 001, 001, 001, 001, 067, 073, 056, 056, 088, 088, 120, 140, 032, 142, 103, 103
	.byt 007, 001, 001, 001, 001, 001, 038, 059, 066, 099, 110, 121, 001, 141, 103, 103, 103
	.byt 008, 019, 001, 001, 001, 001, 001, 001, 067, 100, 001, 001, 032, 142, 103, 103, 103
	.byt 009, 020, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 141, 103, 103, 103, 103
	.byt 009, 021, 028, 028, 028, 028, 028, 028, 028, 028, 028, 028, 142, 103, 103, 103, 103
	.byt 009, 022, 001, 001, 001, 001, 001, 001, 001, 001, 001, 122, 103, 103, 103, 103, 103
	.byt 009, 022, 029, 048, 001, 001, 001, 001, 001, 001, 001, 122, 103, 103, 103, 103, 103
	.byt 009, 017, 030, 049, 001, 032, 074, 085, 001, 001, 001, 123, 103, 103, 103, 103, 103
	.byt 009, 023, 031, 050, 032, 068, 009, 009, 094, 101, 001, 124, 103, 103, 103, 103, 103
	.byt 009, 023, 001, 032, 060, 009, 009, 009, 011, 102, 111, 125, 103, 103, 103, 103, 103
	.byt 009, 023, 032, 051, 061, 009, 009, 009, 011, 103, 112, 126, 103, 103, 103, 103, 103
	.byt 009, 023, 033, 052, 062, 069, 009, 086, 095, 104, 103, 103, 103, 103, 103, 103, 103
	.byt 009, 024, 034, 052, 055, 070, 075, 087, 088, 105, 103, 103, 103, 103, 103, 103, 103
	.byt 009, 025, 034, 053, 056, 056, 076, 088, 088, 106, 103, 103, 103, 103, 103, 103, 103
	.byt 009, 025, 035, 054, 056, 056, 077, 088, 088, 088, 113, 103, 103, 103, 103, 103, 103
	.byt 009, 025, 036, 055, 056, 056, 078, 088, 088, 088, 114, 103, 103, 103, 103, 103, 103
	.byt 009, 025, 037, 056, 056, 056, 079, 088, 088, 088, 115, 127, 103, 103, 103, 103, 103
	.byt 009, 025, 038, 057, 056, 056, 080, 088, 088, 107, 116, 128, 103, 103, 103, 103, 103
	.byt 010, 001, 001, 038, 063, 056, 081, 089, 096, 108, 001, 129, 103, 103, 103, 103, 103
	.byt 011, 001, 001, 001, 038, 071, 082, 090, 001, 001, 001, 129, 103, 103, 103, 103, 103
	.byt 011, 026, 001, 001, 001, 001, 001, 001, 001, 001, 033, 103, 103, 103, 103, 103, 103
	.byt 012, 027, 027, 027, 027, 027, 027, 027, 027, 027, 117, 130, 103, 103, 103, 103, 103
	.byt 013, 001, 001, 001, 001, 001, 083, 091, 001, 001, 001, 131, 103, 103, 103, 103, 103
	.byt 014, 001, 001, 001, 064, 072, 084, 092, 097, 001, 001, 132, 103, 103, 103, 103, 103
	.byt 015, 001, 032, 058, 065, 056, 056, 093, 098, 109, 118, 133, 103, 103, 103, 103, 103
	.byt 016, 001, 039, 056, 056, 056, 056, 093, 088, 088, 119, 134, 103, 103, 103, 103, 103
	.byt 017, 001, 035, 056, 056, 056, 056, 093, 088, 088, 088, 135, 103, 103, 103, 103, 103
	.byt 018, 001, 040, 056, 056, 056, 056, 093, 088, 088, 088, 136, 103, 103, 103, 103, 103
	.byt 001, 001, 041, 056, 056, 056, 056, 093, 088, 088, 088, 137, 103, 103, 103, 103, 103
	.byt 001, 001, 042, 056, 056, 056, 056, 093, 088, 088, 088, 138, 103, 103, 103, 103, 103
	.byt 001, 001, 043, 056, 056, 056, 056, 093, 088, 088, 088, 139, 103, 103, 103, 103, 103

; Room tile set
tiles_start
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #1
	.byt $40, $7E, $55, $7F, $55, $7F, $55, $7F	; tile #2
	.byt $C0, $FC, $54, $7F, $55, $7F, $55, $7F	; tile #3
	.byt $C0, $C0, $F8, $78, $55, $7F, $55, $7F	; tile #4
	.byt $C0, $C0, $C0, $F0, $50, $7F, $55, $7F	; tile #5
	.byt $C0, $C0, $C0, $C0, $E0, $60, $55, $7F	; tile #6
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $41, $7E	; tile #7
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $43	; tile #8
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0	; tile #9
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $60	; tile #10
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $40	; tile #11
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $60, $5F	; tile #12
	.byt $C0, $C0, $C0, $C0, $C0, $60, $55, $7F	; tile #13
	.byt $C0, $C0, $C0, $C0, $60, $5F, $55, $7F	; tile #14
	.byt $C0, $C0, $C0, $70, $45, $7F, $55, $7F	; tile #15
	.byt $C0, $C0, $70, $4F, $55, $7F, $55, $7F	; tile #16
	.byt $C0, $70, $45, $7F, $55, $7F, $55, $7F	; tile #17
	.byt $C7, $47, $55, $7F, $55, $7F, $55, $7F	; tile #18
	.byt $54, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #19
	.byt $F8, $78, $55, $7F, $55, $7F, $55, $7F	; tile #20
	.byt $C0, $E0, $40, $7E, $54, $7E, $54, $7E	; tile #21
	.byt $C0, $C0, $40, $7F, $55, $7F, $55, $7F	; tile #22
	.byt $C0, $40, $55, $7F, $55, $7F, $55, $7F	; tile #23
	.byt $C1, $41, $55, $7F, $55, $7F, $55, $7F	; tile #24
	.byt $40, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #25
	.byt $55, $7E, $55, $7F, $55, $7F, $55, $7F	; tile #26
	.byt $55, $5F, $55, $5F, $55, $5F, $55, $5F	; tile #27
	.byt $54, $7E, $54, $7E, $54, $7E, $54, $7E	; tile #28
	.byt $54, $C4, $E8, $C8, $F0, $D0, $E0, $E0	; tile #29
	.byt $40, $C0, $C0, $C0, $C0, $C0, $C0, $C0	; tile #30
	.byt $4D, $C8, $C6, $C4, $C2, $C2, $C1, $C1	; tile #31
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7E	; tile #32
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $40	; tile #33
	.byt $55, $7F, $55, $7F, $55, $7F, $40, $40	; tile #34
	.byt $55, $7F, $55, $7F, $55, $78, $47, $40	; tile #35
	.byt $55, $7F, $55, $7F, $55, $40, $7F, $40	; tile #36
	.byt $55, $7F, $55, $7F, $55, $40, $7C, $43	; tile #37
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $5F	; tile #38
	.byt $55, $7F, $55, $7F, $55, $7F, $54, $40	; tile #39
	.byt $55, $7F, $55, $7F, $50, $40, $7F, $40	; tile #40
	.byt $55, $7F, $55, $60, $5F, $40, $7F, $40	; tile #41
	.byt $55, $7F, $40, $40, $7F, $40, $7F, $40	; tile #42
	.byt $40, $40, $7F, $40, $7F, $40, $7F, $40	; tile #43
	.byt $55, $7F, $45, $40, $7F, $40, $7F, $40	; tile #44
	.byt $55, $7F, $55, $41, $7E, $40, $7F, $40	; tile #45
	.byt $55, $7F, $55, $7F, $40, $40, $7F, $40	; tile #46
	.byt $55, $7F, $55, $7F, $55, $47, $78, $40	; tile #47
	.byt $F0, $D0, $E8, $C8, $EC, $7B, $54, $7F	; tile #48
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $40, $7F	; tile #49
	.byt $C2, $C2, $C6, $C4, $CA, $C8, $4D, $7F	; tile #50
	.byt $54, $7C, $53, $70, $57, $60, $5F, $40	; tile #51
	.byt $7F, $40, $7F, $40, $7F, $40, $7F, $40	; tile #52
	.byt $7F, $40, $7F, $40, $7F, $40, $7C, $43	; tile #53
	.byt $7F, $40, $7F, $40, $70, $4F, $40, $7F	; tile #54
	.byt $7E, $41, $60, $5F, $40, $7F, $40, $7F	; tile #55
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #56
	.byt $45, $77, $41, $7B, $41, $7E, $40, $7F	; tile #57
	.byt $54, $7E, $54, $7D, $50, $7B, $50, $77	; tile #58
	.byt $55, $6F, $45, $77, $45, $7B, $41, $7D	; tile #59
	.byt $54, $7C, $53, $70, $57, $60, $40, $C0	; tile #60
	.byt $7F, $40, $7F, $40, $7F, $40, $40, $C0	; tile #61
	.byt $7F, $40, $7F, $40, $78, $47, $40, $5F	; tile #62
	.byt $45, $77, $45, $7B, $41, $7D, $40, $7F	; tile #63
	.byt $55, $7F, $55, $7F, $55, $7F, $54, $7E	; tile #64
	.byt $50, $6F, $40, $5F, $40, $5F, $40, $7F	; tile #65
	.byt $41, $7E, $40, $7F, $40, $7F, $40, $7F	; tile #66
	.byt $55, $7F, $55, $5F, $55, $6F, $45, $77	; tile #67
	.byt $54, $7D, $53, $C8, $E8, $D0, $E0, $C0	; tile #68
	.byt $40, $77, $CF, $C4, $C3, $C2, $C1, $C0	; tile #69
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $5F	; tile #70
	.byt $45, $6F, $45, $7B, $41, $7D, $40, $70	; tile #71
	.byt $54, $7D, $54, $7B, $50, $77, $50, $6F	; tile #72
	.byt $45, $7B, $41, $7D, $41, $7E, $40, $7F	; tile #73
	.byt $54, $7D, $EC, $C8, $E8, $D0, $E0, $E0	; tile #74
	.byt $40, $6F, $60, $C8, $C7, $C2, $C3, $C2	; tile #75
	.byt $40, $7F, $40, $7F, $40, $70, $4F, $7F	; tile #76
	.byt $40, $7F, $40, $7F, $40, $4F, $7F, $7F	; tile #77
	.byt $40, $7F, $40, $70, $4F, $7F, $7F, $7F	; tile #78
	.byt $40, $7F, $40, $4F, $7F, $7F, $7F, $7F	; tile #79
	.byt $40, $70, $4F, $7F, $7F, $7F, $7F, $7F	; tile #80
	.byt $40, $4F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #81
	.byt $4E, $7E, $7D, $7D, $7D, $7B, $79, $77	; tile #82
	.byt $55, $7F, $55, $7F, $54, $7E, $54, $7D	; tile #83
	.byt $40, $6F, $40, $5F, $40, $7F, $40, $7F	; tile #84
	.byt $F0, $D0, $E8, $7B, $51, $7D, $54, $7E	; tile #85
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C1, $C2	; tile #86
	.byt $C4, $C8, $67, $6F, $5F, $5F, $7F, $7F	; tile #87
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #88
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7E	; tile #89
	.byt $75, $6F, $65, $6F, $55, $5F, $55, $7F	; tile #90
	.byt $54, $7E, $56, $7F, $55, $7F, $55, $7F	; tile #91
	.byt $40, $7F, $7F, $5F, $4F, $6F, $57, $77	; tile #92
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #93
	.byt $E0, $E0, $F0, $C8, $E8, $7B, $55, $7E	; tile #94
	.byt $C2, $CC, $77, $6F, $6F, $5F, $5F, $4F	; tile #95
	.byt $7D, $7D, $7D, $7B, $79, $77, $75, $77	; tile #96
	.byt $53, $7B, $55, $7D, $54, $7E, $55, $7F	; tile #97
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $5F, $5F	; tile #98
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7D, $7D	; tile #99
	.byt $65, $5F, $55, $7F, $55, $7F, $55, $7F	; tile #100
	.byt $54, $7E, $55, $7F, $55, $7F, $55, $7F	; tile #101
	.byt $55, $6A, $55, $6A, $45, $72, $51, $7A	; tile #102
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #103
	.byt $53, $68, $55, $6A, $55, $6A, $55, $6A	; tile #104
	.byt $7F, $7F, $4F, $63, $54, $6A, $55, $6A	; tile #105
	.byt $7F, $7F, $7F, $7F, $7F, $4F, $53, $68	; tile #106
	.byt $7F, $7F, $7F, $7F, $7E, $7E, $7E, $7D	; tile #107
	.byt $65, $6F, $55, $5F, $55, $7F, $55, $7F	; tile #108
	.byt $5F, $6F, $4F, $77, $57, $7B, $53, $7B	; tile #109
	.byt $79, $7B, $75, $77, $75, $6F, $65, $5F	; tile #110
	.byt $55, $7E, $54, $7F, $55, $7F, $55, $7F	; tile #111
	.byt $55, $6A, $55, $4A, $55, $6A, $55, $72	; tile #112
	.byt $4F, $63, $54, $6A, $55, $6A, $55, $6A	; tile #113
	.byt $7F, $7F, $7F, $4F, $53, $68, $55, $6A	; tile #114
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $4F, $63	; tile #115
	.byt $7D, $7B, $79, $77, $75, $77, $65, $6F	; tile #116
	.byt $55, $5F, $55, $5F, $55, $5F, $55, $4F	; tile #117
	.byt $55, $7D, $54, $7E, $55, $7F, $55, $7F	; tile #118
	.byt $7F, $7F, $7F, $7F, $5F, $5F, $5F, $6F	; tile #119
	.byt $7F, $7F, $7E, $7E, $7D, $7D, $7D, $7B	; tile #120
	.byt $55, $5F, $55, $7F, $55, $7F, $55, $7F	; tile #121
	.byt $55, $7F, $55, $7F, $55, $7F, $40, $6A	; tile #122
	.byt $55, $7F, $55, $7F, $55, $60, $55, $6A	; tile #123
	.byt $55, $7F, $55, $7F, $55, $40, $55, $6A	; tile #124
	.byt $55, $7F, $55, $7F, $40, $4A, $55, $6A	; tile #125
	.byt $51, $7C, $55, $7E, $40, $6A, $55, $6A	; tile #126
	.byt $54, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #127
	.byt $54, $40, $55, $6A, $55, $6A, $55, $6A	; tile #128
	.byt $40, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #129
	.byt $41, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #130
	.byt $55, $47, $50, $6A, $55, $6A, $55, $6A	; tile #131
	.byt $55, $7F, $55, $61, $54, $6A, $55, $6A	; tile #132
	.byt $55, $7F, $55, $7F, $45, $68, $55, $6A	; tile #133
	.byt $4F, $77, $57, $77, $53, $5B, $40, $6A	; tile #134
	.byt $7F, $7F, $7F, $7F, $7F, $7C, $41, $6A	; tile #135
	.byt $7F, $7F, $7F, $7F, $7E, $40, $55, $6A	; tile #136
	.byt $7F, $7F, $7F, $7F, $40, $6A, $55, $6A	; tile #137
	.byt $7F, $7F, $7F, $40, $55, $6A, $55, $6A	; tile #138
	.byt $7F, $7F, $40, $6A, $55, $6A, $55, $6A	; tile #139
	.byt $79, $77, $75, $6F, $65, $6F, $55, $5F	; tile #140
	.byt $55, $7F, $55, $7E, $55, $72, $45, $4A	; tile #141
	.byt $55, $72, $45, $4A, $55, $6A, $55, $6A	; tile #142
	.byt $7E, $7E, $7E, $7D, $7D, $7B, $79, $7B	; tile #143
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $40, $6A	; tile #144
	.byt $75, $77, $65, $6E, $55, $52, $45, $6A	; tile #145
; Walkbox Data
wb_data
	.byt 000, 007, 015, 016, $01
	.byt 008, 032, 014, 016, $01
	.byt 011, 032, 012, 013, $01
	.byt 018, 018, 010, 011, $01
	.byt 033, 035, 012, 012, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 1, 1, 1
	.byt 0, 1, 2, 2, 2
	.byt 1, 1, 2, 3, 4
	.byt 2, 2, 2, 3, 2
	.byt 2, 2, 2, 2, 4


res_end
.)

.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 9,10		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 0,16		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 0,15		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH	
	.asc "Workshop",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Taller",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Atelier",0
#endif
res_end	
.)

.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 5,10		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 33,12		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 35,12		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH	
	.asc "Bay",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Muelle",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Soute",0 ; [laurentd75]: "soute" semble mieux que "baie" ou "quai" ou "renfoncement" ici...
#endif
res_end	
.)


.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 7,8		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 16-1,11		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 18,11		; Walk position (col, row)
	.byt FACING_UP		; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH	
	.asc "Bridge",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Puente",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Passerelle",0 ; "Pont" ou "Passerelle" (mieux, comme dans Star Trek en français...)
#endif
res_end	
.)




#include "..\scripts\liberatorpass.s"


