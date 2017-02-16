//
//  JWPlayerModule.m
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/16.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import "JWPlayerModule.h"

@implementation JWPlayerModule
    
RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(print:(NSString *)name info:(NSDictionary *)info) {
    RCTLogInfo(@"%@: %@", name, info)
}

@end
