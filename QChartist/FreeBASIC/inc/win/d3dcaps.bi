''
''
'' d3dcaps -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __win_d3dcaps_bi__
#define __win_d3dcaps_bi__

#include once "win/ddraw.bi"

type D3DTRANSFORMCAPS
	dwSize as DWORD
	dwCaps as DWORD
end type

type LPD3DTRANSFORMCAPS as D3DTRANSFORMCAPS ptr

#define D3DTRANSFORMCAPS_CLIP &h00000001L

type D3DLIGHTINGCAPS
	dwSize as DWORD
	dwCaps as DWORD
	dwLightingModel as DWORD
	dwNumLights as DWORD
end type

type LPD3DLIGHTINGCAPS as D3DLIGHTINGCAPS ptr

#define D3DLIGHTINGMODEL_RGB &h00000001L
#define D3DLIGHTINGMODEL_MONO &h00000002L
#define D3DLIGHTCAPS_POINT &h00000001L
#define D3DLIGHTCAPS_SPOT &h00000002L
#define D3DLIGHTCAPS_DIRECTIONAL &h00000004L

type D3DPrimCaps
	dwSize as DWORD
	dwMiscCaps as DWORD
	dwRasterCaps as DWORD
	dwZCmpCaps as DWORD
	dwSrcBlendCaps as DWORD
	dwDestBlendCaps as DWORD
	dwAlphaCmpCaps as DWORD
	dwShadeCaps as DWORD
	dwTextureCaps as DWORD
	dwTextureFilterCaps as DWORD
	dwTextureBlendCaps as DWORD
	dwTextureAddressCaps as DWORD
	dwStippleWidth as DWORD
	dwStippleHeight as DWORD
end type

type LPD3DPRIMCAPS as D3DPrimCaps ptr

