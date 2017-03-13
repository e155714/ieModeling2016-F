//
//  QuestionViewController.h
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionViewController : UIViewController{
    IBOutlet UILabel *Q;
    IBOutlet UILabel *question;
    
    NSUserDefaults *data;
    NSArray *questionArray;
    
    int count;
    int qNum;
    
}

-(IBAction)tapYes;
-(IBAction)tapNo;

@end