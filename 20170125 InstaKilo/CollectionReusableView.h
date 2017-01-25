//
//  CollectionReusableView.h
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoAlbum;

@interface CollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic) PhotoAlbum *album;

@end
