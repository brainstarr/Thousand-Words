//
//  CoreDataHelper.h
//  ThousandWords
//
//  Created by Brian Starr on 11/7/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlbumTableViewController.h"
#import <CoreData/CoreData.h>

@interface CoreDataHelper : NSObject

+(NSManagedObjectContext *)managedObjectContext;

@end
