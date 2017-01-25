//
//  CollectionReusableView.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "CollectionReusableView.h"
#import "PhotoAlbum.h"

@implementation CollectionReusableView

-(void)setAlbum:(PhotoAlbum *)album {
    _album = album;
    self.titleLabel.text = album.sort;
}

@end
