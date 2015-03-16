//
//  ViewController.m
//  phoneFighter
//
//  Created by Hughes, Nate on 3/16/15.
//  Copyright (c) 2015 Hughes, Nate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *levelText;
@property (weak, nonatomic) IBOutlet UITextField *attackText;
@property (weak, nonatomic) IBOutlet UITextField *defenseText;
@property (weak, nonatomic) IBOutlet UILabel *damageLabel;
@property (weak, nonatomic) IBOutlet UIButton *runAttackButton;
@property (weak, nonatomic) IBOutlet UISwitch *randomDamageSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *critsSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)runAttackPressed:(id)sender {
    int levelInt = [self.levelText.text integerValue];
    float level = [self.levelText.text floatValue];
    float attack = [self.attackText.text floatValue];
    float defense = [self.defenseText.text floatValue];
    
    //((2 x level + 10) / 250) x (attack/defense)) = damage
    
    float test1 = ((2 * level + 10) / 250);
    float test2 = (attack / defense);
    
    float damage = ((2 * level + 10) / 250) * (attack / defense) * 100;
    
     if([self.randomDamageSwitch isOn]) {
        int random = 1 + arc4random() % (levelInt + 1 - 1);
        damage += random;
    }
    if([self.critsSwitch isOn]) {
        damage = damage * 1.5;
    }
    int damageInt = (int) damage;
    //NSString *damageString = [NSString stringWithFormat:@"%f", damage];
    [self.damageLabel setText: [NSString stringWithFormat:@"%i", damageInt]];
}

- (IBAction)resetValues:(id)sender {
    [self.damageLabel setText: @"0"];
    [self.levelText setText: @"1"];
    [self.attackText setText: @"1"];
    [self.defenseText setText: @"1"];

    
}

@end
