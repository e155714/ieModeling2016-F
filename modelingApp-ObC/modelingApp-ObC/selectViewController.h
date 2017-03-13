//
//  selectViewController.h
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/20.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface selectViewController : UIViewController{
    
    IBOutlet UITextField * touroku;
    IBOutlet UITableView * tableView;
    
    NSMutableArray *selectArray;
    NSUserDefaults *selectData;
    NSArray *nsArray;
    
}
-(IBAction)selectTap;
-(IBAction)selectDl;


@end