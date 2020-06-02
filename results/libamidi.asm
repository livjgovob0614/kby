################################################################
##                       KICKASS DISASS                       ##
##                                                            ##
##                                    Powered by Capstone 4.0 ##
################################################################

Successfully loaded impl_sample/libamidi.so using loader ELF
Analyzing...
Adding proc at address 0x3000 (found by loader), type: <class 'int'>



Adding funcion AMidiDevice_getNumInputPorts from .dynsym at 0x35a0
   size 20
Adding funcion AMidiOutputPort_close from .dynsym at 0x3a18
   size 4
Adding funcion AMidiOutputPort_open from .dynsym at 0x35d0
   size 12
Adding funcion AMidiDevice_getNumOutputPorts from .dynsym at 0x35b8
   size 20
Adding funcion AMidiDevice_release from .dynsym at 0x3428
   size 352
Adding funcion AMidiInputPort_sendFlush from .dynsym at 0x3ce0
   size 156
Adding funcion AMidiOutputPort_receive from .dynsym at 0x3858
   size 104
Adding funcion AMidiDevice_fromJava from .dynsym at 0x3020
   size 1028
Adding funcion AMidiDevice_getType from .dynsym at 0x3588
   size 20
Adding funcion AMidiInputPort_close from .dynsym at 0x3ba0
   size 4
Adding funcion AMidiInputPort_open from .dynsym at 0x3b90
   size 12
Adding funcion AMidiInputPort_send from .dynsym at 0x3ba8
   size 8
Adding funcion AMidiInputPort_sendWithTimestamp from .dynsym at 0x3bb0
   size 304
Disassembly begins
Used 8 document pages for analysis
Analysis complete
start,end adr: 0x3000 0x539c

