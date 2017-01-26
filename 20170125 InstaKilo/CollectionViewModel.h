//
//  CollectionViewModel.h
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface CollectionViewModel : NSObject <UICollectionViewDataSource>
@property BOOL toggled;
- (void) toggleSection;
- (UIImage*) getPhoto:(NSIndexPath*)path;
- (void) removePhotoAtIndex: (NSIndexPath*)path;
@end
