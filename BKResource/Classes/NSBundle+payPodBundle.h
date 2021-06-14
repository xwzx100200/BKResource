//
//  NSBundle+payPodBundle.h
//  BKResource_Example
//
//  Created by i2p on 2021/6/14.
//  Copyright © 2021 xwzx100200@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (payPodBundle)

+ (NSBundle *)bundleWithBundleName:(NSString *)bundleName podName:(NSString *)podName;

@end

NS_ASSUME_NONNULL_END