Start function at 0x3000
0x3000	000000f0	adrp 	x0, #0x6000                 
0x3004	00000091	add 	x0, x0, #0                   
0x3008	0e080014	b 	#0x5040                        
0x3020	fc0f1af8	str 	x28, [sp, #-0x60]!           
0x3024	fa6701a9	stp 	x26, x25, [sp, #0x10]        
0x3028	f85f02a9	stp 	x24, x23, [sp, #0x20]        
0x302c	f65703a9	stp 	x22, x21, [sp, #0x30]        
0x3030	f44f04a9	stp 	x20, x19, [sp, #0x40]        
0x3034	fd7b05a9	stp 	x29, x30, [sp, #0x50]        
0x3038	fd430191	add 	x29, sp, #0x50               
0x303c	ff8306d1	sub 	sp, sp, #0x1a0               
0x3040	58d03bd5	mrs 	x24, tpidr_el0               
0x3044	081740f9	ldr 	x8, [x24, #0x28]             
0x3048	a8831af8	stur 	x8, [x29, #-0x58]           
0x304c	810200b4	cbz 	x1, #0x309c                  
0x3050	f60300aa	mov 	x22, x0                      
0x3054	200000b0	adrp 	x0, #0x8000                 
0x3058	00000091	add 	x0, x0, #0                   
0x305c	f30302aa	mov 	x19, x2                      
0x3060	f50301aa	mov 	x21, x1                      
0x3064	fb070094	bl 	#0x5050                       
0x3068	39000090	adrp 	x25, #0x7000                
0x306c	e00316aa	mov 	x0, x22                      
0x3070	e10315aa	mov 	x1, x21                      
0x3074	39af43f9	ldr 	x25, [x25, #0x758]           
0x3078	c80240f9	ldr 	x8, [x22]                    
0x307c	220340f9	ldr 	x2, [x25]                    
0x3080	089541f9	ldr 	x8, [x8, #0x328]             
0x3084	00013fd6	blr 	x8                           
0x3088	200200b4	cbz 	x0, #0x30cc                  
0x308c	200000b0	adrp 	x0, #0x8000                 
0x3090	00000091	add 	x0, x0, #0                   
0x3094	f3070094	bl 	#0x5060                       
0x3098	07000014	b 	#0x30b4                        
0x30b4	081740f9	ldr 	x8, [x24, #0x28]             
0x30b8	a9835af8	ldur 	x9, [x29, #-0x58]           
0x30bc	1f0109eb	cmp 	x8, x9                       
0x30c0	011b0054	b.ne 	#0x3420                     
0x30c4	40e28412	movn 	w0, #0x2712                 
0x30c8	ce000014	b 	#0x3400                        
0x3400	ff830691	add 	sp, sp, #0x1a0               
0x3404	fd7b45a9	ldp 	x29, x30, [sp, #0x50]        
0x3408	f44f44a9	ldp 	x20, x19, [sp, #0x40]        
0x340c	f65743a9	ldp 	x22, x21, [sp, #0x30]        
0x3410	f85f42a9	ldp 	x24, x23, [sp, #0x20]        
0x3414	fa6741a9	ldp 	x26, x25, [sp, #0x10]        
0x3418	fc0746f8	ldr 	x28, [sp], #0x60             
0x341c	c0035fd6	ret 	                             
0x3420	3c070094	bl 	#0x5110                       
End function

0x3428	ff0301d1	sub 	sp, sp, #0x40                
0x342c	f50b00f9	str 	x21, [sp, #0x10]             
0x3430	f44f02a9	stp 	x20, x19, [sp, #0x20]        
0x3434	fd7b03a9	stp 	x29, x30, [sp, #0x30]        
0x3438	fdc30091	add 	x29, sp, #0x30               
0x343c	54d03bd5	mrs 	x20, tpidr_el0               
0x3440	881640f9	ldr 	x8, [x20, #0x28]             
0x3444	e80700f9	str 	x8, [sp, #8]                 
0x3448	400600b4	cbz 	x0, #0x3510                  
0x344c	080c40f9	ldr 	x8, [x0, #0x18]              
0x3450	f30300aa	mov 	x19, x0                      
0x3454	e80500b4	cbz 	x8, #0x3510                  
0x3458	600a40f9	ldr 	x0, [x19, #0x10]             
0x345c	c2008052	movz 	w2, #0x6                    
0x3460	2200a072	movk 	w2, #0x1, lsl #16           
0x3464	e1030091	mov 	x1, sp                       
0x3468	080040f9	ldr 	x8, [x0]                     
0x346c	081940f9	ldr 	x8, [x8, #0x30]              
0x3470	00013fd6	blr 	x8                           
0x3474	a0070035	cbnz 	w0, #0x3568                 
0x3478	200000b0	adrp 	x0, #0x8000                 
0x347c	00000091	add 	x0, x0, #0                   
0x3480	f4060094	bl 	#0x5050                       
0x3484	e00340f9	ldr 	x0, [sp]                     
0x3488	35000090	adrp 	x21, #0x7000                
0x348c	b5ae43f9	ldr 	x21, [x21, #0x758]           
0x3490	080040f9	ldr 	x8, [x0]                     
0x3494	610e40f9	ldr 	x1, [x19, #0x18]             
0x3498	a20240f9	ldr 	x2, [x21]                    
0x349c	089541f9	ldr 	x8, [x8, #0x328]             
0x34a0	00013fd6	blr 	x8                           
0x34a4	a00400b4	cbz 	x0, #0x3538                  
0x34a8	e00340f9	ldr 	x0, [sp]                     
0x34ac	e3031faa	mov 	x3, xzr                      
0x34b0	610e40f9	ldr 	x1, [x19, #0x18]             
0x34b4	a20240f9	ldr 	x2, [x21]                    
0x34b8	080040f9	ldr 	x8, [x0]                     
0x34bc	08b941f9	ldr 	x8, [x8, #0x370]             
0x34c0	00013fd6	blr 	x8                           
0x34c4	200000b0	adrp 	x0, #0x8000                 
0x34c8	00000091	add 	x0, x0, #0                   
0x34cc	e5060094	bl 	#0x5060                       
0x34d0	e00340f9	ldr 	x0, [sp]                     
0x34d4	610e40f9	ldr 	x1, [x19, #0x18]             
0x34d8	080040f9	ldr 	x8, [x0]                     
0x34dc	085940f9	ldr 	x8, [x8, #0xb0]              
0x34e0	00013fd6	blr 	x8                           
0x34e4	680240f9	ldr 	x8, [x19]                    
0x34e8	c80000b4	cbz 	x8, #0x3500                  
0x34ec	090140f9	ldr 	x9, [x8]                     
0x34f0	e10313aa	mov 	x1, x19                      
0x34f4	29815ef8	ldur 	x9, [x9, #-0x18]            
0x34f8	0001098b	add 	x0, x8, x9                   
0x34fc	ed060094	bl 	#0x50b0                       
0x3500	e00313aa	mov 	x0, x19                      
0x3504	07070094	bl 	#0x5120                       
0x3508	e0031f2a	mov 	w0, wzr                      
0x350c	02000014	b 	#0x3514                        
0x3514	881640f9	ldr 	x8, [x20, #0x28]             
0x3518	e90740f9	ldr 	x9, [sp, #8]                 
0x351c	1f0109eb	cmp 	x8, x9                       
0x3520	21020054	b.ne 	#0x3564                     
0x3524	fd7b43a9	ldp 	x29, x30, [sp, #0x30]        
0x3528	f44f42a9	ldp 	x20, x19, [sp, #0x20]        
0x352c	f50b40f9	ldr 	x21, [sp, #0x10]             
0x3530	ff030191	add 	sp, sp, #0x40                
0x3534	c0035fd6	ret 	                             
0x3564	eb060094	bl 	#0x5110                       
0x3568	e303002a	mov 	w3, w0                       
0x356c	e0fffff0	adrp 	x0, #0x2000                 
0x3570	e1fffff0	adrp 	x1, #0x2000                 
0x3574	e2fffff0	adrp 	x2, #0x2000                 
0x3578	00980291	add 	x0, x0, #0xa6                
0x357c	21d00291	add 	x1, x1, #0xb4                
0x3580	42ac0491	add 	x2, x2, #0x12b               
0x3584	eb060094	bl 	#0x5130                       
End function

0x3588	600000b4	cbz 	x0, #0x3594                  
0x358c	002040b9	ldr 	w0, [x0, #0x20]              
0x3590	c0035fd6	ret 	                             
0x35a0	600000b4	cbz 	x0, #0x35ac                  
0x35a4	002480b9	ldrsw 	x0, [x0, #0x24]            
0x35a8	c0035fd6	ret 	                             
0x35b8	600000b4	cbz 	x0, #0x35c4                  
0x35bc	002880b9	ldrsw 	x0, [x0, #0x28]            
0x35c0	c0035fd6	ret 	                             
0x35d0	e30302aa	mov 	x3, x2                       
0x35d4	e2031f2a	mov 	w2, wzr                      
0x35d8	02000014	b 	#0x35e0                        
End function

0x35e0	ff0302d1	sub 	sp, sp, #0x80                
0x35e4	fa6703a9	stp 	x26, x25, [sp, #0x30]        
0x35e8	f85f04a9	stp 	x24, x23, [sp, #0x40]        
0x35ec	f65705a9	stp 	x22, x21, [sp, #0x50]        
0x35f0	f44f06a9	stp 	x20, x19, [sp, #0x60]        
0x35f4	fd7b07a9	stp 	x29, x30, [sp, #0x70]        
0x35f8	fdc30191	add 	x29, sp, #0x70               
0x35fc	58d03bd5	mrs 	x24, tpidr_el0               
0x3600	081740f9	ldr 	x8, [x24, #0x28]             
0x3604	e81700f9	str 	x8, [sp, #0x28]              
0x3608	c00300b4	cbz 	x0, #0x3680                  
0x360c	f40300aa	mov 	x20, x0                      
0x3610	00058052	movz 	w0, #0x28                   
0x3614	f30303aa	mov 	x19, x3                      
0x3618	f703022a	mov 	w23, w2                      
0x361c	f503012a	mov 	w21, w1                      
0x3620	9c060094	bl 	#0x5090                       
0x3624	f60300aa	mov 	x22, x0                      
0x3628	c6060094	bl 	#0x5140                       
0x362c	c80240f9	ldr 	x8, [x22]                    
0x3630	e1830091	add 	x1, sp, #0x20                
0x3634	f61300f9	str 	x22, [sp, #0x20]             
0x3638	08815ef8	ldur 	x8, [x8, #-0x18]            
0x363c	c002088b	add 	x0, x22, x8                  
0x3640	98060094	bl 	#0x50a0                       
0x3644	960240f9	ldr 	x22, [x20]                   
0x3648	19008012	movn 	w25, #0                     
0x364c	f91b00b9	str 	w25, [sp, #0x18]             
0x3650	d7010034	cbz 	w23, #0x3688                 
0x3654	e81340f9	ldr 	x8, [sp, #0x20]              
0x3658	e80300f9	str 	x8, [sp]                     
0x365c	c80000b4	cbz 	x8, #0x3674                  
0x3660	090140f9	ldr 	x9, [x8]                     
0x3664	e1030091	mov 	x1, sp                       
0x3668	29815ef8	ldur 	x9, [x9, #-0x18]            
0x366c	0001098b	add 	x0, x8, x9                   
0x3670	8c060094	bl 	#0x50a0                       
0x3674	c80240f9	ldr 	x8, [x22]                    
0x3678	091140f9	ldr 	x9, [x8, #0x20]              
0x367c	0d000014	b 	#0x36b0                        
0x3680	74e28412	movn 	w20, #0x2713                
0x3684	68000014	b 	#0x3824                        
0x36b0	e8230091	add 	x8, sp, #8                   
0x36b4	e1030091	mov 	x1, sp                       
0x36b8	e3630091	add 	x3, sp, #0x18                
0x36bc	e00316aa	mov 	x0, x22                      
0x36c0	e203152a	mov 	w2, w21                      
0x36c4	20013fd6	blr 	x9                           
0x36c8	e80340f9	ldr 	x8, [sp]                     
0x36cc	c80000b4	cbz 	x8, #0x36e4                  
0x36d0	090140f9	ldr 	x9, [x8]                     
0x36d4	e1030091	mov 	x1, sp                       
0x36d8	29815ef8	ldur 	x9, [x9, #-0x18]            
0x36dc	0001098b	add 	x0, x8, x9                   
0x36e0	74060094	bl 	#0x50b0                       
0x36e4	e80b40b9	ldr 	w8, [sp, #8]                 
0x36e8	a8000034	cbz 	w8, #0x36fc                  
0x36ec	1f050231	cmn 	w8, #0x81                    
0x36f0	01050054	b.ne 	#0x3790                     
0x36f4	e30f40b9	ldr 	w3, [sp, #0xc]               
0x36f8	27000014	b 	#0x3794                        
0x3790	e3031f2a	mov 	w3, wzr                      
0x3794	e1fffff0	adrp 	x1, #0x2000                 
0x3798	e2fffff0	adrp 	x2, #0x2000                 
0x379c	21d00291	add 	x1, x1, #0xb4                
0x37a0	42340a91	add 	x2, x2, #0x28d               
0x37a4	e0071f32	orr 	w0, wzr, #6                  
0x37a8	32060094	bl 	#0x5070                       
0x37ac	f4e18412	movn 	w20, #0x270f                
0x37b0	e8230091	add 	x8, sp, #8                   
0x37b4	00210091	add 	x0, x8, #8                   
0x37b8	4a060094	bl 	#0x50e0                       
0x37bc	65060094	bl 	#0x5150                       
0x37c0	f51b40b9	ldr 	w21, [sp, #0x18]             
0x37c4	f30300aa	mov 	x19, x0                      
0x37c8	160040b9	ldr 	w22, [x0]                    
0x37cc	bf060031	cmn 	w21, #1                      
0x37d0	a0010054	b.eq 	#0x3804                     
0x37d4	28000090	adrp 	x8, #0x7000                 
0x37d8	08c543f9	ldr 	x8, [x8, #0x788]             
0x37dc	080100b4	cbz 	x8, #0x37fc                  
0x37e0	e1630091	add 	x1, sp, #0x18                
0x37e4	e0070032	orr 	w0, wzr, #3                  
0x37e8	5e060094	bl 	#0x5160                       
0x37ec	e10300aa	mov 	x1, x0                       
0x37f0	e003152a	mov 	w0, w21                      
0x37f4	5f060094	bl 	#0x5170                       
0x37f8	03000014	b 	#0x3804                        
0x37fc	e003152a	mov 	w0, w21                      
0x3800	60060094	bl 	#0x5180                       
0x3804	760200b9	str 	w22, [x19]                   
0x3808	e81340f9	ldr 	x8, [sp, #0x20]              
0x380c	c80000b4	cbz 	x8, #0x3824                  
0x3810	090140f9	ldr 	x9, [x8]                     
0x3814	e1830091	add 	x1, sp, #0x20                
0x3818	29815ef8	ldur 	x9, [x9, #-0x18]            
0x381c	0001098b	add 	x0, x8, x9                   
0x3820	24060094	bl 	#0x50b0                       
0x3824	081740f9	ldr 	x8, [x24, #0x28]             
0x3828	e91740f9	ldr 	x9, [sp, #0x28]              
0x382c	1f0109eb	cmp 	x8, x9                       
0x3830	21010054	b.ne 	#0x3854                     
0x3834	e003142a	mov 	w0, w20                      
0x3838	fd7b47a9	ldp 	x29, x30, [sp, #0x70]        
0x383c	f44f46a9	ldp 	x20, x19, [sp, #0x60]        
0x3840	f65745a9	ldp 	x22, x21, [sp, #0x50]        
0x3844	f85f44a9	ldp 	x24, x23, [sp, #0x40]        
0x3848	fa6743a9	ldp 	x26, x25, [sp, #0x30]        
0x384c	ff030291	add 	sp, sp, #0x80                
0x3850	c0035fd6	ret 	                             
0x3854	2f060094	bl 	#0x5110                       
0x3858	ffc300d1	sub 	sp, sp, #0x30                
0x385c	f30b00f9	str 	x19, [sp, #0x10]             
0x3860	fd7b02a9	stp 	x29, x30, [sp, #0x20]        
0x3864	fd830091	add 	x29, sp, #0x20               
0x3868	53d03bd5	mrs 	x19, tpidr_el0               
0x386c	e80300aa	mov 	x8, x0                       
0x3870	691640f9	ldr 	x9, [x19, #0x28]             
0x3874	a0028092	movn 	x0, #0x15                   
0x3878	e90700f9	str 	x9, [sp, #8]                 
0x387c	080100b4	cbz 	x8, #0x389c                  
0x3880	e20000b4	cbz 	x2, #0x389c                  
0x3884	e0030091	mov 	x0, sp                       
0x3888	e80300f9	str 	x8, [sp]                     
0x388c	0d000094	bl 	#0x38c0                       
0x3890	e80340f9	ldr 	x8, [sp]                     
0x3894	e9030032	orr 	w9, wzr, #1                  
0x3898	09fd9f88	stlr 	w9, [x8]                    
0x389c	681640f9	ldr 	x8, [x19, #0x28]             
0x38a0	e90740f9	ldr 	x9, [sp, #8]                 
0x38a4	1f0109eb	cmp 	x8, x9                       
0x38a8	a1000054	b.ne 	#0x38bc                     
0x38ac	fd7b42a9	ldp 	x29, x30, [sp, #0x20]        
0x38b0	f30b40f9	ldr 	x19, [sp, #0x10]             
0x38b4	ffc30091	add 	sp, sp, #0x30                
0x38b8	c0035fd6	ret 	                             
0x38bc	15060094	bl 	#0x5110                       
End function

0x38c0	fc0f1af8	str 	x28, [sp, #-0x60]!           
0x38c4	fa6701a9	stp 	x26, x25, [sp, #0x10]        
0x38c8	f85f02a9	stp 	x24, x23, [sp, #0x20]        
0x38cc	f65703a9	stp 	x22, x21, [sp, #0x30]        
0x38d0	f44f04a9	stp 	x20, x19, [sp, #0x40]        
0x38d4	fd7b05a9	stp 	x29, x30, [sp, #0x50]        
0x38d8	fd430191	add 	x29, sp, #0x50               
0x38dc	ff4310d1	sub 	sp, sp, #0x410               
0x38e0	5ad03bd5	mrs 	x26, tpidr_el0               
0x38e4	f40305aa	mov 	x20, x5                      
0x38e8	481740f9	ldr 	x8, [x26, #0x28]             
0x38ec	f30304aa	mov 	x19, x4                      
0x38f0	f60303aa	mov 	x22, x3                      
0x38f4	f50302aa	mov 	x21, x2                      
0x38f8	f80300aa	mov 	x24, x0                      
0x38fc	a8831af8	stur 	x8, [x29, #-0x58]           
0x3900	f70301aa	mov 	x23, x1                      
0x3904	080040f9	ldr 	x8, [x0]                     
0x3908	e9031f32	orr 	w9, wzr, #2                  
0x390c	0afd5f88	ldaxr 	w10, [x8]                  
0x3910	5f050071	cmp 	w10, #1                      
0x3914	e1050054	b.ne 	#0x39d0                     
0x3918	09fd0a88	stlxr 	w10, w9, [x8]              
0x391c	8affff35	cbnz 	w10, #0x390c                
0x3920	080340f9	ldr 	x8, [x24]                    
0x3924	e9030032	orr 	w9, wzr, #1                  
0x3928	a08301d1	sub 	x0, x29, #0x60               
0x392c	e1030032	orr 	w1, wzr, #1                  
0x3930	e2031f2a	mov 	w2, wzr                      
0x3934	081940b9	ldr 	w8, [x8, #0x18]              
0x3938	e3031d32	orr 	w3, wzr, #8                  
0x393c	a8273429	stp 	w8, w9, [x29, #-0x60]        
0x3940	14060094	bl 	#0x5190                       
0x3944	1f040071	cmp 	w0, #1                       
0x3948	ab040054	b.lt 	#0x39dc                     
0x394c	080340f9	ldr 	x8, [x24]                    
0x3950	e1030091	mov 	x1, sp                       
0x3954	e2031632	orr 	w2, wzr, #0x400              
0x3958	e3031632	orr 	w3, wzr, #0x400              
0x395c	001940b9	ldr 	w0, [x8, #0x18]              
0x3960	10060094	bl 	#0x51a0                       
0x3964	f80300aa	mov 	x24, x0                      
0x3968	e0e18492	movn 	x0, #0x270f                 
0x396c	1f1300f1	cmp 	x24, #4                      
0x3970	80030054	b.eq 	#0x39e0                     
0x3974	1f0700f1	cmp 	x24, #1                      
0x3978	4b030054	b.lt 	#0x39e0                     
0x397c	e9034039	ldrb 	w9, [sp]                    
0x3980	f9031faa	mov 	x25, xzr                     
0x3984	082700f1	subs 	x8, x24, #9                 
0x3988	e90200b9	str 	w9, [x23]                    
0x398c	cb010054	b.lt 	#0x39c4                     
0x3990	3f050071	cmp 	w9, #1                       
0x3994	81010054	b.ne 	#0x39c4                     
0x3998	1f0116eb	cmp 	x8, x22                      
0x399c	f7030091	mov 	x23, sp                      
0x39a0	1931969a	csel 	x25, x8, x22, lo            
0x39a4	e10240b2	orr 	x1, x23, #1                  
0x39a8	e00315aa	mov 	x0, x21                      
0x39ac	e20319aa	mov 	x2, x25                      
0x39b0	00060094	bl 	#0x51b0                       
0x39b4	940000b4	cbz 	x20, #0x39c4                 
0x39b8	e802188b	add 	x8, x23, x24                 
0x39bc	08815ff8	ldur 	x8, [x8, #-8]               
0x39c0	880200f9	str 	x8, [x20]                    
0x39c4	e0030032	orr 	w0, wzr, #1                  
0x39c8	790200f9	str 	x25, [x19]                   
0x39cc	05000014	b 	#0x39e0                        
0x39d0	e0e18492	movn 	x0, #0x270f                 
0x39d4	5f3f03d5	clrex 	                           
0x39d8	02000014	b 	#0x39e0                        
0x39dc	e0031faa	mov 	x0, xzr                      
0x39e0	481740f9	ldr 	x8, [x26, #0x28]             
0x39e4	a9835af8	ldur 	x9, [x29, #-0x58]           
0x39e8	1f0109eb	cmp 	x8, x9                       
0x39ec	21010054	b.ne 	#0x3a10                     
0x39f0	ff431091	add 	sp, sp, #0x410               
0x39f4	fd7b45a9	ldp 	x29, x30, [sp, #0x50]        
0x39f8	f44f44a9	ldp 	x20, x19, [sp, #0x40]        
0x39fc	f65743a9	ldp 	x22, x21, [sp, #0x30]        
0x3a00	f85f42a9	ldp 	x24, x23, [sp, #0x20]        
0x3a04	fa6741a9	ldp 	x26, x25, [sp, #0x10]        
0x3a08	fc0746f8	ldr 	x28, [sp], #0x60             
0x3a0c	c0035fd6	ret 	                             
0x3a10	c0050094	bl 	#0x5110                       
0x3a18	02000014	b 	#0x3a20                        
End function

0x3a20	ffc301d1	sub 	sp, sp, #0x70                
0x3a24	f91300f9	str 	x25, [sp, #0x20]             
0x3a28	f85f03a9	stp 	x24, x23, [sp, #0x30]        
0x3a2c	f65704a9	stp 	x22, x21, [sp, #0x40]        
0x3a30	f44f05a9	stp 	x20, x19, [sp, #0x50]        
0x3a34	fd7b06a9	stp 	x29, x30, [sp, #0x60]        
0x3a38	fd830191	add 	x29, sp, #0x60               
0x3a3c	58d03bd5	mrs 	x24, tpidr_el0               
0x3a40	081740f9	ldr 	x8, [x24, #0x28]             
0x3a44	e80f00f9	str 	x8, [sp, #0x18]              
0x3a48	a00800b4	cbz 	x0, #0x3b5c                  
0x3a4c	f30300aa	mov 	x19, x0                      
0x3a50	e8030032	orr 	w8, wzr, #1                  
0x3a54	e903082a	mov 	w9, w8                       
0x3a58	68fe5f88	ldaxr 	w8, [x19]                  
0x3a5c	1f01096b	cmp 	w8, w9                       
0x3a60	a1000054	b.ne 	#0x3a74                     
0x3a64	7ffe0988	stlxr 	w9, wzr, [x19]             
0x3a68	c9000034	cbz 	w9, #0x3a80                  
0x3a6c	48ffff35	cbnz 	w8, #0x3a54                 
0x3a70	3b000014	b 	#0x3b5c                        
0x3a74	5f3f03d5	clrex 	                           
0x3a78	e8feff35	cbnz 	w8, #0x3a54                 
0x3a7c	38000014	b 	#0x3b5c                        
0x3a80	680640f9	ldr 	x8, [x19, #8]                
0x3a84	74420091	add 	x20, x19, #0x10              
0x3a88	e10314aa	mov 	x1, x20                      
0x3a8c	000140f9	ldr 	x0, [x8]                     
0x3a90	080040f9	ldr 	x8, [x0]                     
0x3a94	091940f9	ldr 	x9, [x8, #0x30]              
0x3a98	e8230091	add 	x8, sp, #8                   
0x3a9c	20013fd6	blr 	x9                           
0x3aa0	e80b40b9	ldr 	w8, [sp, #8]                 
0x3aa4	88010034	cbz 	w8, #0x3ad4                  
0x3aa8	1f050231	cmn 	w8, #0x81                    
0x3aac	61000054	b.ne 	#0x3ab8                     
0x3ab0	e30f40b9	ldr 	w3, [sp, #0xc]               
0x3ab4	02000014	b 	#0x3abc                        
0x3ab8	e3031f2a	mov 	w3, wzr                      
0x3abc	e1fffff0	adrp 	x1, #0x2000                 
0x3ac0	e2fffff0	adrp 	x2, #0x2000                 
0x3ac4	21d00291	add 	x1, x1, #0xb4                
0x3ac8	42940791	add 	x2, x2, #0x1e5               
0x3acc	e0071f32	orr 	w0, wzr, #6                  
0x3ad0	68050094	bl 	#0x5070                       
0x3ad4	9f050094	bl 	#0x5150                       
0x3ad8	f60313aa	mov 	x22, x19                     
0x3adc	f50300aa	mov 	x21, x0                      
0x3ae0	d78e41b8	ldr 	w23, [x22, #0x18]!           
0x3ae4	190040b9	ldr 	w25, [x0]                    
0x3ae8	ff060031	cmn 	w23, #1                      
0x3aec	a0010054	b.eq 	#0x3b20                     
0x3af0	28000090	adrp 	x8, #0x7000                 
0x3af4	08c543f9	ldr 	x8, [x8, #0x788]             
0x3af8	080100b4	cbz 	x8, #0x3b18                  
0x3afc	e0070032	orr 	w0, wzr, #3                  
0x3b00	e10316aa	mov 	x1, x22                      
0x3b04	97050094	bl 	#0x5160                       
0x3b08	e10300aa	mov 	x1, x0                       
0x3b0c	e003172a	mov 	w0, w23                      
0x3b10	98050094	bl 	#0x5170                       
0x3b14	03000014	b 	#0x3b20                        
0x3b18	e003172a	mov 	w0, w23                      
0x3b1c	99050094	bl 	#0x5180                       
0x3b20	08008012	movn 	w8, #0                      
0x3b24	c80200b9	str 	w8, [x22]                    
0x3b28	b90200b9	str 	w25, [x21]                   
0x3b2c	880240f9	ldr 	x8, [x20]                    
0x3b30	c80000b4	cbz 	x8, #0x3b48                  
0x3b34	090140f9	ldr 	x9, [x8]                     
0x3b38	e10314aa	mov 	x1, x20                      
0x3b3c	29815ef8	ldur 	x9, [x9, #-0x18]            
0x3b40	0001098b	add 	x0, x8, x9                   
0x3b44	5b050094	bl 	#0x50b0                       
0x3b48	e00313aa	mov 	x0, x19                      
0x3b4c	75050094	bl 	#0x5120                       
0x3b50	e8230091	add 	x8, sp, #8                   
0x3b54	00210091	add 	x0, x8, #8                   
0x3b58	62050094	bl 	#0x50e0                       
0x3b5c	081740f9	ldr 	x8, [x24, #0x28]             
0x3b60	e90f40f9	ldr 	x9, [sp, #0x18]              
0x3b64	1f0109eb	cmp 	x8, x9                       
0x3b68	01010054	b.ne 	#0x3b88                     
0x3b6c	fd7b46a9	ldp 	x29, x30, [sp, #0x60]        
0x3b70	f44f45a9	ldp 	x20, x19, [sp, #0x50]        
0x3b74	f65744a9	ldp 	x22, x21, [sp, #0x40]        
0x3b78	f85f43a9	ldp 	x24, x23, [sp, #0x30]        
0x3b7c	f91340f9	ldr 	x25, [sp, #0x20]             
0x3b80	ffc30191	add 	sp, sp, #0x70                
0x3b84	c0035fd6	ret 	                             
0x3b88	62050094	bl 	#0x5110                       
0x3b90	e30302aa	mov 	x3, x2                       
0x3b94	e2030032	orr 	w2, wzr, #1                  
0x3b98	92feff17	b 	#0x35e0                        
End function

0x3ba0	a0ffff17	b 	#0x3a20                        
End function

0x3ba8	e3031faa	mov 	x3, xzr                      
0x3bac	85050014	b 	#0x51c0                        
End function

0x3bb0	fc6fbaa9	stp 	x28, x27, [sp, #-0x60]!      
0x3bb4	fa6701a9	stp 	x26, x25, [sp, #0x10]        
0x3bb8	f85f02a9	stp 	x24, x23, [sp, #0x20]        
0x3bbc	f65703a9	stp 	x22, x21, [sp, #0x30]        
0x3bc0	f44f04a9	stp 	x20, x19, [sp, #0x40]        
0x3bc4	fd7b05a9	stp 	x29, x30, [sp, #0x50]        
0x3bc8	fd430191	add 	x29, sp, #0x50               
0x3bcc	ff8310d1	sub 	sp, sp, #0x420               
0x3bd0	49d03bd5	mrs 	x9, tpidr_el0                
0x3bd4	73e28492	movn 	x19, #0x2713                
0x3bd8	281540f9	ldr 	x8, [x9, #0x28]              
0x3bdc	a8031af8	stur 	x8, [x29, #-0x60]           
0x3be0	400600b4	cbz 	x0, #0x3ca8                  
0x3be4	f60301aa	mov 	x22, x1                      
0x3be8	010600b4	cbz 	x1, #0x3ca8                  
0x3bec	f50302aa	mov 	x21, x2                      
0x3bf0	e90300f9	str 	x9, [sp]                     
0x3bf4	620400b4	cbz 	x2, #0x3c80                  
0x3bf8	e8430091	add 	x8, sp, #0x10                
0x3bfc	f40303aa	mov 	x20, x3                      
0x3c00	f70300aa	mov 	x23, x0                      
0x3c04	f3031faa	mov 	x19, xzr                     
0x3c08	fc7e8052	movz 	w28, #0x3f7                 
0x3c0c	180140b2	orr 	x24, x8, #1                  
0x3c10	fb030032	orr 	w27, wzr, #1                 
0x3c14	a80213cb	sub 	x8, x21, x19                 
0x3c18	f40700f9	str 	x20, [sp, #8]                
0x3c1c	1fdd0ff1	cmp 	x8, #0x3f7                   
0x3c20	fb430039	strb 	w27, [sp, #0x10]            
0x3c24	1a319c9a	csel 	x26, x8, x28, lo            
0x3c28	c102138b	add 	x1, x22, x19                 
0x3c2c	e00318aa	mov 	x0, x24                      
0x3c30	e2031aaa	mov 	x2, x26                      
0x3c34	e3270032	orr 	w3, wzr, #0x3ff              
0x3c38	66050094	bl 	#0x51d0                       
0x3c3c	e80740f9	ldr 	x8, [sp, #8]                 
0x3c40	59270091	add 	x25, x26, #9                 
0x3c44	e01a40b9	ldr 	w0, [x23, #0x18]             
0x3c48	e1430091	add 	x1, sp, #0x10                
0x3c4c	e20319aa	mov 	x2, x25                      
0x3c50	e3031632	orr 	w3, wzr, #0x400              
0x3c54	086b3af8	str 	x8, [x24, x26]               
0x3c58	62050094	bl 	#0x51e0                       
0x3c5c	4002f8b7	tbnz 	x0, #0x3f, #0x3ca4          
0x3c60	e40300aa	mov 	x4, x0                       
0x3c64	1f0019eb	cmp 	x0, x25                      
0x3c68	0b010054	b.lt 	#0x3c88                     
0x3c6c	6802048b	add 	x8, x19, x4                  
0x3c70	132500d1	sub 	x19, x8, #9                  
0x3c74	7f0215eb	cmp 	x19, x21                     
0x3c78	e3fcff54	b.lo 	#0x3c14                     
0x3c7c	0a000014	b 	#0x3ca4                        
0x3c80	f3031faa	mov 	x19, xzr                     
0x3c84	08000014	b 	#0x3ca4                        
0x3c88	e1fffff0	adrp 	x1, #0x2000                 
0x3c8c	e2fffff0	adrp 	x2, #0x2000                 
0x3c90	21d00291	add 	x1, x1, #0xb4                
0x3c94	42c40891	add 	x2, x2, #0x231               
0x3c98	e0071f32	orr 	w0, wzr, #6                  
0x3c9c	e30319aa	mov 	x3, x25                      
0x3ca0	f4040094	bl 	#0x5070                       
0x3ca4	e90340f9	ldr 	x9, [sp]                     
0x3ca8	281540f9	ldr 	x8, [x9, #0x28]              
0x3cac	a9035af8	ldur 	x9, [x29, #-0x60]           
0x3cb0	1f0109eb	cmp 	x8, x9                       
0x3cb4	41010054	b.ne 	#0x3cdc                     
0x3cb8	e00313aa	mov 	x0, x19                      
0x3cbc	ff831091	add 	sp, sp, #0x420               
0x3cc0	fd7b45a9	ldp 	x29, x30, [sp, #0x50]        
0x3cc4	f44f44a9	ldp 	x20, x19, [sp, #0x40]        
0x3cc8	f65743a9	ldp 	x22, x21, [sp, #0x30]        
0x3ccc	f85f42a9	ldp 	x24, x23, [sp, #0x20]        
0x3cd0	fa6741a9	ldp 	x26, x25, [sp, #0x10]        
0x3cd4	fc6fc6a8	ldp 	x28, x27, [sp], #0x60        
0x3cd8	c0035fd6	ret 	                             
0x3cdc	0d050094	bl 	#0x5110                       
End function

0x3ce0	ffc300d1	sub 	sp, sp, #0x30                
0x3ce4	f30b00f9	str 	x19, [sp, #0x10]             
0x3ce8	fd7b02a9	stp 	x29, x30, [sp, #0x20]        
0x3cec	fd830091	add 	x29, sp, #0x20               
0x3cf0	53d03bd5	mrs 	x19, tpidr_el0               
0x3cf4	681640f9	ldr 	x8, [x19, #0x28]             
0x3cf8	e80700f9	str 	x8, [sp, #8]                 
0x3cfc	800100b4	cbz 	x0, #0x3d2c                  
0x3d00	001840b9	ldr 	w0, [x0, #0x18]              
0x3d04	e8031f32	orr 	w8, wzr, #2                  
0x3d08	e1130091	add 	x1, sp, #4                   
0x3d0c	e2030032	orr 	w2, wzr, #1                  
0x3d10	e3030032	orr 	w3, wzr, #1                  
0x3d14	e8130039	strb 	w8, [sp, #4]                
0x3d18	32050094	bl 	#0x51e0                       
0x3d1c	1f0000f1	cmp 	x0, #0                       
0x3d20	ad000054	b.le 	#0x3d34                     
0x3d24	e0031f2a	mov 	w0, wzr                      
0x3d28	0c000014	b 	#0x3d58                        
0x3d34	e1fffff0	adrp 	x1, #0x2000                 
0x3d38	e2fffff0	adrp 	x2, #0x2000                 
0x3d3c	e40300aa	mov 	x4, x0                       
0x3d40	21d00291	add 	x1, x1, #0xb4                
0x3d44	42740591	add 	x2, x2, #0x15d               
0x3d48	e0071f32	orr 	w0, wzr, #6                  
0x3d4c	e3030032	orr 	w3, wzr, #1                  
0x3d50	c8040094	bl 	#0x5070                       
0x3d54	20e28412	movn 	w0, #0x2711                 
0x3d58	681640f9	ldr 	x8, [x19, #0x28]             
0x3d5c	e90740f9	ldr 	x9, [sp, #8]                 
0x3d60	1f0109eb	cmp 	x8, x9                       
0x3d64	a1000054	b.ne 	#0x3d78                     
0x3d68	fd7b42a9	ldp 	x29, x30, [sp, #0x20]        
0x3d6c	f30b40f9	ldr 	x19, [sp, #0x10]             
0x3d70	ffc30091	add 	sp, sp, #0x30                
0x3d74	c0035fd6	ret 	                             
0x3d78	e6040094	bl 	#0x5110                       
End function

0x5040	100000d0	adrp 	x16, #0x7000                
0x5044	11e243f9	ldr 	x17, [x16, #0x7c0]           
0x5048	10021f91	add 	x16, x16, #0x7c0             
0x504c	20021fd6	br 	x17                           
0x5050	100000d0	adrp 	x16, #0x7000                
0x5054	11e643f9	ldr 	x17, [x16, #0x7c8]           
0x5058	10221f91	add 	x16, x16, #0x7c8             
0x505c	20021fd6	br 	x17                           
0x5060	100000d0	adrp 	x16, #0x7000                
0x5064	11ea43f9	ldr 	x17, [x16, #0x7d0]           
0x5068	10421f91	add 	x16, x16, #0x7d0             
0x506c	20021fd6	br 	x17                           
0x5070	100000d0	adrp 	x16, #0x7000                
0x5074	11ee43f9	ldr 	x17, [x16, #0x7d8]           
0x5078	10621f91	add 	x16, x16, #0x7d8             
0x507c	20021fd6	br 	x17                           
0x5080	100000d0	adrp 	x16, #0x7000                
0x5084	11f243f9	ldr 	x17, [x16, #0x7e0]           
0x5088	10821f91	add 	x16, x16, #0x7e0             
0x508c	20021fd6	br 	x17                           
0x5090	100000d0	adrp 	x16, #0x7000                
0x5094	11f643f9	ldr 	x17, [x16, #0x7e8]           
0x5098	10a21f91	add 	x16, x16, #0x7e8             
0x509c	20021fd6	br 	x17                           
0x50a0	100000d0	adrp 	x16, #0x7000                
0x50a4	11fa43f9	ldr 	x17, [x16, #0x7f0]           
0x50a8	10c21f91	add 	x16, x16, #0x7f0             
0x50ac	20021fd6	br 	x17                           
0x50b0	100000d0	adrp 	x16, #0x7000                
0x50b4	11fe43f9	ldr 	x17, [x16, #0x7f8]           
0x50b8	10e21f91	add 	x16, x16, #0x7f8             
0x50bc	20021fd6	br 	x17                           
0x50c0	100000d0	adrp 	x16, #0x7000                
0x50c4	110244f9	ldr 	x17, [x16, #0x800]           
0x50c8	10022091	add 	x16, x16, #0x800             
0x50cc	20021fd6	br 	x17                           
0x50d0	100000d0	adrp 	x16, #0x7000                
0x50d4	110644f9	ldr 	x17, [x16, #0x808]           
0x50d8	10222091	add 	x16, x16, #0x808             
0x50dc	20021fd6	br 	x17                           
0x50e0	100000d0	adrp 	x16, #0x7000                
0x50e4	110a44f9	ldr 	x17, [x16, #0x810]           
0x50e8	10422091	add 	x16, x16, #0x810             
0x50ec	20021fd6	br 	x17                           
0x50f0	100000d0	adrp 	x16, #0x7000                
0x50f4	110e44f9	ldr 	x17, [x16, #0x818]           
0x50f8	10622091	add 	x16, x16, #0x818             
0x50fc	20021fd6	br 	x17                           
0x5100	100000d0	adrp 	x16, #0x7000                
0x5104	111244f9	ldr 	x17, [x16, #0x820]           
0x5108	10822091	add 	x16, x16, #0x820             
0x510c	20021fd6	br 	x17                           
0x5110	100000d0	adrp 	x16, #0x7000                
0x5114	111644f9	ldr 	x17, [x16, #0x828]           
0x5118	10a22091	add 	x16, x16, #0x828             
0x511c	20021fd6	br 	x17                           
0x5120	100000d0	adrp 	x16, #0x7000                
0x5124	111a44f9	ldr 	x17, [x16, #0x830]           
0x5128	10c22091	add 	x16, x16, #0x830             
0x512c	20021fd6	br 	x17                           
0x5130	100000d0	adrp 	x16, #0x7000                
0x5134	111e44f9	ldr 	x17, [x16, #0x838]           
0x5138	10e22091	add 	x16, x16, #0x838             
0x513c	20021fd6	br 	x17                           
0x5140	100000d0	adrp 	x16, #0x7000                
0x5144	112244f9	ldr 	x17, [x16, #0x840]           
0x5148	10022191	add 	x16, x16, #0x840             
0x514c	20021fd6	br 	x17                           
0x5150	100000d0	adrp 	x16, #0x7000                
0x5154	112644f9	ldr 	x17, [x16, #0x848]           
0x5158	10222191	add 	x16, x16, #0x848             
0x515c	20021fd6	br 	x17                           
0x5160	100000d0	adrp 	x16, #0x7000                
0x5164	112a44f9	ldr 	x17, [x16, #0x850]           
0x5168	10422191	add 	x16, x16, #0x850             
0x516c	20021fd6	br 	x17                           
0x5170	100000d0	adrp 	x16, #0x7000                
0x5174	112e44f9	ldr 	x17, [x16, #0x858]           
0x5178	10622191	add 	x16, x16, #0x858             
0x517c	20021fd6	br 	x17                           
0x5180	100000d0	adrp 	x16, #0x7000                
0x5184	113244f9	ldr 	x17, [x16, #0x860]           
0x5188	10822191	add 	x16, x16, #0x860             
0x518c	20021fd6	br 	x17                           
0x5190	100000d0	adrp 	x16, #0x7000                
0x5194	113644f9	ldr 	x17, [x16, #0x868]           
0x5198	10a22191	add 	x16, x16, #0x868             
0x519c	20021fd6	br 	x17                           
0x51a0	100000d0	adrp 	x16, #0x7000                
0x51a4	113a44f9	ldr 	x17, [x16, #0x870]           
0x51a8	10c22191	add 	x16, x16, #0x870             
0x51ac	20021fd6	br 	x17                           
0x51b0	100000d0	adrp 	x16, #0x7000                
0x51b4	113e44f9	ldr 	x17, [x16, #0x878]           
0x51b8	10e22191	add 	x16, x16, #0x878             
0x51bc	20021fd6	br 	x17                           
0x51c0	100000d0	adrp 	x16, #0x7000                
0x51c4	114244f9	ldr 	x17, [x16, #0x880]           
0x51c8	10022291	add 	x16, x16, #0x880             
0x51cc	20021fd6	br 	x17                           
0x51d0	100000d0	adrp 	x16, #0x7000                
0x51d4	114644f9	ldr 	x17, [x16, #0x888]           
0x51d8	10222291	add 	x16, x16, #0x888             
0x51dc	20021fd6	br 	x17                           
0x51e0	100000d0	adrp 	x16, #0x7000                
0x51e4	114a44f9	ldr 	x17, [x16, #0x890]           
0x51e8	10422291	add 	x16, x16, #0x890             
0x51ec	20021fd6	br 	x17                           
0x51f0	100000d0	adrp 	x16, #0x7000                
0x51f4	114e44f9	ldr 	x17, [x16, #0x898]           
0x51f8	10622291	add 	x16, x16, #0x898             
0x51fc	20021fd6	br 	x17                           
0x5200	100000d0	adrp 	x16, #0x7000                
0x5204	115244f9	ldr 	x17, [x16, #0x8a0]           
0x5208	10822291	add 	x16, x16, #0x8a0             
0x520c	20021fd6	br 	x17                           
0x5210	100000d0	adrp 	x16, #0x7000                
0x5214	115644f9	ldr 	x17, [x16, #0x8a8]           
0x5218	10a22291	add 	x16, x16, #0x8a8             
0x521c	20021fd6	br 	x17                           
0x5220	100000d0	adrp 	x16, #0x7000                
0x5224	115a44f9	ldr 	x17, [x16, #0x8b0]           
0x5228	10c22291	add 	x16, x16, #0x8b0             
0x522c	20021fd6	br 	x17                           
0x5230	100000d0	adrp 	x16, #0x7000                
0x5234	115e44f9	ldr 	x17, [x16, #0x8b8]           
0x5238	10e22291	add 	x16, x16, #0x8b8             
0x523c	20021fd6	br 	x17                           
0x5240	100000d0	adrp 	x16, #0x7000                
0x5244	116244f9	ldr 	x17, [x16, #0x8c0]           
0x5248	10022391	add 	x16, x16, #0x8c0             
0x524c	20021fd6	br 	x17                           
0x5250	100000d0	adrp 	x16, #0x7000                
0x5254	116644f9	ldr 	x17, [x16, #0x8c8]           
0x5258	10222391	add 	x16, x16, #0x8c8             
0x525c	20021fd6	br 	x17                           
0x5260	100000d0	adrp 	x16, #0x7000                
0x5264	116a44f9	ldr 	x17, [x16, #0x8d0]           
0x5268	10422391	add 	x16, x16, #0x8d0             
0x526c	20021fd6	br 	x17                           
0x5270	100000d0	adrp 	x16, #0x7000                
0x5274	116e44f9	ldr 	x17, [x16, #0x8d8]           
0x5278	10622391	add 	x16, x16, #0x8d8             
0x527c	20021fd6	br 	x17                           
0x5280	100000d0	adrp 	x16, #0x7000                
0x5284	117244f9	ldr 	x17, [x16, #0x8e0]           
0x5288	10822391	add 	x16, x16, #0x8e0             
0x528c	20021fd6	br 	x17                           
0x5290	100000d0	adrp 	x16, #0x7000                
0x5294	117644f9	ldr 	x17, [x16, #0x8e8]           
0x5298	10a22391	add 	x16, x16, #0x8e8             
0x529c	20021fd6	br 	x17                           
0x52a0	100000d0	adrp 	x16, #0x7000                
0x52a4	117a44f9	ldr 	x17, [x16, #0x8f0]           
0x52a8	10c22391	add 	x16, x16, #0x8f0             
0x52ac	20021fd6	br 	x17                           
0x52b0	100000d0	adrp 	x16, #0x7000                
0x52b4	117e44f9	ldr 	x17, [x16, #0x8f8]           
0x52b8	10e22391	add 	x16, x16, #0x8f8             
0x52bc	20021fd6	br 	x17                           
0x52c0	100000d0	adrp 	x16, #0x7000                
0x52c4	118244f9	ldr 	x17, [x16, #0x900]           
0x52c8	10022491	add 	x16, x16, #0x900             
0x52cc	20021fd6	br 	x17                           
0x52d0	100000d0	adrp 	x16, #0x7000                
0x52d4	118644f9	ldr 	x17, [x16, #0x908]           
0x52d8	10222491	add 	x16, x16, #0x908             
0x52dc	20021fd6	br 	x17                           
0x52e0	100000d0	adrp 	x16, #0x7000                
0x52e4	118a44f9	ldr 	x17, [x16, #0x910]           
0x52e8	10422491	add 	x16, x16, #0x910             
0x52ec	20021fd6	br 	x17                           
0x52f0	100000d0	adrp 	x16, #0x7000                
0x52f4	118e44f9	ldr 	x17, [x16, #0x918]           
0x52f8	10622491	add 	x16, x16, #0x918             
0x52fc	20021fd6	br 	x17                           
0x5300	100000d0	adrp 	x16, #0x7000                
0x5304	119244f9	ldr 	x17, [x16, #0x920]           
0x5308	10822491	add 	x16, x16, #0x920             
0x530c	20021fd6	br 	x17                           
0x5310	100000d0	adrp 	x16, #0x7000                
0x5314	119644f9	ldr 	x17, [x16, #0x928]           
0x5318	10a22491	add 	x16, x16, #0x928             
0x531c	20021fd6	br 	x17                           
0x5320	100000d0	adrp 	x16, #0x7000                
0x5324	119a44f9	ldr 	x17, [x16, #0x930]           
0x5328	10c22491	add 	x16, x16, #0x930             
0x532c	20021fd6	br 	x17                           
0x5330	100000d0	adrp 	x16, #0x7000                
0x5334	119e44f9	ldr 	x17, [x16, #0x938]           
0x5338	10e22491	add 	x16, x16, #0x938             
0x533c	20021fd6	br 	x17                           
0x5340	100000d0	adrp 	x16, #0x7000                
0x5344	11a244f9	ldr 	x17, [x16, #0x940]           
0x5348	10022591	add 	x16, x16, #0x940             
0x534c	20021fd6	br 	x17                           
0x5350	100000d0	adrp 	x16, #0x7000                
0x5354	11a644f9	ldr 	x17, [x16, #0x948]           
0x5358	10222591	add 	x16, x16, #0x948             
0x535c	20021fd6	br 	x17                           
0x5360	100000d0	adrp 	x16, #0x7000                
0x5364	11aa44f9	ldr 	x17, [x16, #0x950]           
0x5368	10422591	add 	x16, x16, #0x950             
0x536c	20021fd6	br 	x17                           
0x5370	100000d0	adrp 	x16, #0x7000                
0x5374	11ae44f9	ldr 	x17, [x16, #0x958]           
0x5378	10622591	add 	x16, x16, #0x958             
0x537c	20021fd6	br 	x17                           
0x5380	100000d0	adrp 	x16, #0x7000                
0x5384	11b244f9	ldr 	x17, [x16, #0x960]           
0x5388	10822591	add 	x16, x16, #0x960             
0x538c	20021fd6	br 	x17                           
0x5390	100000d0	adrp 	x16, #0x7000                
0x5394	11b644f9	ldr 	x17, [x16, #0x968]           
0x5398	10a22591	add 	x16, x16, #0x968             
0x539c	20021fd6	br 	x17                           
