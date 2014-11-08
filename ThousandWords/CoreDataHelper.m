//
//  CoreDataHelper.m
//  ThousandWords
//
//  Created by Brian Starr on 11/7/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "CoreDataHelper.h"
#import "AppDelegate.h"
#import <CoreData/CoreData.h>
#import "Album.h"

@implementation CoreDataHelper

+(NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(NSManagedObjectContext)])
    {
        context = [delegate managedObjectContext];
    }
    
    return context;
}

@end
