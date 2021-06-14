//
//  NSString+BKSourceJsonStr.m
//  Pods
//
//  Created by i2p on 2021/6/14.
//

#import "NSString+BKSourceJsonStr.h"
#import "NSBundle+payPodBundle.h"

@implementation NSString (BKSourceJsonStr)

+ (NSDictionary *)sourceJsonStrToDic:(NSString *)jsonName {
    NSString *jsonStr = [self sourceJsonStr:jsonName];
    if ([jsonStr isEqualToString:@""]) {
        return @{};
    }
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:jsonStr] options:kNilOptions error:nil];
    if (jsonDic) {
        return jsonDic;
    }
    return @{};
}

+ (NSString *)sourceJsonStr:(NSString *)jsonName {
    return [self sourceJsonStr:jsonName withBundleName:@"BKResource" withPodName:@"BKResource"];
}

+ (NSString *)sourceJsonStr:(NSString *)jsonName withBundleName:(NSString *)bundleName withPodName:(NSString *)podName {
    if (jsonName && jsonName.length > 0) {
        NSBundle *resource_bundle = [NSBundle bundleWithBundleName:bundleName podName:podName];
        if (!resource_bundle) {
            return @"";
        }
        NSString *jsonStr = [resource_bundle pathForResource:jsonName ofType:@"json"];
        if (jsonStr && ![jsonStr isEqualToString:@""]) {
            return jsonStr;
        }
        return @"";
    }else {
        return @"";
    }
}

@end
