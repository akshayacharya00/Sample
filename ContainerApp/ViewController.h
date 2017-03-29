//
//  ViewController.h
//  ContainerApp
//
//  Created by akshayacharya on 09/03/17.
//  Copyright © 2017 Capgemini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

