//
//  TlabRenderManager.h
//  Metal_Demo_Texture
//
//  Created by tlab on 2020/9/3.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import <Foundation/Foundation.h>

@import MetalKit;

@interface TlabRenderManager : NSObject<MTKViewDelegate>

- (instancetype)initWithMetalKitView:(MTKView *)mtkView;

@end
