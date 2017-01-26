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
#import "DetailViewController.h"

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
- (IBAction)removePhoto:(UITapGestureRecognizer *)sender {
    if ([self.photoCollectionView indexPathsForSelectedItems].count > 0) {
    NSArray *array = [self.photoCollectionView indexPathsForSelectedItems];
    [self.model removePhotoAtIndex:array[0]];
    [self.photoCollectionView reloadData];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DetailViewController"]) {
        DetailViewController *dvc = segue.destinationViewController;
        NSArray *paths = [self.photoCollectionView indexPathsForSelectedItems];
        NSIndexPath *path = paths[0];
        dvc.photo = [self.model getPhoto:path];
    }
}
@end
