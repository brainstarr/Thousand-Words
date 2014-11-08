//
//  CoreDataHelper.m
//  ThousandWords
//
//  Created by Brian Starr on 11/7/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "CoreDataHelper.h"
#import "Album.h"

@implementation CoreDataHelper

+(NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context = [delegate managedObjectContext];
    }
    
    return context;
}

@end
