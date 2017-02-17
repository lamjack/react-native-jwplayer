//
//  JWPlayerView.m
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/17.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import "JWPlayerView.h"
#import "JWPlayerDelegateProxy.h"

@implementation JWPlayerView

- (instancetype)init {
    if (self = [super init]) {
        [self addSubview:self.player.view];
    }
    return self;
}

- (JWPlayerController *)player {
    if (!_player) {
        JWConfig *config = [self setupConfig];

        JWPlayerDelegateProxy *proxy = [JWPlayerDelegateProxy new];
        proxy.delegate = self;
        _player = [[JWPlayerController alloc] initWithConfig:config delegate:proxy];
    }
    return _player;
}

- (JWConfig *)setupConfig {
    JWConfig *config = [[JWConfig alloc] init];
    config.controls = YES;
    config.repeat = NO;
    config.premiumSkin = JWPremiumSkinStormtrooper;
    config.autostart = NO;
    config.sources = @[[JWSource sourceWithFile:@"https://cimili-cdn-video-of-word.cimili.com/medium_W11_CET4_A_01_0006.m3u8" label:@"180p Streaming" isDefault:YES],
                       [JWSource sourceWithFile:@"https://cimili-cdn-video-of-word.cimili.com/medium_W11_CET4_A_01_0006.m3u8" label:@"270p Streaming"],
                       [JWSource sourceWithFile:@"https://cimili-cdn-video-of-word.cimili.com/medium_W11_CET4_A_01_0006.m3u8" label:@"720p Streaming"]];
    
    config.stretch = JWStretchUniform;
    return config;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.player.view.frame = self.frame;
    
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleWidth;
    
    self.player.forceFullScreenOnLandscape = YES;
}

-(void)setAutostart:(BOOL)autostart {
    self.player.config.autostart = autostart;
    NSLog(@"autostart %s", autostart ? "true" : "false");
}

// JW Player Delegates
-(void)onJWPlayerTime:(double)position ofDuration:(double)duration {
    if (self.onTime) {
        NSLog(@"123");
        self.onTime(@{@"position": @(position), @"duration": @(duration)});
    }
}

@end
