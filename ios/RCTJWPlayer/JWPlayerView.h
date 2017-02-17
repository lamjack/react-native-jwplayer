//
//  JWPlayerView.h
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/17.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JWPlayer-iOS-SDK/JWPlayerController.h>
#import "RCTViewManager.h"

@interface JWPlayerView : UIView
@property(nonatomic, strong) JWPlayerController *player;
@property(nonatomic, strong) NSString *title;
@property(nonatomic) BOOL autostart;
@property(nonatomic, copy) RCTBubblingEventBlock onTime;
-(void)onJWPlayerTime:(double)position ofDuration:(double)duration;
@end
