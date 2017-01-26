//
//  CollectionViewModel.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "CollectionViewModel.h"
#import "CollectionViewCell.h"
#import "CollectionReusableView.h"
#import "PhotoObject.h"
#import "PhotoAlbum.h"

@interface CollectionViewModel ()
@property NSArray <PhotoAlbum *> *subjectAlbum;
@property NSArray <PhotoAlbum *> *locationAlbum;
@property NSArray <PhotoAlbum *>*activeCategoryArray;
@end

@implementation CollectionViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _subjectAlbum = @[[[PhotoAlbum alloc] initWithSubject:@"Object"],
                          [[PhotoAlbum alloc] initWithSubject:@"Living"]
                          ];
        NSArray *album = @[[[PhotoAlbum alloc] initWithLocation:@"Outside"],
                                 [[PhotoAlbum alloc] initWithLocation:@"Inside"]];
        _locationAlbum = album;
        _activeCategoryArray = album;
        _toggled = NO;
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.activeCategoryArray[section].photoArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.activeCategoryArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    PhotoAlbum *album = self.activeCategoryArray[indexPath.section];
    PhotoObject *photoObject = album.photoArray[indexPath.row];
    cell.photoImageView.image = photoObject.photo;
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    CollectionReusableView *crv = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"crv" forIndexPath:indexPath];
    crv.album = self.activeCategoryArray[indexPath.section];
    return crv;
}

-(void) toggleSection {
    self.activeCategoryArray = (self.toggled) ? self.locationAlbum : self.subjectAlbum;
    self.toggled = !self.toggled;
}

- (UIImage*) getPhoto:(NSIndexPath*)path {
    PhotoAlbum *album = self.activeCategoryArray[path.section];
    PhotoObject *photoObject = album.photoArray[path.row];
    return photoObject.photo;
}

- (void) removePhotoAtIndex: (NSIndexPath*)path {
    NSMutableArray *array = [[NSMutableArray alloc] initWithArray:self.activeCategoryArray[path.section].photoArray];
    [array removeObjectAtIndex:path.row];
    self.activeCategoryArray[path.section].photoArray = array;
    if (array.count == 0) {
        NSMutableArray *array = [[NSMutableArray alloc] initWithArray:self.activeCategoryArray];
        [array removeObjectAtIndex:path.section];
        self.activeCategoryArray = array;
    }
}

@end
