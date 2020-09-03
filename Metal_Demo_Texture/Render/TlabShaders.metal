//
//  TlabShaders.metal
//  Metal_Demo_Texture
//
//  Created by tlab on 2020/9/3.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#include <metal_stdlib>
//使用命名空间 Metal
using namespace metal;

// 导入Metal shader 代码和执行Metal API命令的C代码之间共享的头
#import "TlabShaderTypes.h"

//顶点着色器输出/片元着色器输入
typedef struct {
    float4 clipSpacePosition [[position]];
    float2 textureCoordinate;
} RasterizerData;


//顶点着色函数
vertex RasterizerData
vertexShader(uint vertexID [[vertex_id]], constant TlabVertex *vertexArray [[buffer(TlabVertexInputIndexVertices)]], constant vector_uint2 *viewportSizePointer [[buffer(TlabVertexInputIndexViewportSize)]]) {
    
    RasterizerData out;
    
    out.clipSpacePosition = vector_float4(0.0, 0.0, 0.0, 1.0);
    
    float2 pixelSpacePosition = vertexArray[vertexID].position.xy;
    
    return out;
}
