//
//  ViewController.m
//  JZVideoDemo
//
//  Created by jinzelu on 15/6/2.
//  Copyright (c) 2015年 jinzelu. All rights reserved.
//

#import "ViewController.h"
#import "VedioDetailViewController.h"

@interface ViewController ()
{
    UIButton *_playBtn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initViews{
    _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _playBtn.frame = CGRectMake(100, 100, 100, 40);
    [_playBtn setTitle:@"播放视频" forState:UIControlStateNormal];
    [_playBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_playBtn addTarget:self action:@selector(OnPlayBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_playBtn];
}

-(void)OnPlayBtn:(UIButton *)sender{
    VedioDetailViewController *vedioVC = [[VedioDetailViewController alloc] init];
    NSString *fileUrl = @"http://v.chuanke.com/vedio/1/08/65/10865711ff6997a671e6622352385208.mp4";
    NSLog(@"fileUrl:%@",fileUrl);
    vedioVC.FileUrl = fileUrl;
    [self.navigationController pushViewController:vedioVC animated:YES];
    
}

@end
