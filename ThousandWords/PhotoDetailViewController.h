//
//  PhotoDetailViewController.h
//  ThousandWords
//
//  Created by Brian Starr on 11/18/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@interface PhotoDetailViewController : UIViewController

@property (strong, nonatomic) Photo *photo;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)deleteButtonPressed:(UIButton *)sender;
- (IBAction)addFilterButtonPressed:(UIButton *)sender;

@end
