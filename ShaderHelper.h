#pragma once
#ifndef ShaderHelper_h__
#define ShaderHelper_h__
#include <d3d11.h>

class ShaderHelper
{
public:
	//static void CreateShader(const char *filename);
	static HRESULT ShaderHelper::LoadCompiledShader(const char *filename, ID3DBlob **blob);
};

#endif // ShaderHelper_h__