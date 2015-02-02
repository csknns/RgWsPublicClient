//
//  CKNViewController.h
//  RgWsPublicClient
//
//  Created by Christos Koninis on 01/28/2015.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CKNViewController : UIViewController<UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UITextField *AFMTextField;

- (IBAction)fetchInformation:(UITextField *)sender;
@end
