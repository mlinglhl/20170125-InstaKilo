//
//  PhotoObject.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

- (instancetype)initWithSubject: (NSString *)subject location:(NSString *)location photo:(UIImage *)photo
{
    self = [super init];
    if (self) {
        _subject = subject;
        _location = location;
        _photo = photo;
    }
    return self;
}

@end
