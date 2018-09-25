// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:38046,y:33176,varname:node_3138,prsc:2|emission-6530-OUT,clip-7521-OUT,voffset-9610-OUT;n:type:ShaderForge.SFN_TexCoord,id:9524,x:31974,y:32873,varname:node_9524,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector3,id:625,x:32059,y:33282,varname:node_625,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_ViewVector,id:6027,x:31531,y:33267,varname:node_6027,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9534,x:33000,y:33547,varname:node_9534,prsc:2|A-2202-OUT,B-176-R,C-7735-OUT;n:type:ShaderForge.SFN_Cross,id:9535,x:32332,y:33587,varname:node_9535,prsc:2|A-625-OUT,B-4094-OUT;n:type:ShaderForge.SFN_Normalize,id:2202,x:32729,y:33563,varname:node_2202,prsc:2|IN-9535-OUT;n:type:ShaderForge.SFN_Subtract,id:8062,x:32522,y:33205,varname:node_8062,prsc:2|A-9524-UVOUT,B-5908-OUT;n:type:ShaderForge.SFN_Vector1,id:5908,x:32281,y:33376,varname:node_5908,prsc:2,v1:0.5;n:type:ShaderForge.SFN_ComponentMask,id:176,x:32726,y:33205,varname:node_176,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8062-OUT;n:type:ShaderForge.SFN_Cross,id:423,x:32553,y:33399,varname:node_423,prsc:2|A-9535-OUT,B-4094-OUT;n:type:ShaderForge.SFN_Normalize,id:1979,x:32729,y:33399,varname:node_1979,prsc:2|IN-423-OUT;n:type:ShaderForge.SFN_Multiply,id:2402,x:33000,y:33405,varname:node_2402,prsc:2|A-1979-OUT,B-176-G;n:type:ShaderForge.SFN_Add,id:1820,x:33348,y:33443,varname:node_1820,prsc:2|A-2402-OUT,B-9534-OUT;n:type:ShaderForge.SFN_VertexColor,id:4105,x:34387,y:34052,varname:node_4105,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2063,x:36094,y:33779,varname:node_2063,prsc:2|A-497-OUT,B-964-R,C-8164-OUT,D-3110-OUT,E-3956-OUT;n:type:ShaderForge.SFN_Normalize,id:3810,x:34073,y:33451,varname:node_3810,prsc:2|IN-4838-OUT;n:type:ShaderForge.SFN_Tex2d,id:4007,x:32488,y:32223,ptovrint:False,ptlb:Shape,ptin:_Shape,varname:node_4007,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9524-UVOUT;n:type:ShaderForge.SFN_Add,id:8216,x:34325,y:32449,varname:node_8216,prsc:2|A-6026-OUT,B-7257-OUT;n:type:ShaderForge.SFN_Vector1,id:8164,x:35855,y:33830,varname:node_8164,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:2646,x:34572,y:31987,varname:node_2646,prsc:2|A-499-RGB,B-3960-RGB,C-374-OUT,D-5803-OUT;n:type:ShaderForge.SFN_Multiply,id:7257,x:34091,y:32501,varname:node_7257,prsc:2|A-2598-OUT,B-1342-OUT;n:type:ShaderForge.SFN_Vector1,id:1342,x:33886,y:32573,varname:node_1342,prsc:2,v1:10;n:type:ShaderForge.SFN_Transform,id:46,x:31988,y:33532,varname:node_46,prsc:2,tffrom:0,tfto:1|IN-7058-OUT;n:type:ShaderForge.SFN_Relay,id:4094,x:32179,y:33510,varname:node_4094,prsc:2|IN-46-XYZ;n:type:ShaderForge.SFN_Tex2d,id:499,x:34179,y:31792,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_499,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8182-OUT;n:type:ShaderForge.SFN_VertexColor,id:2045,x:33405,y:31801,varname:node_2045,prsc:2;n:type:ShaderForge.SFN_Vector1,id:758,x:33476,y:31932,varname:node_758,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:8182,x:33883,y:31795,varname:node_8182,prsc:2|A-8131-OUT,B-758-OUT;n:type:ShaderForge.SFN_Tex2d,id:964,x:35083,y:34057,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6482-OUT;n:type:ShaderForge.SFN_Append,id:6482,x:34864,y:34098,varname:node_6482,prsc:2|A-4009-OUT,B-466-OUT;n:type:ShaderForge.SFN_Vector1,id:466,x:34387,y:34235,varname:node_466,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:732,x:33122,y:31607,ptovrint:False,ptlb:Variation_Shift,ptin:_Variation_Shift,varname:node_732,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:4009,x:34643,y:34098,varname:node_4009,prsc:2|A-4105-G,B-4455-OUT;n:type:ShaderForge.SFN_Add,id:8131,x:33664,y:31775,varname:node_8131,prsc:2|A-2045-G,B-4455-OUT;n:type:ShaderForge.SFN_Relay,id:4455,x:33464,y:31607,varname:node_4455,prsc:2|IN-8120-OUT;n:type:ShaderForge.SFN_Divide,id:8120,x:33309,y:31607,varname:node_8120,prsc:2|A-732-OUT,B-6750-OUT;n:type:ShaderForge.SFN_Vector1,id:6750,x:33122,y:31651,varname:node_6750,prsc:2,v1:100;n:type:ShaderForge.SFN_Multiply,id:3956,x:35834,y:34045,varname:node_3956,prsc:2|A-2649-OUT,B-9073-OUT;n:type:ShaderForge.SFN_Vector1,id:9073,x:35549,y:34066,varname:node_9073,prsc:2,v1:2.5;n:type:ShaderForge.SFN_Color,id:3960,x:34179,y:32140,ptovrint:False,ptlb:Color_Tint,ptin:_Color_Tint,varname:node_3960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3110,x:35823,y:33940,ptovrint:False,ptlb:Size_Multiplier,ptin:_Size_Multiplier,varname:node_3110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:374,x:34179,y:31984,varname:node_374,prsc:2|A-7318-OUT,B-6372-OUT;n:type:ShaderForge.SFN_Vector1,id:6372,x:33968,y:32063,varname:node_6372,prsc:2,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:5803,x:34179,y:32320,ptovrint:False,ptlb:Color_Multiplier,ptin:_Color_Multiplier,varname:node_5803,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:5572,x:31218,y:33618,ptovrint:False,ptlb:Camera_Position,ptin:_Camera_Position,varname:node_5572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:1104,x:31218,y:33491,varname:node_1104,prsc:2;n:type:ShaderForge.SFN_Subtract,id:5850,x:31407,y:33582,varname:node_5850,prsc:2|A-1104-XYZ,B-5572-XYZ;n:type:ShaderForge.SFN_Normalize,id:3077,x:31603,y:33560,varname:node_3077,prsc:2|IN-5850-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7058,x:31820,y:33560,ptovrint:False,ptlb:Use_Camera_Position,ptin:_Use_Camera_Position,varname:node_7058,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6027-OUT,B-3077-OUT;n:type:ShaderForge.SFN_Power,id:3569,x:34400,y:34848,varname:node_3569,prsc:2|VAL-4553-OUT,EXP-2568-OUT;n:type:ShaderForge.SFN_Vector1,id:659,x:34400,y:34757,varname:node_659,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:9010,x:34583,y:34796,varname:node_9010,prsc:2|A-659-OUT,B-3569-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:616,x:33369,y:34756,varname:node_616,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:6630,x:33369,y:34909,varname:node_6630,prsc:2;n:type:ShaderForge.SFN_Subtract,id:56,x:33545,y:34756,varname:node_56,prsc:2|A-616-XYZ,B-6630-XYZ;n:type:ShaderForge.SFN_Length,id:1067,x:33720,y:34756,varname:node_1067,prsc:2|IN-56-OUT;n:type:ShaderForge.SFN_Multiply,id:4553,x:34040,y:34839,varname:node_4553,prsc:2|A-1067-OUT,B-9036-OUT,C-2744-OUT;n:type:ShaderForge.SFN_Vector1,id:9036,x:33720,y:34897,varname:node_9036,prsc:2,v1:50;n:type:ShaderForge.SFN_Multiply,id:9276,x:34885,y:33732,varname:node_9276,prsc:2|A-3810-OUT,B-9010-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5921,x:33638,y:35010,ptovrint:False,ptlb:Attenuation_Strength,ptin:_Attenuation_Strength,varname:node_5921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9956,x:34067,y:35035,ptovrint:False,ptlb:Attenuation_Exponent,ptin:_Attenuation_Exponent,varname:node_9956,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_SwitchProperty,id:5412,x:35129,y:33684,ptovrint:False,ptlb:Use_Attenuation,ptin:_Use_Attenuation,varname:node_5412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3810-OUT,B-9276-OUT;n:type:ShaderForge.SFN_Tex2d,id:9794,x:33927,y:32710,ptovrint:False,ptlb:LensEffect,ptin:_LensEffect,varname:node_9794,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9524-UVOUT;n:type:ShaderForge.SFN_Add,id:5450,x:34329,y:32726,varname:node_5450,prsc:2|A-9794-R,B-9794-G,C-3285-OUT;n:type:ShaderForge.SFN_Multiply,id:3285,x:34131,y:32791,varname:node_3285,prsc:2|A-9794-B,B-38-OUT;n:type:ShaderForge.SFN_Vector1,id:38,x:33927,y:32873,varname:node_38,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:4795,x:34911,y:32308,varname:node_4795,prsc:2|A-2646-OUT,B-8216-OUT;n:type:ShaderForge.SFN_Multiply,id:8437,x:34911,y:32523,varname:node_8437,prsc:2|A-2646-OUT,B-5450-OUT;n:type:ShaderForge.SFN_Subtract,id:8130,x:34088,y:33096,varname:node_8130,prsc:2|A-7370-OUT,B-1067-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7462,x:33710,y:33093,ptovrint:False,ptlb:LensEffect_Distance,ptin:_LensEffect_Distance,varname:node_7462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:6610,x:34549,y:33115,varname:node_6610,prsc:2|VAL-5585-OUT,EXP-6499-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9677,x:34170,y:33310,ptovrint:False,ptlb:LensEffect_DistanceExponent,ptin:_LensEffect_DistanceExponent,varname:node_9677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Lerp,id:9739,x:35370,y:32694,varname:node_9739,prsc:2|A-4795-OUT,B-8437-OUT,T-6486-OUT;n:type:ShaderForge.SFN_Multiply,id:199,x:35541,y:33532,varname:node_199,prsc:2|A-5412-OUT,B-3026-OUT;n:type:ShaderForge.SFN_Vector1,id:7017,x:35001,y:33477,varname:node_7017,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:3026,x:35325,y:33418,varname:node_3026,prsc:2|A-3117-OUT,B-7017-OUT;n:type:ShaderForge.SFN_Multiply,id:3117,x:35067,y:33318,varname:node_3117,prsc:2|A-6610-OUT,B-4338-OUT;n:type:ShaderForge.SFN_Vector1,id:4338,x:34841,y:33367,varname:node_4338,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp,id:5585,x:34335,y:33096,varname:node_5585,prsc:2|IN-8130-OUT,MIN-5965-OUT,MAX-7370-OUT;n:type:ShaderForge.SFN_Vector1,id:5965,x:34088,y:33231,varname:node_5965,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:6486,x:34802,y:32939,varname:node_6486,prsc:2|IN-6610-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:6499,x:34409,y:33252,varname:node_6499,prsc:2,min:0,max:100|IN-9677-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7370,x:33894,y:33093,varname:node_7370,prsc:2,min:0,max:100|IN-7462-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:2568,x:34268,y:35013,varname:node_2568,prsc:2,min:0,max:100|IN-9956-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:2744,x:33823,y:34991,varname:node_2744,prsc:2,min:0,max:100|IN-5921-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:5282,x:35516,y:32913,ptovrint:False,ptlb:Use_LensEffect,ptin:_Use_LensEffect,varname:node_5282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:6439,x:35843,y:32736,varname:node_6439,prsc:2|A-4795-OUT,B-9739-OUT,T-5282-OUT;n:type:ShaderForge.SFN_Lerp,id:497,x:35780,y:33678,varname:node_497,prsc:2|A-5412-OUT,B-199-OUT,T-5282-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9406,x:36847,y:34194,ptovrint:False,ptlb:Use_Twinkle,ptin:_Use_Twinkle,varname:node_9615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2434-OUT,B-4642-OUT;n:type:ShaderForge.SFN_Vector1,id:2434,x:36300,y:34195,varname:node_2434,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:7710,x:35897,y:34430,varname:node_7710,prsc:2|A-5490-OUT,B-2154-OUT;n:type:ShaderForge.SFN_Add,id:5490,x:35678,y:34410,varname:node_5490,prsc:2|A-180-G,B-7201-OUT;n:type:ShaderForge.SFN_VertexColor,id:180,x:35373,y:34352,varname:node_180,prsc:2;n:type:ShaderForge.SFN_Vector1,id:2154,x:35678,y:34557,varname:node_2154,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Time,id:5632,x:35056,y:34504,varname:node_5632,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5657,x:36123,y:34430,ptovrint:False,ptlb:Twinkle_Ramp,ptin:_Twinkle_Ramp,varname:node_3103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False|UVIN-7710-OUT;n:type:ShaderForge.SFN_Multiply,id:7201,x:35424,y:34557,varname:node_7201,prsc:2|A-5632-T,B-8095-OUT,C-9027-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8095,x:35056,y:34646,ptovrint:False,ptlb:Twinkle_Speed,ptin:_Twinkle_Speed,varname:node_2940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:211,x:36309,y:34619,ptovrint:False,ptlb:Twinkle_Strength,ptin:_Twinkle_Strength,varname:node_3931,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:8257,x:36309,y:34447,varname:node_8257,prsc:2|A-5657-R,B-5247-OUT;n:type:ShaderForge.SFN_Vector1,id:5247,x:36123,y:34619,varname:node_5247,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1821,x:36477,y:34447,varname:node_1821,prsc:2|A-8257-OUT,B-211-OUT;n:type:ShaderForge.SFN_Add,id:4642,x:36668,y:34361,varname:node_4642,prsc:2|A-2434-OUT,B-1821-OUT;n:type:ShaderForge.SFN_Vector1,id:9027,x:35056,y:34713,varname:node_9027,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:9610,x:37219,y:33787,varname:node_9610,prsc:2|A-2063-OUT,B-9406-OUT;n:type:ShaderForge.SFN_Multiply,id:8733,x:37210,y:32858,varname:node_8733,prsc:2|A-6439-OUT,B-9406-OUT;n:type:ShaderForge.SFN_Relay,id:1808,x:36571,y:33161,varname:node_1808,prsc:2|IN-5616-G;n:type:ShaderForge.SFN_Slider,id:123,x:36654,y:33456,ptovrint:False,ptlb:Percentage,ptin:_Percentage,varname:node_123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Step,id:7521,x:37101,y:33292,varname:node_7521,prsc:2|A-3245-OUT,B-123-OUT;n:type:ShaderForge.SFN_RemapRange,id:3245,x:36704,y:33198,varname:node_3245,prsc:2,frmn:-0.03,frmx:1,tomn:0,tomx:1|IN-1808-OUT;n:type:ShaderForge.SFN_Vector1,id:7735,x:32713,y:33729,varname:node_7735,prsc:2,v1:-1;n:type:ShaderForge.SFN_TexCoord,id:5276,x:30690,y:31443,varname:node_5276,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:8807,x:30882,y:31443,varname:node_8807,prsc:2|A-5276-UVOUT,B-5817-OUT;n:type:ShaderForge.SFN_Vector1,id:5817,x:30696,y:31646,varname:node_5817,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Length,id:8882,x:31041,y:31443,varname:node_8882,prsc:2|IN-8807-OUT;n:type:ShaderForge.SFN_Multiply,id:6391,x:31211,y:31443,varname:node_6391,prsc:2|A-8882-OUT,B-1460-OUT;n:type:ShaderForge.SFN_Vector1,id:1460,x:31001,y:31616,varname:node_1460,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:4764,x:31367,y:31443,varname:node_4764,prsc:2|IN-6391-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8228,x:32966,y:32096,varname:node_8228,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2566-OUT;n:type:ShaderForge.SFN_Relay,id:6026,x:33233,y:32194,varname:node_6026,prsc:2|IN-8228-R;n:type:ShaderForge.SFN_Relay,id:2598,x:33233,y:32260,varname:node_2598,prsc:2|IN-8228-G;n:type:ShaderForge.SFN_Relay,id:2649,x:33233,y:32330,varname:node_2649,prsc:2|IN-8228-B;n:type:ShaderForge.SFN_Relay,id:7318,x:33233,y:32403,varname:node_7318,prsc:2|IN-3591-OUT;n:type:ShaderForge.SFN_VertexColor,id:5616,x:36369,y:33108,varname:node_5616,prsc:2;n:type:ShaderForge.SFN_Code,id:2561,x:31642,y:31546,varname:node_2561,prsc:2,code:aQBuAHQAIABpACAAPQAgADEAOwANAAoAZgBsAG8AYQB0ACAAdgBhAGwAdQBlACAAPQAgADAAOwANAAoACgANAGYAbABvAGEAdAAgAHYAMAAxACAAPQAgADAAOwAKAA0AZgBsAG8AYQB0ACAAdgAwADIAIAA9ACAAMAA7AAoADQBmAGwAbwBhAHQAIAB2ADAAMwAgAD0AIAAwADsACgAKAHcAaABpAGwAZQAgACgAaQAgADwAIABNAGEAeABJAHQAZQByACkADQAKAHsADQAKACAAIAAgACAAdgAwADEAIAA9ACAATQBhAHgASQB0AGUAcgAvACgAaQArADEAKQA7AAoAIAAgACAAIAB2ADAAMgAgAD0AIABwAG8AdwAoAHIAYQBtAHAALAAgAHAAbwB3ACgAcwBpAHoAZQBfAGUAeABwACwAIAB2ADAAMQApACkAOwAKACAAIAAgACAAdgAwADMAIAA9ACAAdgAwADIALwBwAG8AdwAoACgAaQArADEAKQAsACAAbQB1AGwAdABfAGUAeABwACkAOwAKACAAIAAgACAAdgBhAGwAdQBlACAAKwA9ACAAdgAwADMAOwANAAoAIAAgACAAIABpACsAPQAxADsADQAKAH0ADQAKAA0ACgByAGUAdAB1AHIAbgAgAHYAYQBsAHUAZQA7AA==,output:0,fname:ExpGlow,width:348,height:281,input:0,input:0,input:0,input:8,input_1_label:ramp,input_2_label:size_exp,input_3_label:mult_exp,input_4_label:MaxIter|A-4764-OUT,B-1255-OUT,C-6127-OUT,D-9768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1255,x:31139,y:31660,ptovrint:False,ptlb:ProceduralShape_IterExp,ptin:_ProceduralShape_IterExp,varname:node_488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4405,x:31128,y:31846,ptovrint:False,ptlb:ProceduralShape_Iterations,ptin:_ProceduralShape_Iterations,varname:node_6604,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ToggleProperty,id:6837,x:32488,y:32444,ptovrint:False,ptlb:Use_ProceduralShape,ptin:_Use_ProceduralShape,varname:node_6837,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:2566,x:32764,y:31961,varname:node_2566,prsc:2|A-4007-RGB,B-3218-OUT,T-6837-OUT;n:type:ShaderForge.SFN_Append,id:3218,x:32496,y:31859,varname:node_3218,prsc:2|A-864-OUT,B-8082-OUT,C-7296-OUT;n:type:ShaderForge.SFN_Vector1,id:8082,x:32319,y:31912,varname:node_8082,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7296,x:32319,y:31983,varname:node_7296,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6127,x:31252,y:31764,varname:node_6127,prsc:2,v1:1;n:type:ShaderForge.SFN_Power,id:864,x:32277,y:31726,varname:node_864,prsc:2|VAL-2561-OUT,EXP-8267-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8267,x:32038,y:31895,ptovrint:False,ptlb:ProceduralShape_OutExp,ptin:_ProceduralShape_OutExp,varname:_ProceduralShape_SizeExp_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Round,id:9768,x:31300,y:31862,varname:node_9768,prsc:2|IN-4405-OUT;n:type:ShaderForge.SFN_Lerp,id:3591,x:32764,y:32136,varname:node_3591,prsc:2|A-4007-A,B-246-OUT,T-6837-OUT;n:type:ShaderForge.SFN_Vector1,id:246,x:32319,y:32055,varname:node_246,prsc:2,v1:0.2;n:type:ShaderForge.SFN_ConstantClamp,id:6530,x:37392,y:32858,varname:node_6530,prsc:2,min:0,max:1000|IN-8733-OUT;n:type:ShaderForge.SFN_Vector3,id:6055,x:32503,y:33887,varname:node_6055,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:2655,x:32503,y:34063,varname:node_2655,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Transform,id:8334,x:32798,y:33888,varname:node_8334,prsc:2,tffrom:3,tfto:1|IN-6055-OUT;n:type:ShaderForge.SFN_Transform,id:5106,x:32798,y:34062,varname:node_5106,prsc:2,tffrom:3,tfto:1|IN-2655-OUT;n:type:ShaderForge.SFN_Add,id:8180,x:33355,y:33874,varname:node_8180,prsc:2|A-1241-OUT,B-4965-OUT;n:type:ShaderForge.SFN_Multiply,id:4965,x:33040,y:34062,varname:node_4965,prsc:2|A-5106-XYZ,B-176-G,C-7735-OUT;n:type:ShaderForge.SFN_Multiply,id:1241,x:33040,y:33888,varname:node_1241,prsc:2|A-8334-XYZ,B-176-R;n:type:ShaderForge.SFN_SwitchProperty,id:4838,x:33708,y:33433,ptovrint:False,ptlb:PerParticleOrientation,ptin:_PerParticleOrientation,varname:node_4838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8180-OUT,B-1820-OUT;proporder:4007-499-964-6837-4405-1255-8267-3960-5803-3110-732-7058-5572-5412-5921-9956-5282-9794-7462-9677-9406-5657-8095-211-123-4838;pass:END;sub:END;*/

