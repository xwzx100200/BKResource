//
//  UIImage+BKSourceImage.h
//  BKResource_Example
//
//  Created by i2p on 2021/6/14.
//  Copyright © 2021 xwzx100200@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (BKSourceImage)

+ (UIImage *)sourceImageNamed:(NSString *)imageName;

+ (UIImage *)sourceImageNamed:(NSString *)imageName withBundleName:(NSString *)bundleName withPodName:(NSString *)podName;

@end

NS_ASSUME_NONNULL_END
