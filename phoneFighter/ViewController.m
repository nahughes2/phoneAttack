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
    float level = [self.levelText.text floatValue];
    float attack = [self.attackText.text floatValue];
    float defense = [self.defenseText.text floatValue];
    
    //((2 x level + 10) / 250) x (attack/defense)) = damage
    
    float test1 = ((2 * level + 10) / 250);
    float test2 = (attack / defense);
    
    float damage = ((2 * level + 10) / 250) * (attack / defense) * 100;
    
    [self.damageLabel setText: @(damage).stringValue];
}

- (IBAction)resetValues:(id)sender {
    [self.damageLabel setText: @"0"];
    [self.levelText setText: @"1"];
    [self.attackText setText: @"1"];
    [self.defenseText setText: @"1"];

    
}

@end