#define D3DPMISCCAPS_MASKPLANES &h00000001L
#define D3DPMISCCAPS_MASKZ &h00000002L
#define D3DPMISCCAPS_LINEPATTERNREP &h00000004L
#define D3DPMISCCAPS_CONFORMANT &h00000008L
#define D3DPMISCCAPS_CULLNONE &h00000010L
#define D3DPMISCCAPS_CULLCW &h00000020L
#define D3DPMISCCAPS_CULLCCW &h00000040L
#define D3DPRASTERCAPS_DITHER &h00000001L
#define D3DPRASTERCAPS_ROP2 &h00000002L
#define D3DPRASTERCAPS_XOR &h00000004L
#define D3DPRASTERCAPS_PAT &h00000008L
#define D3DPRASTERCAPS_ZTEST &h00000010L
#define D3DPRASTERCAPS_SUBPIXEL &h00000020L
#define D3DPRASTERCAPS_SUBPIXELX &h00000040L
#define D3DPRASTERCAPS_FOGVERTEX &h00000080L
#define D3DPRASTERCAPS_FOGTABLE &h00000100L
#define D3DPRASTERCAPS_STIPPLE &h00000200L
#define D3DPRASTERCAPS_ANTIALIASSORTDEPENDENT &h00000400L
#define D3DPRASTERCAPS_ANTIALIASSORTINDEPENDENT &h00000800L
#define D3DPRASTERCAPS_ANTIALIASEDGES &h00001000L
#define D3DPRASTERCAPS_MIPMAPLODBIAS &h00002000L
#define D3DPRASTERCAPS_ZBIAS &h00004000L
#define D3DPRASTERCAPS_ZBUFFERLESSHSR &h00008000L
#define D3DPRASTERCAPS_FOGRANGE &h00010000L
#define D3DPRASTERCAPS_ANISOTROPY &h00020000L
#define D3DPRASTERCAPS_WBUFFER &h00040000L
#define D3DPRASTERCAPS_TRANSLUCENTSORTINDEPENDENT &h00080000L
#define D3DPRASTERCAPS_WFOG &h00100000L
#define D3DPRASTERCAPS_ZFOG &h00200000L
#define D3DPCMPCAPS_NEVER &h00000001L
#define D3DPCMPCAPS_LESS &h00000002L
#define D3DPCMPCAPS_EQUAL &h00000004L
#define D3DPCMPCAPS_LESSEQUAL &h00000008L
#define D3DPCMPCAPS_GREATER &h00000010L
#define D3DPCMPCAPS_NOTEQUAL &h00000020L
#define D3DPCMPCAPS_GREATEREQUAL &h00000040L
#define D3DPCMPCAPS_ALWAYS &h00000080L
#define D3DPBLENDCAPS_ZERO &h00000001L
#define D3DPBLENDCAPS_ONE &h00000002L
#define D3DPBLENDCAPS_SRCCOLOR &h00000004L
#define D3DPBLENDCAPS_INVSRCCOLOR &h00000008L
#define D3DPBLENDCAPS_SRCALPHA &h00000010L
#define D3DPBLENDCAPS_INVSRCALPHA &h00000020L
#define D3DPBLENDCAPS_DESTALPHA &h00000040L
#define D3DPBLENDCAPS_INVDESTALPHA &h00000080L
#define D3DPBLENDCAPS_DESTCOLOR &h00000100L
#define D3DPBLENDCAPS_INVDESTCOLOR &h00000200L
#define D3DPBLENDCAPS_SRCALPHASAT &h00000400L
#define D3DPBLENDCAPS_BOTHSRCALPHA &h00000800L
#define D3DPBLENDCAPS_BOTHINVSRCALPHA &h00001000L
#define D3DPSHADECAPS_COLORFLATMONO &h00000001L
#define D3DPSHADECAPS_COLORFLATRGB &h00000002L
#define D3DPSHADECAPS_COLORGOURAUDMONO &h00000004L
#define D3DPSHADECAPS_COLORGOURAUDRGB &h00000008L
#define D3DPSHADECAPS_COLORPHONGMONO &h00000010L
#define D3DPSHADECAPS_COLORPHONGRGB &h00000020L
#define D3DPSHADECAPS_SPECULARFLATMONO &h00000040L
#define D3DPSHADECAPS_SPECULARFLATRGB &h00000080L
#define D3DPSHADECAPS_SPECULARGOURAUDMONO &h00000100L
#define D3DPSHADECAPS_SPECULARGOURAUDRGB &h00000200L
#define D3DPSHADECAPS_SPECULARPHONGMONO &h00000400L
#define D3DPSHADECAPS_SPECULARPHONGRGB &h00000800L
#define D3DPSHADECAPS_ALPHAFLATBLEND &h00001000L
#define D3DPSHADECAPS_ALPHAFLATSTIPPLED &h00002000L
#define D3DPSHADECAPS_ALPHAGOURAUDBLEND &h00004000L
#define D3DPSHADECAPS_ALPHAGOURAUDSTIPPLED &h00008000L
#define D3DPSHADECAPS_ALPHAPHONGBLEND &h00010000L
#define D3DPSHADECAPS_ALPHAPHONGSTIPPLED &h00020000L
#define D3DPSHADECAPS_FOGFLAT &h00040000L
#define D3DPSHADECAPS_FOGGOURAUD &h00080000L
#define D3DPSHADECAPS_FOGPHONG &h00100000L
#define D3DPTEXTURECAPS_PERSPECTIVE &h00000001L
#define D3DPTEXTURECAPS_POW2 &h00000002L
#define D3DPTEXTURECAPS_ALPHA &h00000004L
#define D3DPTEXTURECAPS_TRANSPARENCY &h00000008L
#define D3DPTEXTURECAPS_BORDER &h00000010L
#define D3DPTEXTURECAPS_SQUAREONLY &h00000020L
#define D3DPTEXTURECAPS_TEXREPEATNOTSCALEDBYSIZE &h00000040L
#define D3DPTEXTURECAPS_ALPHAPALETTE &h00000080L
#define D3DPTEXTURECAPS_NONPOW2CONDITIONAL &h00000100L
#define D3DPTEXTURECAPS_PROJECTED &h00000400L
#define D3DPTEXTURECAPS_CUBEMAP &h00000800L
#define D3DPTEXTURECAPS_COLORKEYBLEND &h00001000L
#define D3DPTFILTERCAPS_NEAREST &h00000001L
#define D3DPTFILTERCAPS_LINEAR &h00000002L
#define D3DPTFILTERCAPS_MIPNEAREST &h00000004L
#define D3DPTFILTERCAPS_MIPLINEAR &h00000008L
#define D3DPTFILTERCAPS_LINEARMIPNEAREST &h00000010L
#define D3DPTFILTERCAPS_LINEARMIPLINEAR &h00000020L
#define D3DPTFILTERCAPS_MINFPOINT &h00000100L
#define D3DPTFILTERCAPS_MINFLINEAR &h00000200L
#define D3DPTFILTERCAPS_MINFANISOTROPIC &h00000400L
#define D3DPTFILTERCAPS_MIPFPOINT &h00010000L
#define D3DPTFILTERCAPS_MIPFLINEAR &h00020000L
#define D3DPTFILTERCAPS_MAGFPOINT &h01000000L
#define D3DPTFILTERCAPS_MAGFLINEAR &h02000000L
#define D3DPTFILTERCAPS_MAGFANISOTROPIC &h04000000L
#define D3DPTFILTERCAPS_MAGFAFLATCUBIC &h08000000L
#define D3DPTFILTERCAPS_MAGFGAUSSIANCUBIC &h10000000L
#define D3DPTBLENDCAPS_DECAL &h00000001L
#define D3DPTBLENDCAPS_MODULATE &h00000002L
#define D3DPTBLENDCAPS_DECALALPHA &h00000004L
#define D3DPTBLENDCAPS_MODULATEALPHA &h00000008L
#define D3DPTBLENDCAPS_DECALMASK &h00000010L
#define D3DPTBLENDCAPS_MODULATEMASK &h00000020L
#define D3DPTBLENDCAPS_COPY &h00000040L
#define D3DPTBLENDCAPS_ADD &h00000080L
#define D3DPTADDRESSCAPS_WRAP &h00000001L
#define D3DPTADDRESSCAPS_MIRROR &h00000002L
#define D3DPTADDRESSCAPS_CLAMP &h00000004L
#define D3DPTADDRESSCAPS_BORDER &h00000008L
#define D3DPTADDRESSCAPS_INDEPENDENTUV &h00000010L
#define D3DSTENCILCAPS_KEEP &h00000001L
#define D3DSTENCILCAPS_ZERO &h00000002L
#define D3DSTENCILCAPS_REPLACE &h00000004L
#define D3DSTENCILCAPS_INCRSAT &h00000008L
#define D3DSTENCILCAPS_DECRSAT &h00000010L
#define D3DSTENCILCAPS_INVERT &h00000020L
#define D3DSTENCILCAPS_INCR &h00000040L
#define D3DSTENCILCAPS_DECR &h00000080L
#define D3DTEXOPCAPS_DISABLE &h00000001L
#define D3DTEXOPCAPS_SELECTARG1 &h00000002L
#define D3DTEXOPCAPS_SELECTARG2 &h00000004L
#define D3DTEXOPCAPS_MODULATE &h00000008L
#define D3DTEXOPCAPS_MODULATE2X &h00000010L
#define D3DTEXOPCAPS_MODULATE4X &h00000020L
#define D3DTEXOPCAPS_ADD &h00000040L
#define D3DTEXOPCAPS_ADDSIGNED &h00000080L
#define D3DTEXOPCAPS_ADDSIGNED2X &h00000100L
#define D3DTEXOPCAPS_SUBTRACT &h00000200L
#define D3DTEXOPCAPS_ADDSMOOTH &h00000400L
#define D3DTEXOPCAPS_BLENDDIFFUSEALPHA &h00000800L
#define D3DTEXOPCAPS_BLENDTEXTUREALPHA &h00001000L
#define D3DTEXOPCAPS_BLENDFACTORALPHA &h00002000L
#define D3DTEXOPCAPS_BLENDTEXTUREALPHAPM &h00004000L
#define D3DTEXOPCAPS_BLENDCURRENTALPHA &h00008000L
#define D3DTEXOPCAPS_PREMODULATE &h00010000L
#define D3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR &h00020000L
#define D3DTEXOPCAPS_MODULATECOLOR_ADDALPHA &h00040000L
#define D3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR &h00080000L
#define D3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA &h00100000L
#define D3DTEXOPCAPS_BUMPENVMAP &h00200000L
#define D3DTEXOPCAPS_BUMPENVMAPLUMINANCE &h00400000L
#define D3DTEXOPCAPS_DOTPRODUCT3 &h00800000L
#define D3DFVFCAPS_TEXCOORDCOUNTMASK &h0000ffffL
#define D3DFVFCAPS_DONOTSTRIPELEMENTS &h00080000L

