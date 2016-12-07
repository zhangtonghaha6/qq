//
//  XMGAudioTool.m
//  播放音效
//
//  Created by zhangtong on 16/10/12.
//  Copyright © 2016年 zhangtong. All rights reserved.
//

#import "XMGAudioTool.h"

#import <AVFoundation/AVFoundation.h>

@implementation XMGAudioTool

static NSMutableDictionary * _soundIDs;

static NSMutableDictionary * _players;

+ (void)initialize {
    
    _players = [NSMutableDictionary dictionary];
    
    
}

+ (void)playSoundWithSoundName:(NSString *)soundName {
    SystemSoundID soundID = 0;
    
    soundID = [_soundIDs[@"buyao.wav"] unsignedIntValue];
    
    if (soundID == 0) {
        CFURLRef url = (__bridge CFURLRef)[NSURL URLWithString:@"/Users/zhangtong/Library/Developer/CoreSimulator/Devices/04D9D255-9C70-42A9-842A-F635D9C5F497/data/Containers/Data/Application/BF87B998-F487-4A5C-B97A-7F713E940B08/Documents/123.caf"];
        
        AudioServicesCreateSystemSoundID(url, &soundID);
        
        [_soundIDs setObject:@(soundID) forKey:@"buyao.wav"];
        
        
    }
    
    AudioServicesPlaySystemSound(soundID);
    
    
    
    
}

+ (void)playMusicWithFileName:(NSString *)fileName {
    AVAudioPlayer * player = nil;
    
    
    player = _players[fileName];
    
    NSLog(@"%@",player);
    
    
    if (player == nil) {
        
        NSURL * fileUrl = [[NSBundle mainBundle] URLForResource:fileName
                           withExtension:nil];
        
//        [_players setObject:player forKey:fileName];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileUrl error:nil];
        
        [_players setObject:player forKey:fileName];
        
        [player prepareToPlay];
        
        
    }
    
    
    [player play];
    
    
    
    
    
    
    
}

//- (NSMutableDictionary *)_players {
//    if (_players == nil) {
//        
//        _players = [NSMutableDictionary dictionary];
//        
//    }
//    
//    return _players;
//    
//    
//    
//    
//}

@end
