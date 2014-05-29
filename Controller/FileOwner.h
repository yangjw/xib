//
//  FileOwner.h
//  Controller
//
//  Created by yangjw  on 14-5-29.
//  Copyright (c) 2014年 yangjw . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileOwner : NSObject

@property (nonatomic, weak) IBOutlet UIView *view;

+(id)viewFromNibNamed:(NSString*) nibName;

@end