type D3DDeviceDesc
	dwSize as DWORD
	dwFlags as DWORD
	dcmColorModel as D3DCOLORMODEL
	dwDevCaps as DWORD
	dtcTransformCaps as D3DTRANSFORMCAPS
	bClipping as BOOL
	dlcLightingCaps as D3DLIGHTINGCAPS
	dpcLineCaps as D3DPRIMCAPS
	dpcTriCaps as D3DPRIMCAPS
	dwDeviceRenderBitDepth as DWORD
	dwDeviceZBufferBitDepth as DWORD
	dwMaxBufferSize as DWORD
	dwMaxVertexCount as DWORD
	dwMinTextureWidth as DWORD
	dwMinTextureHeight as DWORD
	dwMaxTextureWidth as DWORD
	dwMaxTextureHeight as DWORD
	dwMinStippleWidth as DWORD
	dwMaxStippleWidth as DWORD
	dwMinStippleHeight as DWORD
	dwMaxStippleHeight as DWORD
	dwMaxTextureRepeat as DWORD
	dwMaxTextureAspectRatio as DWORD
	dwMaxAnisotropy as DWORD
	dvGuardBandLeft as D3DVALUE
	dvGuardBandTop as D3DVALUE
	dvGuardBandRight as D3DVALUE
	dvGuardBandBottom as D3DVALUE
	dvExtentsAdjust as D3DVALUE
	dwStencilCaps as DWORD
	dwFVFCaps as DWORD
	dwTextureOpCaps as DWORD
	wMaxTextureBlendStages as WORD
	wMaxSimultaneousTextures as WORD
