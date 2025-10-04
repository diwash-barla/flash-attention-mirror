	.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
	.amdhsa_code_object_version 5
	.text
	.globl	_bwd_kernel_fused_atomics_dkdvdq_noncausal ; -- Begin function _bwd_kernel_fused_atomics_dkdvdq_noncausal
	.p2align	8
	.type	_bwd_kernel_fused_atomics_dkdvdq_noncausal,@function
_bwd_kernel_fused_atomics_dkdvdq_noncausal: ; @_bwd_kernel_fused_atomics_dkdvdq_noncausal
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.17:
	.file	1 "/opt/conda/envs/py_3.10/lib/python3.10/site-packages/flash_attn-2.8.1-py3.10.egg/flash_attn/flash_attn_triton_amd" "bwd.py"
	s_load_dwordx2 s[2:3], s[0:1], 0x0
	s_load_dwordx8 s[4:11], s[0:1], 0x8
	s_load_dwordx4 s[12:15], s[0:1], 0x28
	s_waitcnt lgkmcnt(0)
	s_branch .LBB0_0
	.p2align	8
; %bb.18:
.LBB0_0:
	s_mov_b64 s[56:57], s[6:7]
	s_mov_b64 s[52:53], s[2:3]
	s_load_dword s6, s[0:1], 0xc4
	s_load_dwordx2 s[42:43], s[0:1], 0xb0
	s_load_dwordx2 s[2:3], s[0:1], 0x60
	s_load_dwordx2 s[54:55], s[0:1], 0x6c
	v_mov_b32_e32 v159, v0
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s6, s6
	v_cvt_f32_u32_e32 v0, s6
	s_ashr_i32 s7, s16, 31
	s_lshr_b32 s7, s7, 28
	s_add_i32 s7, s16, s7
	v_rcp_iflag_f32_e32 v0, v0
	s_mov_b64 s[48:49], s[10:11]
	s_and_b32 s10, s7, -16
	s_sub_i32 s33, s16, s10
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	s_sub_i32 s10, 0, s6
	s_ashr_i32 s9, s7, 4
	s_abs_i32 s9, s9
	v_readfirstlane_b32 s11, v0
	s_mul_i32 s10, s10, s11
	s_mul_hi_u32 s10, s11, s10
	s_add_i32 s11, s11, s10
	s_mul_hi_u32 s10, s9, s11
	s_mul_i32 s10, s10, s6
	s_sub_i32 s9, s9, s10
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s10, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s9, s10, s9
	s_sub_i32 s10, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s9
	s_xor_b32 s6, s6, s7
	s_sub_i32 s9, s6, s7
	s_lshl_b32 s60, s9, 8
	v_lshrrev_b32_e32 v208, 4, v159
	s_mul_i32 s6, s60, s3
	v_mul_lo_u32 v3, s3, v208
	s_lshl_b32 s3, s3, 4
	v_add_u32_e32 v4, s3, v3
	v_add_u32_e32 v12, s3, v4
	v_add_u32_e32 v13, s3, v12
	v_add_u32_e32 v20, s3, v13
	v_add_u32_e32 v21, s3, v20
	v_add_u32_e32 v28, s3, v21
	v_add_u32_e32 v29, s3, v28
	v_add_u32_e32 v36, s3, v29
	v_add_u32_e32 v37, s3, v36
	v_add_u32_e32 v44, s3, v37
	s_mul_i32 s2, s2, s33
	v_and_b32_e32 v1, 15, v159
	v_add_u32_e32 v45, s3, v44
	v_lshlrev_b32_e32 v146, 3, v1
	v_add_u32_e32 v52, s3, v45
	s_add_i32 s6, s6, s2
	v_or_b32_e32 v0, s60, v208
	v_add_u32_e32 v53, s3, v52
	v_add_u32_e32 v62, s6, v146
	v_or_b32_e32 v2, 16, v0
	v_add_u32_e32 v60, s3, v53
	s_mov_b32 s51, 0x27000
	s_mov_b32 s50, 0x7ffffffe
	v_add_lshl_u32 v3, v62, v3, 1
	v_bfrev_b32_e32 v131, 1
	v_cmp_gt_i32_e32 vcc, s43, v0
	v_or_b32_e32 v10, 32, v0
	v_or_b32_e32 v11, 48, v0
	v_or_b32_e32 v18, 64, v0
	v_or_b32_e32 v19, 0x50, v0
	v_or_b32_e32 v26, 0x60, v0
	v_or_b32_e32 v27, 0x70, v0
	v_or_b32_e32 v34, 0x80, v0
	v_or_b32_e32 v35, 0x90, v0
	v_or_b32_e32 v42, 0xa0, v0
	v_or_b32_e32 v43, 0xb0, v0
	v_or_b32_e32 v50, 0xc0, v0
	v_or_b32_e32 v51, 0xd0, v0
	v_or_b32_e32 v58, 0xe0, v0
	v_or_b32_e32 v59, 0xf0, v0
	v_add_u32_e32 v61, s3, v60
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s50
	s_mov_b32 s7, s51
	v_cndmask_b32_e32 v0, v131, v3, vcc
	v_add_lshl_u32 v3, v62, v4, 1
	v_cmp_gt_i32_e64 s[2:3], s43, v2
	v_cmp_gt_i32_e64 s[10:11], s43, v10
	s_mov_b64 s[44:45], s[14:15]
	v_cndmask_b32_e64 v14, v131, v3, s[2:3]
	buffer_load_dwordx4 v[2:5], v0, s[4:7], 0 offen
	buffer_load_dwordx4 v[6:9], v14, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v12, 1
	v_cndmask_b32_e64 v0, v131, v0, s[10:11]
	v_add_lshl_u32 v10, v62, v13, 1
	v_cmp_gt_i32_e64 s[14:15], s43, v11
	v_cmp_gt_i32_e64 s[16:17], s43, v18
	v_add_lshl_u32 v18, v62, v21, 1
	v_cndmask_b32_e64 v22, v131, v10, s[14:15]
	buffer_load_dwordx4 v[10:13], v0, s[4:7], 0 offen
	buffer_load_dwordx4 v[14:17], v22, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v20, 1
	v_cndmask_b32_e64 v0, v131, v0, s[16:17]
	v_cmp_gt_i32_e64 s[18:19], s43, v19
	v_cmp_gt_i32_e64 s[20:21], s43, v26
	v_add_lshl_u32 v26, v62, v29, 1
	v_cndmask_b32_e64 v30, v131, v18, s[18:19]
	buffer_load_dwordx4 v[18:21], v0, s[4:7], 0 offen
	buffer_load_dwordx4 v[22:25], v30, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v28, 1
	v_cndmask_b32_e64 v0, v131, v0, s[20:21]
	v_cmp_gt_i32_e64 s[22:23], s43, v27
	v_cmp_gt_i32_e64 s[24:25], s43, v34
	v_add_lshl_u32 v34, v62, v37, 1
	v_cndmask_b32_e64 v38, v131, v26, s[22:23]
	buffer_load_dwordx4 v[26:29], v0, s[4:7], 0 offen
	buffer_load_dwordx4 v[30:33], v38, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v36, 1
	v_cndmask_b32_e64 v0, v131, v0, s[24:25]
	v_cmp_gt_i32_e64 s[26:27], s43, v35
	v_cmp_gt_i32_e64 s[28:29], s43, v42
	v_add_lshl_u32 v42, v62, v45, 1
	v_cndmask_b32_e64 v46, v131, v34, s[26:27]
	buffer_load_dwordx4 v[34:37], v0, s[4:7], 0 offen
	buffer_load_dwordx4 v[38:41], v46, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v44, 1
	v_cmp_gt_i32_e64 s[36:37], s43, v43
	v_cndmask_b32_e64 v0, v131, v0, s[28:29]
	v_cmp_gt_i32_e64 s[30:31], s43, v50
	v_cndmask_b32_e64 v46, v131, v42, s[36:37]
	buffer_load_dwordx4 v[42:45], v0, s[4:7], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[46:49], v46, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v52, 1
	v_add_lshl_u32 v50, v62, v53, 1
	v_cmp_gt_i32_e64 s[34:35], s43, v51
	v_cndmask_b32_e64 v0, v131, v0, s[30:31]
	v_cmp_gt_i32_e64 s[38:39], s43, v58
	v_cndmask_b32_e64 v54, v131, v50, s[34:35]
	buffer_load_dwordx4 v[50:53], v0, s[4:7], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[54:57], v54, s[4:7], 0 offen
	v_add_lshl_u32 v0, v62, v60, 1
	v_add_lshl_u32 v58, v62, v61, 1
	v_cmp_gt_i32_e64 s[40:41], s43, v59
	v_cndmask_b32_e64 v0, v131, v0, s[38:39]
	v_and_b32_e32 v160, 0xc0, v159
	v_cndmask_b32_e64 v62, v131, v58, s[40:41]
	buffer_load_dwordx4 v[58:61], v0, s[4:7], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[62:65], v62, s[4:7], 0 offen
	s_movk_i32 s6, 0xf0
	v_lshlrev_b32_e32 v0, 4, v159
	v_bitop3_b32 v0, v0, v159, s6 bitop3:0x78
	v_add_u32_e32 v200, 0, v0
	v_and_b32_e32 v0, 12, v159
	s_waitcnt vmcnt(15)
	ds_write_b128 v200, v[2:5]
	s_waitcnt vmcnt(14)
	ds_write_b128 v200, v[6:9] offset:4096
	s_waitcnt vmcnt(13)
	ds_write_b128 v200, v[10:13] offset:8192
	s_waitcnt vmcnt(12)
	ds_write_b128 v200, v[14:17] offset:12288
	s_waitcnt vmcnt(11)
	ds_write_b128 v200, v[18:21] offset:16384
	s_waitcnt vmcnt(10)
	ds_write_b128 v200, v[22:25] offset:20480
	s_waitcnt vmcnt(9)
	ds_write_b128 v200, v[26:29] offset:24576
	s_waitcnt vmcnt(8)
	ds_write_b128 v200, v[30:33] offset:28672
	s_waitcnt vmcnt(7)
	ds_write_b128 v200, v[34:37] offset:32768
	s_waitcnt vmcnt(6)
	ds_write_b128 v200, v[38:41] offset:36864
	s_waitcnt vmcnt(5)
	ds_write_b128 v200, v[42:45] offset:40960
	s_waitcnt vmcnt(4)
	ds_write_b128 v200, v[46:49] offset:45056
	s_waitcnt vmcnt(3)
	ds_write_b128 v200, v[50:53] offset:49152
	s_waitcnt vmcnt(2)
	ds_write_b128 v200, v[54:57] offset:53248
	s_waitcnt vmcnt(1)
	ds_write_b128 v200, v[58:61] offset:57344
	s_waitcnt vmcnt(0)
	ds_write_b128 v200, v[62:65] offset:61440
	v_and_b32_e32 v147, 48, v159
	v_lshlrev_b32_e32 v2, 5, v0
	v_lshlrev_b32_e32 v154, 2, v159
	v_lshlrev_b32_e32 v0, 1, v0
	s_movk_i32 s6, 0x4c
	v_lshrrev_b32_e32 v3, 2, v160
	v_lshl_or_b32 v2, v147, 6, v2
	v_bitop3_b32 v0, v154, v0, s6 bitop3:0x6c
	v_bitop3_b32 v0, v2, v3, v0 bitop3:0x36
	v_xor_b32_e32 v2, 64, v0
	s_mul_i32 s7, s54, s33
	v_xor_b32_e32 v3, 32, v0
	v_lshl_add_u32 v68, v2, 1, 0
	v_mul_lo_u32 v2, s55, v208
	s_lshl_b32 s54, s55, 4
	v_lshl_add_u32 v67, v3, 1, 0
	v_add_u32_e32 v3, s54, v2
	v_add_u32_e32 v10, s54, v3
	v_add_u32_e32 v11, s54, v10
	v_add_u32_e32 v18, s54, v11
	v_add_u32_e32 v19, s54, v18
	v_add_u32_e32 v26, s54, v19
	s_mul_i32 s6, s60, s55
	v_add_u32_e32 v27, s54, v26
	v_add_u32_e32 v34, s54, v27
	s_add_i32 s6, s6, s7
	v_add_u32_e32 v35, s54, v34
	v_add_u32_e32 v59, s6, v146
	v_add_u32_e32 v42, s54, v35
	v_add_lshl_u32 v26, v59, v26, 1
	v_add_lshl_u32 v34, v59, v34, 1
	v_add_u32_e32 v43, s54, v42
	v_add_lshl_u32 v2, v59, v2, 1
	v_add_lshl_u32 v3, v59, v3, 1
	v_add_lshl_u32 v10, v59, v10, 1
	v_add_lshl_u32 v11, v59, v11, 1
	v_add_lshl_u32 v18, v59, v18, 1
	v_add_lshl_u32 v19, v59, v19, 1
	v_cndmask_b32_e64 v36, v131, v26, s[20:21]
	v_add_lshl_u32 v26, v59, v27, 1
	v_cndmask_b32_e64 v44, v131, v34, s[24:25]
	v_add_lshl_u32 v34, v59, v35, 1
	v_add_lshl_u32 v42, v59, v42, 1
	v_lshl_add_u32 v66, v0, 1, 0
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_cndmask_b32_e32 v2, v131, v2, vcc
	v_cndmask_b32_e64 v6, v131, v3, s[2:3]
	v_cndmask_b32_e64 v10, v131, v10, s[10:11]
	v_cndmask_b32_e64 v14, v131, v11, s[14:15]
	v_cndmask_b32_e64 v18, v131, v18, s[16:17]
	v_cndmask_b32_e64 v22, v131, v19, s[18:19]
	v_cndmask_b32_e64 v37, v131, v26, s[22:23]
	v_cndmask_b32_e64 v45, v131, v34, s[26:27]
	v_cndmask_b32_e64 v51, v131, v42, s[28:29]
	v_add_lshl_u32 v42, v59, v43, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b64_tr_b16 v[78:79], v66
	ds_read_b64_tr_b16 v[76:77], v66 offset:8192
	ds_read_b64_tr_b16 v[74:75], v66 offset:16384
	ds_read_b64_tr_b16 v[72:73], v66 offset:24576
	v_add_u32_e32 v50, s54, v43
	buffer_load_dwordx4 v[2:5], v2, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[6:9], v6, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[10:13], v10, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[14:17], v14, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[18:21], v18, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[22:25], v22, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[26:29], v36, s[56:59], 0 offen
	buffer_load_dwordx4 v[30:33], v37, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[34:37], v44, s[56:59], 0 offen
	buffer_load_dwordx4 v[38:41], v45, s[56:59], 0 offen
	v_cndmask_b32_e64 v52, v131, v42, s[36:37]
	buffer_load_dwordx4 v[42:45], v51, s[56:59], 0 offen
	buffer_load_dwordx4 v[46:49], v52, s[56:59], 0 offen
	v_add_u32_e32 v54, s54, v50
	v_add_u32_e32 v58, s54, v54
	v_add_lshl_u32 v50, v59, v50, 1
	v_add_u32_e32 v60, s54, v58
	v_add_lshl_u32 v54, v59, v54, 1
	v_add_lshl_u32 v58, v59, v58, 1
	v_cndmask_b32_e64 v50, v131, v50, s[30:31]
	v_cndmask_b32_e64 v54, v131, v54, s[34:35]
	v_cndmask_b32_e64 v69, v131, v58, s[38:39]
	v_add_lshl_u32 v58, v59, v60, 1
	buffer_load_dwordx4 v[50:53], v50, s[56:59], 0 offen
	v_cndmask_b32_e64 v70, v131, v58, s[40:41]
	buffer_load_dwordx4 v[54:57], v54, s[56:59], 0 offen
	s_nop 0
	buffer_load_dwordx4 v[58:61], v69, s[56:59], 0 offen
	buffer_load_dwordx4 v[62:65], v70, s[56:59], 0 offen
	ds_read_b64_tr_b16 v[80:81], v67 offset:1024
	v_xor_b32_e32 v0, 0x60, v0
	v_lshl_add_u32 v0, v0, 1, 0
	.file	2 "/app/OAI-triton/python/triton/language" "standard.py"
	s_add_i32 s18, s42, 15
	s_ashr_i32 s2, s18, 31
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[78:81], off offset:48 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[78:79], v67 offset:9216
	v_lshlrev_b32_e32 v155, 8, v1
	s_lshr_b32 s2, s2, 28
	s_movk_i32 s4, 0xc0
	s_movk_i32 s5, 0x80
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[76:79], off offset:32 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[76:77], v67 offset:17408
	s_add_i32 s2, s18, s2
	s_ashr_i32 s6, s2, 4
	s_abs_i32 s26, s6
	s_mul_i32 s9, s9, 17
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[74:77], off offset:16 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[74:75], v67 offset:25600
	s_abs_i32 s3, s9
	s_ashr_i32 s2, s9, 31
	s_load_dwordx2 s[46:47], s[0:1], 0x54
	s_mov_b32 s54, s50
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[72:75], off ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[248:249], v66 offset:32768
	ds_read_b64_tr_b16 v[184:185], v66 offset:40960
	ds_read_b64_tr_b16 v[72:73], v66 offset:49152
	ds_read_b64_tr_b16 v[70:71], v66 offset:57344
	ds_read_b64_tr_b16 v[250:251], v67 offset:33792
	ds_read_b64_tr_b16 v[186:187], v67 offset:41984
	ds_read_b64_tr_b16 v[74:75], v67 offset:50176
	s_mov_b32 s55, s51
	s_mul_i32 s9, s33, s46
	v_lshrrev_b32_e32 v201, 2, v147
	v_mov_b32_e32 v142, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[72:75], off offset:208 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[72:73], v67 offset:58368
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v145, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[70:73], off offset:192 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[76:77], v68
	ds_read_b64_tr_b16 v[74:75], v68 offset:8192
	ds_read_b64_tr_b16 v[72:73], v68 offset:16384
	ds_read_b64_tr_b16 v[70:71], v68 offset:24576
	ds_read_b64_tr_b16 v[78:79], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[76:79], off offset:176 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[76:77], v0 offset:9216
	s_nop 0
	v_lshl_or_b32 v78, v160, 7, v155
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[74:77], off offset:160 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[74:75], v0 offset:17408
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[72:75], off offset:144 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[72:73], v0 offset:25600
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[70:73], off offset:112 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[74:75], v68 offset:32768
	ds_read_b64_tr_b16 v[72:73], v68 offset:40960
	ds_read_b64_tr_b16 v[70:71], v68 offset:49152
	ds_read_b64_tr_b16 v[66:67], v68 offset:57344
	ds_read_b64_tr_b16 v[76:77], v0 offset:33792
	ds_read_b64_tr_b16 v[68:69], v0 offset:58368
	s_waitcnt lgkmcnt(1)
	scratch_store_dwordx4 off, v[74:77], off offset:128 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[74:75], v0 offset:41984
	s_waitcnt lgkmcnt(1)
	scratch_store_dwordx4 off, v[66:69], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[72:75], off offset:96 ; 16-byte Folded Spill
	ds_read_b64_tr_b16 v[72:73], v0 offset:50176
	v_lshlrev_b32_e32 v0, 4, v1
	v_bitop3_b32 v156, v0, v159, 48 bitop3:0x78
	v_or_b32_e32 v0, v78, v156
	v_bitop3_b32 v74, v78, s5, v156 bitop3:0x36
	v_bitop3_b32 v78, v78, s4, v156 bitop3:0x36
	s_waitcnt lgkmcnt(0)
	scratch_store_dwordx4 off, v[70:73], off offset:80 ; 16-byte Folded Spill
	v_add_u32_e32 v130, 0, v0
	v_xad_u32 v0, v0, 64, 0
	v_add_u32_e32 v132, 0, v74
	v_add_u32_e32 v133, 0, v78
	ds_read_b128 v[106:109], v130
	ds_read_b128 v[110:113], v130 offset:4096
	ds_read_b128 v[82:85], v130 offset:32768
	ds_read_b128 v[66:69], v130 offset:36864
	ds_read_b128 v[114:117], v0
	ds_read_b128 v[90:93], v0 offset:4096
	ds_read_b128 v[86:89], v0 offset:32768
	ds_read_b128 v[70:73], v0 offset:36864
	ds_read_b128 v[118:121], v132
	ds_read_b128 v[98:101], v132 offset:4096
	ds_read_b128 v[94:97], v132 offset:32768
	ds_read_b128 v[74:77], v132 offset:36864
	ds_read_b128 v[126:129], v133
	ds_read_b128 v[122:125], v133 offset:4096
	ds_read_b128 v[102:105], v133 offset:32768
	ds_read_b128 v[78:81], v133 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(29)
	ds_write_b128 v200, v[2:5]
	s_waitcnt vmcnt(28)
	ds_write_b128 v200, v[6:9] offset:4096
	s_waitcnt vmcnt(27)
	ds_write_b128 v200, v[10:13] offset:8192
	s_waitcnt vmcnt(26)
	ds_write_b128 v200, v[14:17] offset:12288
	s_waitcnt vmcnt(25)
	ds_write_b128 v200, v[18:21] offset:16384
	s_waitcnt vmcnt(24)
	ds_write_b128 v200, v[22:25] offset:20480
	s_waitcnt vmcnt(23)
	ds_write_b128 v200, v[26:29] offset:24576
	s_waitcnt vmcnt(22)
	ds_write_b128 v200, v[30:33] offset:28672
	s_waitcnt vmcnt(21)
	ds_write_b128 v200, v[34:37] offset:32768
	s_waitcnt vmcnt(20)
	ds_write_b128 v200, v[38:41] offset:36864
	s_waitcnt vmcnt(19)
	ds_write_b128 v200, v[42:45] offset:40960
	s_waitcnt vmcnt(18)
	ds_write_b128 v200, v[46:49] offset:45056
	s_waitcnt vmcnt(17)
	ds_write_b128 v200, v[50:53] offset:49152
	v_cvt_f32_u32_e32 v2, s26
	s_sub_i32 s4, 0, s26
	s_waitcnt vmcnt(16)
	ds_write_b128 v200, v[54:57] offset:53248
	s_waitcnt vmcnt(15)
	ds_write_b128 v200, v[58:61] offset:57344
	s_waitcnt vmcnt(14)
	ds_write_b128 v200, v[62:65] offset:61440
	s_waitcnt lgkmcnt(0)
	v_rcp_iflag_f32_e32 v2, v2
	s_barrier
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	s_nop 0
	v_readfirstlane_b32 s27, v2
	s_mul_i32 s4, s4, s27
	s_mul_hi_u32 s4, s27, s4
	s_add_i32 s27, s27, s4
	s_mul_hi_u32 s4, s3, s27
	s_mul_i32 s4, s4, s26
	s_sub_i32 s3, s3, s4
	s_sub_i32 s4, s3, s26
	s_cmp_ge_u32 s3, s26
	s_cselect_b32 s3, s4, s3
	s_sub_i32 s4, s3, s26
	s_cmp_ge_u32 s3, s26
	s_cselect_b32 s3, s4, s3
	s_xor_b32 s3, s3, s2
	s_sub_i32 s7, s3, s2
	s_lshl_b32 s28, s7, 4
	s_mul_i32 s4, s28, s47
	v_mad_u64_u32 v[148:149], s[2:3], s47, v208, v[146:147]
	v_or_b32_e32 v2, s28, v208
	s_add_i32 s2, s9, s4
	v_add_lshl_u32 v3, s2, v148, 1
	v_cmp_gt_i32_e32 vcc, s42, v2
	s_and_b32 s53, s53, 0xffff
	s_nop 0
	v_cndmask_b32_e32 v2, v131, v3, vcc
	buffer_load_dwordx4 v[134:137], v2, s[52:55], 0 offen
	s_load_dwordx4 s[20:23], s[0:1], 0x38
	s_load_dwordx2 s[14:15], s[0:1], 0x98
	s_load_dword s4, s[0:1], 0x90
	s_load_dwordx2 s[24:25], s[0:1], 0x48
	ds_read_b128 v[46:49], v130
	ds_read_b128 v[26:29], v130 offset:4096
	ds_read_b128 v[18:21], v130 offset:32768
	ds_read_b128 v[14:17], v130 offset:36864
	ds_read_b128 v[54:57], v0
	ds_read_b128 v[38:41], v0 offset:4096
	ds_read_b128 v[22:25], v0 offset:32768
	ds_read_b128 v[2:5], v0 offset:36864
	ds_read_b128 v[58:61], v132
	ds_read_b128 v[42:45], v132 offset:4096
	ds_read_b128 v[30:33], v132 offset:32768
	ds_read_b128 v[6:9], v132 offset:36864
	ds_read_b128 v[62:65], v133
	ds_read_b128 v[50:53], v133 offset:4096
	ds_read_b128 v[34:37], v133 offset:32768
	ds_read_b128 v[10:13], v133 offset:36864
	v_or_b32_e32 v0, s28, v201
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[20:21]
	s_mul_i32 s4, s33, s4
	v_add_u32_e32 v202, s4, v201
	v_add_u32_e32 v152, s28, v202
	v_cmp_gt_i32_e64 s[2:3], s42, v0
	v_mov_b32_e32 v130, 0
	v_ashrrev_i32_e32 v153, 31, v152
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB0_2
; %bb.1:
	v_lshl_add_u64 v[132:133], v[152:153], 2, s[22:23]
	global_load_dwordx4 v[142:145], v[132:133], off
