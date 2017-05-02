//
//  Global.h
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import <Foundation/Foundation.h>

#define JSON_JEDI @"jedi"

@interface Global : NSObject

-(NSDictionary *)JSONFromFile:(NSString *)file;
@end
