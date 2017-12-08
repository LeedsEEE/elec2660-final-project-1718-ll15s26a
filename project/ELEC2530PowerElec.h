//
//  ELEC2530PowerElec.h
//  project
//
//  Created by Samia Abuzant on 02/12/2017.
//  Copyright © 2017 Samia Abuzant. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ELEC2530PowerElec : UIViewController <UITextFieldDelegate>
{
    double Vi;      //declaring the variables
    double Vo;      //
    double K;       //
    double fs;      //
    double di;      //
    double answer;  //
    
}
@property (strong, nonatomic) IBOutlet UILabel *ViLabel;    //linked to the Labels
@property (strong, nonatomic) IBOutlet UILabel *VoLabel;    //
@property (strong, nonatomic) IBOutlet UILabel *KLabel;     //
@property (strong, nonatomic) IBOutlet UILabel *fsLabel;    //
@property (strong, nonatomic) IBOutlet UILabel *dILabel;    //
@property (strong, nonatomic) IBOutlet UILabel *AnswerLabel;//

@property (strong, nonatomic) IBOutlet UITextField *ViTextfield; //definging the textfields
@property (strong, nonatomic) IBOutlet UITextField *VoTextfield; //
@property (strong, nonatomic) IBOutlet UITextField *KTextfield; //
@property (strong, nonatomic) IBOutlet UITextField *fsTextfield;//
@property (strong, nonatomic) IBOutlet UITextField *dITextfield;//
@property (strong, nonatomic) IBOutlet UITextField *LTextfield;//



- (IBAction)Calculate:(id)sender; //Calculate button


@end
