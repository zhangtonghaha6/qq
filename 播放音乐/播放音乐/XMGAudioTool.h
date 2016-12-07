//
//  XMGAudioTool.h
//  播放音效
//
//  Created by zhangtong on 16/10/12.
//  Copyright © 2016年 zhangtong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGAudioTool : NSObject

+ (void)playSoundWithSoundName:(NSString *)soundName;

+ (void)playMusicWithFileName:(NSString *)fileName;

@end
