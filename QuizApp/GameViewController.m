//
//  ViewController.m
//  QuizApp
//
//  Created by Christian Persson on 2018-01-21.
//  Copyright © 2018 Christian Persson. All rights reserved.
//

#import "GameViewController.h"
#import "GameModel.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UIButton *firstChoice;
@property (weak, nonatomic) IBOutlet UIButton *secondChoice;
@property (weak, nonatomic) IBOutlet UIButton *thirdChoice;
@property (weak, nonatomic) IBOutlet UIButton *fourthChoice;
@property (weak, nonatomic) IBOutlet UILabel *rightOrWrong;
@property (nonatomic) GameModel *game;
@property (nonatomic) NSDictionary *theQuestion;
@property (nonatomic) int questionCounter;
@property (weak, nonatomic) IBOutlet UILabel *scoreTable;
@property(nonatomic) int rightGuesses;
@property (weak, nonatomic) IBOutlet UIButton *nextQuestion;
@property (weak, nonatomic) IBOutlet UIButton *playAgain;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.question.layer.cornerRadius = 10;
    self.question.clipsToBounds = YES;
    self.firstChoice.layer.cornerRadius = 10;
    self.secondChoice.layer.cornerRadius = 10;
    self.thirdChoice.layer.cornerRadius = 10;
    self.fourthChoice.layer.cornerRadius = 10;
    self.rightOrWrong.layer.cornerRadius = 10;
    self.rightOrWrong.clipsToBounds = YES;
    self.nextQuestion.hidden = YES;
    self.playAgain.hidden = YES;
    self.game = [[GameModel alloc] init];
    [self showQuestion];
}

- (IBAction)nextQustion:(id)sender {
    [self showQuestion];
    [self buttonsEnabled];
    self.rightOrWrong.text = @"";
}
- (IBAction)newGame:(id)sender {
    self.questionCounter = 0;
    self.rightGuesses = 0;
    [self showQuestion];
    self.rightOrWrong.text = @"";
    [self showButtons];
    [self buttonsEnabled];
}

-(void)showQuestion{
    
    self.theQuestion = [self.game getQuestion];

    self.question.text = [self.theQuestion objectForKey:@"question"];
    [self.firstChoice setTitle:[self.theQuestion objectForKey:@"answer1"] forState:UIControlStateNormal];
    [self.secondChoice setTitle:[self.theQuestion objectForKey:@"answer2"] forState:UIControlStateNormal];
    [self.thirdChoice setTitle:[self.theQuestion objectForKey:@"answer3"] forState:UIControlStateNormal];
    [self.fourthChoice setTitle:[self.theQuestion objectForKey:@"answer4"] forState:UIControlStateNormal];
}

- (IBAction)makeGuess:(UIButton*)sender {
    BOOL isCorrect;
    self.questionCounter ++;

    NSString *theGuess = sender.titleLabel.text;
    isCorrect = [self.game isCorrectGuess:theGuess :self.theQuestion];
    if (isCorrect) {
        self.rightOrWrong.text = @"Correct answer!";
        self.rightGuesses++;
    } else {
        self.rightOrWrong.text = @"Wrong answer";
    }
    [self buttonsDisabled];
    if (self.questionCounter > 4) {
        self.scoreTable.text = [NSString stringWithFormat: @"You scored %i out of %i questions ",self.rightGuesses ,self.questionCounter];
    }
    if (self.questionCounter == 10) {
        [self hideButtons];
        self.playAgain.hidden = NO;
        self.rightOrWrong.text = @"";
    }
}

- (void) buttonsEnabled {
        self.firstChoice.enabled = YES;
        self.secondChoice.enabled = YES;
        self.thirdChoice.enabled = YES;
        self.fourthChoice.enabled = YES;
        self.nextQuestion.hidden = YES;
        self.playAgain.hidden = YES;
    }
-(void)buttonsDisabled {
        self.firstChoice.enabled = NO;
        self.secondChoice.enabled = NO;
        self.thirdChoice.enabled = NO;
        self.fourthChoice.enabled = NO;
        self.nextQuestion.hidden = NO;
        self.playAgain.hidden = YES;
}

-(void)hideButtons {
    self.firstChoice.hidden = YES;
    self.secondChoice.hidden = YES;
    self.thirdChoice.hidden = YES;
    self.fourthChoice.hidden = YES;
    self.nextQuestion.hidden = YES;
}

-(void)showButtons {
    self.firstChoice.hidden = NO;
    self.secondChoice.hidden = NO;
    self.thirdChoice.hidden = NO;
    self.fourthChoice.hidden = NO;
    self.nextQuestion.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
