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
    self.question1 = @{@"question":@"Vad heter Kakans Bror?",
                       @"answer1":@"Willie",
                       @"answer2":@"Chrille Kriminell",
                       @"answer3":@"Knejp",
                       @"answer4":@"Bror",
                       @"correctAnswer":@"Bror"};
    self.question2 = @{@"question":@"Hur många sekunder går det på en timma?",
                       @"answer1":@"60",
                       @"answer2":@"3600",
                       @"answer3":@"660",
                       @"answer4":@"360",
                       @"correctAnswer":@"3600"};
    self.question3 = @{@"question":@"Hur ser man att en bil är från Polen?",
                       @"answer1":@"Det står *från Polen* på den",
                       @"answer2":@"Den är grön",
                       @"answer3":@"Det är rostig",
                       @"answer4":@"Påå lacken",
                       @"correctAnswer":@"Påå lacken"};
    self.question4 = @{@"question":@"Vad är det för dag idag?",
                       @"answer1":@"Måndag",
                       @"answer2":@"Tisdag",
                       @"answer3":@"Onsdag",
                       @"answer4":@"Any day",
                       @"correctAnswer":@"Any day"};
    self.question5 = @{@"question":@"Hur gör Wille?",
                       @"answer1":@"Knådar",
                       @"answer2":@"Rullar",
                       @"answer3":@"Shitterishit",
                       @"answer4":@"Hoppar",
                       @"correctAnswer":@"Shitterishit"};
    self.question6 = @{@"question":@"Behöver vi lära oss Objective-C?",
                       @"answer1":@"Ja för fan",
                       @"answer2":@"Hell no!!!",
                       @"answer3":@"Absolut",
                       @"answer4":@"Ja för fan",
                       @"correctAnswer":@"Hell no!!!"};
    self.question7 = @{@"question":@"Vilken färg har färgen blå?",
                       @"answer1":@"Ingen alls",
                       @"answer2":@"Blå",
                       @"answer3":@"Svart",
                       @"answer4":@"Lila",
                       @"correctAnswer":@"Ingen alls"};
    self.question8 = @{@"question":@"Vad är 1+1?",
                       @"answer1":@"0",
                       @"answer2":@"2",
                       @"answer3":@"2",
                       @"answer4":@"2",
                       @"correctAnswer":@"0"};
    self.question9 = @{@"question":@"Hur hoppar man?",
                       @"answer1":@"Det gör man inte",
                       @"answer2":@"På studsmattan",
                       @"answer3":@"Man hoppar",
                       @"answer4":@"Jämfota",
                       @"correctAnswer":@"Det gör man inte"};
    self.question10 = @{@"question":@"Vad händer när det regnar?",
                       @"answer1":@"Man blir blöt",
                       @"answer2":@"Det blir blött",
                       @"answer3":@"Det regnar",
                       @"answer4":@"Man sitter inne",
                       @"correctAnswer":@"Man sitter inne"};
    self.question11 = @{@"question":@"Vad händer när det regnar?",
                        @"answer1":@"Man blir blöt",
                        @"answer2":@"Det blir blött",
                        @"answer3":@"Det regnar",
                        @"answer4":@"Man sitter inne",
                        @"correctAnswer":@"Man sitter inne"};
    
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
    [self.questionArray addObject:self.question11];

    
}


@end
