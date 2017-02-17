//
//  RTCJWPlayerViewManager.m
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/17.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import "RTCJWPlayerViewManager.h"

@implementation RTCJWPlayerViewManager

RCT_EXPORT_MODULE(RCTJWPlayerView)

- (UIView *)view {
    return [JWPlayerView new];
}

RCT_EXPORT_VIEW_PROPERTY(autostart, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onTime, RCTBubblingEventBlock)

@end
