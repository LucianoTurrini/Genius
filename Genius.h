//
//  Genius.h
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Genius : NSObject
{
    NSArray * cores;
    NSArray * sequencia;
    
}

@property NSString * cores;
@property NSString * sequencia;

-(void) CriarSequencia : (NSString *)cor;

@end
