//
//  ChoreMO.h
//  DBapp
//
//  Created by Andres on 12/30/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LogMO;

@interface ChoreMO : NSManagedObject

@property (nonatomic, retain) NSString * chore_name;
@property (nonatomic, retain) NSSet *log;
@end

@interface ChoreMO (CoreDataGeneratedAccessors)

- (void)addLogObject:(LogMO *)value;
- (void)removeLogObject:(LogMO *)value;
- (void)addLog:(NSSet *)values;
- (void)removeLog:(NSSet *)values;

@end
