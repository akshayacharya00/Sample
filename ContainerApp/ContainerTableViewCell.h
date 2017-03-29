//
//  ContainerTableViewCell.h
//  ContainerApp
//
//  Created by akshayacharya on 09/03/17.
//  Copyright © 2017 Capgemini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgAppIcon;
@property (weak, nonatomic) IBOutlet UILabel *lblAppName;
@end
