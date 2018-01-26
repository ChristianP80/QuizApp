//
//  GameModel.m
//  QuizApp
//
//  Created by Christian Persson on 2018-01-24.
//  Copyright © 2018 Christian Persson. All rights reserved.
//

#import "GameModel.h"
@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionArray = [[NSMutableArray alloc]init];
        [self generateQuestions];
        
    }
    return self;
}

-(BOOL)isCorrectGuess:(NSString*)guess :(NSDictionary*)question{
    BOOL correctGuessed = NO;
    if ([guess isEqualToString:question[@"correctAnswer"]]) {
        correctGuessed = YES;
    } else {
        correctGuessed = NO;
    }
    return correctGuessed;
}

-(NSDictionary*)getQuestion{
    
    if (self.chosenQuestion){
        [self.questionArray removeObject:self.chosenQuestion];
    }
    if (self.questionArray.count == 0) {
        [self generateQuestions];
    }
    
    int indexx = arc4random_uniform((int)self.questionArray.count);
    self.chosenQuestion = self.questionArray[indexx];
    return self.chosenQuestion;
}

-(void)generateQuestions {
    self.question1 = @{@"question":@"Laphroaig destilleri producerar en speciell Single Malt som har slutlagrats i speciella mindre fat. Vad heter den??",
                       @"answer1":@"Tripple Wood",
                       @"answer2":@"Quarter Cask",
                       @"answer3":@"Select",
                       @"answer4":@"Cask Strength",
                       @"correctAnswer":@"Quarter Cask"};
    self.question2 = @{@"question":@"Vem skrev boken “101 whisky du måste dricka innan du dör”?",
                       @"answer1":@"Magnus Dandanell",
                       @"answer2":@"Roger Melander",
                       @"answer3":@"Örjan Westerlund",
                       @"answer4":@"Glenn Murray",
                       @"correctAnswer":@"Örjan Westerlund"};
    self.question3 = @{@"question":@"När omnämndes whisky för första gången i skrift?",
                       @"answer1":@"1835",
                       @"answer2":@"1768",
                       @"answer3":@"1305",
                       @"answer4":@"1494",
                       @"correctAnswer":@"1494"};
    self.question4 = @{@"question":@"Whiskyn aberfeldy har ett djur som symbol, vilket?",
                       @"answer1":@"Ekorre",
                       @"answer2":@"Häst",
                       @"answer3":@"Örn",
                       @"answer4":@"Fisk",
                       @"correctAnswer":@"Ekorre"};
    self.question5 = @{@"question":@"Hur stor del av all Skotsk whisky som säljs, är blended?",
                       @"answer1":@"ca 90%",
                       @"answer2":@"ca 70%",
                       @"answer3":@"ca 30%",
                       @"answer4":@"ca 55%",
                       @"correctAnswer":@"ca 90%"};
    self.question6 = @{@"question":@"Vilken skotsk whisky var den enda som hade tillstånd att säljas under förbudstiden i USA på 1920-talet – i medicinskt syfte?",
                       @"answer1":@"Longmorn",
                       @"answer2":@"Balvenie",
                       @"answer3":@"Laphroaig",
                       @"answer4":@"Auchentoshan",
                       @"correctAnswer":@"Laphroaig"};
    self.question7 = @{@"question":@"Vilket var det första whiskydestilleriet i Skottland som år 1824 valde att licensiera sig?",
                       @"answer1":@"Aberlour",
                       @"answer2":@"Glenlivet",
                       @"answer3":@"Macallan",
                       @"answer4":@"Laphroaig",
                       @"correctAnswer":@"Glenlivet"};
    self.question8 = @{@"question":@"På tio topp listan över världens mest sålda whisky återfinner vi 7 whisky från ett och samma land (plats 1, 2, 4, 5, 6, 8 och 10) vilket land?",
                       @"answer1":@"Skottland",
                       @"answer2":@"Indien",
                       @"answer3":@"Irland",
                       @"answer4":@"Japan",
                       @"correctAnswer":@"Indien"};
    self.question9 = @{@"question":@"Den första kvinnliga ”Master Blender” inom Skotsk whiskyindustri blev Rachel Barrie hos Glenmorangie. Vilket år fick hon sin titel?",
                       @"answer1":@"2008",
                       @"answer2":@"2003",
                       @"answer3":@"2012",
                       @"answer4":@"2010",
                       @"correctAnswer":@"2003"};
    self.question10 = @{@"question":@"I vilken av följande drinkar finns det INTE whisk(e)y?",
                       @"answer1":@"Irish Cofee",
                       @"answer2":@"Manhattan",
                       @"answer3":@"Blody Mary",
                       @"answer4":@"Rusty Nail",
                       @"correctAnswer":@"Blody Mary"};
//    self.question11 = @{@"question":@"Vad händer när det regnar?",
//                        @"answer1":@"Man blir blöt",
//                        @"answer2":@"Det blir blött",
//                        @"answer3":@"Det regnar",
//                        @"answer4":@"Man sitter inne",
//                        @"correctAnswer":@"Man sitter inne"};
    
    [self.questionArray addObject:self.question1];
    [self.questionArray addObject:self.question2];
    [self.questionArray addObject:self.question3];
    [self.questionArray addObject:self.question4];
    [self.questionArray addObject:self.question5];
    [self.questionArray addObject:self.question6];
    [self.questionArray addObject:self.question7];
    [self.questionArray addObject:self.question8];
    [self.questionArray addObject:self.question9];
    [self.questionArray addObject:self.question10];
//    [self.questionArray addObject:self.question11];

    
}


@end