Shader "StarClusters/StarCluster_3.0_SF" {
    Properties {
        _Shape ("Shape", 2D) = "white" {}
        _Color ("Color", 2D) = "white" {}
        _Size ("Size", 2D) = "white" {}
        [MaterialToggle] _Use_ProceduralShape ("Use_ProceduralShape", Float ) = 0
        _ProceduralShape_Iterations ("ProceduralShape_Iterations", Float ) = 10
        _ProceduralShape_IterExp ("ProceduralShape_IterExp", Float ) = 2
        _ProceduralShape_OutExp ("ProceduralShape_OutExp", Float ) = 1
        _Color_Tint ("Color_Tint", Color) = (1,1,1,1)
        _Color_Multiplier ("Color_Multiplier", Float ) = 1
        _Size_Multiplier ("Size_Multiplier", Float ) = 1
        _Variation_Shift ("Variation_Shift", Float ) = 0
        [MaterialToggle] _Use_Camera_Position ("Use_Camera_Position", Float ) = 0
        _Camera_Position ("Camera_Position", Vector) = (0,0,0,0)
        [MaterialToggle] _Use_Attenuation ("Use_Attenuation", Float ) = 0
        _Attenuation_Strength ("Attenuation_Strength", Float ) = 1
        _Attenuation_Exponent ("Attenuation_Exponent", Float ) = 0.8
        [MaterialToggle] _Use_LensEffect ("Use_LensEffect", Float ) = 0
        _LensEffect ("LensEffect", 2D) = "white" {}
        _LensEffect_Distance ("LensEffect_Distance", Float ) = 1
        _LensEffect_DistanceExponent ("LensEffect_DistanceExponent", Float ) = 3
        [MaterialToggle] _Use_Twinkle ("Use_Twinkle", Float ) = 1
        _Twinkle_Ramp ("Twinkle_Ramp", 2D) = "gray" {}
        _Twinkle_Speed ("Twinkle_Speed", Float ) = 1
        _Twinkle_Strength ("Twinkle_Strength", Float ) = 1
        _Percentage ("Percentage", Range(0, 1)) = 1
        [MaterialToggle] _PerParticleOrientation ("PerParticleOrientation", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Shape; uniform float4 _Shape_ST;
            uniform sampler2D _Color; uniform float4 _Color_ST;
            uniform sampler2D _Size; uniform float4 _Size_ST;
            uniform float _Variation_Shift;
            uniform float4 _Color_Tint;
            uniform float _Size_Multiplier;
            uniform float _Color_Multiplier;
            uniform float4 _Camera_Position;
            uniform fixed _Use_Camera_Position;
            uniform float _Attenuation_Strength;
            uniform float _Attenuation_Exponent;
            uniform fixed _Use_Attenuation;
            uniform sampler2D _LensEffect; uniform float4 _LensEffect_ST;
            uniform float _LensEffect_Distance;
            uniform float _LensEffect_DistanceExponent;
            uniform fixed _Use_LensEffect;
            uniform fixed _Use_Twinkle;
            uniform sampler2D _Twinkle_Ramp; uniform float4 _Twinkle_Ramp_ST;
            uniform float _Twinkle_Speed;
            uniform float _Twinkle_Strength;
            uniform float _Percentage;
            float ExpGlow( float ramp , float size_exp , float mult_exp , fixed MaxIter ){
            int i = 1;
            float value = 0;
            
            float v01 = 0;
            float v02 = 0;
            float v03 = 0;
            
            while (i < MaxIter)
            {
                v01 = MaxIter/(i+1);
                v02 = pow(ramp, pow(size_exp, v01));
                v03 = v02/pow((i+1), mult_exp);
                value += v03;
                i+=1;
            }
            
            return value;
            }
            
            uniform float _ProceduralShape_IterExp;
            uniform float _ProceduralShape_Iterations;
            uniform fixed _Use_ProceduralShape;
            uniform float _ProceduralShape_OutExp;
            uniform fixed _PerParticleOrientation;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
                float2 node_176 = (o.uv0-0.5).rg;
                float node_7735 = (-1.0);
                float3 node_4094 = mul( unity_WorldToObject, float4(lerp( viewDirection, normalize((mul(unity_ObjectToWorld, v.vertex).rgb-_Camera_Position.rgb)), _Use_Camera_Position ),0) ).xyz.rgb;
                float3 node_9535 = cross(float3(0,1,0),node_4094);
                float3 node_3810 = normalize(lerp( ((mul( float4(float3(1,0,0),0), UNITY_MATRIX_MV ).xyz.rgb*node_176.r)+(mul( float4(float3(0,1,0),0), UNITY_MATRIX_MV ).xyz.rgb*node_176.g*node_7735)), ((normalize(cross(node_9535,node_4094))*node_176.g)+(normalize(node_9535)*node_176.r*node_7735)), _PerParticleOrientation ));
                float node_1067 = length((mul(unity_ObjectToWorld, v.vertex).rgb-_WorldSpaceCameraPos));
                float3 _Use_Attenuation_var = lerp( node_3810, (node_3810*(1.0/pow((node_1067*50.0*clamp(_Attenuation_Strength,0,100)),clamp(_Attenuation_Exponent,0,100)))), _Use_Attenuation );
                float node_7370 = clamp(_LensEffect_Distance,0,100);
                float node_6610 = pow(clamp((node_7370-node_1067),0.0,node_7370),clamp(_LensEffect_DistanceExponent,0,100));
                float node_4455 = (_Variation_Shift/100.0);
                float2 node_6482 = float2((o.vertexColor.g+node_4455),0.0);
                float4 _Size_var = tex2Dlod(_Size,float4(TRANSFORM_TEX(node_6482, _Size),0.0,0));
                float4 _Shape_var = tex2Dlod(_Shape,float4(TRANSFORM_TEX(o.uv0, _Shape),0.0,0));
                float3 node_8228 = lerp(_Shape_var.rgb,float3(pow(ExpGlow( (1.0 - (length((o.uv0-0.5))*2.0)) , _ProceduralShape_IterExp , 1.0 , round(_ProceduralShape_Iterations) ),_ProceduralShape_OutExp),0.0,1.0),_Use_ProceduralShape).rgb;
                float node_2434 = 1.0;
                float4 node_5632 = _Time + _TimeEditor;
                float2 node_7710 = float2((o.vertexColor.g+(node_5632.g*_Twinkle_Speed*0.1)),0.5);
                float4 _Twinkle_Ramp_var = tex2Dlod(_Twinkle_Ramp,float4(TRANSFORM_TEX(node_7710, _Twinkle_Ramp),0.0,0));
                float _Use_Twinkle_var = lerp( node_2434, (node_2434+((_Twinkle_Ramp_var.r-0.5)*_Twinkle_Strength)), _Use_Twinkle );
                v.vertex.xyz += ((lerp(_Use_Attenuation_var,(_Use_Attenuation_var*((node_6610*1.0)+1.0)),_Use_LensEffect)*_Size_var.r*0.1*_Size_Multiplier*(node_8228.b*2.5))*_Use_Twinkle_var);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                clip(step((i.vertexColor.g*0.9708738+0.02912621),_Percentage) - 0.5);
////// Lighting:
////// Emissive:
                float node_4455 = (_Variation_Shift/100.0);
                float2 node_8182 = float2((i.vertexColor.g+node_4455),0.0);
                float4 _Color_var = tex2D(_Color,TRANSFORM_TEX(node_8182, _Color));
                float4 _Shape_var = tex2D(_Shape,TRANSFORM_TEX(i.uv0, _Shape));
                float3 node_2646 = (_Color_var.rgb*_Color_Tint.rgb*(lerp(_Shape_var.a,0.2,_Use_ProceduralShape)*5.0)*_Color_Multiplier);
                float3 node_8228 = lerp(_Shape_var.rgb,float3(pow(ExpGlow( (1.0 - (length((i.uv0-0.5))*2.0)) , _ProceduralShape_IterExp , 1.0 , round(_ProceduralShape_Iterations) ),_ProceduralShape_OutExp),0.0,1.0),_Use_ProceduralShape).rgb;
                float3 node_4795 = (node_2646*(node_8228.r+(node_8228.g*10.0)));
                float4 _LensEffect_var = tex2D(_LensEffect,TRANSFORM_TEX(i.uv0, _LensEffect));
                float node_7370 = clamp(_LensEffect_Distance,0,100);
                float node_1067 = length((i.posWorld.rgb-_WorldSpaceCameraPos));
                float node_6610 = pow(clamp((node_7370-node_1067),0.0,node_7370),clamp(_LensEffect_DistanceExponent,0,100));
                float node_2434 = 1.0;
                float4 node_5632 = _Time + _TimeEditor;
                float2 node_7710 = float2((i.vertexColor.g+(node_5632.g*_Twinkle_Speed*0.1)),0.5);
                float4 _Twinkle_Ramp_var = tex2D(_Twinkle_Ramp,TRANSFORM_TEX(node_7710, _Twinkle_Ramp));
                float _Use_Twinkle_var = lerp( node_2434, (node_2434+((_Twinkle_Ramp_var.r-0.5)*_Twinkle_Strength)), _Use_Twinkle );
                float3 emissive = clamp((lerp(node_4795,lerp(node_4795,(node_2646*(_LensEffect_var.r+_LensEffect_var.g+(_LensEffect_var.b*10.0))),saturate(node_6610)),_Use_LensEffect)*_Use_Twinkle_var),0,1000);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
