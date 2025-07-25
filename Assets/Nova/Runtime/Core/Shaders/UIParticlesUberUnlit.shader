Shader "Nova/UIParticles/UberUnlit"
{
    Properties
    {
        // Render Settings
        _RenderType("Render Type", Float) = 2.0
        _Cutoff("Alpha Cutoff", Range(0.0, 1.0)) = 0.5
        _TransparentBlendMode("Blend Mode", Float) = 0.0
        _Cull("Cull", Float) = 2.0
        _QueueOffset("Queue Offset", Float) = 0.0
        _VertexAlphaMode("Vertex Alpha Mode", Float) = 0.0
        _BlendSrc("Blend Src", Float) = 1.0
        _BlendDst("Blend Dst", Float) = 0.0
        _ZWrite("ZWrite", Float) = 0.0
        _ZWriteOverride("ZWrite Override", Float) = -1.0
        _ZTest("ZTest", Float) = 8.0

        _StencilComp ("Stencil Comparison", Float) = 8
        _Stencil ("Stencil ID", Float) = 0
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilReadMask ("Stencil Read Mask", Float) = 255

        _ColorMask ("Color Mask", Float) = 15

        // Base Map
        _BaseMapMode("Base Map Mode", Float) = 0.0
        [MainTexture] _BaseMap("Base Map", 2D) = "white" {}
        _BaseMap2DArray("Base Map 2D Array", 2DArray) = "" {}
        _BaseMap3D("Base Map 3D", 3D) = "" {}
        _BaseMapProgress("Base Map Progress", Range(0.0, 1.0)) = 0.0
        _BaseMapProgressCoord("Base Map Progress Coord", Float) = 0.0
        _BaseMapSliceCount("Base Map Slice Count", Float) = 4.0
        _BaseMapRandomRowSelectionEnabled("Base Map Random Row Selection Enabled", Float) = 0.0
        _BaseMapRandomRowCoord("Base Map Random Row Coord", Float) = 0.0
        _BaseMapRowCount("Base Map Row Count", Float) = 1.0
        _BaseMapOffsetXCoord("Base Map Offset X Coord", Float) = 0.0
        _BaseMapOffsetYCoord("Base Map Offset Y Coord", Float) = 0.0
        _BaseMapRotation("Base Map Rotation", Range(0.0, 1.0)) = 0.0
        _BaseMapRotationCoord("Base Map Rotation Coord", Float) = 0.0
        _BaseMapRotationOffsets("Base Map Rotation Offsets", Vector) = (0.0, 0.0, 0.0, 0.0)
        _BaseMapMirrorSampling("Base Map Mirror Sampling", Float) = 0.0

        // Tint Color
        _TintAreaMode("Tint Area Mode", Float) = 0.0
        _TintColorMode("Tint Color Mode", Float) = 0.0
        [HDR] _TintColor("Tint Color", Color) = (1, 1, 1, 1)
        _TintMap("Tint Map", 2D) = "white" {}
        _TintMap3D("Tint Map 3D", 3D) = "" {}
        _TintMap2DArray("Tint Map 2D Array", 2DArray) = "" {}
        _TintMap3DProgress("Tint Map 3D Progress", Range(0, 1)) = 0.0
        _TintMap3DProgressCoord("Tint Map 3D Progress Coord", Float) = 0.0
        _TintMapProgress("Tint Map Progress", Range(0, 1)) = 0.0
        _TintMapProgressCoord("Tint Map Progress Coord", Float) = 0.0
        _TintMapSliceCount("Tint Map Slice Count", Float) = 4.0
        _TintMapOffsetXCoord("Tint Map Offset X Coord", Float) = 0.0
        _TintMapOffsetYCoord("Tint Map Offset Y Coord", Float) = 0.0
        _TintBlendRate("Tint Blend Rate", Range(0.0, 1.0)) = 1.0
        _TintBlendRateCoord("Tint Blend Rate Coord", Float) = 0.0
        _TintRimProgress("Tint Rim Progress", Range(0.0, 1.0)) = 0.5
        _TintRimProgressCoord("Tint Rim Progress Coord", Float) = 0.0
        _TintRimSharpness("Tint Rim Sharpness", Range(0.0, 1.0)) = 0.5
        _TintRimSharpnessCoord("Tint Rim Sharpness Coord", Float) = 0.0
        _InverseTintRim("Inverse Tint Rim", Float) = 0.0
        _TintMapRandomRowSelectionEnabled("Tint Map Random Row Selection Enabled", Float) = 0.0
        _TintMapRandomRowCoord("Tint Map Random Row Coord", Float) = 0.0
        _TintMapRowCount("Tint Map Row Count", Float) = 1.0

        // Flow Map
        _FlowMap("Flow Map", 2D) = "grey" {}
        _FlowMapOffsetXCoord("Flow Map Offset X Coord", Float) = 0.0
        _FlowMapOffsetYCoord("Flow Map Offset Y Coord", Float) = 0.0
        _FlowMapChannelsX("Flow Map Channes X", Float) = 0.0
        _FlowMapChannelsY("Flow Map Channes Y", Float) = 1.0
        _FlowIntensity("Flow Intensity", Float) = 1.0
        _FlowIntensityCoord("Flow Intensity Coord", Float) = 0.0
        _FlowMapTarget("Flow Map Target", Float) = 1.0

        // Parallax Map
        _ParallaxMapMode("Emission Map Mode", Float) = 0.0
        _ParallaxMap("Parallax Map", 2D) = "" {}
        _ParallaxMap2DArray("Parallax Map 2D Array", 2DArray) = "" {}
        _ParallaxMap3D("Parallax Map 3D", 3D) = "" {}
        _ParallaxMapProgress("Parallax Map Progress", Range(0.0, 1.0)) = 0.0
        _ParallaxMapProgressCoord("Parallax Map Progress Coord", Float) = 0.0
        _ParallaxMapOffsetXCoord("Parallax Map Offset X Coord", Float) = 0.0
        _ParallaxMapOffsetYCoord("Parallax Map Offset Y Coord", Float) = 0.0
        _ParallaxMapChannel("Parallax Map Channel", Float) = 0.0
        _ParallaxMapSliceCount("Parallax Map Slice Count", Float) = 4.0
        _ParallaxStrength("Parallax Strength", Range(0.0, 1.0)) = 0.3
        _ParallaxMapTarget("Parallax Map Target", Float) = 1.0
        _ParallaxMapRandomRowSelectionEnabled("Parallax Map Random Row Selection Enabled", Float) = 0.0
        _ParallaxMapRandomRowCoord("Parallax Map Random Row Coord", Float) = 0.0
        _ParallaxMapRowCount("Parallax Map Row Count", Float) = 1.0

        // Color Correction
        _ColorCorrectionMode("Alpha Transition Progress Coord", Float) = 0.0
        _GradientMap("Gradient Map", 2D) = "white" {}

        // Alpha Transition
        _AlphaTransitionMode("Alpha Transition Mode", Float) = 0.0
        _AlphaTransitionMapMode("Alpha Transition Map Mode", Float) = 0.0
        _AlphaTransitionMap("Alpha Transition Map", 2D) = "white" {}
        _AlphaTransitionMap2DArray("Alpha Transition Map 2D Array", 2DArray) = "" {}
        _AlphaTransitionMap3D("Alpha Transition Map 3D", 3D) = "" {}
        _AlphaTransitionMapProgress("Alpha　Transition Map Progress", Range(0.0, 1.0)) = 0.0
        _AlphaTransitionMapProgressCoord("Alpha　Transition Map Progress Coord", Float) = 0.0
        _AlphaTransitionMapOffsetXCoord("Alpha Transition Map Offset X Coord", Float) = 0.0
        _AlphaTransitionMapOffsetYCoord("Alpha Transition Map Offset Y Coord", Float) = 0.0
        _AlphaTransitionMapChannelsX("Alpha Transition Map Channes X", Float) = 0.0
        _AlphaTransitionMapSliceCount("Alpha Transition Map Slice Count", Float) = 4.0
        _AlphaTransitionProgress("Alpha Transition Progress", Range(0.0, 1.0)) = 0.0
        _AlphaTransitionProgressCoord("Alpha Transition Progress Coord", Float) = 0.0
        _DissolveSharpness("Dissolve Sharpness", Range(0.0, 1.0)) = 0.5
        _AlphaTransitionSecondTextureBlendMode("Alpha Transition Second Texture BlendMode", Float) = 0.0
        _AlphaTransitionMapSecondTexture("Alpha Transition Second Texture Map", 2D) = "white" {}
        _AlphaTransitionMapSecondTexture2DArray("Alpha Transition Second Texture Map 2D Array", 2DArray) = "" {}
        _AlphaTransitionMapSecondTexture3D("Alpha Transition Second Texture Map 3D", 3D) = "" {}
        _AlphaTransitionMapSecondTextureProgress("Alpha　Transition Map Second Texture  Progress", Range(0.0, 1.0)) = 0.0
        _AlphaTransitionMapSecondTextureProgressCoord("Alpha　Transition Map Second Texture  Progress Coord", Float) = 0.0
        _AlphaTransitionMapSecondTextureOffsetXCoord("Alpha Transition Second Texture Map Offset X Coord", Float) = 0.0
        _AlphaTransitionMapSecondTextureOffsetYCoord("Alpha Transition Second Texture Map Offset Y Coord", Float) = 0.0
        _AlphaTransitionMapSecondTextureChannelsX("Alpha Transition Second Texture Map Channes X", Float) = 0.0
        _AlphaTransitionMapSecondTextureSliceCount("Alpha Transition Map Second Texture Slice Count", Float) = 4.0
        _AlphaTransitionProgressSecondTexture("Alpha Transition Second Texture Progress", Range(0.0, 1.0)) = 0.0
        _AlphaTransitionProgressCoordSecondTexture("Alpha Transition Second Texture Progress Coord", Float) = 0.0
        _DissolveSharpnessSecondTexture("Dissolve Sharpness", Range(0.0, 1.0)) = 0.5
        _AlphaTransitionMapRandomRowSelectionEnabled("Alpha Transition Map Random Row Selection Enabled", Float) = 0.0
        _AlphaTransitionMapRandomRowCoord("Alpha Transition Map Random Row Coord", Float) = 0.0
        _AlphaTransitionMapRowCount("Alpha Transition Map Row Count", Float) = 1.0
        _AlphaTransitionMapSecondTextureRandomRowSelectionEnabled("Alpha Transition Map Second Texture Random Row Selection Enabled", Float) = 0.0
        _AlphaTransitionMapSecondTextureRandomRowCoord("Alpha Transition Map Second Texture Random Row Coord", Float) = 0.0
        _AlphaTransitionMapSecondTextureRowCount("Alpha Transition Map Second Texture Row Count", Float) = 1.0

        // Emission
        _EmissionAreaType("Emission Area Type", Float) = 0.0
        _EmissionMapMode("Emission Map Mode", Float) = 0.0
        _EmissionMap("Emission Map", 2D) = "black" {}
        _EmissionMap2DArray("Emission Map 2D Array", 2DArray) = "" {}
        _EmissionMap3D("Emission Map 3D", 3D) = "" {}
        _EmissionMapProgress("Emission Map Progress", Range(0.0, 1.0)) = 0.0
        _EmissionMapProgressCoord("Emission Map Progress Coord", Float) = 0.0
        _EmissionMapOffsetXCoord("Emission Map Offset X Coord", Float) = 0.0
        _EmissionMapOffsetYCoord("Emission Map Offset Y Coord", Float) = 0.0
        _EmissionMapChannelsX("Emission Map Channels X", Float) = 0.0
        _EmissionMapSliceCount("Alpha Transition Map Slice Count", Float) = 4.0
        _EmissionColorType("Emission Color Type", Float) = 0.0
        [HDR]_EmissionColor("Emission Color", Color) = (0, 0, 0, 1)
        _EmissionColorRamp("Emission Color Ramp", 2D) = "black" {}
        _EmissionIntensity("Emission Intensity", Float) = 1.0
        _EmissionIntensityCoord("Emission Intensity Coord", Float) = 0.0
        _KeepEdgeTransparency("Keep Edge Transparency", Float) = 1.0
        _EmissionMapRandomRowSelectionEnabled("Emission Map Random Row Selection Enabled", Float) = 0.0
        _EmissionMapRandomRowCoord("Emission Map Random Row Coord", Float) = 0.0
        _EmissionMapRowCount("Emission Map Row Count", Float) = 1.0

        // Transparency
        _RimTransparencyEnabled("Rim Transparency Enabled", Float) = 0.0
        _RimTransparencyProgress("Rim Transparency Progress", Range(0.0, 1.0)) = 0.5
        _RimTransparencyProgressCoord("Rim Transparency Progress Coord", Float) = 0.0
        _RimTransparencySharpness("Rim Transparency Sharpness", Range(0.0, 1.0)) = 0.5
        _RimTransparencySharpnessCoord("Rim Transparency Sharpness Coord", Float) = 0.0
        _InverseRimTransparency("Inverse Rim Transparency", Float) = 0.0
        _LuminanceTransparencyEnabled("Luminance Transparency Enabled", Float) = 0.0
        _LuminanceTransparencyProgress("Luminance Transparency Progress", Range(0.0, 1.0)) = 0.5
        _LuminanceTransparencyProgressCoord("Luminance Transparency Progress Coord", Float) = 0.0
        _LuminanceTransparencySharpness("Luminance Transparency Sharpness", Range(0.0, 1.0)) = 0.5
        _LuminanceTransparencySharpnessCoord("Luminance Transparency Sharpness Coord", Float) = 0.0
        _InverseLuminanceTransparency("Inverse Luminance Transparency", Float) = 0.0
        _SoftParticlesEnabled("Soft Particles Enabled", Float) = 0.0
        _SoftParticlesIntensity("Soft Particles Intensity", Float) = 1.0
        _DepthFadeEnabled("Depth Fade Enabled", Float) = 0.0
        _DepthFadeNear("Depth Fade Near", Float) = 1.0
        _DepthFadeFar("Depth Fade Far", Float) = 10.0
        _DepthFadeWidth("Depth Fade Width", Float) = 1.0

        // Vertex Deformation
        _VertexDeformationEnabled ("Vertex Deformation Enabled", Float) = 0
        _VertexDeformationMap ("Vertex Deformation Map", 2D) = "white" {}
        _VertexDeformationMapOffsetXCoord("VertexDeformation Map Offset X Coord", Float) = 0.0
        _VertexDeformationMapOffsetYCoord("VertexDeformation Map Offset Y Coord", Float) = 0.0
        _VertexDeformationMapChannel("VertexDeformation Map Channel", Float) = 0.0
        _VertexDeformationIntensity("VertexDeformation Intensity", Float) = 0.1
        _VertexDeformationIntensityCoord("VertexDeformation Intensity Coord", Float) = 0.0
        _VertexDeformationBaseValue("Vertex Deformation Base Value", Range(0.0, 1.0)) = 0

        // Shadow Caster
        _ShadowCasterEnabled("Shadow Caster", Float) = 0
        _ShadowCasterApplyVertexDeformation("Shadow Caster Vertex Deformation Enabled", Float) = 0
        _ShadowCasterAlphaTestEnabled("Shadow Caster Alpha Test Enabled", Float) = 0
        _ShadowCasterAlphaCutoff("Shadow Caster Alpha Test Cutoff", Range(0.0, 1.0)) = 0.5
        _ShadowCasterAlphaAffectedByTintColor("Shadow Caster Alpha Effect By Tint Color", Float) = 0
        _ShadowCasterAlphaAffectedByFlowMap("Shadow Caster Alpha Effect By Flow Map", Float) = 0
        _ShadowCasterAlphaAffectedByAlphaTransitionMap("Shadow Caster Alpha Effect By Alpha Transition Map", Float) = 0
        _ShadowCasterAlphaAffectedByTransparencyLuminance("Shadow Caster Alpha Effect By Transparency Luminance", Float) = 0
    }

    SubShader
    {
        Tags
        {
            "RenderType" = "Opaque"
            "IgnoreProjector" = "True"
            "PreviewType" = "Plane"
            "PerformanceChecks" = "False"
            "RenderPipeline" = "UniversalPipeline"
        }

        Stencil
        {
            Ref [_Stencil]
            Comp [_StencilComp]
            Pass [_StencilOp]
            ReadMask [_StencilReadMask]
            WriteMask [_StencilWriteMask]
        }

        Pass
        {
            Tags
            {
                "LightMode" = "UniversalForward"
            }
            Blend [_BlendSrc] [_BlendDst]
            ZWrite[_ZWrite]
            Cull[_Cull]
            ColorMask RGB
            Lighting Off
            ZTest [_ZTest]

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 3.5

            // Unity Defined
            #pragma multi_compile_fog
            #pragma multi_compile_instancing
            #pragma multi_compile_fragment _ DEBUG_DISPLAY
            #pragma instancing_options procedural:ParticleInstancingSetup
            #pragma require 2darray

            // Render Settings
            #pragma shader_feature_local_fragment _VERTEX_ALPHA_AS_TRANSITION_PROGRESS
            #pragma shader_feature_local_fragment _ALPHAMODULATE_ENABLED
            #pragma shader_feature_local_fragment _ALPHATEST_ENABLED

            // Base Map
            #pragma shader_feature_local _BASE_MAP_MODE_2D _BASE_MAP_MODE_2D_ARRAY _BASE_MAP_MODE_3D
            #pragma shader_feature_local_vertex _BASE_MAP_RANDOM_ROW_SELECTION_ENABLED
            #pragma shader_feature_local_vertex _BASE_MAP_ROTATION_ENABLED
            #pragma shader_feature_local_fragment _ _BASE_SAMPLER_STATE_POINT_MIRROR _BASE_SAMPLER_STATE_LINEAR_MIRROR _BASE_SAMPLER_STATE_TRILINEAR_MIRROR

            // Tint Color
            #pragma shader_feature_local _ _TINT_AREA_ALL _TINT_AREA_RIM
            #pragma shader_feature_local _ _TINT_COLOR_ENABLED _TINT_MAP_ENABLED _TINT_MAP_3D_ENABLED _TINT_MAP_MODE_2D_ARRAY
            #pragma shader_feature_local_vertex _TINT_MAP_RANDOM_ROW_SELECTION_ENABLED

            // Flow Map
            #pragma shader_feature_local _FLOW_MAP_ENABLED // Obsolete, but retained for compatibility.
            #pragma shader_feature_local _FLOW_MAP_TARGET_BASE
            #pragma shader_feature_local _FLOW_MAP_TARGET_TINT
            #pragma shader_feature_local _FLOW_MAP_TARGET_EMISSION
            #pragma shader_feature_local _FLOW_MAP_TARGET_ALPHA_TRANSITION

            // Parallax Map
            #pragma shader_feature_local _PARALLAX_MAP_TARGET_BASE
            #pragma shader_feature_local _PARALLAX_MAP_TARGET_TINT
            #pragma shader_feature_local _PARALLAX_MAP_TARGET_EMISSION
            #pragma shader_feature_local _PARALLAX_MAP_MODE_2D _PARALLAX_MAP_MODE_2D_ARRAY _PARALLAX_MAP_MODE_3D
            #pragma shader_feature_local_vertex _PARALLAX_MAP_RANDOM_ROW_SELECTION_ENABLED

            // Color Correction
            #pragma shader_feature_local_fragment _ _GREYSCALE_ENABLED _GRADIENT_MAP_ENABLED

            // Alpha Transition
            #pragma shader_feature_local _ _FADE_TRANSITION_ENABLED _DISSOLVE_TRANSITION_ENABLED
            #pragma shader_feature_local _ALPHA_TRANSITION_MAP_MODE_2D _ALPHA_TRANSITION_MAP_MODE_2D_ARRAY _ALPHA_TRANSITION_MAP_MODE_3D
            #pragma shader_feature_local _ _ALPHA_TRANSITION_BLEND_SECOND_TEX_AVERAGE _ALPHA_TRANSITION_BLEND_SECOND_TEX_MULTIPLY
            #pragma shader_feature_local_vertex _ALPHA_TRANSITION_MAP_RANDOM_ROW_SELECTION_ENABLED
            #pragma shader_feature_local_vertex _ALPHA_TRANSITION_MAP_SECOND_TEXTURE_RANDOM_ROW_SELECTION_ENABLED

            // Emission
            #pragma shader_feature_local _ _EMISSION_AREA_ALL _EMISSION_AREA_MAP _EMISSION_AREA_ALPHA
            #pragma shader_feature_local _EMISSION_MAP_MODE_2D _EMISSION_MAP_MODE_2D_ARRAY _EMISSION_MAP_MODE_3D
            #pragma shader_feature_local _ _EMISSION_COLOR_COLOR _EMISSION_COLOR_BASECOLOR _EMISSION_COLOR_MAP
            #pragma shader_feature_local_vertex _EMISSION_MAP_RANDOM_ROW_SELECTION_ENABLED

            // Transparency
            #pragma shader_feature_local _TRANSPARENCY_BY_LUMINANCE
            #pragma shader_feature_local _TRANSPARENCY_BY_RIM
            #pragma shader_feature_local _SOFT_PARTICLES_ENABLED
            #pragma shader_feature_local _DEPTH_FADE_ENABLED

            // Vertex Deformation
            #pragma shader_feature_local_vertex _ _VERTEX_DEFORMATION_ENABLED

            // Rect2D Clip
            #pragma multi_compile_local _ UNITY_UI_CLIP_RECT

            #include "ParticlesUberUnlitForward.hlsl"
            ENDHLSL
        }
    }
    CustomEditor "Nova.Editor.Core.Scripts.UIParticlesUberUnlitGUI"
}
