//
//  commonViewController.h
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface commonViewController : UIViewController{
    IBOutlet UITextField * touroku;
    IBOutlet UITableView * tableView;
    
    NSMutableArray *commonArray;
    NSUserDefaults *commonData;
    NSArray *nsArray;
    

}
-(IBAction)commonTap;

-(IBAction)commondl;

@end

