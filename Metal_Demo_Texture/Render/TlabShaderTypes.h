//
//  TlabShaderTypes.h
//  Metal_Demo_Texture
//
//  Created by tlab on 2020/9/3.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#ifndef TlabShaderTypes_h
#define TlabShaderTypes_h

#include <simd/simd.h>

// 缓存区索引值
typedef enum TlabVertexInputIndex {
    //顶点
    TlabVertexInputIndexVertices     = 0,
    //视口大小
    TlabVertexInputIndexViewportSize = 1,
} TlabVertexInputIndex;


//纹理索引
typedef enum TlabTextureIndex {
    TlabTextureIndexBaseColor = 0
} TlabTextureIndex;


//结构体：顶点&纹理坐标
typedef struct {
    //像素空间位置
    vector_float2 position;
    //2D 纹理
    vector_float2 textureCoordinate;
} TlabVertex;


#endif /* TlabShaderTypes_h */
