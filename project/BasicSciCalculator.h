//
//  FirstViewController.h
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

//I've used the following youtube video to support me while builing the first tab of my app (the Calculator)
//https://www.youtube.com/watch?v=CqqJ5Pz3tus
#import <UIKit/UIKit.h>
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3
@interface FirstViewController : UIViewController //declaring variables
    {
    NSInteger num1;
    NSInteger num2;
    NSInteger operation;
    NSString *enteredNo;
    double total;
    IBOutlet UILabel *lblText;
    
    }
@property (strong, nonatomic) IBOutlet UILabel *lblText; //definging the labels and variables
@property NSInteger num1;
@property NSInteger num2;
@property NSInteger operation;
@property double total;
@property (strong, nonatomic) NSString *enteredNo;

//defining the actions (buttons) used in the calculator
- (IBAction)setMultiply:(id)sender; //multiplication button
- (IBAction)setDivide:(id)sender;   //division button
- (IBAction)setPlus:(id)sender;  //pLus button
- (IBAction)setMinus:(id)sender; //Subtraction button
- (IBAction)clearTotal:(id)sender; //equal sign button for the total
- (IBAction)DEL:(id)sender; // DEL button to delete a digit instead the whole calculation
- (IBAction)DecimalPoint:(id)sender;
- (IBAction)Exponential:(id)sender;
@end

