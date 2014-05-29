//
//  UIView+help.m
//  Controller
//
//  Created by yangjw  on 14-5-29.
//  Copyright (c) 2014年 yangjw . All rights reserved.
//

#import "UIView+help.h"
#import "FileOwner.h"

@implementation UIView (help)

+(id)loadFromNibNamed:(NSString*) nibName {
	
    return [FileOwner viewFromNibNamed:nibName];	
}

+(id)loadFromNib {
	
    return [self loadFromNibNamed:NSStringFromClass(self)];	
}

@end