.LBB0_2:
	s_or_b64 exec, exec, s[4:5]
	s_mul_i32 s10, s28, s15
	v_mad_u64_u32 v[150:151], s[4:5], s15, v208, v[146:147]
	s_mul_i32 s14, s33, s14
	s_add_i32 s4, s14, s10
	v_add_lshl_u32 v0, s4, v150, 1
	s_and_b32 s49, s49, 0xffff
	v_cndmask_b32_e32 v0, v131, v0, vcc
	buffer_load_dwordx4 v[138:141], v0, s[48:51], 0 offen
	s_load_dwordx2 s[10:11], s[0:1], 0x84
	v_and_b32_e32 v149, 0xf0, v159
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v133, 0
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB0_4
; %bb.3:
	v_lshl_add_u64 v[130:131], v[152:153], 2, s[24:25]
	global_load_dwordx4 v[130:133], v[130:131], off
.LBB0_4:
	s_or_b64 exec, exec, s[4:5]
	v_lshrrev_b32_e32 v0, 2, v149
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[152:153], s[2:3], s11, v1, v[0:1]
	v_and_b32_e32 v0, 44, v159
	v_lshlrev_b32_e32 v157, 5, v0
	v_and_b32_e32 v154, 12, v154
	v_lshlrev_b32_e32 v0, 1, v0
	v_and_b32_e32 v158, 16, v159
	v_bitop3_b32 v0, v0, v157, v154 bitop3:0x1e
	v_and_b32_e32 v162, 32, v159
	s_and_b32 s17, s17, 0xffff
	v_bfe_i32 v161, v159, 4, 1
	v_xor_b32_e32 v154, v0, v158
	v_lshlrev_b32_e32 v0, 5, v159
	s_movk_i32 s21, 0x110
	s_cmp_gt_i32 s18, 31
	v_add_u32_e32 v149, 2, v152
	v_add_u32_e32 v151, 64, v152
	v_add_u32_e32 v153, 0x42, v152
	s_movk_i32 s5, 0x80
	s_movk_i32 s20, 0xc0
	v_and_b32_e32 v157, 0xe0, v0
	scratch_store_dword off, v160, off offset:228 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v158, 4, v160
	v_lshrrev_b32_e32 v147, 1, v147
	scratch_store_dword off, v159, off offset:224 ; 4-byte Folded Spill
	v_bfe_i32 v159, v159, 3, 1
	v_lshlrev_b32_e32 v160, 4, v162
	v_bitop3_b32 v146, v146, v161, s21 bitop3:0x78
	s_mov_b32 s19, 0x27000
	s_mov_b32 s18, 0x7ffffffe
	s_mul_i32 s4, s33, s10
	scratch_store_dword off, v162, off offset:232 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_write_b128 v200, v[134:137] offset:8192
	s_waitcnt vmcnt(3)
	ds_write_b128 v200, v[138:141] offset:12288
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_add_u32_e32 v189, s4, v152
	v_add_u32_e32 v199, s4, v149
	v_add_u32_e32 v0, s4, v151
	v_add_u32_e32 v188, s4, v153
	s_mov_b64 s[2:3], 0
	s_branch .LBB0_7
