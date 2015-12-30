//
//  LogMO.h
//  DBapp
//
//  Created by Andres on 12/30/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ChoreMO, PersonMO;

@interface LogMO : NSManagedObject

@property (nonatomic, retain) NSDate * time;
@property (nonatomic, retain) ChoreMO *chore_id;
@property (nonatomic, retain) PersonMO *person_id;

@end
