//
//  FileOwner.m
//  Controller
//
//  Created by yangjw  on 14-5-29.
//  Copyright (c) 2014年 yangjw . All rights reserved.
//

#import "FileOwner.h"

@implementation FileOwner

+(id)viewFromNibNamed:(NSString*) nibName {
	
    FileOwner *owner = [self new];
	
    [[NSBundle mainBundle] loadNibNamed:nibName owner:owner options:nil];
	
    return owner.view;
	
}
@end