.LBB0_6:
	s_mov_b64 s[2:3], -1
                                        ; implicit-def: $vgpr189
                                        ; implicit-def: $vgpr199
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr188
.LBB0_7:                                ; %Flow406
	v_xor_b32_e32 v134, 64, v154
	v_or_b32_e32 v135, v156, v155
	v_bitop3_b32 v136, v156, 64, v155 bitop3:0x36
	v_bitop3_b32 v137, v156, s5, v155 bitop3:0x36
	v_bitop3_b32 v138, v156, s20, v155 bitop3:0x36
	v_bitop3_b32 v191, v159, v147, s21 bitop3:0x6c
	v_add3_u32 v192, 0, v157, v158
	v_add3_u32 v190, 0, v160, v146
	v_accvgpr_write_b32 a128, 0
	v_accvgpr_write_b32 a129, 0
	v_accvgpr_write_b32 a130, 0
	v_accvgpr_write_b32 a131, 0
	v_accvgpr_write_b32 a132, 0
	v_accvgpr_write_b32 a133, 0
	v_accvgpr_write_b32 a134, 0
	v_accvgpr_write_b32 a135, 0
	v_accvgpr_write_b32 a136, 0
	v_accvgpr_write_b32 a137, 0
	v_accvgpr_write_b32 a138, 0
	v_accvgpr_write_b32 a139, 0
	v_accvgpr_write_b32 a140, 0
	v_accvgpr_write_b32 a141, 0
	v_accvgpr_write_b32 a142, 0
	v_accvgpr_write_b32 a143, 0
	v_accvgpr_write_b32 a144, 0
	v_accvgpr_write_b32 a145, 0
	v_accvgpr_write_b32 a146, 0
	v_accvgpr_write_b32 a147, 0
	v_accvgpr_write_b32 a148, 0
	v_accvgpr_write_b32 a149, 0
	v_accvgpr_write_b32 a150, 0
	v_accvgpr_write_b32 a151, 0
	v_accvgpr_write_b32 a152, 0
	v_accvgpr_write_b32 a153, 0
	v_accvgpr_write_b32 a154, 0
	v_accvgpr_write_b32 a155, 0
	v_accvgpr_write_b32 a156, 0
	v_accvgpr_write_b32 a157, 0
	v_accvgpr_write_b32 a158, 0
	v_accvgpr_write_b32 a159, 0
	v_accvgpr_write_b32 a160, 0
	v_accvgpr_write_b32 a161, 0
	v_accvgpr_write_b32 a162, 0
	v_accvgpr_write_b32 a163, 0
	v_accvgpr_write_b32 a164, 0
	v_accvgpr_write_b32 a165, 0
	v_accvgpr_write_b32 a166, 0
	v_accvgpr_write_b32 a167, 0
	v_accvgpr_write_b32 a168, 0
	v_accvgpr_write_b32 a169, 0
	v_accvgpr_write_b32 a170, 0
	v_accvgpr_write_b32 a171, 0
	v_accvgpr_write_b32 a172, 0
	v_accvgpr_write_b32 a173, 0
	v_accvgpr_write_b32 a174, 0
	v_accvgpr_write_b32 a175, 0
	v_accvgpr_write_b32 a176, 0
	v_accvgpr_write_b32 a177, 0
	v_accvgpr_write_b32 a178, 0
	v_accvgpr_write_b32 a179, 0
	v_accvgpr_write_b32 a180, 0
	v_accvgpr_write_b32 a181, 0
	v_accvgpr_write_b32 a182, 0
	v_accvgpr_write_b32 a183, 0
	v_accvgpr_write_b32 a184, 0
	v_accvgpr_write_b32 a185, 0
	v_accvgpr_write_b32 a186, 0
	v_accvgpr_write_b32 a187, 0
	v_accvgpr_write_b32 a188, 0
	v_accvgpr_write_b32 a189, 0
	v_accvgpr_write_b32 a190, 0
	v_accvgpr_write_b32 a191, 0
	v_accvgpr_write_b32 a192, 0
	v_accvgpr_write_b32 a193, 0
	v_accvgpr_write_b32 a194, 0
	v_accvgpr_write_b32 a195, 0
	v_accvgpr_write_b32 a196, 0
	v_accvgpr_write_b32 a197, 0
	v_accvgpr_write_b32 a198, 0
	v_accvgpr_write_b32 a199, 0
	v_accvgpr_write_b32 a200, 0
	v_accvgpr_write_b32 a201, 0
	v_accvgpr_write_b32 a202, 0
	v_accvgpr_write_b32 a203, 0
	v_accvgpr_write_b32 a204, 0
	v_accvgpr_write_b32 a205, 0
	v_accvgpr_write_b32 a206, 0
	v_accvgpr_write_b32 a207, 0
	v_accvgpr_write_b32 a208, 0
	v_accvgpr_write_b32 a209, 0
	v_accvgpr_write_b32 a210, 0
	v_accvgpr_write_b32 a211, 0
	v_accvgpr_write_b32 a212, 0
	v_accvgpr_write_b32 a213, 0
	v_accvgpr_write_b32 a214, 0
	v_accvgpr_write_b32 a215, 0
	v_accvgpr_write_b32 a216, 0
	v_accvgpr_write_b32 a217, 0
	v_accvgpr_write_b32 a218, 0
	v_accvgpr_write_b32 a219, 0
	v_accvgpr_write_b32 a220, 0
	v_accvgpr_write_b32 a221, 0
	v_accvgpr_write_b32 a222, 0
	v_accvgpr_write_b32 a223, 0
	v_accvgpr_write_b32 a224, 0
	v_accvgpr_write_b32 a225, 0
	v_accvgpr_write_b32 a226, 0
	v_accvgpr_write_b32 a227, 0
	v_accvgpr_write_b32 a228, 0
	v_accvgpr_write_b32 a229, 0
	v_accvgpr_write_b32 a230, 0
	v_accvgpr_write_b32 a231, 0
	v_accvgpr_write_b32 a232, 0
	v_accvgpr_write_b32 a233, 0
	v_accvgpr_write_b32 a234, 0
	v_accvgpr_write_b32 a235, 0
	v_accvgpr_write_b32 a236, 0
	v_accvgpr_write_b32 a237, 0
	v_accvgpr_write_b32 a238, 0
	v_accvgpr_write_b32 a239, 0
	v_accvgpr_write_b32 a240, 0
	v_accvgpr_write_b32 a241, 0
	v_accvgpr_write_b32 a242, 0
	v_accvgpr_write_b32 a243, 0
	v_accvgpr_write_b32 a244, 0
	v_accvgpr_write_b32 a245, 0
	v_accvgpr_write_b32 a246, 0
	v_accvgpr_write_b32 a247, 0
	v_accvgpr_write_b32 a248, 0
	v_accvgpr_write_b32 a249, 0
	v_accvgpr_write_b32 a250, 0
	v_accvgpr_write_b32 a251, 0
	v_accvgpr_write_b32 a252, 0
	v_accvgpr_write_b32 a253, 0
	v_accvgpr_write_b32 a254, 0
	v_accvgpr_write_b32 a255, 0
	v_accvgpr_write_b32 a0, 0
	v_accvgpr_write_b32 a1, 0
	v_accvgpr_write_b32 a2, 0
	v_accvgpr_write_b32 a3, 0
	v_accvgpr_write_b32 a4, 0
	v_accvgpr_write_b32 a5, 0
	v_accvgpr_write_b32 a6, 0
	v_accvgpr_write_b32 a7, 0
	v_accvgpr_write_b32 a8, 0
	v_accvgpr_write_b32 a9, 0
	v_accvgpr_write_b32 a10, 0
	v_accvgpr_write_b32 a11, 0
	v_accvgpr_write_b32 a12, 0
	v_accvgpr_write_b32 a13, 0
	v_accvgpr_write_b32 a14, 0
	v_accvgpr_write_b32 a15, 0
	v_accvgpr_write_b32 a16, 0
	v_accvgpr_write_b32 a17, 0
	v_accvgpr_write_b32 a18, 0
	v_accvgpr_write_b32 a19, 0
	v_accvgpr_write_b32 a20, 0
	v_accvgpr_write_b32 a21, 0
	v_accvgpr_write_b32 a22, 0
	v_accvgpr_write_b32 a23, 0
	v_accvgpr_write_b32 a24, 0
	v_accvgpr_write_b32 a25, 0
	v_accvgpr_write_b32 a26, 0
	v_accvgpr_write_b32 a27, 0
	v_accvgpr_write_b32 a28, 0
	v_accvgpr_write_b32 a29, 0
	v_accvgpr_write_b32 a30, 0
	v_accvgpr_write_b32 a31, 0
	v_accvgpr_write_b32 a32, 0
	v_accvgpr_write_b32 a33, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a36, 0
	v_accvgpr_write_b32 a37, 0
	v_accvgpr_write_b32 a38, 0
	v_accvgpr_write_b32 a39, 0
	v_accvgpr_write_b32 a40, 0
	v_accvgpr_write_b32 a41, 0
	v_accvgpr_write_b32 a42, 0
	v_accvgpr_write_b32 a43, 0
	v_accvgpr_write_b32 a44, 0
	v_accvgpr_write_b32 a45, 0
	v_accvgpr_write_b32 a46, 0
	v_accvgpr_write_b32 a47, 0
	v_accvgpr_write_b32 a48, 0
	v_accvgpr_write_b32 a49, 0
	v_accvgpr_write_b32 a50, 0
	v_accvgpr_write_b32 a51, 0
	v_accvgpr_write_b32 a52, 0
	v_accvgpr_write_b32 a53, 0
	v_accvgpr_write_b32 a54, 0
	v_accvgpr_write_b32 a55, 0
	v_accvgpr_write_b32 a56, 0
	v_accvgpr_write_b32 a57, 0
	v_accvgpr_write_b32 a58, 0
	v_accvgpr_write_b32 a59, 0
	v_accvgpr_write_b32 a60, 0
	v_accvgpr_write_b32 a61, 0
	v_accvgpr_write_b32 a62, 0
	v_accvgpr_write_b32 a63, 0
	v_accvgpr_write_b32 a64, 0
	v_accvgpr_write_b32 a65, 0
	v_accvgpr_write_b32 a66, 0
	v_accvgpr_write_b32 a67, 0
	v_accvgpr_write_b32 a68, 0
	v_accvgpr_write_b32 a69, 0
	v_accvgpr_write_b32 a70, 0
	v_accvgpr_write_b32 a71, 0
	v_accvgpr_write_b32 a72, 0
	v_accvgpr_write_b32 a73, 0
	v_accvgpr_write_b32 a74, 0
	v_accvgpr_write_b32 a75, 0
	v_accvgpr_write_b32 a76, 0
	v_accvgpr_write_b32 a77, 0
	v_accvgpr_write_b32 a78, 0
	v_accvgpr_write_b32 a79, 0
	v_accvgpr_write_b32 a80, 0
	v_accvgpr_write_b32 a81, 0
	v_accvgpr_write_b32 a82, 0
	v_accvgpr_write_b32 a83, 0
	v_accvgpr_write_b32 a84, 0
	v_accvgpr_write_b32 a85, 0
	v_accvgpr_write_b32 a86, 0
	v_accvgpr_write_b32 a87, 0
	v_accvgpr_write_b32 a88, 0
	v_accvgpr_write_b32 a89, 0
	v_accvgpr_write_b32 a90, 0
	v_accvgpr_write_b32 a91, 0
	v_accvgpr_write_b32 a92, 0
	v_accvgpr_write_b32 a93, 0
	v_accvgpr_write_b32 a94, 0
	v_accvgpr_write_b32 a95, 0
	v_accvgpr_write_b32 a96, 0
	v_accvgpr_write_b32 a97, 0
	v_accvgpr_write_b32 a98, 0
	v_accvgpr_write_b32 a99, 0
	v_accvgpr_write_b32 a100, 0
	v_accvgpr_write_b32 a101, 0
	v_accvgpr_write_b32 a102, 0
	v_accvgpr_write_b32 a103, 0
	v_accvgpr_write_b32 a104, 0
	v_accvgpr_write_b32 a105, 0
	v_accvgpr_write_b32 a106, 0
	v_accvgpr_write_b32 a107, 0
	v_accvgpr_write_b32 a108, 0
	v_accvgpr_write_b32 a109, 0
	v_accvgpr_write_b32 a110, 0
	v_accvgpr_write_b32 a111, 0
	v_accvgpr_write_b32 a112, 0
	v_accvgpr_write_b32 a113, 0
	v_accvgpr_write_b32 a114, 0
	v_accvgpr_write_b32 a115, 0
	v_accvgpr_write_b32 a116, 0
	v_accvgpr_write_b32 a117, 0
	v_accvgpr_write_b32 a118, 0
	v_accvgpr_write_b32 a119, 0
	v_accvgpr_write_b32 a120, 0
	v_accvgpr_write_b32 a121, 0
	v_accvgpr_write_b32 a122, 0
	v_accvgpr_write_b32 a123, 0
	v_accvgpr_write_b32 a124, 0
	v_accvgpr_write_b32 a125, 0
	v_accvgpr_write_b32 a126, 0
	s_andn2_b64 vcc, exec, s[2:3]
	v_accvgpr_write_b32 a127, 0
	v_lshl_add_u32 v194, v154, 1, 0
	v_lshl_add_u32 v193, v134, 1, 0
	v_add_u32_e32 v198, 0, v135
	v_add_u32_e32 v197, 0, v136
	v_add_u32_e32 v196, 0, v137
	v_add_u32_e32 v195, 0, v138
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_max_i32 s2, s6, 2
	v_add_u32_e32 v203, s9, v148
	v_add_u32_e32 v189, s4, v152
	v_add_u32_e32 v199, s4, v149
	v_add_u32_e32 v0, s4, v151
	v_add_u32_e32 v188, s4, v153
	v_add_u32_e32 v204, s14, v150
	s_mov_b32 s9, s8
	s_add_i32 s14, s2, -1
	s_add_i32 s20, s7, 1
	v_accvgpr_write_b32 a255, 0
	v_accvgpr_write_b32 a254, 0
	v_accvgpr_write_b32 a253, 0
	v_accvgpr_write_b32 a252, 0
	v_accvgpr_write_b32 a251, 0
	v_accvgpr_write_b32 a250, 0
	v_accvgpr_write_b32 a249, 0
	v_accvgpr_write_b32 a248, 0
	v_accvgpr_write_b32 a247, 0
	v_accvgpr_write_b32 a246, 0
	v_accvgpr_write_b32 a245, 0
	v_accvgpr_write_b32 a244, 0
	v_accvgpr_write_b32 a243, 0
	v_accvgpr_write_b32 a242, 0
	v_accvgpr_write_b32 a241, 0
	v_accvgpr_write_b32 a240, 0
	v_accvgpr_write_b32 a239, 0
	v_accvgpr_write_b32 a238, 0
	v_accvgpr_write_b32 a237, 0
	v_accvgpr_write_b32 a236, 0
	v_accvgpr_write_b32 a235, 0
	v_accvgpr_write_b32 a234, 0
	v_accvgpr_write_b32 a233, 0
	v_accvgpr_write_b32 a232, 0
	v_accvgpr_write_b32 a231, 0
	v_accvgpr_write_b32 a230, 0
	v_accvgpr_write_b32 a229, 0
	v_accvgpr_write_b32 a228, 0
	v_accvgpr_write_b32 a227, 0
	v_accvgpr_write_b32 a226, 0
	v_accvgpr_write_b32 a225, 0
	v_accvgpr_write_b32 a224, 0
	v_accvgpr_write_b32 a223, 0
	v_accvgpr_write_b32 a222, 0
	v_accvgpr_write_b32 a221, 0
	v_accvgpr_write_b32 a220, 0
	v_accvgpr_write_b32 a219, 0
	v_accvgpr_write_b32 a218, 0
	v_accvgpr_write_b32 a217, 0
	v_accvgpr_write_b32 a216, 0
	v_accvgpr_write_b32 a215, 0
	v_accvgpr_write_b32 a214, 0
	v_accvgpr_write_b32 a213, 0
	v_accvgpr_write_b32 a212, 0
	v_accvgpr_write_b32 a211, 0
	v_accvgpr_write_b32 a210, 0
	v_accvgpr_write_b32 a209, 0
	v_accvgpr_write_b32 a208, 0
	v_accvgpr_write_b32 a207, 0
	v_accvgpr_write_b32 a206, 0
	v_accvgpr_write_b32 a205, 0
	v_accvgpr_write_b32 a204, 0
	v_accvgpr_write_b32 a203, 0
	v_accvgpr_write_b32 a202, 0
	v_accvgpr_write_b32 a201, 0
	v_accvgpr_write_b32 a200, 0
	v_accvgpr_write_b32 a199, 0
	v_accvgpr_write_b32 a198, 0
	v_accvgpr_write_b32 a197, 0
	v_accvgpr_write_b32 a196, 0
	v_accvgpr_write_b32 a195, 0
	v_accvgpr_write_b32 a194, 0
	v_accvgpr_write_b32 a193, 0
	v_accvgpr_write_b32 a192, 0
	v_accvgpr_write_b32 a191, 0
	v_accvgpr_write_b32 a190, 0
	v_accvgpr_write_b32 a189, 0
	v_accvgpr_write_b32 a188, 0
	v_accvgpr_write_b32 a187, 0
	v_accvgpr_write_b32 a186, 0
	v_accvgpr_write_b32 a185, 0
	v_accvgpr_write_b32 a184, 0
	v_accvgpr_write_b32 a183, 0
	v_accvgpr_write_b32 a182, 0
	v_accvgpr_write_b32 a181, 0
	v_accvgpr_write_b32 a180, 0
	v_accvgpr_write_b32 a179, 0
	v_accvgpr_write_b32 a178, 0
	v_accvgpr_write_b32 a177, 0
	v_accvgpr_write_b32 a176, 0
	v_accvgpr_write_b32 a175, 0
	v_accvgpr_write_b32 a174, 0
	v_accvgpr_write_b32 a173, 0
	v_accvgpr_write_b32 a172, 0
	v_accvgpr_write_b32 a171, 0
	v_accvgpr_write_b32 a170, 0
	v_accvgpr_write_b32 a169, 0
	v_accvgpr_write_b32 a168, 0
	v_accvgpr_write_b32 a167, 0
	v_accvgpr_write_b32 a166, 0
	v_accvgpr_write_b32 a165, 0
	v_accvgpr_write_b32 a164, 0
	v_accvgpr_write_b32 a163, 0
	v_accvgpr_write_b32 a162, 0
	v_accvgpr_write_b32 a161, 0
	v_accvgpr_write_b32 a160, 0
	v_accvgpr_write_b32 a159, 0
	v_accvgpr_write_b32 a158, 0
	v_accvgpr_write_b32 a157, 0
	v_accvgpr_write_b32 a156, 0
	v_accvgpr_write_b32 a155, 0
	v_accvgpr_write_b32 a154, 0
	v_accvgpr_write_b32 a153, 0
	v_accvgpr_write_b32 a152, 0
	v_accvgpr_write_b32 a151, 0
	v_accvgpr_write_b32 a150, 0
	v_accvgpr_write_b32 a149, 0
	v_accvgpr_write_b32 a148, 0
	v_accvgpr_write_b32 a147, 0
	v_accvgpr_write_b32 a146, 0
	v_accvgpr_write_b32 a145, 0
	v_accvgpr_write_b32 a144, 0
	v_accvgpr_write_b32 a143, 0
	v_accvgpr_write_b32 a142, 0
	v_accvgpr_write_b32 a141, 0
	v_accvgpr_write_b32 a140, 0
	v_accvgpr_write_b32 a139, 0
	v_accvgpr_write_b32 a138, 0
	v_accvgpr_write_b32 a137, 0
	v_accvgpr_write_b32 a136, 0
	v_accvgpr_write_b32 a135, 0
	v_accvgpr_write_b32 a134, 0
	v_accvgpr_write_b32 a133, 0
	v_accvgpr_write_b32 a132, 0
	v_accvgpr_write_b32 a131, 0
	v_accvgpr_write_b32 a130, 0
	v_accvgpr_write_b32 a129, 0
	v_accvgpr_write_b32 a128, 0
	v_accvgpr_write_b32 a127, 0
	v_accvgpr_write_b32 a126, 0
	v_accvgpr_write_b32 a125, 0
	v_accvgpr_write_b32 a124, 0
	v_accvgpr_write_b32 a123, 0
	v_accvgpr_write_b32 a122, 0
	v_accvgpr_write_b32 a121, 0
	v_accvgpr_write_b32 a120, 0
	v_accvgpr_write_b32 a119, 0
	v_accvgpr_write_b32 a118, 0
	v_accvgpr_write_b32 a117, 0
	v_accvgpr_write_b32 a116, 0
	v_accvgpr_write_b32 a115, 0
	v_accvgpr_write_b32 a114, 0
	v_accvgpr_write_b32 a113, 0
	v_accvgpr_write_b32 a112, 0
	v_accvgpr_write_b32 a111, 0
	v_accvgpr_write_b32 a110, 0
	v_accvgpr_write_b32 a109, 0
	v_accvgpr_write_b32 a108, 0
	v_accvgpr_write_b32 a107, 0
	v_accvgpr_write_b32 a106, 0
	v_accvgpr_write_b32 a105, 0
	v_accvgpr_write_b32 a104, 0
	v_accvgpr_write_b32 a103, 0
	v_accvgpr_write_b32 a102, 0
	v_accvgpr_write_b32 a101, 0
	v_accvgpr_write_b32 a100, 0
	v_accvgpr_write_b32 a99, 0
	v_accvgpr_write_b32 a98, 0
	v_accvgpr_write_b32 a97, 0
	v_accvgpr_write_b32 a96, 0
	v_accvgpr_write_b32 a95, 0
	v_accvgpr_write_b32 a94, 0
	v_accvgpr_write_b32 a93, 0
	v_accvgpr_write_b32 a92, 0
	v_accvgpr_write_b32 a91, 0
	v_accvgpr_write_b32 a90, 0
	v_accvgpr_write_b32 a89, 0
	v_accvgpr_write_b32 a88, 0
	v_accvgpr_write_b32 a87, 0
	v_accvgpr_write_b32 a86, 0
	v_accvgpr_write_b32 a85, 0
	v_accvgpr_write_b32 a84, 0
	v_accvgpr_write_b32 a83, 0
	v_accvgpr_write_b32 a82, 0
	v_accvgpr_write_b32 a81, 0
	v_accvgpr_write_b32 a80, 0
	v_accvgpr_write_b32 a79, 0
	v_accvgpr_write_b32 a78, 0
	v_accvgpr_write_b32 a77, 0
	v_accvgpr_write_b32 a76, 0
	v_accvgpr_write_b32 a75, 0
	v_accvgpr_write_b32 a74, 0
	v_accvgpr_write_b32 a73, 0
	v_accvgpr_write_b32 a72, 0
	v_accvgpr_write_b32 a71, 0
	v_accvgpr_write_b32 a70, 0
	v_accvgpr_write_b32 a69, 0
	v_accvgpr_write_b32 a68, 0
	v_accvgpr_write_b32 a67, 0
	v_accvgpr_write_b32 a66, 0
	v_accvgpr_write_b32 a65, 0
	v_accvgpr_write_b32 a64, 0
	v_accvgpr_write_b32 a63, 0
	v_accvgpr_write_b32 a62, 0
	v_accvgpr_write_b32 a61, 0
	v_accvgpr_write_b32 a60, 0
	v_accvgpr_write_b32 a59, 0
	v_accvgpr_write_b32 a58, 0
	v_accvgpr_write_b32 a57, 0
	v_accvgpr_write_b32 a56, 0
	v_accvgpr_write_b32 a55, 0
	v_accvgpr_write_b32 a54, 0
	v_accvgpr_write_b32 a53, 0
	v_accvgpr_write_b32 a52, 0
	v_accvgpr_write_b32 a51, 0
	v_accvgpr_write_b32 a50, 0
	v_accvgpr_write_b32 a49, 0
	v_accvgpr_write_b32 a48, 0
	v_accvgpr_write_b32 a47, 0
	v_accvgpr_write_b32 a46, 0
	v_accvgpr_write_b32 a45, 0
	v_accvgpr_write_b32 a44, 0
	v_accvgpr_write_b32 a43, 0
	v_accvgpr_write_b32 a42, 0
	v_accvgpr_write_b32 a41, 0
	v_accvgpr_write_b32 a40, 0
	v_accvgpr_write_b32 a39, 0
	v_accvgpr_write_b32 a38, 0
	v_accvgpr_write_b32 a37, 0
	v_accvgpr_write_b32 a36, 0
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a33, 0
	v_accvgpr_write_b32 a32, 0
	v_accvgpr_write_b32 a31, 0
	v_accvgpr_write_b32 a30, 0
	v_accvgpr_write_b32 a29, 0
	v_accvgpr_write_b32 a28, 0
	v_accvgpr_write_b32 a27, 0
	v_accvgpr_write_b32 a26, 0
	v_accvgpr_write_b32 a25, 0
	v_accvgpr_write_b32 a24, 0
	v_accvgpr_write_b32 a23, 0
	v_accvgpr_write_b32 a22, 0
	v_accvgpr_write_b32 a21, 0
	v_accvgpr_write_b32 a20, 0
	v_accvgpr_write_b32 a19, 0
	v_accvgpr_write_b32 a18, 0
	v_accvgpr_write_b32 a17, 0
	v_accvgpr_write_b32 a16, 0
	v_accvgpr_write_b32 a15, 0
	v_accvgpr_write_b32 a14, 0
	v_accvgpr_write_b32 a13, 0
	v_accvgpr_write_b32 a12, 0
	v_accvgpr_write_b32 a11, 0
	v_accvgpr_write_b32 a10, 0
	v_accvgpr_write_b32 a9, 0
	v_accvgpr_write_b32 a8, 0
	v_accvgpr_write_b32 a7, 0
	v_accvgpr_write_b32 a6, 0
	v_accvgpr_write_b32 a5, 0
	v_accvgpr_write_b32 a4, 0
	v_accvgpr_write_b32 a3, 0
	v_accvgpr_write_b32 a2, 0
	v_accvgpr_write_b32 a1, 0
	v_accvgpr_write_b32 a0, 0
	v_bfrev_b32_e32 v205, 1
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s21, 0xc2fc0000
	v_mov_b32_e32 v206, 0x42800000
	v_not_b32_e32 v207, 63
.LBB0_9:                                ; =>This Inner Loop Header: Depth=1
	s_abs_i32 s3, s20
	s_mul_hi_u32 s4, s3, s27
	s_mul_i32 s4, s4, s26
	s_sub_i32 s3, s3, s4
	s_ashr_i32 s2, s20, 31
	s_sub_i32 s4, s3, s26
	s_cmp_ge_u32 s3, s26
	s_cselect_b32 s3, s4, s3
	s_sub_i32 s4, s3, s26
	s_cmp_ge_u32 s3, s26
	s_cselect_b32 s3, s4, s3
	s_xor_b32 s3, s3, s2
	s_sub_i32 s2, s3, s2
	s_lshl_b32 s10, s2, 4
	s_mul_i32 s4, s10, s47
	v_or_b32_e32 v134, s10, v208
	v_cmp_gt_i32_e64 s[2:3], s42, v134
	v_add_lshl_u32 v134, v203, s4, 1
	v_or_b32_e32 v135, s10, v201
	v_cndmask_b32_e64 v134, v205, v134, s[2:3]
	buffer_load_dwordx4 v[146:149], v134, s[52:55], 0 offen
	v_cmp_gt_i32_e32 vcc, s42, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b64_tr_b16 v[222:223], v194 offset:8192
	ds_read_b64_tr_b16 v[224:225], v194 offset:9280
	ds_read_b64_tr_b16 v[218:219], v194 offset:8256
	ds_read_b64_tr_b16 v[220:221], v194 offset:9216
	ds_read_b64_tr_b16 v[214:215], v193 offset:8192
	ds_read_b64_tr_b16 v[216:217], v193 offset:9280
	ds_read_b64_tr_b16 v[210:211], v193 offset:8256
	ds_read_b64_tr_b16 v[212:213], v193 offset:9216
	ds_read_b128 v[154:157], v198 offset:8192
	ds_read_b128 v[150:153], v197 offset:8192
	ds_read_b128 v[134:137], v196 offset:8192
	ds_read_b128 v[158:161], v195 offset:8192
	v_add_u32_e32 v166, s10, v202
	v_accvgpr_read_b32 v241, a255
	v_accvgpr_read_b32 v240, a254
	v_accvgpr_read_b32 v239, a253
	v_accvgpr_read_b32 v238, a252
	v_accvgpr_read_b32 v237, a251
	v_accvgpr_read_b32 v236, a250
	v_accvgpr_read_b32 v235, a249
	v_accvgpr_read_b32 v234, a248
	v_accvgpr_read_b32 v233, a247
	v_accvgpr_read_b32 v232, a246
	v_accvgpr_read_b32 v231, a245
	v_accvgpr_read_b32 v230, a244
	v_accvgpr_read_b32 v229, a243
	v_accvgpr_read_b32 v228, a242
	v_accvgpr_read_b32 v227, a241
	v_accvgpr_read_b32 v226, a240
	v_ashrrev_i32_e32 v167, 31, v166
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v141, 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=1
	v_lshl_add_u64 v[138:139], v[166:167], 2, s[22:23]
	global_load_dwordx4 v[138:141], v[138:139], off
