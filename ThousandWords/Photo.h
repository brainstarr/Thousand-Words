//
//  Photo.h
//  ThousandWords
//
//  Created by Brian Starr on 11/14/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Album;

@interface Photo : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) id image;
@property (nonatomic, retain) Album *albumBook;

@end
