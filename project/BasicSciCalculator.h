//
//  FirstViewController.h
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3
@interface FirstViewController : UIViewController
{
    NSInteger num1;
    NSInteger num2;
    NSInteger operation;
    NSString *enteredNo;
    double total;
    IBOutlet UILabel *lblText;
    
}
@property (strong, nonatomic) IBOutlet UILabel *lblText;
@property NSInteger num1;
@property NSInteger num2;
@property NSInteger operation;
@property double total;
@property (strong, nonatomic) NSString *enteredNo;

- (IBAction)setMultiply:(id)sender;
- (IBAction)setDivide:(id)sender;
- (IBAction)setPlus:(id)sender;
- (IBAction)setMinus:(id)sender;
- (IBAction)clearTotal:(id)sender;
- (IBAction)DEL:(id)sender;
- (IBAction)DecimalPoint:(id)sender;
@end