.LBB0_11:                               ;   in Loop: Header=BB0_9 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_f16 a[240:243], v[154:157], v[106:109], 0
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[240:243], v[150:153], v[114:117], a[240:243]
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_f16 a[240:243], v[134:137], v[118:121], a[240:243]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[240:243], v[158:161], v[126:129], a[240:243]
	v_mfma_f32_16x16x32_f16 a[244:247], v[154:157], v[110:113], 0
	v_mfma_f32_16x16x32_f16 a[248:251], v[154:157], v[82:85], 0
	s_nop 5
	v_accvgpr_read_b32 v162, a240
	v_accvgpr_read_b32 v163, a241
	v_accvgpr_read_b32 v164, a242
	v_mfma_f32_16x16x32_f16 a[252:255], v[154:157], v[66:69], 0
	v_accvgpr_read_b32 v154, a243
	v_fma_f32 v154, s8, v154, -v145
	v_mfma_f32_16x16x32_f16 a[244:247], v[150:153], v[90:93], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[150:153], v[86:89], a[248:251]
	v_mfma_f32_16x16x32_f16 a[240:243], v[150:153], v[70:73], a[252:255]
	v_mfma_f32_16x16x32_f16 a[244:247], v[134:137], v[98:101], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[134:137], v[94:97], a[248:251]
	v_mfma_f32_16x16x32_f16 a[240:243], v[134:137], v[74:77], a[240:243]
	v_mfma_f32_16x16x32_f16 a[244:247], v[158:161], v[122:125], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[158:161], v[102:105], a[248:251]
	v_mfma_f32_16x16x32_f16 a[240:243], v[158:161], v[78:81], a[240:243]
	s_nop 5
	v_accvgpr_read_b32 v155, a244
	v_accvgpr_read_b32 v156, a245
	v_accvgpr_read_b32 v150, a246
	v_accvgpr_read_b32 v151, a247
	v_accvgpr_read_b32 v152, a248
	v_accvgpr_read_b32 v134, a249
	v_accvgpr_read_b32 v135, a250
	v_accvgpr_read_b32 v136, a251
	v_accvgpr_read_b32 v137, a240
	v_accvgpr_read_b32 v153, a241
	v_accvgpr_read_b32 v157, a242
	v_accvgpr_read_b32 v158, a243
	v_fma_f32 v159, s8, v162, -v142
	v_fma_f32 v160, s8, v163, -v143
	v_fma_f32 v161, s8, v164, -v144
	v_fma_f32 v155, s8, v155, -v142
	v_fma_f32 v156, s8, v156, -v143
	v_fma_f32 v150, s8, v150, -v144
	v_fma_f32 v151, s8, v151, -v145
	v_fma_f32 v152, s8, v152, -v142
	v_fma_f32 v134, s8, v134, -v143
	v_fma_f32 v135, s8, v135, -v144
	v_fma_f32 v136, s8, v136, -v145
	v_fma_f32 v137, s8, v137, -v142
	v_fma_f32 v142, s8, v153, -v143
	v_fma_f32 v143, s8, v157, -v144
	v_fma_f32 v144, s8, v158, -v145
	v_mul_f32_e32 v145, 0x3fb8aa3b, v159
	v_cmp_gt_f32_e64 s[4:5], s21, v145
	v_mul_f32_e32 v153, 0x3fb8aa3b, v160
	v_cmp_gt_f32_e64 s[6:7], s21, v153
	v_cndmask_b32_e64 v145, 0, v206, s[4:5]
	v_fmac_f32_e32 v145, 0x3fb8aa3b, v159
	v_cndmask_b32_e64 v153, 0, v206, s[6:7]
	v_exp_f32_e32 v145, v145
	v_fmac_f32_e32 v153, 0x3fb8aa3b, v160
	v_exp_f32_e32 v153, v153
	v_cndmask_b32_e64 v157, 0, v207, s[4:5]
	v_ldexp_f32 v172, v145, v157
	v_cndmask_b32_e64 v145, 0, v207, s[6:7]
	v_ldexp_f32 v173, v153, v145
	v_mul_f32_e32 v145, 0x3fb8aa3b, v161
	v_cmp_gt_f32_e64 s[4:5], s21, v145
	v_mul_f32_e32 v153, 0x3fb8aa3b, v154
	v_cmp_gt_f32_e64 s[6:7], s21, v153
	v_cndmask_b32_e64 v145, 0, v206, s[4:5]
	v_fmac_f32_e32 v145, 0x3fb8aa3b, v161
	v_cndmask_b32_e64 v153, 0, v206, s[6:7]
	v_exp_f32_e32 v145, v145
	v_fmac_f32_e32 v153, 0x3fb8aa3b, v154
	v_exp_f32_e32 v153, v153
	v_cndmask_b32_e64 v154, 0, v207, s[4:5]
	v_ldexp_f32 v176, v145, v154
	v_cndmask_b32_e64 v145, 0, v207, s[6:7]
	v_ldexp_f32 v177, v153, v145
	v_mul_f32_e32 v145, 0x3fb8aa3b, v155
	v_cmp_gt_f32_e64 s[4:5], s21, v145
	v_mul_f32_e32 v153, 0x3fb8aa3b, v156
	v_cmp_gt_f32_e64 s[6:7], s21, v153
	v_cndmask_b32_e64 v145, 0, v206, s[4:5]
	v_fmac_f32_e32 v145, 0x3fb8aa3b, v155
	v_cndmask_b32_e64 v153, 0, v206, s[6:7]
	v_exp_f32_e32 v145, v145
	v_fmac_f32_e32 v153, 0x3fb8aa3b, v156
	v_exp_f32_e32 v153, v153
	v_cndmask_b32_e64 v154, 0, v207, s[4:5]
	v_ldexp_f32 v178, v145, v154
	v_cndmask_b32_e64 v145, 0, v207, s[6:7]
	v_ldexp_f32 v179, v153, v145
	v_mul_f32_e32 v145, 0x3fb8aa3b, v150
	v_cmp_gt_f32_e64 s[4:5], s21, v145
	s_nop 1
	v_cndmask_b32_e64 v145, 0, v206, s[4:5]
	v_fmac_f32_e32 v145, 0x3fb8aa3b, v150
	v_mul_f32_e32 v150, 0x3fb8aa3b, v151
	v_cmp_gt_f32_e64 s[6:7], s21, v150
	v_exp_f32_e32 v145, v145
	s_nop 0
	v_cndmask_b32_e64 v150, 0, v206, s[6:7]
	v_fmac_f32_e32 v150, 0x3fb8aa3b, v151
	v_exp_f32_e32 v150, v150
	v_cndmask_b32_e64 v151, 0, v207, s[4:5]
	v_ldexp_f32 v180, v145, v151
	v_cndmask_b32_e64 v145, 0, v207, s[6:7]
	v_ldexp_f32 v181, v150, v145
	v_mul_f32_e32 v145, 0x3fb8aa3b, v152
	v_cmp_gt_f32_e64 s[4:5], s21, v145
	v_mul_f32_e32 v150, 0x3fb8aa3b, v134
	v_cmp_gt_f32_e64 s[6:7], s21, v150
	v_cndmask_b32_e64 v145, 0, v206, s[4:5]
	v_fmac_f32_e32 v145, 0x3fb8aa3b, v152
	v_cndmask_b32_e64 v150, 0, v206, s[6:7]
	v_exp_f32_e32 v145, v145
	v_fmac_f32_e32 v150, 0x3fb8aa3b, v134
	v_exp_f32_e32 v134, v150
	v_cndmask_b32_e64 v150, 0, v207, s[4:5]
	v_ldexp_f32 v168, v145, v150
	v_cndmask_b32_e64 v145, 0, v207, s[6:7]
	v_ldexp_f32 v169, v134, v145
	v_mul_f32_e32 v134, 0x3fb8aa3b, v135
	v_cmp_gt_f32_e64 s[4:5], s21, v134
	ds_read_b64_tr_b16 v[150:151], v194 offset:12288
	ds_read_b64_tr_b16 v[152:153], v194 offset:13376
	ds_read_b64_tr_b16 v[154:155], v194 offset:12352
	ds_read_b64_tr_b16 v[156:157], v194 offset:13312
	v_cndmask_b32_e64 v134, 0, v206, s[4:5]
	v_fmac_f32_e32 v134, 0x3fb8aa3b, v135
	v_mul_f32_e32 v135, 0x3fb8aa3b, v136
	v_cmp_gt_f32_e64 s[6:7], s21, v135
	v_exp_f32_e32 v134, v134
	ds_read_b64_tr_b16 v[158:159], v193 offset:12288
	ds_read_b64_tr_b16 v[160:161], v193 offset:13376
	v_cndmask_b32_e64 v135, 0, v206, s[6:7]
	v_fmac_f32_e32 v135, 0x3fb8aa3b, v136
	v_exp_f32_e32 v135, v135
	v_cndmask_b32_e64 v136, 0, v207, s[4:5]
	v_ldexp_f32 v170, v134, v136
	v_cndmask_b32_e64 v134, 0, v207, s[6:7]
	v_ldexp_f32 v171, v135, v134
	v_mul_f32_e32 v134, 0x3fb8aa3b, v137
	v_cmp_gt_f32_e64 s[4:5], s21, v134
	v_mul_f32_e32 v135, 0x3fb8aa3b, v142
	v_cmp_gt_f32_e64 s[6:7], s21, v135
	v_cndmask_b32_e64 v134, 0, v206, s[4:5]
	v_fmac_f32_e32 v134, 0x3fb8aa3b, v137
	v_cndmask_b32_e64 v135, 0, v206, s[6:7]
	v_exp_f32_e32 v134, v134
	v_fmac_f32_e32 v135, 0x3fb8aa3b, v142
	v_mul_f32_e32 v142, 0x3fb8aa3b, v143
	v_cndmask_b32_e64 v136, 0, v207, s[4:5]
	v_cmp_gt_f32_e64 s[4:5], s21, v142
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v174, v134, v136
	v_cndmask_b32_e64 v142, 0, v206, s[4:5]
	v_fmac_f32_e32 v142, 0x3fb8aa3b, v143
	v_mul_f32_e32 v143, 0x3fb8aa3b, v144
	v_cndmask_b32_e64 v134, 0, v207, s[6:7]
	v_cmp_gt_f32_e64 s[6:7], s21, v143
	ds_read_b64_tr_b16 v[252:253], v193 offset:12352
	ds_read_b64_tr_b16 v[254:255], v193 offset:13312
	v_cndmask_b32_e64 v143, 0, v206, s[6:7]
	v_exp_f32_e32 v142, v142
	v_fmac_f32_e32 v143, 0x3fb8aa3b, v144
	v_ldexp_f32 v175, v135, v134
	v_cvt_pk_f16_f32 v134, v172, v173
	v_cvt_pk_f16_f32 v135, v176, v177
	v_cvt_pk_f16_f32 v136, v178, v179
	v_cvt_pk_f16_f32 v137, v180, v181
	v_exp_f32_e32 v143, v143
	v_permlane16_swap_b32_e32 v134, v136
	v_permlane16_swap_b32_e32 v135, v137
	v_cndmask_b32_e64 v144, 0, v207, s[4:5]
	s_mul_i32 s4, s10, s15
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_32x32x16_f16 a[0:15], v[150:153], v[134:137], a[0:15]
	v_ldexp_f32 v182, v142, v144
	v_cndmask_b32_e64 v142, 0, v207, s[6:7]
	v_ldexp_f32 v183, v143, v142
	v_cvt_pk_f16_f32 v242, v168, v169
	v_cvt_pk_f16_f32 v243, v170, v171
	v_cvt_pk_f16_f32 v244, v174, v175
	v_cvt_pk_f16_f32 v245, v182, v183
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x16_f16 a[16:31], v[154:157], v[134:137], a[16:31]
	v_permlane16_swap_b32_e32 v242, v244
	v_permlane16_swap_b32_e32 v243, v245
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x16_f16 a[32:47], v[158:161], v[134:137], a[32:47]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x16_f16 a[48:63], v[252:255], v[134:137], a[48:63]
	v_add_lshl_u32 v134, v204, s4, 1
	v_cndmask_b32_e64 v134, v205, v134, s[2:3]
	buffer_load_dwordx4 v[142:145], v134, s[48:51], 0 offen
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v137, 0
	v_mfma_f32_32x32x16_f16 a[64:79], v[150:153], v[242:245], a[64:79]
	v_mfma_f32_32x32x16_f16 a[80:95], v[154:157], v[242:245], a[80:95]
	v_mfma_f32_32x32x16_f16 a[96:111], v[158:161], v[242:245], a[96:111]
	ds_read_b128 v[158:161], v198 offset:12288
	ds_read_b128 v[162:165], v197 offset:12288
	ds_read_b128 v[154:157], v196 offset:12288
	ds_read_b128 v[150:153], v195 offset:12288
	v_mfma_f32_32x32x16_f16 a[112:127], v[252:255], v[242:245], a[112:127]
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_9 Depth=1
	v_lshl_add_u64 v[134:135], v[166:167], 2, s[24:25]
	global_load_dwordx4 v[134:137], v[134:135], off
.LBB0_13:                               ;   in Loop: Header=BB0_9 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_f16 a[240:243], v[158:161], v[46:49], 0
	s_mul_i32 s2, s28, s11
	s_add_i32 s14, s14, -1
	s_add_i32 s20, s20, 1
	v_mfma_f32_16x16x32_f16 a[244:247], v[158:161], v[26:29], 0
	s_cmp_lg_u32 s14, 0
	v_mfma_f32_16x16x32_f16 a[248:251], v[158:161], v[18:21], 0
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[240:243], v[162:165], v[54:57], a[240:243]
	v_mfma_f32_16x16x32_f16 a[244:247], v[162:165], v[38:41], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[162:165], v[22:25], a[248:251]
	v_mfma_f32_16x16x32_f16 a[252:255], v[158:161], v[14:17], 0
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_f16 a[240:243], v[154:157], v[58:61], a[240:243]
	v_mfma_f32_16x16x32_f16 a[244:247], v[154:157], v[42:45], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[154:157], v[30:33], a[248:251]
	v_mfma_f32_16x16x32_f16 a[252:255], v[162:165], v[2:5], a[252:255]
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[240:243], v[150:153], v[62:65], a[240:243]
	v_mfma_f32_16x16x32_f16 a[244:247], v[150:153], v[50:53], a[244:247]
	v_mfma_f32_16x16x32_f16 a[248:251], v[150:153], v[34:37], a[248:251]
	s_nop 5
	v_accvgpr_read_b32 v159, a243
	v_accvgpr_read_b32 v158, a242
	v_mfma_f32_16x16x32_f16 a[252:255], v[154:157], v[6:9], a[252:255]
	v_accvgpr_read_b32 v161, a247
	v_accvgpr_read_b32 v160, a246
	v_pk_add_f32 v[160:161], v[160:161], v[132:133] neg_lo:[0,1] neg_hi:[0,1]
	v_accvgpr_read_b32 v155, a251
	v_accvgpr_read_b32 v154, a250
	v_mfma_f32_16x16x32_f16 a[250:253], v[150:153], v[10:13], a[252:255]
	v_add_f32_e64 v152, v158, -v132
	v_add_f32_e64 v153, v159, -v133
	v_accvgpr_read_b32 v158, a244
	v_accvgpr_read_b32 v159, a245
	v_accvgpr_read_b32 v162, a248
	v_pk_add_f32 v[158:159], v[158:159], v[130:131] neg_lo:[0,1] neg_hi:[0,1]
	v_accvgpr_read_b32 v163, a249
	v_pk_mul_f32 v[158:159], v[178:179], v[158:159]
	v_pk_mul_f32 v[160:161], v[180:181], v[160:161]
	v_pk_add_f32 v[162:163], v[162:163], v[130:131] neg_lo:[0,1] neg_hi:[0,1]
	v_accvgpr_read_b32 v150, a240
	v_cvt_pk_f16_f32 v158, v158, v159
	v_cvt_pk_f16_f32 v159, v160, v161
	v_pk_mul_f32 v[160:161], v[168:169], v[162:163]
	v_accvgpr_read_b32 v162, a250
	v_accvgpr_read_b32 v151, a241
	v_accvgpr_read_b32 v163, a251
	v_accvgpr_read_b32 v157, a253
	v_accvgpr_read_b32 v156, a252
	v_pk_add_f32 v[150:151], v[150:151], v[130:131] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[154:155], v[154:155], v[132:133] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[130:131], v[162:163], v[130:131] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_mul_f32 v[150:151], v[172:173], v[150:151]
	v_pk_mul_f32 v[152:153], v[176:177], v[152:153]
	v_pk_mul_f32 v[154:155], v[170:171], v[154:155]
	v_pk_mul_f32 v[130:131], v[174:175], v[130:131]
	v_pk_add_f32 v[132:133], v[156:157], v[132:133] neg_lo:[0,1] neg_hi:[0,1]
	v_cvt_pk_f16_f32 v164, v150, v151
	v_cvt_pk_f16_f32 v165, v152, v153
	v_pk_mul_f32 v[132:133], v[182:183], v[132:133]
	v_cvt_pk_f16_f32 v157, v154, v155
	v_cvt_pk_f16_f32 v154, v130, v131
	v_add_u32_e32 v130, v192, v191
	v_mov_b32_e32 v150, v164
	v_mov_b32_e32 v152, v158
	v_mov_b32_e32 v153, v159
	v_mov_b32_e32 v151, v165
	v_cvt_pk_f16_f32 v156, v160, v161
	v_cvt_pk_f16_f32 v155, v132, v133
	ds_write2st64_b64 v130, v[164:165], v[158:159] offset1:1
	ds_write2st64_b64 v130, v[156:157], v[154:155] offset0:8 offset1:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b64_tr_b16 v[130:131], v190
	ds_read_b64_tr_b16 v[132:133], v190 offset:128
	ds_read_b64_tr_b16 v[158:159], v190 offset:1024
	ds_read_b64_tr_b16 v[160:161], v190 offset:1152
	scratch_load_dwordx4 v[162:165], off, off offset:48 ; 16-byte Folded Reload
	v_permlane16_swap_b32_e32 v150, v152
	v_permlane16_swap_b32_e32 v151, v153
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[240:243], v[162:165], v[130:133], 0
	scratch_load_dwordx4 v[162:165], off, off offset:32 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[240:243], v[162:165], v[158:161], a[240:243]
	ds_read_b64_tr_b16 v[162:163], v190 offset:2048
	ds_read_b64_tr_b16 v[164:165], v190 offset:2176
	ds_read_b64_tr_b16 v[166:167], v190 offset:3072
	ds_read_b64_tr_b16 v[168:169], v190 offset:3200
	scratch_load_dwordx4 v[170:173], off, off offset:16 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[240:243], v[170:173], v[162:165], a[240:243]
	scratch_load_dwordx4 v[170:173], off, off ; 16-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[240:243], v[170:173], v[166:169], a[240:243]
	ds_read_b64_tr_b16 v[170:171], v190 offset:4096
	ds_read_b64_tr_b16 v[172:173], v190 offset:4224
	ds_read_b64_tr_b16 v[174:175], v190 offset:5120
	ds_read_b64_tr_b16 v[176:177], v190 offset:5248
	ds_read_b64_tr_b16 v[178:179], v190 offset:6144
	ds_read_b64_tr_b16 v[180:181], v190 offset:6272
	ds_read_b64_tr_b16 v[242:243], v190 offset:7168
	ds_read_b64_tr_b16 v[244:245], v190 offset:7296
	scratch_load_dwordx4 v[252:255], off, off offset:208 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_f16 a[240:243], v[248:251], v[170:173], a[240:243]
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_f16 a[240:243], v[184:187], v[174:177], a[240:243]
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[240:243], v[252:255], v[178:181], a[240:243]
	scratch_load_dwordx4 v[252:255], off, off offset:192 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[240:243], v[252:255], v[242:245], a[240:243]
	scratch_load_dwordx4 v[252:255], off, off offset:176 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[244:247], v[252:255], v[130:133], 0
	scratch_load_dwordx4 v[130:133], off, off offset:160 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[244:247], v[130:133], v[158:161], a[244:247]
	scratch_load_dwordx4 v[130:133], off, off offset:144 ; 16-byte Folded Reload
	v_or_b32_e32 v158, s28, v1
	v_cmp_gt_i32_e32 vcc, s42, v158
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[244:247], v[130:133], v[162:165], a[244:247]
	scratch_load_dwordx4 v[130:133], off, off offset:112 ; 16-byte Folded Reload
	scratch_load_dwordx4 v[160:163], off, off offset:128 ; 16-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mfma_f32_16x16x32_f16 a[244:247], v[130:133], v[166:169], a[244:247]
	v_mov_b32_e32 v130, v156
	v_mov_b32_e32 v132, v154
	v_mov_b32_e32 v133, v155
	v_mov_b32_e32 v131, v157
	scratch_load_dwordx4 v[154:157], off, off offset:96 ; 16-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mfma_f32_16x16x32_f16 a[244:247], v[160:163], v[170:173], a[244:247]
	scratch_load_dwordx4 v[160:163], off, off offset:64 ; 16-byte Folded Reload
	v_permlane16_swap_b32_e32 v130, v132
	s_waitcnt vmcnt(1)
	v_mfma_f32_16x16x32_f16 a[244:247], v[154:157], v[174:177], a[244:247]
	scratch_load_dwordx4 v[154:157], off, off offset:80 ; 16-byte Folded Reload
	v_permlane16_swap_b32_e32 v131, v133
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[244:247], v[154:157], v[178:181], a[244:247]
	v_accvgpr_read_b32 v155, a243
	v_accvgpr_read_b32 v154, a242
	v_mfma_f32_16x16x32_f16 a[244:247], v[160:163], v[242:245], a[244:247]
	v_mfma_f32_32x32x16_f16 a[128:143], v[222:225], v[150:153], a[128:143]
	s_nop 6
	v_accvgpr_read_b32 v157, a247
	v_accvgpr_read_b32 v156, a246
	v_mul_f32_e64 v156, s8, v156
	v_mul_f32_e64 v157, s9, v157
	v_mfma_f32_32x32x16_f16 a[144:159], v[218:221], v[150:153], a[144:159]
	v_mfma_f32_32x32x16_f16 a[160:175], v[214:217], v[150:153], a[160:175]
	v_mfma_f32_32x32x16_f16 a[176:191], v[210:213], v[150:153], a[176:191]
	v_accvgpr_read_b32 v150, a240
	v_mul_f32_e64 v152, s8, v154
	v_mul_f32_e64 v153, s9, v155
	v_accvgpr_read_b32 v154, a244
	v_accvgpr_read_b32 v151, a241
	v_accvgpr_read_b32 v155, a245
	v_pk_mul_f32 v[150:151], s[8:9], v[150:151]
	v_pk_mul_f32 v[154:155], s[8:9], v[154:155]
	v_cvt_pk_f16_f32 v150, v150, v151
	v_cvt_pk_f16_f32 v151, v152, v153
	v_cvt_pk_f16_f32 v152, v154, v155
	v_add_lshl_u32 v154, v189, s2, 1
	v_cndmask_b32_e32 v154, v205, v154, vcc
	buffer_atomic_pk_add_f16 v150, v154, s[16:19], 0 offen
	v_add_lshl_u32 v150, v199, s2, 1
	v_cndmask_b32_e32 v150, v205, v150, vcc
	buffer_atomic_pk_add_f16 v151, v150, s[16:19], 0 offen
	v_add_lshl_u32 v150, v0, s2, 1
	v_cndmask_b32_e32 v150, v205, v150, vcc
	buffer_atomic_pk_add_f16 v152, v150, s[16:19], 0 offen
	v_add_lshl_u32 v150, v188, s2, 1
	v_cvt_pk_f16_f32 v153, v156, v157
	v_cndmask_b32_e32 v150, v205, v150, vcc
	buffer_atomic_pk_add_f16 v153, v150, s[16:19], 0 offen
	v_accvgpr_write_b32 a255, v241
	v_accvgpr_write_b32 a254, v240
	v_accvgpr_write_b32 a253, v239
	v_accvgpr_write_b32 a252, v238
	v_accvgpr_write_b32 a251, v237
	v_accvgpr_write_b32 a250, v236
	v_accvgpr_write_b32 a249, v235
	v_accvgpr_write_b32 a248, v234
	v_accvgpr_write_b32 a247, v233
	v_accvgpr_write_b32 a246, v232
	v_accvgpr_write_b32 a245, v231
	v_accvgpr_write_b32 a244, v230
	v_accvgpr_write_b32 a243, v229
	v_accvgpr_write_b32 a242, v228
	v_accvgpr_write_b32 a241, v227
	v_accvgpr_write_b32 a240, v226
	v_mfma_f32_32x32x16_f16 a[192:207], v[222:225], v[130:133], a[192:207]
	ds_write_b128 v200, v[146:149] offset:8192
	ds_write_b128 v200, v[142:145] offset:12288
	v_mfma_f32_32x32x16_f16 a[208:223], v[218:221], v[130:133], a[208:223]
	v_mfma_f32_32x32x16_f16 a[224:239], v[214:217], v[130:133], a[224:239]
	v_mfma_f32_32x32x16_f16 a[240:255], v[210:213], v[130:133], a[240:255]
	s_cbranch_scc0 .LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_9 Depth=1
	v_mov_b32_e32 v145, v141
	v_mov_b32_e32 v144, v140
	v_mov_b32_e32 v143, v139
	v_mov_b32_e32 v142, v138
	s_mov_b32 s28, s10
	v_mov_b32_e32 v132, v136
	v_mov_b32_e32 v133, v137
	v_mov_b32_e32 v130, v134
	v_mov_b32_e32 v131, v135
	s_branch .LBB0_9
