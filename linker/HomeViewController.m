//
//  HomeViewController.m
//  linker
//
//  Created by 杨超 on 14-4-10.
//  Copyright (c) 2014年 杨 超. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

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
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"home_bg.png"]];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    
    self.edgesForExtendedLayout = UIRectEdgeNone;//取出头部20个空白
    self.HomeTableView.backgroundColor = [UIColor clearColor];//设置背景色
    self.HomeTableView.bounces = NO;//超出不能滑动
    self.HomeTableView.showsVerticalScrollIndicator = NO;//隐藏滚动条
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellID_Home = @"HomeTableViewCell";
    
    static NSString *cellID_Location = @"LocationCell";
    
    UITableViewCell *cell;
    
    
    
    if (tableView == self.HomeTableView) {
        
         cell = [tableView dequeueReusableCellWithIdentifier:cellID_Home forIndexPath:indexPath];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID_Home];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;//去除点击高亮显示
        
        HomeTableViewCell *home = (HomeTableViewCell *)cell;
    
        int selfRow = indexPath.row;
        home.titleLabel.text = [NSString stringWithFormat:@"我是第%d行",selfRow];
        
        return cell;
        
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:cellID_Location forIndexPath:indexPath];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID_Location];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;//去除点击高亮显示
         return cell;
    }
    
    

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;//设置显示行数
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;//设置为只有一个模块
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}//设置模块内cell的高度




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
