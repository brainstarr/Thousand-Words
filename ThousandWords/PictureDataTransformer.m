//
//  PictureDataTransformer.m
//  ThousandWords
//
//  Created by Brian Starr on 11/12/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "PictureDataTransformer.h"
#import <UIKit/UIKit.h>

@implementation PictureDataTransformer

+(Class)transformedValueClass{
    return [NSData class];
}

+(BOOL)allowsReverseTransformation{
    return YES;
}

-(id)transformedValue:(id)value
{
    return UIImagePNGRepresentation(value);
}

-(id)reverseTransformedValue:(id)value
{
    UIImage *image = [UIImage imageWithData:value];
    return image;
}

@end
