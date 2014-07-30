//
//  HPMainController.m
//  提升幸福感
//
//  Created by shaun on 14-7-29.
//  Copyright (c) 2014年 cn.happy. All rights reserved.
//

#import "HPMainController.h"
#import "HPImageController.h"
#import "HPTextController.h"
#import "HPVideoController.h"
#import "HPVoiceController.h"
#import "HPNavigationController.h"

@interface HPMainController ()

@end

@implementation HPMainController

- (void)viewDidLoad
{
    [super viewDidLoad];
        // 添加子控制器
    HPTextController *text = [[HPTextController alloc] init];
    [self addOneChlildVc:text title:@"段子" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    HPImageController *image = [[HPImageController alloc] init];
    [self addOneChlildVc:image title:@"看图" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    
    HPVoiceController *voice = [[HPVoiceController alloc] init];
    [self addOneChlildVc:voice title:@"收听" imageName:@"tabbar_discover" selectedImageName:@"tabbar_discover_selected"];
    
    HPVideoController *video = [[HPVideoController alloc] init];
    [self addOneChlildVc:video title:@"搞笑视频" imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    childVc.view.backgroundColor = HPRandomColor;
    // 设置标题
    childVc.title = title;
    
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageWithName:imageName];
    
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageWithName:selectedImageName];
    if (iOS7) {
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 添加为tabbar控制器的子控制器
    HPNavigationController *nav = [[HPNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}

@end
