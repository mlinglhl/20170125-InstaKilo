//
//  ViewController.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewModel.h"
#import "CollectionReusableView.h"

@interface ViewController ()
@property CollectionViewModel *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [CollectionViewModel new];
    self.photoCollectionView.dataSource = self.model;
    // Do any additional setup after loading the view.
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.photoCollectionView.collectionViewLayout;
    CGFloat width = self.view.frame.size.width/2;
    CGSize size = CGSizeMake(width, width);
    layout.itemSize = size;

}
- (IBAction)toggleSegment:(UISegmentedControl *)sender {
    [self.model toggleSection];
    [self.photoCollectionView reloadData];
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
