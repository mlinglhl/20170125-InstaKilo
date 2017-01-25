//
//  PhotoAlbum.h
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoObject.h"

@interface PhotoAlbum : NSObject
@property NSString *sort;
@property NSArray <PhotoObject*> *photoArray;
- (instancetype)initWithSubject: (NSString *) subject;
- (instancetype)initWithLocation: (NSString *) location;
@end
