//
//  Global.m
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import "Global.h"

@implementation Global

-(NSDictionary *)JSONFromFile:(NSString *)file {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:file ofType:@"json"];
    
    if (!path) {
        return nil;
    }
    
    NSError *error = nil;
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    if (error) {
        return nil;
    }
    
    return json;
}

@end
