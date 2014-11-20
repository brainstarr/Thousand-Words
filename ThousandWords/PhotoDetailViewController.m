//
//  PhotoDetailViewController.m
//  ThousandWords
//
//  Created by Brian Starr on 11/18/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotosCollectionViewController.h"
#import "Photo.h"
#import "FiltersCollectionViewController.h"

@interface PhotoDetailViewController ()

@end

@implementation PhotoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.imageView.image = self.photo.image;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//}


- (IBAction)deleteButtonPressed:(UIButton *)sender {
    
    [[self.photo managedObjectContext] deleteObject:self.photo];
    
    NSError *error = nil;
    
    [[self.photo managedObjectContext] save:&error];
    
    if (error){
        NSLog(@"Error");
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Filter Segue"])
    {
        if ([segue.destinationViewController isKindOfClass:[FiltersCollectionViewController class]])
             {
                 FiltersCollectionViewController *targetVC = segue.destinationViewController;
                 targetVC.photo = self.photo;
             }
    }
}

- (IBAction)addFilterButtonPressed:(UIButton *)sender {

    

}
@end
