Shader "StarClusters/StarCluster_3.0" {
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
}
