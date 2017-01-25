//
//  PhotoObject.h
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface PhotoObject : NSObject
@property NSString *subject;
@property NSString *location;
@property UIImage *photo;
- (instancetype)initWithSubject: (NSString *)subject location:(NSString *)location photo:(UIImage *)photo;
@end
