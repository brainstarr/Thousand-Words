//
//  Album.h
//  ThousandWords
//
//  Created by Brian Starr on 11/5/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Album : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;

@end
