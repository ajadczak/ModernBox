cbuffer cbPerObject : register(b0)
{
	float4x4 gWorldViewProj;
};

struct VertexIn
{
	float3 Pos : POSITION;
	float4 Color : COLOR;
};

struct VertexOut
{
	float4 PosH  : SV_POSITION;
	float4 Color : COLOR;
};

VertexOut main(VertexIn vin)
{
	//transform to homogenous clip space 
	VertexOut vout;
	vout.PosH = mul(float4(vin.Pos, 1.0f), gWorldViewProj);
	vout.Color = vin.Color;
	return vout;
}