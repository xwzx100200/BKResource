//
//  UIImage+BKSourceImage.m
//  BKResource_Example
//
//  Created by i2p on 2021/6/14.
//  Copyright © 2021 xwzx100200@163.com. All rights reserved.
//

#import "UIImage+BKSourceImage.h"
#import "NSBundle+payPodBundle.h"

@implementation UIImage (BKSourceImage)

+ (UIImage *)sourceImageNamed:(NSString *)imageName {
    return [self sourceImageNamed:imageName withBundleName:@"BKResource" withPodName:@"BKResource"];
}

+ (UIImage *)sourceImageNamed:(NSString *)imageName withBundleName:(NSString *)bundleName withPodName:(NSString *)podName {
    if (imageName && imageName.length > 0) {
        NSBundle *resource_bundle = [NSBundle bundleWithBundleName:bundleName podName:podName];
        if (!resource_bundle) {
            return [UIImage imageNamed:@""];
        }
        UIImage *image = [UIImage imageNamed:imageName
                                        inBundle:resource_bundle compatibleWithTraitCollection:nil];
        return image ? image : [UIImage imageNamed:@""];
    }else {
        return [UIImage imageNamed:@""];
    }
}

@end
