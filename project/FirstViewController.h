//
//  FirstViewController.h
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PLUSE 0 //defining the pluse operation
#define MINUS 1 //defining the minus operation
#define MULTIPLY 2 //defining the multiply operation
#define DIVIDE 3 //defining the divide operation

@interface FirstViewController : UIViewController
{
    NSInteger num1; //defing the first number variable
    NSInteger num2; //defing the second input number
    double total; //this willl be the total of the inputed numbers after applying the operation
    NSString *theNumber; //this is a string used to sotre the entered numbers
    NSInteger operation; //this defines the operations and functions used in this calculator part of the app
    
}
@property (strong, nonatomic) IBOutlet UILabel *lblText;
@property NSInteger num1;
@property  NSInteger num2;
@property double total;
@property (strong, nonatomic) NSString *theNumber;
@property NSInteger operation;

@end

