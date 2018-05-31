//
//  LNSelectPhotosPreviewViewController.m
//  selectPhotos
//
//  Created by Lina on 2018/5/31.
//  Copyright © 2018年 Lina. All rights reserved.
//

#import "LNSelectPhotosPreviewViewController.h"

@interface LNSelectPhotosPreviewViewController ()
@property (nonatomic, strong)UICollectionView *bigImageCollect;

@end

@implementation LNSelectPhotosPreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationController.navigationBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = NO;
}

- (UICollectionView *)bigImageCollect{
    if(!_bigImageCollect){
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        _bigImageCollect = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
        
        layout.itemSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
        
//        [_bigImageCollect registerClass:[bigImageCollectionViewCell class] forCellWithReuseIdentifier:@"myCell"];
        
        _bigImageCollect.delegate = self;
        
        _bigImageCollect.dataSource = self;
        
        _bigImageCollect.backgroundColor = [UIColor blackColor];
        
        _bigImageCollect.pagingEnabled = YES;
        
        layout.minimumLineSpacing = 0;
        
        layout.minimumInteritemSpacing = 0;
        
        _bigImageCollect.showsVerticalScrollIndicator = NO;
        
        _bigImageCollect.showsHorizontalScrollIndicator = NO;
        
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pressBackBtn)];
        [_bigImageCollect addGestureRecognizer:tap];
        [_bigImageCollect setContentOffset:CGPointMake(self.view.frame.size.width *_currentItem, 0)];
//        currentX = self.view.frame.size.width * which;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
