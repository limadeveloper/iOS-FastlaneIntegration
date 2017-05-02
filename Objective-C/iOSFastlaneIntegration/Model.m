//
//  Model.m
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import "Model.h"
#import "Global.h"

@implementation Model

-(id)initWithCode:(int)code andName:(NSString *)name andTrainedBy:(NSString *)trainedBy andRank:(NSString *)rank andHolocronBio:(NSString *)holocronBio {
    
    self = [super init];
    
    if (self) {
        [self setCode:code];
        [self setName:name];
        [self setTrainedBy:trainedBy];
        [self setRank:rank];
        [self setHolocronBio:holocronBio];
    }
    
    return self;
}

-(id)initWithJSON:(NSDictionary *)json {
    
    self = [super init];
    
    if (self) {
        [self setCode:(int)[json valueForKey:KEY_CODE]];
        [self setName:[json valueForKey:KEY_NAME]];
        [self setTrainedBy:[json valueForKey:KEY_TRAINEDBY]];
        [self setRank:[json valueForKey:KEY_RANK]];
        [self setHolocronBio:[json valueForKey:KEY_HOLOCRONBIO]];
    }
    
    return self;
}

-(NSArray *)getData {
    
    Global *global = [[Global alloc] init];
    NSDictionary *json = [global JSONFromFile:JSON_JEDI];
    NSMutableArray *results = [[NSMutableArray alloc] init];
    
    if (!json) {
        return nil;
    }
    
    NSArray *data = [json valueForKey:KEY_JEDIS];
    
    if (data.count < 1) {
        return nil;
    }
    
    for (NSDictionary *obj in data) {
        Model *model = [[Model alloc] initWithJSON:obj];
        if (!model) { continue; }
        [results addObject:model];
    }
    
    return results;
}

@end
