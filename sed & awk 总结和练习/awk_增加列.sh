#head -20 file
head -20 file
INFO 13/11/15  10:43:39                                                         
*VEL                                                                            
SPNT     379081          404575.344  5119050.                                   
VELF     379081    0   32 4528  276 4565  648 4640 1083 4743 1300 4802          
VELF                 1628 4881 1956 5015 2161 5138 2456 5295 2872 5474          
VELF                 3106 5508 3439 5519 3906 5474 4548 5522 5111 5634          
VELF                 5672 5732 6274 5868 6941 6011 8000 6200                    
SPNT     379121          404575.344  5120050.                                   
VELF     379121    0   35 4752  340 4761  584 4771  806 4780 1210 4780          
VELF                 1635 4836 1854 4929 2333 5200 2883 5480 3111 5527          
VELF                 3428 5527 3783 5545 4106 5564 5067 5676 5661 5774          
VELF                 6328 5914 6921 5998 8000 6200                              
SPNT     379161          404575.344  5121050.                                   
VELF     379161    0   41 4780  286 4789  435 4771  615 4743  852 4780          
VELF                 1130 4873 1283 4939 1648 5172 1870 5275 2254 5405          
VELF                 2425 5443 2800 5480 3105 5527 3506 5575 3833 5575          
VELF                 4211 5586 4622 5631 5006 5665 5300 5743 5689 5814          
VELF                 6333 5926 6922 6020 8000 6200                              
SPNT     379201          404575.344  5122050.                                   
VELF     379201    0   41 5041  289 4995  629 4967  790 5023 1054 5088

#awk 'BEGIN{a=1600;b=1436}/SPNT/{a+=40;if((c)%11==0){++d;a=1640;b=d*40+1436}$NF=$NF" "b;$2="    "$2"\t  "a;++c;}1' file|head -20
INFO 13/11/15  10:43:39                                                         
*VEL                                                                            
SPNT     379081	  1640 404575.344 5119050. 1476
VELF     379081    0   32 4528  276 4565  648 4640 1083 4743 1300 4802          
VELF                 1628 4881 1956 5015 2161 5138 2456 5295 2872 5474          
VELF                 3106 5508 3439 5519 3906 5474 4548 5522 5111 5634          
VELF                 5672 5732 6274 5868 6941 6011 8000 6200                    
SPNT     379121	  1680 404575.344 5120050. 1476
VELF     379121    0   35 4752  340 4761  584 4771  806 4780 1210 4780          
VELF                 1635 4836 1854 4929 2333 5200 2883 5480 3111 5527          
VELF                 3428 5527 3783 5545 4106 5564 5067 5676 5661 5774          
VELF                 6328 5914 6921 5998 8000 6200                              
SPNT     379161	  1720 404575.344 5121050. 1476
VELF     379161    0   41 4780  286 4789  435 4771  615 4743  852 4780          
VELF                 1130 4873 1283 4939 1648 5172 1870 5275 2254 5405          
VELF                 2425 5443 2800 5480 3105 5527 3506 5575 3833 5575          
VELF                 4211 5586 4622 5631 5006 5665 5300 5743 5689 5814          
VELF                 6333 5926 6922 6020 8000 6200                              
SPNT     379201	  1760 404575.344 5122050. 1476
VELF     379201    0   41 5041  289 4995  629 4967  790 5023 1054 5088 

