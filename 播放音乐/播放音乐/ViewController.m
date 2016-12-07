//
//  ViewController.m
//  播放音乐
//
//  Created by zhangtong on 16/10/12.
//  Copyright © 2016年 zhangtong. All rights reserved.
//

#import "ViewController.h"

#import <AVFoundation/AVFoundation.h>

#import "XMGAudioTool.h"

@interface ViewController ()

@property (nonatomic,strong)AVAudioPlayer * player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)start:(id)sender {
    //[self.player play];
    
    [XMGAudioTool playMusicWithFileName:@"亡灵序曲.mp3"];
    
    
    
    
}
- (IBAction)pause:(id)sender {
    [self.player pause];
    
}
- (IBAction)stop:(id)sender {
    [self.player stop];
    self.player = nil;
    
    
}

- (AVAudioPlayer *)player {
    if (_player == nil) {
        
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"亡灵序曲.mp3" withExtension:nil];
        
        _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        
        [_player prepareToPlay];
        
    }
    
    return _player;
    
    
}

@end
