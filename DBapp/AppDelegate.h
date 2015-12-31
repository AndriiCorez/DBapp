//
//  AppDelegate.h
//  DBapp
//
//  Created by Andres on 12/30/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ChoreMO.h"
#import "PersonMO.h"
#import "LogMO.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
-(ChoreMO *) createChoreMO;
-(PersonMO *) createPersonMO;
-(LogMO *) createLogMO;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;



@end