end type

type LPD3DDEVICEDESC as D3DDeviceDesc ptr

type D3DDeviceDesc7
	dwDevCaps as DWORD
	dpcLineCaps as D3DPRIMCAPS
	dpcTriCaps as D3DPRIMCAPS
	dwDeviceRenderBitDepth as DWORD
	dwDeviceZBufferBitDepth as DWORD
	dwMinTextureWidth as DWORD
	dwMinTextureHeight as DWORD
	dwMaxTextureWidth as DWORD
	dwMaxTextureHeight as DWORD
	dwMaxTextureRepeat as DWORD
	dwMaxTextureAspectRatio as DWORD
	dwMaxAnisotropy as DWORD
	dvGuardBandLeft as D3DVALUE
	dvGuardBandTop as D3DVALUE
	dvGuardBandRight as D3DVALUE
	dvGuardBandBottom as D3DVALUE
	dvExtentsAdjust as D3DVALUE
	dwStencilCaps as DWORD
	dwFVFCaps as DWORD
	dwTextureOpCaps as DWORD
	wMaxTextureBlendStages as WORD
	wMaxSimultaneousTextures as WORD
	dwMaxActiveLights as DWORD
	dvMaxVertexW as D3DVALUE
	deviceGUID as GUID
	wMaxUserClipPlanes as WORD
	wMaxVertexBlendMatrices as WORD
	dwVertexProcessingCaps as DWORD
	dwReserved1 as DWORD
	dwReserved2 as DWORD
	dwReserved3 as DWORD
	dwReserved4 as DWORD
end type

type LPD3DDEVICEDESC7 as D3DDeviceDesc7 ptr

type LPD3DENUMDEVICESCALLBACK as function(byval as GUID ptr, byval as LPSTR, byval as LPSTR, byval as LPD3DDEVICEDESC, byval as LPD3DDEVICEDESC, byval as LPVOID) as HRESULT
type LPD3DENUMDEVICESCALLBACK7 as function(byval as LPSTR, byval as LPSTR, byval as LPD3DDEVICEDESC7, byval as LPVOID) as HRESULT

