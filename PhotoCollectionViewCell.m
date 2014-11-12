//
//  PhotoCollectionViewCell.m
//  ThousandWords
//
//  Created by Brian Starr on 11/11/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#define IMAGEVIEW_BORDER_LENGTH 5

@implementation PhotoCollectionViewCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    
    if (self){
        [self setup];
    }
    return self;
}

-(void)setup{
    self.bounds = CGRectMake(0, 0, 155, 155);
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectInset(self.bounds, IMAGEVIEW_BORDER_LENGTH, IMAGEVIEW_BORDER_LENGTH)];
    [self.contentView addSubview:self.imageView];
}

@end
