//
//  compulsoryViewController.h
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface compulsoryViewController : UIViewController{
    IBOutlet UITextField * touroku;
    IBOutlet UITableView * tableView;
    
    NSMutableArray *compulsoryArray;
    NSUserDefaults *compulsoryData;
    NSArray *nsArray;
    
}

-(IBAction)tourokuTap;
-(IBAction)dl;

@end