.LBB0_15:
	v_mov_b32_e32 v135, v131
	v_mov_b32_e32 v134, v130
	v_mov_b32_e32 v137, v133
	v_mov_b32_e32 v136, v132
	v_mov_b32_e32 v141, v145
	v_mov_b32_e32 v140, v144
	v_mov_b32_e32 v139, v143
	v_mov_b32_e32 v138, v142
	s_mov_b32 s10, s28
.LBB0_16:                               ; %Flow407
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[174:177], v198 offset:8192
	ds_read_b128 v[130:133], v198 offset:12288
	v_accvgpr_read_b32 v170, a172
	v_accvgpr_read_b32 v171, a173
	v_accvgpr_read_b32 v172, a174
	v_accvgpr_read_b32 v173, a175
	v_accvgpr_mov_b32 a172, a48
	v_accvgpr_mov_b32 a173, a49
	v_accvgpr_mov_b32 a174, a50
	v_accvgpr_mov_b32 a175, a51
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_f16 a[48:51], v[174:177], v[106:109], 0
	ds_read_b128 v[178:181], v197 offset:8192
	ds_read_b128 v[106:109], v197 offset:12288
	v_accvgpr_read_b32 v142, a176
	v_accvgpr_read_b32 v143, a177
	v_accvgpr_read_b32 v144, a178
	v_accvgpr_read_b32 v145, a179
	v_accvgpr_mov_b32 a176, a52
	v_accvgpr_mov_b32 a177, a53
	v_accvgpr_mov_b32 a178, a54
	v_accvgpr_mov_b32 a179, a55
	v_mfma_f32_16x16x32_f16 a[52:55], v[174:177], v[110:113], 0
	ds_read_b128 v[252:255], v196 offset:8192
	ds_read_b128 v[110:113], v196 offset:12288
	v_accvgpr_read_b32 v244, a92
	v_accvgpr_read_b32 v245, a93
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_16x16x32_f16 a[48:51], v[178:181], v[114:117], a[48:51]
	v_accvgpr_read_b32 v246, a94
	v_accvgpr_read_b32 v247, a95
	v_accvgpr_read_b32 v146, a180
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_f16 a[48:51], v[252:255], v[118:121], a[48:51]
	ds_read_b128 v[118:121], v195 offset:8192
	ds_read_b128 v[114:117], v195 offset:12288
	v_accvgpr_read_b32 v147, a181
	v_accvgpr_read_b32 v148, a182
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_16x16x32_f16 a[48:51], v[118:121], v[126:129], a[48:51]
	v_accvgpr_read_b32 v149, a183
	v_accvgpr_mov_b32 a180, a56
	v_accvgpr_mov_b32 a181, a57
	v_mfma_f32_16x16x32_f16 a[92:95], v[174:177], v[66:69], 0
	v_accvgpr_mov_b32 a182, a58
	v_accvgpr_mov_b32 a183, a59
	s_mov_b32 s4, 0xc2fc0000
	v_mfma_f32_16x16x32_f16 a[52:55], v[178:181], v[90:93], a[52:55]
	v_accvgpr_read_b32 v66, a51
	s_load_dwordx2 s[2:3], s[0:1], 0x78
	v_accvgpr_read_b32 v212, a156
	v_mfma_f32_16x16x32_f16 a[56:59], v[174:177], v[82:85], 0
	v_accvgpr_read_b32 v82, a48
	v_accvgpr_read_b32 v83, a49
	v_accvgpr_read_b32 v84, a50
	v_mfma_f32_16x16x32_f16 a[48:51], v[178:181], v[70:73], a[92:95]
	v_accvgpr_read_b32 v213, a157
	v_accvgpr_read_b32 v214, a158
	v_accvgpr_read_b32 v215, a159
	v_mfma_f32_16x16x32_f16 a[52:55], v[252:255], v[98:101], a[52:55]
	v_accvgpr_read_b32 v158, a160
	v_accvgpr_read_b32 v159, a161
	v_accvgpr_read_b32 v160, a162
	v_mfma_f32_16x16x32_f16 a[48:51], v[252:255], v[74:77], a[48:51]
	v_accvgpr_read_b32 v161, a163
	v_accvgpr_read_b32 v150, a184
	v_accvgpr_read_b32 v151, a185
	v_mfma_f32_16x16x32_f16 a[52:55], v[118:121], v[122:125], a[52:55]
	v_accvgpr_read_b32 v152, a186
	v_accvgpr_read_b32 v153, a187
	v_accvgpr_mov_b32 a184, a60
	v_mfma_f32_16x16x32_f16 a[56:59], v[178:181], v[86:89], a[56:59]
	v_accvgpr_mov_b32 a185, a61
	v_accvgpr_mov_b32 a186, a62
	v_accvgpr_mov_b32 a187, a63
	v_mfma_f32_16x16x32_f16 a[48:51], v[118:121], v[78:81], a[48:51]
	v_fma_f32 v79, s8, v82, -v138
	v_accvgpr_read_b32 v67, a52
	v_fma_f32 v80, s8, v83, -v139
	v_fma_f32 v82, s8, v66, -v141
	v_mul_f32_e32 v66, 0x3fb8aa3b, v79
	v_mfma_f32_16x16x32_f16 a[56:59], v[252:255], v[94:97], a[56:59]
	v_fma_f32 v83, s8, v67, -v138
	v_mov_b32_e32 v95, 0x42800000
	v_cmp_gt_f32_e32 vcc, s4, v66
	v_mul_f32_e32 v67, 0x3fb8aa3b, v80
	v_cmp_gt_f32_e64 s[0:1], s4, v67
	v_cndmask_b32_e32 v66, 0, v95, vcc
	v_fmac_f32_e32 v66, 0x3fb8aa3b, v79
	v_cndmask_b32_e64 v67, 0, v95, s[0:1]
	v_exp_f32_e32 v66, v66
	v_fmac_f32_e32 v67, 0x3fb8aa3b, v80
	v_exp_f32_e32 v67, v67
	v_accvgpr_read_b32 v68, a53
	v_not_b32_e32 v96, 63
	v_fma_f32 v81, s8, v84, -v140
	v_fma_f32 v84, s8, v68, -v139
	v_cndmask_b32_e32 v68, 0, v96, vcc
	v_ldexp_f32 v66, v66, v68
	v_cndmask_b32_e64 v68, 0, v96, s[0:1]
	v_accvgpr_read_b32 v69, a54
	v_ldexp_f32 v67, v67, v68
	v_mul_f32_e32 v68, 0x3fb8aa3b, v81
	v_fma_f32 v85, s8, v69, -v140
	v_cmp_gt_f32_e32 vcc, s4, v68
	v_mul_f32_e32 v69, 0x3fb8aa3b, v82
	v_cmp_gt_f32_e64 s[0:1], s4, v69
	v_cndmask_b32_e32 v68, 0, v95, vcc
	v_fmac_f32_e32 v68, 0x3fb8aa3b, v81
	v_cndmask_b32_e64 v69, 0, v95, s[0:1]
	v_exp_f32_e32 v68, v68
	v_fmac_f32_e32 v69, 0x3fb8aa3b, v82
	v_mfma_f32_16x16x32_f16 a[56:59], v[118:121], v[102:105], a[56:59]
	v_exp_f32_e32 v69, v69
	v_accvgpr_read_b32 v70, a55
	v_fma_f32 v86, s8, v70, -v141
	v_cndmask_b32_e32 v70, 0, v96, vcc
	v_ldexp_f32 v68, v68, v70
	v_cndmask_b32_e64 v70, 0, v96, s[0:1]
	v_ldexp_f32 v69, v69, v70
	v_mul_f32_e32 v70, 0x3fb8aa3b, v83
	v_accvgpr_read_b32 v71, a56
	v_fma_f32 v87, s8, v71, -v138
	v_cmp_gt_f32_e32 vcc, s4, v70
	v_mul_f32_e32 v71, 0x3fb8aa3b, v84
	v_cmp_gt_f32_e64 s[0:1], s4, v71
	v_cndmask_b32_e32 v70, 0, v95, vcc
	v_fmac_f32_e32 v70, 0x3fb8aa3b, v83
	v_cndmask_b32_e64 v71, 0, v95, s[0:1]
	v_exp_f32_e32 v70, v70
	v_fmac_f32_e32 v71, 0x3fb8aa3b, v84
	v_exp_f32_e32 v71, v71
	v_accvgpr_read_b32 v72, a57
	v_fma_f32 v88, s8, v72, -v139
	v_cndmask_b32_e32 v72, 0, v96, vcc
	v_ldexp_f32 v70, v70, v72
	v_cndmask_b32_e64 v72, 0, v96, s[0:1]
	v_accvgpr_read_b32 v73, a58
	v_ldexp_f32 v71, v71, v72
	v_mul_f32_e32 v72, 0x3fb8aa3b, v85
	v_fma_f32 v89, s8, v73, -v140
	v_cmp_gt_f32_e32 vcc, s4, v72
	v_mul_f32_e32 v73, 0x3fb8aa3b, v86
	v_cmp_gt_f32_e64 s[0:1], s4, v73
	v_cndmask_b32_e32 v72, 0, v95, vcc
	v_fmac_f32_e32 v72, 0x3fb8aa3b, v85
	v_cndmask_b32_e64 v73, 0, v95, s[0:1]
	v_exp_f32_e32 v72, v72
	v_fmac_f32_e32 v73, 0x3fb8aa3b, v86
	v_exp_f32_e32 v73, v73
	v_accvgpr_read_b32 v74, a59
	v_fma_f32 v90, s8, v74, -v141
	v_cndmask_b32_e32 v74, 0, v96, vcc
	v_ldexp_f32 v72, v72, v74
	v_cndmask_b32_e64 v74, 0, v96, s[0:1]
	v_accvgpr_read_b32 v75, a48
	v_ldexp_f32 v73, v73, v74
	v_mul_f32_e32 v74, 0x3fb8aa3b, v87
	v_fma_f32 v91, s8, v75, -v138
	v_cmp_gt_f32_e32 vcc, s4, v74
	v_mul_f32_e32 v75, 0x3fb8aa3b, v88
	v_cmp_gt_f32_e64 s[0:1], s4, v75
	v_cndmask_b32_e32 v74, 0, v95, vcc
	v_fmac_f32_e32 v74, 0x3fb8aa3b, v87
	v_cndmask_b32_e64 v75, 0, v95, s[0:1]
	v_exp_f32_e32 v74, v74
	v_fmac_f32_e32 v75, 0x3fb8aa3b, v88
	v_exp_f32_e32 v75, v75
	v_accvgpr_read_b32 v76, a49
	v_fma_f32 v92, s8, v76, -v139
	v_cndmask_b32_e32 v76, 0, v96, vcc
	v_ldexp_f32 v74, v74, v76
	v_cndmask_b32_e64 v76, 0, v96, s[0:1]
	v_accvgpr_mov_b32 a156, a64
	v_accvgpr_mov_b32 a157, a65
	v_accvgpr_mov_b32 a158, a66
	v_accvgpr_mov_b32 a159, a67
	v_accvgpr_mov_b32 a160, a68
	v_accvgpr_mov_b32 a161, a69
	v_accvgpr_mov_b32 a162, a70
	v_accvgpr_mov_b32 a163, a71
	v_accvgpr_read_b32 v240, a88
	v_accvgpr_read_b32 v241, a89
	v_accvgpr_read_b32 v242, a90
	v_accvgpr_read_b32 v243, a91
	v_accvgpr_mov_b32 a88, a108
	v_accvgpr_mov_b32 a89, a109
	v_accvgpr_mov_b32 a90, a110
	v_accvgpr_mov_b32 a91, a111
	v_accvgpr_mov_b32 a60, a112
	v_accvgpr_mov_b32 a61, a113
	v_accvgpr_mov_b32 a62, a114
	v_accvgpr_mov_b32 a63, a115
	v_accvgpr_mov_b32 a64, a116
	v_accvgpr_mov_b32 a65, a117
	v_accvgpr_mov_b32 a66, a118
	v_accvgpr_mov_b32 a67, a119
	v_accvgpr_mov_b32 a68, a120
	v_accvgpr_mov_b32 a69, a121
	v_accvgpr_mov_b32 a70, a122
	v_accvgpr_mov_b32 a71, a123
	v_accvgpr_read_b32 v77, a50
	v_ldexp_f32 v75, v75, v76
	v_mul_f32_e32 v76, 0x3fb8aa3b, v89
	v_accvgpr_mov_b32 a123, a15
	v_fma_f32 v93, s8, v77, -v140
	v_cmp_gt_f32_e32 vcc, s4, v76
	v_mul_f32_e32 v77, 0x3fb8aa3b, v90
	v_accvgpr_mov_b32 a122, a14
	v_accvgpr_mov_b32 a121, a13
	v_accvgpr_mov_b32 a120, a12
	v_accvgpr_mov_b32 a119, a11
	v_accvgpr_mov_b32 a118, a10
	v_accvgpr_mov_b32 a117, a9
	v_accvgpr_mov_b32 a116, a8
	v_accvgpr_mov_b32 a115, a7
	v_accvgpr_mov_b32 a114, a6
	v_accvgpr_mov_b32 a113, a5
	v_accvgpr_mov_b32 a112, a4
	v_accvgpr_mov_b32 a111, a3
	v_accvgpr_mov_b32 a110, a2
	v_accvgpr_mov_b32 a109, a1
	v_accvgpr_mov_b32 a108, a0
	v_mfma_f32_16x16x32_f16 a[8:11], v[130:133], v[18:21], 0
	v_cndmask_b32_e32 v76, 0, v95, vcc
	v_cmp_gt_f32_e64 s[0:1], s4, v77
	v_fmac_f32_e32 v76, 0x3fb8aa3b, v89
	v_exp_f32_e32 v76, v76
	v_cndmask_b32_e64 v77, 0, v95, s[0:1]
	v_fmac_f32_e32 v77, 0x3fb8aa3b, v90
	v_mfma_f32_16x16x32_f16 a[0:3], v[130:133], v[46:49], 0
	v_exp_f32_e32 v77, v77
	v_accvgpr_read_b32 v78, a51
	v_fma_f32 v94, s8, v78, -v141
	v_mfma_f32_16x16x32_f16 a[4:7], v[130:133], v[26:29], 0
	v_cndmask_b32_e32 v78, 0, v96, vcc
	v_ldexp_f32 v76, v76, v78
	v_cndmask_b32_e64 v78, 0, v96, s[0:1]
	v_mfma_f32_16x16x32_f16 a[8:11], v[106:109], v[22:25], a[8:11]
	v_ldexp_f32 v77, v77, v78
	v_mul_f32_e32 v78, 0x3fb8aa3b, v91
	v_cmp_gt_f32_e32 vcc, s4, v78
	v_mfma_f32_16x16x32_f16 a[12:15], v[130:133], v[14:17], 0
	v_mul_f32_e32 v79, 0x3fb8aa3b, v92
	v_cndmask_b32_e32 v78, 0, v95, vcc
	v_fmac_f32_e32 v78, 0x3fb8aa3b, v91
	v_mfma_f32_16x16x32_f16 a[0:3], v[106:109], v[54:57], a[0:3]
	v_exp_f32_e32 v78, v78
	v_mul_f32_e32 v84, 0x3fb8aa3b, v93
	v_cmp_gt_f32_e64 s[0:1], s4, v79
	v_mfma_f32_16x16x32_f16 a[4:7], v[106:109], v[38:41], a[4:7]
	v_cndmask_b32_e32 v80, 0, v96, vcc
	v_cmp_gt_f32_e32 vcc, s4, v84
	v_mul_f32_e32 v85, 0x3fb8aa3b, v94
	v_mfma_f32_16x16x32_f16 a[8:11], v[110:113], v[30:33], a[8:11]
	v_cndmask_b32_e64 v79, 0, v95, s[0:1]
	v_ldexp_f32 v78, v78, v80
	v_cndmask_b32_e64 v80, 0, v96, s[0:1]
	v_mfma_f32_16x16x32_f16 a[12:15], v[106:109], v[2:5], a[12:15]
	v_cndmask_b32_e32 v84, 0, v95, vcc
	v_cmp_gt_f32_e64 s[0:1], s4, v85
	v_fmac_f32_e32 v79, 0x3fb8aa3b, v92
	v_mfma_f32_16x16x32_f16 a[0:3], v[110:113], v[58:61], a[0:3]
	v_fmac_f32_e32 v84, 0x3fb8aa3b, v93
	v_cndmask_b32_e64 v85, 0, v95, s[0:1]
	v_exp_f32_e32 v79, v79
	v_mfma_f32_16x16x32_f16 a[4:7], v[110:113], v[42:45], a[4:7]
	v_exp_f32_e32 v84, v84
	v_fmac_f32_e32 v85, 0x3fb8aa3b, v94
	v_exp_f32_e32 v85, v85
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[8:11], v[114:117], v[34:37], a[8:11]
	v_cndmask_b32_e32 v86, 0, v96, vcc
	v_ldexp_f32 v79, v79, v80
	v_ldexp_f32 v88, v84, v86
	v_mfma_f32_16x16x32_f16 a[12:15], v[110:113], v[6:9], a[12:15]
	v_cndmask_b32_e64 v84, 0, v96, s[0:1]
	v_accvgpr_read_b32 v216, a128
	ds_read_b64_tr_b16 v[98:99], v194 offset:12288
	ds_read_b64_tr_b16 v[100:101], v194 offset:13376
	ds_read_b64_tr_b16 v[102:103], v194 offset:12352
	ds_read_b64_tr_b16 v[104:105], v194 offset:13312
	v_mfma_f32_16x16x32_f16 a[0:3], v[114:117], v[62:65], a[0:3]
	v_accvgpr_read_b32 v7, a11
	v_accvgpr_read_b32 v6, a10
	v_pk_add_f32 v[6:7], v[6:7], v[136:137] neg_lo:[0,1] neg_hi:[0,1]
	v_mfma_f32_16x16x32_f16 a[4:7], v[114:117], v[50:53], a[4:7]
	v_accvgpr_read_b32 v15, a9
	v_pk_mul_f32 v[16:17], v[76:77], v[6:7]
	v_accvgpr_read_b32 v14, a8
	v_mfma_f32_16x16x32_f16 a[10:13], v[114:117], v[10:13], a[12:15]
	v_accvgpr_read_b32 v11, a1
	v_accvgpr_read_b32 v3, a3
	v_accvgpr_read_b32 v2, a2
	v_accvgpr_read_b32 v10, a0
	v_accvgpr_read_b32 v13, a5
	v_accvgpr_read_b32 v5, a7
	v_accvgpr_read_b32 v4, a6
	v_accvgpr_read_b32 v12, a4
	v_accvgpr_read_b32 v6, a10
	v_pk_add_f32 v[10:11], v[10:11], v[134:135] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[2:3], v[2:3], v[136:137] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[12:13], v[12:13], v[134:135] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[4:5], v[4:5], v[136:137] neg_lo:[0,1] neg_hi:[0,1]
	v_accvgpr_read_b32 v7, a11
	v_accvgpr_read_b32 v9, a13
	v_accvgpr_read_b32 v8, a12
	v_pk_mul_f32 v[10:11], v[66:67], v[10:11]
	v_pk_mul_f32 v[2:3], v[68:69], v[2:3]
	v_pk_mul_f32 v[12:13], v[70:71], v[12:13]
	v_pk_mul_f32 v[4:5], v[72:73], v[4:5]
	v_pk_add_f32 v[14:15], v[14:15], v[134:135] neg_lo:[0,1] neg_hi:[0,1]
	v_pk_add_f32 v[6:7], v[6:7], v[134:135] neg_lo:[0,1] neg_hi:[0,1]
	ds_read_b64_tr_b16 v[90:91], v193 offset:12288
	ds_read_b64_tr_b16 v[92:93], v193 offset:13376
	ds_read_b64_tr_b16 v[118:119], v193 offset:12352
	ds_read_b64_tr_b16 v[120:121], v193 offset:13312
	v_ldexp_f32 v89, v85, v84
	ds_read_b64_tr_b16 v[24:25], v194 offset:8192
	ds_read_b64_tr_b16 v[26:27], v194 offset:9280
	ds_read_b64_tr_b16 v[28:29], v194 offset:8256
	ds_read_b64_tr_b16 v[30:31], v194 offset:9216
	v_pk_mul_f32 v[14:15], v[74:75], v[14:15]
	v_pk_mul_f32 v[20:21], v[78:79], v[6:7]
	v_pk_add_f32 v[6:7], v[8:9], v[136:137] neg_lo:[0,1] neg_hi:[0,1]
	v_cvt_pk_f16_f32 v8, v10, v11
	v_cvt_pk_f16_f32 v9, v2, v3
	v_cvt_pk_f16_f32 v12, v12, v13
	v_cvt_pk_f16_f32 v13, v4, v5
	v_accvgpr_read_b32 v217, a129
	v_accvgpr_read_b32 v218, a130
	v_accvgpr_read_b32 v219, a131
	v_accvgpr_read_b32 v220, a132
	v_accvgpr_read_b32 v221, a133
	v_accvgpr_read_b32 v222, a134
	v_accvgpr_read_b32 v223, a135
	v_accvgpr_read_b32 v224, a136
	v_accvgpr_read_b32 v225, a137
	v_accvgpr_read_b32 v226, a138
	v_accvgpr_read_b32 v227, a139
	v_accvgpr_read_b32 v228, a140
	v_accvgpr_read_b32 v229, a141
	v_accvgpr_read_b32 v230, a142
	v_accvgpr_read_b32 v231, a143
	v_pk_mul_f32 v[22:23], v[88:89], v[6:7]
	v_cvt_pk_f16_f32 v6, v14, v15
	v_cvt_pk_f16_f32 v7, v16, v17
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v17, v13
	v_mov_b32_e32 v15, v9
	v_accvgpr_write_b32 a0, v216
	v_permlane16_swap_b32_e32 v14, v16
	v_permlane16_swap_b32_e32 v15, v17
	v_accvgpr_write_b32 a1, v217
	v_accvgpr_write_b32 a2, v218
	v_accvgpr_write_b32 a3, v219
	v_accvgpr_write_b32 a4, v220
	v_accvgpr_write_b32 a5, v221
	v_accvgpr_write_b32 a6, v222
	v_accvgpr_write_b32 a7, v223
	v_accvgpr_write_b32 a8, v224
	v_accvgpr_write_b32 a9, v225
	v_accvgpr_write_b32 a10, v226
	v_accvgpr_write_b32 a11, v227
	v_accvgpr_write_b32 a12, v228
	v_accvgpr_write_b32 a13, v229
	v_accvgpr_write_b32 a14, v230
	v_accvgpr_write_b32 a15, v231
	v_accvgpr_read_b32 v200, a144
	v_accvgpr_read_b32 v162, a164
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x16_f16 a[0:15], v[24:27], v[14:17], a[0:15]
	v_accvgpr_read_b32 v163, a165
	v_accvgpr_read_b32 v164, a166
	v_accvgpr_read_b32 v165, a167
	v_accvgpr_mov_b32 a164, a72
	v_accvgpr_mov_b32 a165, a73
	v_accvgpr_mov_b32 a166, a74
	v_accvgpr_mov_b32 a167, a75
	v_accvgpr_mov_b32 a72, a124
	v_accvgpr_mov_b32 a73, a125
	v_accvgpr_mov_b32 a74, a126
	v_accvgpr_mov_b32 a75, a127
	v_accvgpr_mov_b32 a139, a31
	v_accvgpr_read_b32 v201, a145
	v_accvgpr_read_b32 v202, a146
	v_accvgpr_read_b32 v203, a147
	v_accvgpr_read_b32 v204, a148
	v_accvgpr_read_b32 v205, a149
	v_accvgpr_read_b32 v206, a150
	v_accvgpr_read_b32 v207, a151
	v_accvgpr_read_b32 v208, a152
	v_accvgpr_read_b32 v209, a153
	v_accvgpr_read_b32 v210, a154
	v_accvgpr_read_b32 v211, a155
	v_cvt_pk_f16_f32 v82, v70, v71
	v_accvgpr_mov_b32 a138, a30
	v_accvgpr_mov_b32 a137, a29
	v_accvgpr_mov_b32 a136, a28
	v_accvgpr_mov_b32 a135, a27
	v_accvgpr_mov_b32 a134, a26
	v_accvgpr_mov_b32 a133, a25
	v_accvgpr_mov_b32 a132, a24
	v_accvgpr_mov_b32 a131, a23
	v_accvgpr_mov_b32 a130, a22
	v_accvgpr_mov_b32 a129, a21
	v_accvgpr_mov_b32 a128, a20
	v_accvgpr_mov_b32 a127, a19
	v_accvgpr_mov_b32 a126, a18
	v_accvgpr_mov_b32 a125, a17
	v_accvgpr_mov_b32 a124, a16
	v_accvgpr_read_b32 v41, a15
	v_accvgpr_read_b32 v40, a14
	v_accvgpr_read_b32 v43, a13
	v_accvgpr_read_b32 v42, a12
	v_accvgpr_read_b32 v47, a11
	v_accvgpr_read_b32 v46, a10
	v_accvgpr_read_b32 v51, a9
	v_accvgpr_read_b32 v50, a8
	v_accvgpr_read_b32 v57, a7
	v_accvgpr_read_b32 v56, a6
	v_accvgpr_read_b32 v63, a5
	v_accvgpr_read_b32 v62, a4
	v_accvgpr_read_b32 v71, a3
	v_accvgpr_read_b32 v70, a2
	v_accvgpr_write_b32 a2, v200
	v_accvgpr_write_b32 a3, v201
	v_accvgpr_write_b32 a4, v202
	v_accvgpr_write_b32 a5, v203
	v_accvgpr_write_b32 a6, v204
	v_accvgpr_write_b32 a7, v205
	v_accvgpr_write_b32 a8, v206
	v_accvgpr_write_b32 a9, v207
	v_accvgpr_write_b32 a10, v208
	v_accvgpr_write_b32 a11, v209
	v_accvgpr_write_b32 a12, v210
	v_accvgpr_write_b32 a13, v211
	v_accvgpr_write_b32 a14, v212
	v_accvgpr_write_b32 a15, v213
	v_accvgpr_write_b32 a16, v214
	v_accvgpr_write_b32 a17, v215
	v_accvgpr_read_b32 v232, a80
	v_accvgpr_read_b32 v166, a168
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x16_f16 a[2:17], v[28:31], v[14:17], a[2:17]
	v_accvgpr_read_b32 v167, a169
	v_accvgpr_read_b32 v168, a170
	v_accvgpr_read_b32 v169, a171
	v_accvgpr_mov_b32 a168, a76
	v_accvgpr_mov_b32 a169, a77
	v_accvgpr_mov_b32 a170, a78
	v_accvgpr_mov_b32 a171, a79
	v_accvgpr_read_b32 v233, a81
	v_accvgpr_read_b32 v234, a82
	v_accvgpr_read_b32 v235, a83
	v_accvgpr_read_b32 v236, a84
	v_accvgpr_read_b32 v237, a85
	v_accvgpr_read_b32 v238, a86
	v_accvgpr_read_b32 v239, a87
	v_accvgpr_mov_b32 a76, a96
	v_accvgpr_mov_b32 a77, a97
	v_accvgpr_mov_b32 a78, a98
	v_accvgpr_mov_b32 a79, a99
	v_accvgpr_mov_b32 a80, a100
	v_accvgpr_mov_b32 a81, a101
	v_accvgpr_mov_b32 a82, a102
	v_accvgpr_mov_b32 a83, a103
	v_accvgpr_mov_b32 a84, a104
	v_accvgpr_mov_b32 a85, a105
	v_accvgpr_mov_b32 a86, a106
	v_accvgpr_mov_b32 a87, a107
	v_cvt_pk_f16_f32 v84, v74, v75
	v_cvt_pk_f16_f32 v85, v76, v77
	v_cvt_pk_f16_f32 v86, v78, v79
	v_cvt_pk_f16_f32 v87, v88, v89
	v_accvgpr_write_b32 a92, v232
	v_permlane16_swap_b32_e32 v84, v86
	v_permlane16_swap_b32_e32 v85, v87
	v_accvgpr_write_b32 a93, v233
	v_accvgpr_write_b32 a94, v234
	v_accvgpr_write_b32 a95, v235
	v_accvgpr_write_b32 a96, v236
	v_accvgpr_write_b32 a97, v237
	v_accvgpr_write_b32 a98, v238
	v_accvgpr_write_b32 a99, v239
	v_accvgpr_write_b32 a100, v240
	v_accvgpr_write_b32 a101, v241
	v_accvgpr_write_b32 a102, v242
	v_accvgpr_write_b32 a103, v243
	v_accvgpr_write_b32 a104, v244
	v_accvgpr_write_b32 a105, v245
	v_accvgpr_write_b32 a106, v246
	v_accvgpr_write_b32 a107, v247
	ds_read_b64_tr_b16 v[32:33], v193 offset:8192
	ds_read_b64_tr_b16 v[34:35], v193 offset:9280
	ds_read_b64_tr_b16 v[36:37], v193 offset:8256
	ds_read_b64_tr_b16 v[38:39], v193 offset:9216
	v_cvt_pk_f16_f32 v81, v68, v69
	v_mfma_f32_32x32x16_f16 a[156:171], v[98:101], v[84:87], a[156:171]
	v_accvgpr_read_b32 v45, a17
	v_accvgpr_read_b32 v44, a16
	v_accvgpr_read_b32 v49, a15
	v_accvgpr_read_b32 v48, a14
	v_accvgpr_read_b32 v55, a13
	v_accvgpr_read_b32 v54, a12
	v_accvgpr_read_b32 v61, a11
	v_mfma_f32_32x32x16_f16 a[92:107], v[102:105], v[84:87], a[92:107]
	v_accvgpr_read_b32 v60, a10
	v_accvgpr_read_b32 v69, a9
	v_accvgpr_read_b32 v68, a8
	v_accvgpr_read_b32 v77, a7
	v_accvgpr_read_b32 v76, a6
	v_cvt_pk_f16_f32 v80, v66, v67
	v_cvt_pk_f16_f32 v83, v72, v73
	v_mfma_f32_32x32x16_f16 a[76:91], v[90:93], v[84:87], a[76:91]
	v_accvgpr_mov_b32 a155, a47
	v_permlane16_swap_b32_e32 v80, v82
	v_permlane16_swap_b32_e32 v81, v83
	v_accvgpr_mov_b32 a154, a46
	v_accvgpr_mov_b32 a153, a45
	v_mfma_f32_32x32x16_f16 a[60:75], v[118:121], v[84:87], a[60:75]
	v_accvgpr_read_b32 v85, a5
	v_accvgpr_read_b32 v84, a4
	v_accvgpr_write_b32 a4, v158
	v_accvgpr_write_b32 a5, v159
	v_accvgpr_write_b32 a6, v160
	v_accvgpr_write_b32 a7, v161
	v_accvgpr_write_b32 a8, v162
	v_accvgpr_write_b32 a9, v163
	v_accvgpr_write_b32 a10, v164
	v_accvgpr_write_b32 a11, v165
	v_accvgpr_write_b32 a12, v166
	v_accvgpr_write_b32 a13, v167
	v_accvgpr_write_b32 a14, v168
	v_accvgpr_write_b32 a15, v169
	v_accvgpr_write_b32 a16, v170
	v_accvgpr_write_b32 a17, v171
	v_accvgpr_write_b32 a18, v172
	v_accvgpr_write_b32 a19, v173
	v_accvgpr_mov_b32 a152, a44
	v_accvgpr_mov_b32 a151, a43
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x16_f16 a[4:19], v[32:35], v[14:17], a[4:19]
	v_accvgpr_mov_b32 a150, a42
	v_accvgpr_mov_b32 a149, a41
	v_accvgpr_mov_b32 a148, a40
	v_accvgpr_mov_b32 a147, a39
	v_accvgpr_mov_b32 a146, a38
	v_accvgpr_mov_b32 a145, a37
	v_accvgpr_mov_b32 a144, a36
	v_accvgpr_mov_b32 a143, a35
	v_accvgpr_mov_b32 a142, a34
	v_accvgpr_mov_b32 a141, a33
	v_accvgpr_mov_b32 a140, a32
	v_accvgpr_read_b32 v154, a188
	v_accvgpr_read_b32 v155, a189
	v_accvgpr_read_b32 v156, a190
	v_accvgpr_read_b32 v157, a191
	v_mfma_f32_32x32x16_f16 a[108:123], v[98:101], v[80:83], a[108:123]
	v_accvgpr_read_b32 v53, a19
	v_accvgpr_read_b32 v52, a18
	v_accvgpr_read_b32 v59, a17
	v_accvgpr_read_b32 v58, a16
	v_accvgpr_read_b32 v67, a15
	v_accvgpr_read_b32 v66, a14
	v_accvgpr_read_b32 v75, a13
	v_mfma_f32_32x32x16_f16 a[124:139], v[102:105], v[80:83], a[124:139]
	v_accvgpr_read_b32 v74, a12
	v_accvgpr_read_b32 v97, a7
	v_accvgpr_read_b32 v96, a6
	v_cvt_pk_f16_f32 v10, v20, v21
	v_cvt_pk_f16_f32 v11, v22, v23
	v_mov_b32_e32 v2, v6
	v_mov_b32_e32 v4, v10
	v_mfma_f32_32x32x16_f16 a[140:155], v[90:93], v[80:83], a[140:155]
	v_accvgpr_read_b32 v91, a9
	v_accvgpr_read_b32 v90, a8
	v_mov_b32_e32 v5, v11
	v_mov_b32_e32 v3, v7
	v_permlane16_swap_b32_e32 v2, v4
	s_nop 0
	v_permlane16_swap_b32_e32 v3, v5
	v_mfma_f32_32x32x16_f16 a[172:187], v[118:121], v[80:83], a[172:187]
	v_accvgpr_read_b32 v83, a11
	v_accvgpr_read_b32 v82, a10
	v_accvgpr_write_b32 a6, v142
	v_accvgpr_write_b32 a7, v143
	v_accvgpr_write_b32 a8, v144
	v_accvgpr_write_b32 a9, v145
	v_accvgpr_write_b32 a10, v146
	v_accvgpr_write_b32 a11, v147
	v_accvgpr_write_b32 a12, v148
	v_accvgpr_write_b32 a13, v149
	v_accvgpr_write_b32 a14, v150
	v_accvgpr_write_b32 a15, v151
	v_accvgpr_write_b32 a16, v152
	v_accvgpr_write_b32 a17, v153
	v_accvgpr_write_b32 a18, v154
	v_accvgpr_write_b32 a19, v155
	v_accvgpr_write_b32 a20, v156
	v_accvgpr_write_b32 a21, v157
	v_accvgpr_mov_b32 a44, a240
	v_or_b32_e32 v18, s10, v1
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x16_f16 a[6:21], v[36:39], v[14:17], a[6:21]
	v_accvgpr_mov_b32 a45, a241
	v_accvgpr_mov_b32 a46, a242
	v_accvgpr_mov_b32 a47, a243
	v_accvgpr_mov_b32 a48, a244
	v_accvgpr_mov_b32 a49, a245
	v_accvgpr_mov_b32 a50, a246
	v_accvgpr_mov_b32 a51, a247
	v_accvgpr_mov_b32 a52, a248
	v_accvgpr_mov_b32 a53, a249
	v_accvgpr_mov_b32 a54, a250
	v_accvgpr_mov_b32 a55, a251
	v_accvgpr_mov_b32 a56, a252
	v_accvgpr_read_b32 v65, a21
	v_accvgpr_read_b32 v64, a20
	v_accvgpr_read_b32 v73, a19
	v_accvgpr_read_b32 v72, a18
	v_accvgpr_read_b32 v81, a17
	v_accvgpr_read_b32 v80, a16
	v_accvgpr_read_b32 v89, a15
	v_accvgpr_read_b32 v88, a14
	v_accvgpr_read_b32 v95, a13
	v_accvgpr_read_b32 v94, a12
	v_accvgpr_read_b32 v103, a11
	v_accvgpr_read_b32 v102, a10
	v_accvgpr_read_b32 v109, a9
	v_accvgpr_read_b32 v108, a8
	v_accvgpr_mov_b32 a8, a192
	v_accvgpr_mov_b32 a9, a193
	v_accvgpr_mov_b32 a10, a194
	v_accvgpr_mov_b32 a11, a195
	v_accvgpr_mov_b32 a12, a196
	v_accvgpr_mov_b32 a13, a197
	v_accvgpr_mov_b32 a14, a198
	v_accvgpr_mov_b32 a15, a199
	v_accvgpr_mov_b32 a16, a200
	v_accvgpr_mov_b32 a17, a201
	v_accvgpr_mov_b32 a18, a202
	v_accvgpr_mov_b32 a19, a203
	v_accvgpr_mov_b32 a20, a204
	v_accvgpr_mov_b32 a21, a205
	v_accvgpr_mov_b32 a22, a206
	v_accvgpr_mov_b32 a23, a207
	v_accvgpr_mov_b32 a57, a253
	v_accvgpr_mov_b32 a58, a254
	v_mfma_f32_32x32x16_f16 a[8:23], v[24:27], v[2:5], a[8:23]
	v_accvgpr_mov_b32 a59, a255
	v_add_u32_e32 v1, v192, v191
	ds_write2st64_b64 v1, v[8:9], v[12:13] offset1:1
	ds_write2st64_b64 v1, v[6:7], v[10:11] offset0:8 offset1:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s9, s8
	s_mul_i32 s0, s10, s11
	v_mfma_f32_32x32x16_f16 a[44:59], v[36:39], v[2:5], a[44:59]
	v_bfrev_b32_e32 v176, 1
	v_cmp_gt_i32_e32 vcc, s42, v18
	v_add_lshl_u32 v0, v0, s0, 1
	v_accvgpr_read_b32 v79, a23
	v_accvgpr_read_b32 v78, a22
	v_accvgpr_read_b32 v87, a21
	v_accvgpr_read_b32 v86, a20
	v_accvgpr_read_b32 v93, a19
	v_accvgpr_read_b32 v92, a18
	v_accvgpr_read_b32 v101, a17
	v_accvgpr_read_b32 v100, a16
	v_accvgpr_read_b32 v107, a15
	v_accvgpr_read_b32 v106, a14
	v_accvgpr_mov_b32 a14, a208
	v_accvgpr_mov_b32 a15, a209
	v_accvgpr_mov_b32 a16, a210
	v_accvgpr_mov_b32 a17, a211
	v_accvgpr_mov_b32 a18, a212
	v_accvgpr_mov_b32 a19, a213
	v_accvgpr_mov_b32 a20, a214
	v_accvgpr_mov_b32 a21, a215
	v_accvgpr_mov_b32 a22, a216
	v_accvgpr_mov_b32 a23, a217
	v_accvgpr_mov_b32 a24, a218
	v_accvgpr_mov_b32 a25, a219
	v_accvgpr_mov_b32 a26, a220
	v_accvgpr_mov_b32 a27, a221
	v_accvgpr_mov_b32 a28, a222
	v_accvgpr_mov_b32 a29, a223
	v_accvgpr_read_b32 v111, a13
	v_accvgpr_read_b32 v110, a12
	v_mfma_f32_32x32x16_f16 a[14:29], v[28:31], v[2:5], a[14:29]
	v_accvgpr_read_b32 v113, a11
	v_accvgpr_read_b32 v112, a10
	v_cndmask_b32_e32 v0, v176, v0, vcc
	s_mul_i32 s1, s60, s3
	v_accvgpr_read_b32 v18, a142
	v_accvgpr_read_b32 v19, a144
	v_accvgpr_read_b32 v152, a170
	v_accvgpr_read_b32 v153, a92
	v_accvgpr_read_b32 v154, a94
	v_accvgpr_read_b32 v155, a96
	v_accvgpr_read_b32 v156, a98
	v_accvgpr_read_b32 v157, a100
	v_accvgpr_read_b32 v99, a29
	v_accvgpr_read_b32 v98, a28
	v_accvgpr_mov_b32 a28, a224
	v_accvgpr_mov_b32 a29, a225
	v_accvgpr_mov_b32 a30, a226
	v_accvgpr_mov_b32 a31, a227
	v_accvgpr_mov_b32 a32, a228
	v_accvgpr_mov_b32 a33, a229
	v_accvgpr_mov_b32 a34, a230
	v_accvgpr_mov_b32 a35, a231
	v_accvgpr_mov_b32 a36, a232
	v_accvgpr_mov_b32 a37, a233
	v_accvgpr_mov_b32 a38, a234
	v_accvgpr_mov_b32 a39, a235
	v_accvgpr_mov_b32 a40, a236
	v_accvgpr_mov_b32 a41, a237
	v_accvgpr_mov_b32 a42, a238
	v_accvgpr_mov_b32 a43, a239
	v_accvgpr_read_b32 v121, a19
	v_accvgpr_read_b32 v120, a18
	v_mfma_f32_32x32x16_f16 a[28:43], v[32:35], v[2:5], a[28:43]
	ds_read_b64_tr_b16 v[2:3], v190
	ds_read_b64_tr_b16 v[4:5], v190 offset:128
	ds_read_b64_tr_b16 v[6:7], v190 offset:1024
	ds_read_b64_tr_b16 v[8:9], v190 offset:1152
	scratch_load_dwordx4 v[10:13], off, off offset:48 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v143, a17
	v_accvgpr_read_b32 v142, a16
	v_accvgpr_read_b32 v158, a102
	v_accvgpr_read_b32 v159, a104
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[10:13], v[10:13], v[2:5], 0
	ds_read_b64_tr_b16 v[10:11], v190 offset:2048
	ds_read_b64_tr_b16 v[12:13], v190 offset:2176
	scratch_load_dwordx4 v[14:17], off, off offset:32 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v160, a106
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[10:13], v[14:17], v[6:9], a[10:13]
	ds_read_b64_tr_b16 v[14:15], v190 offset:3072
	ds_read_b64_tr_b16 v[16:17], v190 offset:3200
	scratch_load_dwordx4 v[20:23], off, off offset:16 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v161, a76
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[10:13], v[20:23], v[10:13], a[10:13]
	ds_read_b64_tr_b16 v[20:21], v190 offset:4096
	ds_read_b64_tr_b16 v[22:23], v190 offset:4224
	scratch_load_dwordx4 v[24:27], off, off ; 16-byte Folded Reload
	v_accvgpr_read_b32 v162, a78
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[10:13], v[24:27], v[14:17], a[10:13]
	ds_read_b64_tr_b16 v[24:25], v190 offset:5120
	ds_read_b64_tr_b16 v[26:27], v190 offset:5248
	ds_read_b64_tr_b16 v[28:29], v190 offset:6144
	ds_read_b64_tr_b16 v[30:31], v190 offset:6272
	ds_read_b64_tr_b16 v[32:33], v190 offset:7168
	ds_read_b64_tr_b16 v[34:35], v190 offset:7296
	scratch_load_dwordx4 v[36:39], off, off offset:208 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_16x16x32_f16 a[10:13], v[248:251], v[20:23], a[10:13]
	v_accvgpr_read_b32 v163, a80
	v_accvgpr_read_b32 v164, a82
	v_accvgpr_read_b32 v165, a84
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_16x16x32_f16 a[10:13], v[184:187], v[24:27], a[10:13]
	v_accvgpr_read_b32 v166, a86
	v_accvgpr_read_b32 v167, a88
	v_accvgpr_read_b32 v168, a90
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_mfma_f32_16x16x32_f16 a[10:13], v[36:39], v[28:31], a[10:13]
	scratch_load_dwordx4 v[36:39], off, off offset:192 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v169, a60
	v_accvgpr_read_b32 v170, a62
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mfma_f32_16x16x32_f16 a[10:13], v[36:39], v[32:35], a[10:13]
	scratch_load_dwordx4 v[36:39], off, off offset:176 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v171, a64
	v_accvgpr_read_b32 v172, a66
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[36:39], v[2:5], 0
	scratch_load_dwordx4 v[2:5], off, off offset:160 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v36, a162
	v_accvgpr_read_b32 v37, a164
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[6:9], a[16:19]
	scratch_load_dwordx4 v[2:5], off, off offset:144 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v38, a166
	v_accvgpr_read_b32 v39, a168
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[10:13], a[16:19]
	scratch_load_dwordx4 v[2:5], off, off offset:112 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v10, a126
	v_accvgpr_read_b32 v11, a128
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[14:17], a[16:19]
	scratch_load_dwordx4 v[2:5], off, off offset:128 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v12, a130
	v_accvgpr_read_b32 v13, a132
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[20:23], a[16:19]
	scratch_load_dwordx4 v[2:5], off, off offset:96 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v14, a134
	v_accvgpr_read_b32 v15, a136
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[24:27], a[16:19]
	scratch_load_dwordx4 v[2:5], off, off offset:80 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v16, a138
	v_accvgpr_read_b32 v17, a140
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[2:5], v[28:31], a[16:19]
	scratch_load_dwordx4 v[4:7], off, off offset:64 ; 16-byte Folded Reload
	v_accvgpr_read_b32 v3, a13
	v_accvgpr_read_b32 v2, a12
	s_waitcnt vmcnt(0)
	v_mfma_f32_16x16x32_f16 a[16:19], v[4:7], v[32:35], a[16:19]
	v_accvgpr_read_b32 v6, a10
	v_accvgpr_read_b32 v7, a11
	v_pk_mul_f32 v[6:7], s[8:9], v[6:7]
	s_nop 4
	v_accvgpr_read_b32 v5, a19
	v_accvgpr_read_b32 v4, a18
	v_pk_mul_f32 v[4:5], s[8:9], v[4:5]
	v_accvgpr_read_b32 v8, a16
	v_cvt_pk_f16_f32 v4, v4, v5
	v_add_lshl_u32 v5, v189, s0, 1
	v_cvt_pk_f16_f32 v1, v6, v7
	v_cndmask_b32_e32 v5, v176, v5, vcc
	v_pk_mul_f32 v[2:3], s[8:9], v[2:3]
	v_accvgpr_read_b32 v9, a17
	buffer_atomic_pk_add_f16 v1, v5, s[16:19], 0 offen
	v_add_lshl_u32 v1, v199, s0, 1
	v_pk_mul_f32 v[8:9], s[8:9], v[8:9]
	v_cvt_pk_f16_f32 v2, v2, v3
	v_cndmask_b32_e32 v1, v176, v1, vcc
	v_cvt_pk_f16_f32 v3, v8, v9
	buffer_atomic_pk_add_f16 v2, v1, s[16:19], 0 offen
	buffer_atomic_pk_add_f16 v3, v0, s[16:19], 0 offen
	v_add_lshl_u32 v0, v188, s0, 1
	v_cndmask_b32_e32 v0, v176, v0, vcc
	buffer_atomic_pk_add_f16 v4, v0, s[16:19], 0 offen
	scratch_load_dword v0, off, off offset:232 ; 4-byte Folded Reload
	s_mul_i32 s0, s2, s33
	scratch_load_dword v1, off, off offset:224 ; 4-byte Folded Reload
	s_lshl_b32 s2, s3, 7
	s_add_i32 s0, s1, s0
	v_accvgpr_read_b32 v2, a110
	v_accvgpr_read_b32 v3, a112
	v_accvgpr_read_b32 v4, a114
	v_accvgpr_read_b32 v5, a116
	v_accvgpr_read_b32 v6, a118
	v_accvgpr_read_b32 v7, a120
	v_accvgpr_read_b32 v8, a122
	v_accvgpr_read_b32 v9, a124
	v_accvgpr_read_b32 v20, a146
	v_accvgpr_read_b32 v21, a148
	v_accvgpr_read_b32 v22, a150
	v_accvgpr_read_b32 v23, a152
	v_accvgpr_read_b32 v24, a154
	v_accvgpr_read_b32 v25, a172
	v_accvgpr_read_b32 v26, a174
	v_accvgpr_read_b32 v27, a176
	v_accvgpr_read_b32 v28, a178
	v_accvgpr_read_b32 v29, a180
	v_accvgpr_read_b32 v30, a182
	v_accvgpr_read_b32 v31, a184
	v_accvgpr_read_b32 v32, a186
	v_accvgpr_read_b32 v33, a156
	v_accvgpr_read_b32 v34, a158
	v_accvgpr_read_b32 v35, a160
	v_accvgpr_read_b32 v173, a68
	v_accvgpr_read_b32 v174, a70
	v_accvgpr_read_b32 v175, a72
	v_accvgpr_read_b32 v189, a74
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x27000
	s_mov_b32 s46, 0x7ffffffe
	v_accvgpr_read_b32 v105, a27
	v_accvgpr_read_b32 v104, a26
	v_accvgpr_read_b32 v115, a25
	v_accvgpr_read_b32 v114, a24
	v_accvgpr_read_b32 v117, a23
	v_accvgpr_read_b32 v116, a22
	v_accvgpr_read_b32 v119, a21
	v_accvgpr_read_b32 v118, a20
	v_accvgpr_read_b32 v123, a43
	v_accvgpr_read_b32 v122, a42
	v_accvgpr_read_b32 v129, a41
	v_accvgpr_read_b32 v128, a40
	v_accvgpr_read_b32 v133, a39
	v_accvgpr_read_b32 v132, a38
	v_accvgpr_read_b32 v137, a37
	v_accvgpr_read_b32 v136, a36
	v_accvgpr_read_b32 v141, a35
	v_accvgpr_read_b32 v140, a34
	v_accvgpr_read_b32 v147, a33
	v_accvgpr_read_b32 v146, a32
	v_accvgpr_read_b32 v151, a31
	v_accvgpr_read_b32 v150, a30
	v_accvgpr_read_b32 v125, a59
	v_accvgpr_read_b32 v124, a58
	v_accvgpr_read_b32 v127, a57
	v_accvgpr_read_b32 v126, a56
	v_accvgpr_read_b32 v131, a55
	v_accvgpr_read_b32 v130, a54
	v_accvgpr_read_b32 v135, a53
	v_accvgpr_read_b32 v134, a52
	v_accvgpr_read_b32 v139, a51
	v_accvgpr_read_b32 v138, a50
	v_accvgpr_read_b32 v145, a49
	v_accvgpr_read_b32 v144, a48
	v_accvgpr_read_b32 v149, a47
	v_accvgpr_read_b32 v148, a46
	v_pk_mul_f32 v[78:79], s[8:9], v[78:79]
	v_pk_mul_f32 v[126:127], s[8:9], v[126:127]
	v_pk_mul_f32 v[124:125], s[8:9], v[124:125]
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s46
	s_mov_b32 s15, s47
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v177, 2, v0
	scratch_load_dword v0, off, off offset:228 ; 4-byte Folded Reload
	v_or_b32_e32 v184, 16, v177
	v_or_b32_e32 v183, 32, v177
	v_or_b32_e32 v182, 48, v177
	v_or_b32_e32 v181, 64, v177
	v_or_b32_e32 v180, 0x50, v177
	v_or_b32_e32 v179, 0x60, v177
	v_or_b32_e32 v178, 0x70, v177
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v0
	v_and_or_b32 v0, v1, 31, v0
	v_or_b32_e32 v185, s60, v0
	v_mul_lo_u32 v0, s3, v0
	v_add_u32_e32 v187, s0, v0
	s_add_i32 s0, s0, s2
	v_add_u32_e32 v188, s0, v0
	v_accvgpr_read_b32 v0, a109
	v_accvgpr_read_b32 v1, a108
	v_cvt_pk_f16_f32 v0, v1, v0
	v_accvgpr_read_b32 v1, a111
	v_cvt_pk_f16_f32 v1, v2, v1
	v_accvgpr_read_b32 v2, a113
	v_cvt_pk_f16_f32 v2, v3, v2
	v_accvgpr_read_b32 v3, a115
	v_cvt_pk_f16_f32 v3, v4, v3
	v_accvgpr_read_b32 v4, a117
	v_cvt_pk_f16_f32 v4, v5, v4
	v_accvgpr_read_b32 v5, a119
	v_cvt_pk_f16_f32 v5, v6, v5
	v_accvgpr_read_b32 v6, a121
	v_cvt_pk_f16_f32 v6, v7, v6
	v_accvgpr_read_b32 v7, a123
	v_cvt_pk_f16_f32 v7, v8, v7
	v_accvgpr_read_b32 v8, a125
	v_cvt_pk_f16_f32 v8, v9, v8
	v_accvgpr_read_b32 v9, a127
	v_cvt_pk_f16_f32 v9, v10, v9
	v_accvgpr_read_b32 v10, a129
	v_cvt_pk_f16_f32 v10, v11, v10
	v_accvgpr_read_b32 v11, a131
	v_cvt_pk_f16_f32 v11, v12, v11
	v_accvgpr_read_b32 v12, a133
	v_cvt_pk_f16_f32 v12, v13, v12
	v_accvgpr_read_b32 v13, a135
	v_cvt_pk_f16_f32 v13, v14, v13
	v_accvgpr_read_b32 v14, a137
	v_cvt_pk_f16_f32 v14, v15, v14
	v_accvgpr_read_b32 v15, a139
	v_cvt_pk_f16_f32 v15, v16, v15
	v_accvgpr_read_b32 v16, a141
	v_cvt_pk_f16_f32 v16, v17, v16
	v_accvgpr_read_b32 v17, a143
	v_cvt_pk_f16_f32 v17, v18, v17
	v_accvgpr_read_b32 v18, a145
	v_cvt_pk_f16_f32 v18, v19, v18
	v_accvgpr_read_b32 v19, a147
	v_cvt_pk_f16_f32 v19, v20, v19
	v_accvgpr_read_b32 v20, a149
	v_cvt_pk_f16_f32 v20, v21, v20
	v_accvgpr_read_b32 v21, a151
	v_cvt_pk_f16_f32 v21, v22, v21
	v_accvgpr_read_b32 v22, a153
	v_cvt_pk_f16_f32 v22, v23, v22
	v_accvgpr_read_b32 v23, a155
	v_cvt_pk_f16_f32 v23, v24, v23
	v_accvgpr_read_b32 v24, a173
	v_cvt_pk_f16_f32 v24, v25, v24
	v_accvgpr_read_b32 v25, a175
	v_cvt_pk_f16_f32 v25, v26, v25
	v_accvgpr_read_b32 v26, a177
	v_cvt_pk_f16_f32 v26, v27, v26
	v_accvgpr_read_b32 v27, a179
	v_cvt_pk_f16_f32 v27, v28, v27
	v_accvgpr_read_b32 v28, a181
	v_cvt_pk_f16_f32 v28, v29, v28
	v_accvgpr_read_b32 v29, a183
	v_cvt_pk_f16_f32 v29, v30, v29
	v_accvgpr_read_b32 v30, a185
	v_cvt_pk_f16_f32 v30, v31, v30
	v_accvgpr_read_b32 v31, a187
	v_cvt_pk_f16_f32 v31, v32, v31
	v_accvgpr_read_b32 v32, a157
	v_cvt_pk_f16_f32 v32, v33, v32
	v_accvgpr_read_b32 v33, a159
	v_cvt_pk_f16_f32 v33, v34, v33
	v_accvgpr_read_b32 v34, a161
	v_cvt_pk_f16_f32 v34, v35, v34
	v_accvgpr_read_b32 v35, a163
	v_cvt_pk_f16_f32 v35, v36, v35
	v_accvgpr_read_b32 v36, a165
	v_cvt_pk_f16_f32 v36, v37, v36
	v_accvgpr_read_b32 v37, a167
	v_cvt_pk_f16_f32 v37, v38, v37
	v_accvgpr_read_b32 v38, a169
	v_cvt_pk_f16_f32 v38, v39, v38
	v_accvgpr_read_b32 v39, a171
	v_cvt_pk_f16_f32 v39, v152, v39
	v_accvgpr_read_b32 v152, a93
	v_cvt_pk_f16_f32 v152, v153, v152
	v_accvgpr_read_b32 v153, a95
	v_cvt_pk_f16_f32 v153, v154, v153
	v_accvgpr_read_b32 v154, a97
	v_cvt_pk_f16_f32 v154, v155, v154
	v_accvgpr_read_b32 v155, a99
	v_cvt_pk_f16_f32 v155, v156, v155
	v_accvgpr_read_b32 v156, a101
	v_cvt_pk_f16_f32 v156, v157, v156
	v_accvgpr_read_b32 v157, a103
	v_cvt_pk_f16_f32 v157, v158, v157
	v_accvgpr_read_b32 v158, a105
	v_cvt_pk_f16_f32 v158, v159, v158
	v_accvgpr_read_b32 v159, a107
	v_cvt_pk_f16_f32 v159, v160, v159
	v_accvgpr_read_b32 v160, a77
	v_cvt_pk_f16_f32 v160, v161, v160
	v_accvgpr_read_b32 v161, a79
	v_cvt_pk_f16_f32 v161, v162, v161
	v_accvgpr_read_b32 v162, a81
	v_cvt_pk_f16_f32 v162, v163, v162
	v_accvgpr_read_b32 v163, a83
	v_cvt_pk_f16_f32 v163, v164, v163
	v_accvgpr_read_b32 v164, a85
	v_cvt_pk_f16_f32 v164, v165, v164
	v_accvgpr_read_b32 v165, a87
	v_cvt_pk_f16_f32 v165, v166, v165
	v_accvgpr_read_b32 v166, a89
	v_cvt_pk_f16_f32 v166, v167, v166
	v_accvgpr_read_b32 v167, a91
	v_cvt_pk_f16_f32 v167, v168, v167
	v_accvgpr_read_b32 v168, a61
	v_cvt_pk_f16_f32 v168, v169, v168
	v_accvgpr_read_b32 v169, a63
	v_cvt_pk_f16_f32 v169, v170, v169
	v_accvgpr_read_b32 v170, a65
	v_cvt_pk_f16_f32 v170, v171, v170
	v_accvgpr_read_b32 v171, a67
	v_cvt_pk_f16_f32 v171, v172, v171
	v_accvgpr_read_b32 v172, a69
	v_cvt_pk_f16_f32 v172, v173, v172
	v_accvgpr_read_b32 v173, a71
	v_cvt_pk_f16_f32 v173, v174, v173
	v_accvgpr_read_b32 v174, a73
	v_cvt_pk_f16_f32 v174, v175, v174
	v_accvgpr_read_b32 v175, a75
	v_cvt_pk_f16_f32 v175, v189, v175
	v_add_lshl_u32 v189, v187, v177, 1
	v_cmp_gt_i32_e32 vcc, s43, v185
	v_or_b32_e32 v186, 0x80, v185
	v_permlane32_swap_b32_e32 v0, v2
	v_permlane32_swap_b32_e32 v1, v3
	v_cndmask_b32_e32 v185, v176, v189, vcc
	buffer_store_dwordx4 v[0:3], v185, s[44:47], 0 offen
	v_permlane32_swap_b32_e32 v4, v6
	s_nop 0
	v_add_lshl_u32 v0, v187, v184, 1
	v_cndmask_b32_e32 v189, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v183, 1
	v_cndmask_b32_e32 v190, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v182, 1
	v_cndmask_b32_e32 v191, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v181, 1
	v_cndmask_b32_e32 v192, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v180, 1
	v_cndmask_b32_e32 v193, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v179, 1
	v_cndmask_b32_e32 v194, v176, v0, vcc
	v_add_lshl_u32 v0, v187, v178, 1
	v_cndmask_b32_e32 v187, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v177, 1
	v_cmp_gt_i32_e32 vcc, s43, v186
	v_permlane32_swap_b32_e32 v5, v7
	s_nop 0
	v_cndmask_b32_e32 v177, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v184, 1
	v_cndmask_b32_e32 v184, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v183, 1
	v_permlane32_swap_b32_e32 v8, v10
	v_permlane32_swap_b32_e32 v9, v11
	v_permlane32_swap_b32_e32 v12, v14
	v_permlane32_swap_b32_e32 v13, v15
	v_permlane32_swap_b32_e32 v16, v18
	v_permlane32_swap_b32_e32 v17, v19
	v_permlane32_swap_b32_e32 v20, v22
	v_permlane32_swap_b32_e32 v21, v23
	v_permlane32_swap_b32_e32 v24, v26
	v_permlane32_swap_b32_e32 v25, v27
	v_permlane32_swap_b32_e32 v28, v30
	v_permlane32_swap_b32_e32 v29, v31
	v_permlane32_swap_b32_e32 v32, v34
	v_permlane32_swap_b32_e32 v33, v35
	v_permlane32_swap_b32_e32 v36, v38
	v_permlane32_swap_b32_e32 v37, v39
	v_permlane32_swap_b32_e32 v152, v154
	v_permlane32_swap_b32_e32 v153, v155
	v_cndmask_b32_e32 v183, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v182, 1
	buffer_store_dwordx4 v[4:7], v189, s[44:47], 0 offen
	buffer_store_dwordx4 v[8:11], v190, s[44:47], 0 offen
	buffer_store_dwordx4 v[12:15], v191, s[44:47], 0 offen
	buffer_store_dwordx4 v[16:19], v192, s[44:47], 0 offen
	buffer_store_dwordx4 v[20:23], v193, s[44:47], 0 offen
	buffer_store_dwordx4 v[24:27], v194, s[44:47], 0 offen
	buffer_store_dwordx4 v[28:31], v187, s[44:47], 0 offen
	buffer_store_dwordx4 v[32:35], v177, s[44:47], 0 offen
	buffer_store_dwordx4 v[36:39], v184, s[44:47], 0 offen
	buffer_store_dwordx4 v[152:155], v183, s[44:47], 0 offen
	v_permlane32_swap_b32_e32 v156, v158
	s_nop 0
	v_cndmask_b32_e32 v152, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v181, 1
	v_cndmask_b32_e32 v153, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v180, 1
	v_cndmask_b32_e32 v154, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v179, 1
	v_permlane32_swap_b32_e32 v157, v159
	v_cndmask_b32_e32 v155, v176, v0, vcc
	v_add_lshl_u32 v0, v188, v178, 1
	buffer_store_dwordx4 v[156:159], v152, s[44:47], 0 offen
	v_pk_mul_f32 v[4:5], s[8:9], v[62:63]
	v_pk_mul_f32 v[12:13], s[8:9], v[42:43]
	v_cndmask_b32_e32 v156, v176, v0, vcc
	v_accvgpr_read_b32 v0, a0
	v_accvgpr_read_b32 v1, a1
	v_accvgpr_read_b32 v17, a3
	v_pk_mul_f32 v[28:29], s[8:9], v[48:49]
	v_pk_mul_f32 v[30:31], s[8:9], v[44:45]
	v_accvgpr_read_b32 v33, a5
	v_pk_mul_f32 v[34:35], s[8:9], v[96:97]
	v_pk_mul_f32 v[42:43], s[8:9], v[66:67]
	v_pk_mul_f32 v[44:45], s[8:9], v[58:59]
	v_accvgpr_read_b32 v49, a7
	v_pk_mul_f32 v[58:59], s[8:9], v[80:81]
	v_pk_mul_f32 v[62:63], s[8:9], v[64:65]
	v_accvgpr_read_b32 v65, a9
	v_pk_mul_f32 v[66:67], s[8:9], v[112:113]
	v_accvgpr_read_b32 v81, a15
	v_accvgpr_read_b32 v97, a29
	v_accvgpr_read_b32 v113, a45
	v_pk_mul_f32 v[0:1], s[8:9], v[0:1]
	v_pk_mul_f32 v[2:3], s[8:9], v[70:71]
	v_pk_mul_f32 v[6:7], s[8:9], v[56:57]
	v_accvgpr_read_b32 v16, a2
	v_accvgpr_read_b32 v32, a4
	v_accvgpr_read_b32 v48, a6
	v_accvgpr_read_b32 v64, a8
	v_accvgpr_read_b32 v80, a14
	v_accvgpr_read_b32 v96, a28
	v_accvgpr_read_b32 v112, a44
	v_pk_mul_f32 v[8:9], s[8:9], v[50:51]
	v_pk_mul_f32 v[10:11], s[8:9], v[46:47]
	v_pk_mul_f32 v[14:15], s[8:9], v[40:41]
	v_pk_mul_f32 v[16:17], s[8:9], v[16:17]
	v_pk_mul_f32 v[18:19], s[8:9], v[84:85]
	v_pk_mul_f32 v[20:21], s[8:9], v[76:77]
	v_pk_mul_f32 v[22:23], s[8:9], v[68:69]
	v_pk_mul_f32 v[24:25], s[8:9], v[60:61]
	v_pk_mul_f32 v[26:27], s[8:9], v[54:55]
	v_pk_mul_f32 v[32:33], s[8:9], v[32:33]
	v_pk_mul_f32 v[36:37], s[8:9], v[90:91]
	v_pk_mul_f32 v[38:39], s[8:9], v[82:83]
	v_pk_mul_f32 v[40:41], s[8:9], v[74:75]
	v_pk_mul_f32 v[46:47], s[8:9], v[52:53]
	v_pk_mul_f32 v[48:49], s[8:9], v[48:49]
	v_pk_mul_f32 v[50:51], s[8:9], v[108:109]
	v_pk_mul_f32 v[52:53], s[8:9], v[102:103]
	v_pk_mul_f32 v[54:55], s[8:9], v[94:95]
	v_pk_mul_f32 v[56:57], s[8:9], v[88:89]
	v_pk_mul_f32 v[60:61], s[8:9], v[72:73]
	v_pk_mul_f32 v[64:65], s[8:9], v[64:65]
	v_pk_mul_f32 v[68:69], s[8:9], v[110:111]
	v_pk_mul_f32 v[70:71], s[8:9], v[106:107]
	v_pk_mul_f32 v[72:73], s[8:9], v[100:101]
	v_pk_mul_f32 v[74:75], s[8:9], v[92:93]
	v_pk_mul_f32 v[76:77], s[8:9], v[86:87]
	v_pk_mul_f32 v[80:81], s[8:9], v[80:81]
	v_pk_mul_f32 v[82:83], s[8:9], v[142:143]
	v_pk_mul_f32 v[84:85], s[8:9], v[120:121]
	v_pk_mul_f32 v[86:87], s[8:9], v[118:119]
	v_pk_mul_f32 v[88:89], s[8:9], v[116:117]
	v_pk_mul_f32 v[90:91], s[8:9], v[114:115]
	v_pk_mul_f32 v[92:93], s[8:9], v[104:105]
	v_pk_mul_f32 v[94:95], s[8:9], v[98:99]
	v_pk_mul_f32 v[96:97], s[8:9], v[96:97]
	v_pk_mul_f32 v[98:99], s[8:9], v[150:151]
	v_pk_mul_f32 v[100:101], s[8:9], v[146:147]
	v_pk_mul_f32 v[102:103], s[8:9], v[140:141]
	v_pk_mul_f32 v[104:105], s[8:9], v[136:137]
	v_pk_mul_f32 v[106:107], s[8:9], v[132:133]
	v_pk_mul_f32 v[108:109], s[8:9], v[128:129]
	v_pk_mul_f32 v[110:111], s[8:9], v[122:123]
	v_pk_mul_f32 v[112:113], s[8:9], v[112:113]
	v_pk_mul_f32 v[114:115], s[8:9], v[148:149]
	v_pk_mul_f32 v[116:117], s[8:9], v[144:145]
	v_pk_mul_f32 v[118:119], s[8:9], v[138:139]
	v_pk_mul_f32 v[120:121], s[8:9], v[134:135]
	v_pk_mul_f32 v[122:123], s[8:9], v[130:131]
	v_cvt_pk_f16_f32 v0, v0, v1
	v_cvt_pk_f16_f32 v1, v2, v3
	v_cvt_pk_f16_f32 v2, v4, v5
	v_cvt_pk_f16_f32 v3, v6, v7
	v_permlane32_swap_b32_e32 v160, v162
	v_permlane32_swap_b32_e32 v161, v163
	v_permlane32_swap_b32_e32 v164, v166
	v_permlane32_swap_b32_e32 v165, v167
	v_permlane32_swap_b32_e32 v168, v170
	v_permlane32_swap_b32_e32 v169, v171
	v_permlane32_swap_b32_e32 v172, v174
	v_permlane32_swap_b32_e32 v173, v175
	v_cvt_pk_f16_f32 v4, v8, v9
	v_cvt_pk_f16_f32 v5, v10, v11
	v_cvt_pk_f16_f32 v6, v12, v13
	v_cvt_pk_f16_f32 v7, v14, v15
	v_cvt_pk_f16_f32 v8, v16, v17
	v_cvt_pk_f16_f32 v9, v18, v19
	v_cvt_pk_f16_f32 v10, v20, v21
	v_cvt_pk_f16_f32 v11, v22, v23
	v_cvt_pk_f16_f32 v12, v24, v25
	v_cvt_pk_f16_f32 v13, v26, v27
	v_cvt_pk_f16_f32 v14, v28, v29
	v_cvt_pk_f16_f32 v15, v30, v31
	v_cvt_pk_f16_f32 v16, v32, v33
	v_cvt_pk_f16_f32 v17, v34, v35
	v_cvt_pk_f16_f32 v18, v36, v37
	v_cvt_pk_f16_f32 v19, v38, v39
	v_cvt_pk_f16_f32 v20, v40, v41
	v_cvt_pk_f16_f32 v21, v42, v43
	v_cvt_pk_f16_f32 v22, v44, v45
	v_cvt_pk_f16_f32 v23, v46, v47
	v_cvt_pk_f16_f32 v24, v48, v49
	v_cvt_pk_f16_f32 v25, v50, v51
	v_cvt_pk_f16_f32 v26, v52, v53
	v_cvt_pk_f16_f32 v27, v54, v55
	v_cvt_pk_f16_f32 v28, v56, v57
	v_cvt_pk_f16_f32 v29, v58, v59
	v_cvt_pk_f16_f32 v30, v60, v61
	v_cvt_pk_f16_f32 v31, v62, v63
	v_cvt_pk_f16_f32 v32, v64, v65
	v_cvt_pk_f16_f32 v33, v66, v67
	v_cvt_pk_f16_f32 v34, v68, v69
	v_cvt_pk_f16_f32 v35, v70, v71
	v_cvt_pk_f16_f32 v36, v72, v73
	v_cvt_pk_f16_f32 v37, v74, v75
	v_cvt_pk_f16_f32 v38, v76, v77
	v_cvt_pk_f16_f32 v39, v78, v79
	v_cvt_pk_f16_f32 v40, v80, v81
	v_cvt_pk_f16_f32 v41, v82, v83
	v_cvt_pk_f16_f32 v42, v84, v85
	v_cvt_pk_f16_f32 v43, v86, v87
	v_cvt_pk_f16_f32 v44, v88, v89
	v_cvt_pk_f16_f32 v45, v90, v91
	v_cvt_pk_f16_f32 v46, v92, v93
	v_cvt_pk_f16_f32 v47, v94, v95
	v_cvt_pk_f16_f32 v48, v96, v97
	v_cvt_pk_f16_f32 v49, v98, v99
	v_cvt_pk_f16_f32 v50, v100, v101
	v_cvt_pk_f16_f32 v51, v102, v103
	v_cvt_pk_f16_f32 v52, v104, v105
	v_cvt_pk_f16_f32 v53, v106, v107
	v_cvt_pk_f16_f32 v54, v108, v109
	v_cvt_pk_f16_f32 v55, v110, v111
	v_cvt_pk_f16_f32 v56, v112, v113
	v_cvt_pk_f16_f32 v57, v114, v115
	v_cvt_pk_f16_f32 v58, v116, v117
	v_cvt_pk_f16_f32 v59, v118, v119
	v_cvt_pk_f16_f32 v60, v120, v121
	v_cvt_pk_f16_f32 v61, v122, v123
	v_cvt_pk_f16_f32 v62, v126, v127
	v_cvt_pk_f16_f32 v63, v124, v125
	v_permlane32_swap_b32_e32 v0, v2
	v_permlane32_swap_b32_e32 v1, v3
	buffer_store_dwordx4 v[160:163], v153, s[44:47], 0 offen
	buffer_store_dwordx4 v[164:167], v154, s[44:47], 0 offen
	buffer_store_dwordx4 v[168:171], v155, s[44:47], 0 offen
	buffer_store_dwordx4 v[172:175], v156, s[44:47], 0 offen
	v_permlane32_swap_b32_e32 v4, v6
	v_permlane32_swap_b32_e32 v5, v7
	v_permlane32_swap_b32_e32 v8, v10
	v_permlane32_swap_b32_e32 v9, v11
	v_permlane32_swap_b32_e32 v12, v14
	v_permlane32_swap_b32_e32 v13, v15
	v_permlane32_swap_b32_e32 v16, v18
	v_permlane32_swap_b32_e32 v17, v19
	v_permlane32_swap_b32_e32 v20, v22
	v_permlane32_swap_b32_e32 v21, v23
	v_permlane32_swap_b32_e32 v24, v26
	v_permlane32_swap_b32_e32 v25, v27
	v_permlane32_swap_b32_e32 v28, v30
	v_permlane32_swap_b32_e32 v29, v31
	v_permlane32_swap_b32_e32 v32, v34
	v_permlane32_swap_b32_e32 v33, v35
	v_permlane32_swap_b32_e32 v36, v38
	v_permlane32_swap_b32_e32 v37, v39
	v_permlane32_swap_b32_e32 v40, v42
	v_permlane32_swap_b32_e32 v41, v43
	v_permlane32_swap_b32_e32 v44, v46
	v_permlane32_swap_b32_e32 v45, v47
	v_permlane32_swap_b32_e32 v48, v50
	v_permlane32_swap_b32_e32 v49, v51
	v_permlane32_swap_b32_e32 v52, v54
	v_permlane32_swap_b32_e32 v53, v55
	v_permlane32_swap_b32_e32 v56, v58
	v_permlane32_swap_b32_e32 v57, v59
	v_permlane32_swap_b32_e32 v60, v62
	v_permlane32_swap_b32_e32 v61, v63
	buffer_store_dwordx4 v[0:3], v185, s[12:15], 0 offen
	buffer_store_dwordx4 v[4:7], v189, s[12:15], 0 offen
	buffer_store_dwordx4 v[8:11], v190, s[12:15], 0 offen
	buffer_store_dwordx4 v[12:15], v191, s[12:15], 0 offen
	buffer_store_dwordx4 v[16:19], v192, s[12:15], 0 offen
	buffer_store_dwordx4 v[20:23], v193, s[12:15], 0 offen
	buffer_store_dwordx4 v[24:27], v194, s[12:15], 0 offen
	buffer_store_dwordx4 v[28:31], v187, s[12:15], 0 offen
	buffer_store_dwordx4 v[32:35], v177, s[12:15], 0 offen
	buffer_store_dwordx4 v[36:39], v184, s[12:15], 0 offen
	buffer_store_dwordx4 v[40:43], v183, s[12:15], 0 offen
	buffer_store_dwordx4 v[44:47], v152, s[12:15], 0 offen
	buffer_store_dwordx4 v[48:51], v153, s[12:15], 0 offen
	buffer_store_dwordx4 v[52:55], v154, s[12:15], 0 offen
	buffer_store_dwordx4 v[56:59], v155, s[12:15], 0 offen
	buffer_store_dwordx4 v[60:63], v156, s[12:15], 0 offen
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _bwd_kernel_fused_atomics_dkdvdq_noncausal
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 240
		.amdhsa_kernarg_size 216
		.amdhsa_user_sgpr_count 16
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 14
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 512
		.amdhsa_next_free_sgpr 96
		.amdhsa_accum_offset 256
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_bwd_kernel_fused_atomics_dkdvdq_noncausal, .Lfunc_end0-_bwd_kernel_fused_atomics_dkdvdq_noncausal
	.cfi_endproc
                                        ; -- End function
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.num_vgpr, 256
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.num_agpr, 256
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.numbered_sgpr, 61
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.num_named_barrier, 0
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.private_seg_size, 240
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.uses_vcc, 1
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.uses_flat_scratch, 0
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.has_dyn_sized_stack, 0
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.has_recursion, 0
	.set _bwd_kernel_fused_atomics_dkdvdq_noncausal.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20684