#define D3DDD_COLORMODEL &h00000001L
#define D3DDD_DEVCAPS &h00000002L
#define D3DDD_TRANSFORMCAPS &h00000004L
#define D3DDD_LIGHTINGCAPS &h00000008L
#define D3DDD_BCLIPPING &h00000010L
#define D3DDD_LINECAPS &h00000020L
#define D3DDD_TRICAPS &h00000040L
#define D3DDD_DEVICERENDERBITDEPTH &h00000080L
#define D3DDD_DEVICEZBUFFERBITDEPTH &h00000100L
#define D3DDD_MAXBUFFERSIZE &h00000200L
#define D3DDD_MAXVERTEXCOUNT &h00000400L
#define D3DDEVCAPS_FLOATTLVERTEX &h00000001L
#define D3DDEVCAPS_SORTINCREASINGZ &h00000002L
#define D3DDEVCAPS_SORTDECREASINGZ &h00000004L
#define D3DDEVCAPS_SORTEXACT &h00000008L
#define D3DDEVCAPS_EXECUTESYSTEMMEMORY &h00000010L
#define D3DDEVCAPS_EXECUTEVIDEOMEMORY &h00000020L
#define D3DDEVCAPS_TLVERTEXSYSTEMMEMORY &h00000040L
#define D3DDEVCAPS_TLVERTEXVIDEOMEMORY &h00000080L
#define D3DDEVCAPS_TEXTURESYSTEMMEMORY &h00000100L
#define D3DDEVCAPS_TEXTUREVIDEOMEMORY &h00000200L
#define D3DDEVCAPS_DRAWPRIMTLVERTEX &h00000400L
#define D3DDEVCAPS_CANRENDERAFTERFLIP &h00000800L
#define D3DDEVCAPS_TEXTURENONLOCALVIDMEM &h00001000L
#define D3DDEVCAPS_DRAWPRIMITIVES2 &h00002000L
#define D3DDEVCAPS_SEPARATETEXTUREMEMORIES &h00004000L
#define D3DDEVCAPS_DRAWPRIMITIVES2EX &h00008000L
#define D3DDEVCAPS_HWTRANSFORMANDLIGHT &h00010000L
#define D3DDEVCAPS_CANBLTSYSTONONLOCAL &h00020000L
#define D3DDEVCAPS_HWRASTERIZATION &h00080000L
#define D3DVTXPCAPS_TEXGEN &h00000001L
#define D3DVTXPCAPS_MATERIALSOURCE7 &h00000002L
#define D3DVTXPCAPS_VERTEXFOG &h00000004L
#define D3DVTXPCAPS_DIRECTIONALLIGHTS &h00000008L
#define D3DVTXPCAPS_POSITIONALLIGHTS &h00000010L
#define D3DVTXPCAPS_LOCALVIEWER &h00000020L
#define D3DFDS_COLORMODEL &h00000001L
#define D3DFDS_GUID &h00000002L
#define D3DFDS_HARDWARE &h00000004L
#define D3DFDS_TRIANGLES &h00000008L
#define D3DFDS_LINES &h00000010L
#define D3DFDS_MISCCAPS &h00000020L
#define D3DFDS_RASTERCAPS &h00000040L
#define D3DFDS_ZCMPCAPS &h00000080L
#define D3DFDS_ALPHACMPCAPS &h00000100L
#define D3DFDS_SRCBLENDCAPS &h00000200L
#define D3DFDS_DSTBLENDCAPS &h00000400L
#define D3DFDS_SHADECAPS &h00000800L
#define D3DFDS_TEXTURECAPS &h00001000L
#define D3DFDS_TEXTUREFILTERCAPS &h00002000L
#define D3DFDS_TEXTUREBLENDCAPS &h00004000L
#define D3DFDS_TEXTUREADDRESSCAPS &h00008000L

type D3DFINDDEVICESEARCH
	dwSize as DWORD
	dwFlags as DWORD
	bHardware as BOOL
	dcmColorModel as D3DCOLORMODEL
	guid as GUID
	dwCaps as DWORD
	dpcPrimCaps as D3DPRIMCAPS
end type

type LPD3DFINDDEVICESEARCH as D3DFINDDEVICESEARCH ptr

type D3DFINDDEVICERESULT
	dwSize as DWORD
	guid as GUID
	ddHwDesc as D3DDEVICEDESC
	ddSwDesc as D3DDEVICEDESC
end type

type LPD3DFINDDEVICERESULT as D3DFINDDEVICERESULT ptr

type D3DExecuteBufferDesc
	dwSize as DWORD
	dwFlags as DWORD
	dwCaps as DWORD
	dwBufferSize as DWORD
	lpData as LPVOID
end type

type LPD3DEXECUTEBUFFERDESC as D3DExecuteBufferDesc ptr

#define D3DDEB_BUFSIZE &h00000001l
#define D3DDEB_CAPS &h00000002l
#define D3DDEB_LPDATA &h00000004l
#define D3DDEBCAPS_SYSTEMMEMORY &h00000001l
#define D3DDEBCAPS_VIDEOMEMORY &h00000002l
#define D3DDEBCAPS_MEM (&h00000001l or &h00000002l)

type D3DDEVINFO_TEXTUREMANAGER
	bThrashing as BOOL
	dwApproxBytesDownloaded as DWORD
	dwNumEvicts as DWORD
	dwNumVidCreates as DWORD
	dwNumTexturesUsed as DWORD
	dwNumUsedTexInVid as DWORD
	dwWorkingSet as DWORD
	dwWorkingSetBytes as DWORD
	dwTotalManaged as DWORD
	dwTotalBytes as DWORD
	dwLastPri as DWORD
end type

type LPD3DDEVINFO_TEXTUREMANAGER as D3DDEVINFO_TEXTUREMANAGER ptr

type D3DDEVINFO_TEXTURING
	dwNumLoads as DWORD
	dwApproxBytesLoaded as DWORD
	dwNumPreLoads as DWORD
	dwNumSet as DWORD
	dwNumCreates as DWORD
	dwNumDestroys as DWORD
	dwNumSetPriorities as DWORD
	dwNumSetLODs as DWORD
	dwNumLocks as DWORD
	dwNumGetDCs as DWORD
end type

type LPD3DDEVINFO_TEXTURING as D3DDEVINFO_TEXTURING ptr

#endif
