cbuffer cbPerObject : register(b0)
{
	float4x4 gWorldViewProj;
};

struct VertexOut
{
	float4 PosH : SV_POSITION;
	float4 Color : COLOR;
};

float4 main(VertexOut vin) : SV_TARGET
{
	return float4(0.5f, 0.2f, 0.7f, 0.1f);
	//return vin.Color;
}