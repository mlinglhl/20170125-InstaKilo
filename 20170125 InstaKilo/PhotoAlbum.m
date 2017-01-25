//
//  PhotoAlbum.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "PhotoAlbum.h"

typedef NS_ENUM(NSUInteger, SortType) {
    SortTypeSubject,
    SortTypeLocation
};

@implementation PhotoAlbum
- (instancetype)initWithSubject: (NSString *) subject
{
    self = [super init];
    if (self) {
        _sort = subject;
        _photoArray = [self setUpWithType: SortTypeSubject sort: subject];
    }
    return self;
}

- (instancetype)initWithLocation: (NSString *) location
{
    self = [super init];
    if (self) {
        _sort = location;
        _photoArray = [self setUpWithType:SortTypeLocation sort: location];
    }
    return self;
}

-(NSArray *) setUpWithType: (SortType) type sort: (NSString *)subject {
    NSArray *images = @[
                        [[PhotoObject alloc] initWithSubject:@"Object" location:@"Outside" photo:[UIImage imageNamed:@"image1"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Inside" photo:[UIImage imageNamed:@"image2"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Inside" photo:[UIImage imageNamed:@"image3"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Outside" photo:[UIImage imageNamed:@"image4"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Outside" photo:[UIImage imageNamed:@"image5"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Outside" photo:[UIImage imageNamed:@"image6"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Outside" photo:[UIImage imageNamed:@"image7"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Inside" photo:[UIImage imageNamed:@"image8"]],
                        [[PhotoObject alloc] initWithSubject:@"Living" location:@"Inside" photo:[UIImage imageNamed:@"image9"]],
                        [[PhotoObject alloc] initWithSubject:@"Object" location:@"Inside" photo:[UIImage imageNamed:@"image10"]]
                        ];
    NSMutableArray *sortedArray = [NSMutableArray new];
    switch (type) {
        case SortTypeSubject: {
            for (PhotoObject *photo in images) {
                if ([photo.subject isEqualToString:subject]) {
                    [sortedArray addObject:photo];
                }
            }
            return sortedArray;
            break;
        }
        case SortTypeLocation: {
            for (PhotoObject *photo in images) {
                if ([photo.location isEqualToString:subject]) {
                    [sortedArray addObject:photo];
                }
            }
            return sortedArray;
        }
        default:
            return nil;
            break;
    }
}

@end