; TotalNumSgprs: 67
; NumVgprs: 256
; NumAgprs: 256
; TotalNumVgprs: 512
; ScratchSize: 240
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 63
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 512
; AccumOffset: 256
; Occupancy: 1
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 16
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 63
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1857                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1895                            ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0
.Linfo_string1:
	.asciz	"bwd.py"                        ; string offset=7
.Linfo_string2:
	.asciz	"/opt/conda/envs/py_3.10/lib/python3.10/site-packages/flash_attn-2.8.1-py3.10.egg/flash_attn/flash_attn_triton_amd" ; string offset=14
.Linfo_string3:
	.asciz	"_bwd_kernel_fused_atomics_dkdvdq_noncausal" ; string offset=128
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     256
    .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .offset:         164
        .size:           4
        .value_kind:     by_value
      - .offset:         168
        .size:           4
        .value_kind:     by_value
      - .offset:         172
        .size:           4
        .value_kind:     by_value
      - .offset:         176
        .size:           4
        .value_kind:     by_value
      - .offset:         180
        .size:           4
        .value_kind:     by_value
      - .offset:         184
        .size:           4
        .value_kind:     by_value
      - .offset:         188
        .size:           4
        .value_kind:     by_value
      - .offset:         192
        .size:           4
        .value_kind:     by_value
      - .offset:         196
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         200
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         208
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 216
    .max_flat_workgroup_size: 256
    .name:           _bwd_kernel_fused_atomics_dkdvdq_noncausal
    .private_segment_fixed_size: 240
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         _bwd_kernel_fused_atomics_dkdvdq_noncausal.kd
    .uses_dynamic_stack: false
    .vgpr_count:     512
    .vgpr_spill_count: 59
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx950
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
