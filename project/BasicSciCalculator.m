//
//  FirstViewController.m
//  project
//
//  Created by Samia Abuzant on 21/11/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import "BasicSciCalculator.h"

@interface FirstViewController ()

@end
@implementation FirstViewController

//I've used the following youtube video to support me while builing the first tab of my app (the Calculator)
//https://www.youtube.com/watch?v=CqqJ5Pz3tus


@synthesize num1, num2, total, operation, enteredNo, lblText;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNum1 : 0];
    [self setNum2: 0];
    [self setOperation: PLUS];
    [self setTotal: 0.0];
    [self setEnteredNo: @"0"];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }
-(void) printNo {
    
    [lblText setText: enteredNo];
    }
- (IBAction)Press9:(id)sender {      //number 9 button
    enteredNo= [ enteredNo stringByAppendingString:@"9"];
    [self printNo];
    }

- (IBAction)Press8:(id)sender {     //number 8 button
    enteredNo= [ enteredNo stringByAppendingString:@"8"];
    [self printNo];
    
    }

- (IBAction)Press7:(id)sender {     //number 7 button
    enteredNo= [ enteredNo stringByAppendingString:@"7"];
    [self printNo];
    
    }
- (IBAction)Press6:(id)sender {     //number 6 button
    enteredNo= [ enteredNo stringByAppendingString:@"6"];
    [self printNo];
    
    }
- (IBAction)Press5:(id)sender {     //number 5 button
    enteredNo= [ enteredNo stringByAppendingString:@"5"];
    [self printNo];
    
    }
- (IBAction)Press4:(id)sender {     //number 4 button
    enteredNo= [ enteredNo stringByAppendingString:@"4"];
    [self printNo];
    
    }
- (IBAction)Press3:(id)sender {     //number 3 button
    enteredNo= [ enteredNo stringByAppendingString:@"3"];
    [self printNo];
    
    }
- (IBAction)Press2:(id)sender {     //number 2 button
    enteredNo= [ enteredNo stringByAppendingString:@"2"];
    [self printNo];
    
    }

- (IBAction)Press1:(id)sender {     //number 1 button
    enteredNo= [ enteredNo stringByAppendingString:@"1"];
    [self printNo];
    
    }
- (IBAction)Press0:(id)sender {     ////number 0 button
    enteredNo= [ enteredNo stringByAppendingString:@"0"];
    [self printNo];
    }
- (IBAction)Calculate:(id)sender {  //this is for the equal sign...it calculates the two numbers num1 and num2 depending on the operation (+,-,*,/)...in this case an if statement is used
    num2 = [enteredNo integerValue];
    
    if (operation==PLUS)
        total= num1 + num2;
        else if (operation==MINUS)
            total= num1 - num2;
            else if (operation==MULTIPLY)
                total= num1 * num2;
            else if (operation==exp)
                total = exp(num1) + exp(num2);
    
                else total= (double)num1 / (double)num2;
    
                    enteredNo=[NSString stringWithFormat:@"%.2f", total];
                    [self printNo];
    num1=0;
    num2=0;
    total= 0.0;
    
    }

-(void)storeNum1 { //this is to store the entered b=number as num1 and reset the enteredno variable so that num2 can be entered
    num1 = [enteredNo integerValue];
    enteredNo= @"0";
    [self printNo];
    }

- (IBAction)setMultiply:(id)sender { //this it to set the multiplication operation
    [self storeNum1];
    operation= MULTIPLY;
    }

- (IBAction)setDivide:(id)sender {  //this it to set the division operation
    [self storeNum1];
    operation= DIVIDE;
    
    }

- (IBAction)setPlus:(id)sender {  //this it to set the addition operation
    [self storeNum1];
    operation=PLUS;
    
    }

- (IBAction)setMinus:(id)sender {  //this it to set the subtraction operation
    [self storeNum1];
    operation=MINUS;
    }

- (IBAction)clearTotal:(id)sender { //this is to clear the calculation so that a new calcuation can take place
    self.enteredNo= @"0";
    [self printNo];
    }

- (IBAction)DEL:(id)sender {  //this allows the user to delete an enetered number one by one instead of deleteing the whole calculation https://stackoverflow.com/questions/13570657/making-a-backspace-button-for-a-calculator
    NSString *Number = [lblText text];
    int length = [Number length];
    NSString *temp =[Number substringToIndex:length-1];
    
        if ([temp length]==0){
        temp=@"0";
        [lblText setText:[NSString stringWithFormat:@"%@",temp]];
        }
    [lblText setText:temp];
    }

- (IBAction)DecimalPoint:(id)sender {
    enteredNo=[enteredNo stringByAppendingString:@"."];
    [self printNo];
    }

- (IBAction)Exponential:(id)sender {    //exponential function
    operation = exp;

    }
@end
