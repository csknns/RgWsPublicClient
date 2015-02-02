//
//  CKNViewController.m
//  RgWsPublicClient
//
//  Created by Christos Koninis on 01/28/2015.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import "CKNViewController.h"
#import "CKNUITableViewCellStyleValue1.h"
#import <RgWsPublicClient/RgWsPublicClient.h>

@interface CKNViewController ()

@property (strong ,nonatomic) NSDictionary *basicUserInfoTitlesAndResults;
@property (strong ,nonatomic) NSDictionary *businessActivitiesTitlesAndResults;
@property (strong ,nonatomic) NSArray *titlesForSections;
@end

@implementation CKNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.titlesForSections = @[@"Basic User Information", @"Business Activities"];
    [self.tableView registerClass:[CKNUITableViewCellStyleValue1 class]
           forCellReuseIdentifier:@"CKNUITableViewCellStyleValue1"];
    
    UIToolbar *keyboardToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    keyboardToolbar.barTintColor = [UIColor lightGrayColor];
    keyboardToolbar.translucent = NO;
    UISegmentedControl *barButton = [[UISegmentedControl alloc] initWithItems:@[@"Cancel"]];
    barButton.momentary = YES;
    [barButton addTarget:self.AFMTextField action:@selector(resignFirstResponder) forControlEvents:UIControlEventValueChanged];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:barButton];
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [keyboardToolbar setItems:@[flexibleSpace, barButtonItem]];
    self.AFMTextField.inputAccessoryView = keyboardToolbar;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fetchInformation:(UITextField *)sender
{
    NSLog(@"calling operation");
    [sender resignFirstResponder];
    [self disableControls];
    
    typeof (self) weakSelf = self;
    [[RgWsPublicClient sharedInstance] rgWsPublicAfmMethodCallForAfm:sender.text Success:^(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out, RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out, NSNumber *pCallSeqId_out, RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser) {
        typeof (self) selfRef = weakSelf;
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"MMM dd, yyyy HH:mm"];
        NSLog(@"doyDescr     : %@", rgWsPublicBasicRt_out.doyDescr);
        
        NSMutableDictionary *titlesAndResultsM = [NSMutableDictionary new];
        titlesAndResultsM[@"afm"] = rgWsPublicBasicRt_out.afm;
        titlesAndResultsM[@"onomasia"] = rgWsPublicBasicRt_out.onomasia;
        titlesAndResultsM[@"doyDescr"] = rgWsPublicBasicRt_out.doyDescr;
        titlesAndResultsM[@"commerTitle"] = rgWsPublicBasicRt_out.commerTitle;

        //uncomment to display full information
//        if (rgWsPublicBasicRt_out.stopDate) {
//            titlesAndResultsM[@"stopDate"] = [format stringFromDate:rgWsPublicBasicRt_out.stopDate];
//        }
//        titlesAndResultsM[@"postalAddressNo"] = rgWsPublicBasicRt_out.postalAddressNo;
//        titlesAndResultsM[@"doy"] = rgWsPublicBasicRt_out.doy;
//        titlesAndResultsM[@"legalStatusDescr"] = rgWsPublicBasicRt_out.legalStatusDescr;
//        if (rgWsPublicBasicRt_out.registDate) {
//            titlesAndResultsM[@"registDate"] = [format stringFromDate:rgWsPublicBasicRt_out.registDate];
//        }
//        titlesAndResultsM[@"deactivationFlag"] = rgWsPublicBasicRt_out.deactivationFlag;
//        titlesAndResultsM[@"deactivationFlagDescr"] = rgWsPublicBasicRt_out.deactivationFlagDescr;
//        titlesAndResultsM[@"postalAddress"] = rgWsPublicBasicRt_out.postalAddress;
//        titlesAndResultsM[@"firmFlagDescr"] = rgWsPublicBasicRt_out.firmFlagDescr;
//        titlesAndResultsM[@"postalAreaDescription"] = rgWsPublicBasicRt_out.postalAreaDescription;
//        titlesAndResultsM[@"INiFlagDescr"] = rgWsPublicBasicRt_out.INiFlagDescr;
//        titlesAndResultsM[@"postalZipCode"] = rgWsPublicBasicRt_out.postalZipCode;
        selfRef.basicUserInfoTitlesAndResults = [titlesAndResultsM copy];

        NSMutableDictionary *businessActivitiesTitlesAndResultsM = [NSMutableDictionary new];
        for (RgWsPublic_RgWsPublicFirmActRtUser *user in arrayOfRgWsPublicFirmActRt_out.RgWsPublicFirmActRtUser) {
            NSLog(@"firmActDescr: %@ %@", user.firmActKindDescr, user.firmActDescr);
            businessActivitiesTitlesAndResultsM[@"ActDescr"] = user.firmActDescr;
        }
        selfRef.businessActivitiesTitlesAndResults = [businessActivitiesTitlesAndResultsM copy];

        [selfRef.tableView reloadData];
        [selfRef enableControls];
        
    } failure:^(NSError *error) {
        NSLog(@"%@ %@", [error class], [error localizedDescription]);
        typeof (self) selfRef = weakSelf;
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];

        [selfRef enableControls];
    }];
}

- (void)disableControls
{
    self.AFMTextField.enabled = NO;
    [self.activityIndicator startAnimating];
}

- (void)enableControls
{
    self.AFMTextField.enabled = YES;
    [self.activityIndicator stopAnimating];
}

#pragma mark - UITableView datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.titlesForSections.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.titlesForSections[section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger numberOfRows;
    
    if (section == 1) {
        numberOfRows = [[self.businessActivitiesTitlesAndResults allKeys] count];
    }
    else {
        numberOfRows = [[self.basicUserInfoTitlesAndResults allKeys] count];
    }
    
    return numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CKNUITableViewCellStyleValue1 *cell =
    [self.tableView dequeueReusableCellWithIdentifier:@"CKNUITableViewCellStyleValue1"];
    
    if (indexPath.section == 1) {
        cell.textLabel.text = (NSString *)([self.businessActivitiesTitlesAndResults allKeys][indexPath.row]);
        cell.detailTextLabel.numberOfLines = 3;
        cell.detailTextLabel.text = (NSString *)self.businessActivitiesTitlesAndResults[cell.textLabel.text];
    }
    else {
        cell.textLabel.text = (NSString *)([self.basicUserInfoTitlesAndResults allKeys][indexPath.row]);
        cell.detailTextLabel.text = (NSString *)self.basicUserInfoTitlesAndResults[cell.textLabel.text];
    }
    
    return cell;
}

@end
