//
//  ViewController.m
//  selectPhotos
//
//  Created by Lina on 2018/5/29.
//  Copyright © 2018年 Lina. All rights reserved.
//

#import "ViewController.h"
#import "LNPhotoAlbumListViewController.h"
#import "LNPhotoManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button  =  [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(200, 200, 100, 100)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)btnAction{
    [LNPhotoManager initWithMaxCount:5 type:1 photoArrBlock:^(NSArray *selectPhotoArray) {
        
    }];
//    LNPhotoAlbumListViewController * vc = [[LNPhotoAlbumListViewController alloc]init];
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
//    [self presentViewController:nav animated:NO completion:^{
//
//    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
