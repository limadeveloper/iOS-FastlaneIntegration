//
//  Model.h
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KEY_JEDIS @"jedis"
#define KEY_CODE @"id"
#define KEY_NAME @"name"
#define KEY_TRAINEDBY @"trainedBy"
#define KEY_RANK @"rank"
#define KEY_HOLOCRONBIO @"holocronBio"

@interface Model : NSObject

#pragma mark - Properties
@property (assign, nonatomic) int code;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *species;
@property (strong, nonatomic) NSString *trainedBy;
@property (strong, nonatomic) NSString *rank;
@property (strong, nonatomic) NSString *holocronBio;

#pragma mark - Actions
-(id)initWithCode:(int)code andName:(NSString *)name andTrainedBy:(NSString *)trainedBy andRank:(NSString *)rank andHolocronBio:(NSString *)holocronBio;
-(NSArray *)getData;

@end
