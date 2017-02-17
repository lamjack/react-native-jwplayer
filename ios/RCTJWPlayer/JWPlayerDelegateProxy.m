//
//  JWPlayerDelegateProxy.m
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/18.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import "JWPlayerDelegateProxy.h"

@implementation JWPlayerDelegateProxy

-(void)onTime:(double)position ofDuration:(double)duration {
    [self.delegate onJWPlayerTime:position ofDuration:duration];
}

@end
