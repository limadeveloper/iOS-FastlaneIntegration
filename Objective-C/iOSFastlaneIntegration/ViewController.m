//
//  ViewController.m
//  iOSFastlaneIntegration
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

#pragma mark - Properties
Model *model;
NSArray *data;
UIRefreshControl * refreshControl;

#pragma mark - View LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    model = [[Model alloc] init];
    data = [[NSArray alloc] init];
    refreshControl = [[UIRefreshControl alloc] init];
    
    [self getData];
    [self updateUI];
}

#pragma mark - Actions
-(void)updateUI {
    
    [refreshControl setTintColor:[UIColor colorWithRed:65 green:70 blue:77 alpha:1]];
    [refreshControl addTarget:self action:@selector(refreshWith:) forControlEvents:UIControlEventValueChanged];
    
    UIView *footer = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.table.tableFooterView = footer;
    self.table.backgroundColor = UIColor.blackColor;
    self.table.refreshControl = refreshControl;
    self.table.dataSource = self;
    self.table.delegate = self;
    
    [self.table reloadData];
}

-(void)getData {
    data = [model getData];
    [refreshControl endRefreshing];
}

-(void)refreshWith:(UIRefreshControl *)sender {
    [self getData];
    [self.table reloadData];
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [data[indexPath.row] name];
    cell.detailTextLabel.text = [data[indexPath.row] rank];
    
    cell.textLabel.textColor = UIColor.whiteColor;
    cell.detailTextLabel.textColor = UIColor.darkGrayColor;
    cell.backgroundColor = UIColor.blackColor;
    cell.contentView.backgroundColor = UIColor.blackColor;
    
    return cell;
}

#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
