//
//  ViewController.m
//  DBapp
//
//  Created by Andres on 12/30/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "ChoreMO.h"

@interface ViewController ()
@property (nonatomic) AppDelegate *appDelegate;
@property (weak, nonatomic) IBOutlet UITextField *fieldChore;
@property (weak, nonatomic) IBOutlet UILabel *persistedData;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate = [[UIApplication sharedApplication] delegate];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addChoreTapped:(id)sender {
    ChoreMO *c = [self.appDelegate createChoreMO];
    c.chore_name = self.fieldChore.text;
    [self.appDelegate saveContext];
    [self updateLogList];
}

-(void)updateLogList{
    NSManagedObjectContext *moc = self.appDelegate.managedObjectContext;
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Chore"];
    NSError *error = nil;
    NSArray *results = [moc executeFetchRequest:request error:&error];
    
    if(!results){
        NSLog(@"Error fetching object: %@/n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    
    NSMutableString *buffer = [NSMutableString stringWithString:@""];
    for(ChoreMO *c in results){
        [buffer appendFormat:@"\n%@", c.chore_name, nil];
    }
    self.persistedData.text = buffer;
}

@end
