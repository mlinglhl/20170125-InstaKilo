//
//  DetailViewController.m
//  20170125 InstaKilo
//
//  Created by Minhung Ling on 2017-01-25.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photoImageView.image = self.photo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
