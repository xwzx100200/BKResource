//
//  NSString+BKSourceJsonStr.h
//  Pods
//
//  Created by i2p on 2021/6/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (BKSourceJsonStr)

+ (NSDictionary *)sourceJsonStrToDic:(NSString *)jsonName;

+ (NSString *)sourceJsonStr:(NSString *)jsonName;

+ (NSString *)sourceJsonStr:(NSString *)jsonName withBundleName:(NSString *)bundleName withPodName:(NSString *)podName;

@end

NS_ASSUME_NONNULL_END
