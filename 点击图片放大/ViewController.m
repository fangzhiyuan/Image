//
//  ViewController.m
//  点击图片放大
//
//  Created by 威盛电气 on 16/5/18.
//  Copyright © 2016年 GG. All rights reserved.
//

#import "ViewController.h"
#import "ImageBrowser.h"

@interface ViewController ()
@property(strong,nonatomic)UIImageView *imageView ;

//@property(strong,nonatomic)NSString *string;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    self.imageView.image = [UIImage imageNamed:@"中国银行.jpg"];
    self.imageView.userInteractionEnabled = YES;
    [self.view addSubview:self.imageView];
    
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magnifyImage)];
    
    [self.imageView addGestureRecognizer:tap];
    


    
    
    
    
    
    
    
}


- (void)magnifyImage
{


    [ImageBrowser showImage:self.imageView];//调用方法
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end



























