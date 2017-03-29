//
//  ViewController.m
//  ContainerApp
//
//  Created by akshayacharya on 09/03/17.
//  Copyright © 2017 Capgemini. All rights reserved.
//

#import "ViewController.h"
#import "ContainerTableViewCell.h"

@interface ViewController ()
{
    NSMutableArray *appArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initContainerTableData];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initContainerTableData{
    appArray = [NSMutableArray array];
    [appArray addObject:@"Clienteling Agent"];
    [appArray addObject:@"CG Store"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"customContainerCell";
    ContainerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(nil == cell){
        cell = [[ContainerTableViewCell alloc] init];
    }

    if(indexPath.row == 0)
        cell.imgAppIcon.image = [UIImage imageNamed:@"capgemini_logo"];
    else if(indexPath.row == 1)
        cell.imgAppIcon.image = [UIImage imageNamed:@"capgemini_logo"];
    
    cell.lblAppName.text  = [appArray objectAtIndex:indexPath.row];

    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return appArray.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if([[appArray objectAtIndex:indexPath.row] isEqualToString:@"CG Store"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"CGStore://"] relativeToURL:nil] options:nil completionHandler:nil];
    }
    else if([[appArray objectAtIndex:indexPath.row] isEqualToString:@"Clienteling Agent"])
    {
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"Clienteling://"] relativeToURL:nil] options:nil completionHandler:nil];
    }
    
}


@end
