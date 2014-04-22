//
//  HomeViewController.h
//  linker
//
//  Created by 杨超 on 14-4-10.
//  Copyright (c) 2014年 杨 超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITabBarControllerDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *HomeTableView;
@property (weak, nonatomic) IBOutlet UITableView *LocationTableView;

@end
