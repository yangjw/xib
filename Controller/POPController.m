//
//  POPController.m
//  Controller
//
//  Created by yangjw  on 14-5-28.
//  Copyright (c) 2014年 yangjw . All rights reserved.
//

#import "POPController.h"

@interface POPController ()

@end

@implementation POPController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
}

//#pragma mark 是否是书签
//- (void)checkBookmarkRequestFailure:(NSNotification *)notification
//{
//}
//
//- (void)checkBookmarkRequestSuccess:(NSNotification *)notification
//{
//	[[NSNotificationCenter defaultCenter] removeObserver:CheckBookmarkObserver];
//	
//    NSDictionary *result = [notification.object JSONValue];
//	[self actionCheckBookMark:[result[@"log"] boolValue]];
//	//    [self.bookmarkButton setSelected:[result[@"log"] boolValue]];
//	NSLog(@"..........................");
//}
//
//- (void)actionCheckBookMark:(BOOL)isCheck
//{
//	NSString *checkString = nil;
//	if (isCheck)
//	{
//		checkString = @"删除标签";
//	}else
//	{
//		checkString = @"添加标签";
//	}
//	UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:checkString, nil];
//	action.tag = 101;
//	[action showInView:[UIApplication sharedApplication].keyWindow];
//	
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
