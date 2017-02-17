//
//  JWPlayerDelegateProxy.h
//  RCTJWPlayer
//
//  Created by Jack on 2017/2/18.
//  Copyright © 2017年 wilead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWPlayerView.h"

@interface JWPlayerDelegateProxy : NSObject <JWPlayerDelegate>
@property(nonatomic, strong) JWPlayerView *delegate;
@end
