//
//  ViewController.m
//  Metal_Demo_Texture
//
//  Created by tlab on 2020/9/3.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import "ViewController.h"
#import "TlabRenderManager.h"

@import MetalKit;

@interface ViewController () {
    MTKView *_mtkView;
    TlabRenderManager *_render;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //1.创建一个 MTKView
    _mtkView = [[MTKView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_mtkView];
    
    //2.一个 MTLDevice 对象就代表着一个 GPU，通常我们可以调用方法 MTLCreateSystemDefaultDevice() 来获取代表默认的 GPU 单个对象
    _mtkView.device = MTLCreateSystemDefaultDevice();
    if (!_mtkView.device) {
        NSLog(@"Metal is not supported on the device");
        return;
    }
    
    //3.创建 render
    _render = [[TlabRenderManager alloc] initWithMetalKitView:_mtkView];
    if (!_render) {
        NSLog(@"Render failed initialization");
        return;
    }
    
    //用视图大小初始化渲染器
    [_render mtkView:_mtkView drawableSizeWillChange:_mtkView.drawableSize];
    
    //设置 MTKView 的代理
    _mtkView.delegate = _render;
}


@end
