//
//  QuestionGenerator.swift
//  test_tutorial_project
//
//  Created by Arthur Belyankov on 3/6/19.
//  Copyright © 2019 Arthur Belyankov. All rights reserved.
//

import Foundation


class QuestionGenerator{
    static func getFootballQuizQuestions() -> [Question]{
        var questions = [Question]()
        questions.append(Question("Лучший бомбардир в истории лиги чемпионов","Роналду","asddsa","Руни","Бензема", .A,"https://e2.365dm.com/17/03/768x432/skysports-wayne-rooney-manchester-united-football_3900486.jpg?20170301120018"))
        questions.append(Question("Чемпион АПЛ 2018","Эвертон","Круз азул","Реал","ман сити", .D,"https://e2.365dm.com/17/03/768x432/skysports-wayne-rooney-manchester-united-football_3900486.jpg?20170301120018"))
        questions.append(Question("Чемпион ла лиги 2017","барселона","Real","Atletico","Chealsea", .A,"https://e2.365dm.com/17/03/768x432/skysports-wayne-rooney-manchester-united-football_3900486.jpg?20170301120018"))
        questions.append(Question("Champion of Ligue 1 2018","PSG","Monako","Marsel","Lion", .B,"https://e2.365dm.com/17/03/768x432/skysports-wayne-rooney-manchester-united-football_3900486.jpg?20170301120018"))
        questions.append(Question("Winner of cup of Kazakhstan","Atirau","Taraz","Kairat","Astana", .C,"https://e2.365dm.com/17/03/768x432/skysports-wayne-rooney-manchester-united-football_3900486.jpg?20170301120018"))
        
        return questions
    }
    
    static func getCinemaQuizQuestions() -> [Question]{
        var questions = [Question]()
        questions.append(Question("Оскар за лучший фильм 2019","Мстители","Зеленая книга"," Начало","Темный рыцарь", .B,"https://www.familyandmedia.eu/wp-content/uploads/2018/03/cinema-Familyandmedia-900x444.jpg"))
        questions.append(Question("фильм Кристофера нолана","Люди икс","книга джунглей"," Темный рыцарь","Выживший", .C,"https://www.familyandmedia.eu/wp-content/uploads/2018/03/cinema-Familyandmedia-900x444.jpg"))
        questions.append(Question("Оскар за лучший фильм 2019","Мстители","Зеленая книга"," Начало","Темный рыцарь", .B,"https://www.familyandmedia.eu/wp-content/uploads/2018/03/cinema-Familyandmedia-900x444.jpg"))
        questions.append(Question("Оскар за лучший фильм 2019","Мстители","Зеленая книга"," Начало","Темный рыцарь", .B,"https://www.familyandmedia.eu/wp-content/uploads/2018/03/cinema-Familyandmedia-900x444.jpg"))
        questions.append(Question("Оскар за лучший фильм 2019","Мстители","Зеленая книга"," Начало","Темный рыцарь", .B,"https://www.familyandmedia.eu/wp-content/uploads/2018/03/cinema-Familyandmedia-900x444.jpg"))
        
        return questions
        
    }
    
    static func getArtQuizQuestions() -> [Question]{
        var questions = [Question]()
        questions.append(Question("who is the best чемпионов","Роналду","Месси","Руни","Бензема", .A,"https://cdn.steemitimages.com/DQmPgK575YnZP6uWG3iDMqPicEqrrwgVgSGTPmo1SqSpxS8/3402463-KNVHBTVS-7.jpg"))
        questions.append(Question("Лучший бомбардир в истории лиги чемпионов","Роналду","Месси","Руни","Бензема", .A,"https://cdn.steemitimages.com/DQmPgK575YnZP6uWG3iDMqPicEqrrwgVgSGTPmo1SqSpxS8/3402463-KNVHBTVS-7.jpg"))
        questions.append(Question("Лучший бомбардир в истории лиги чемпионов","Роналду","Месси","Руни","Бензема", .A,"https://cdn.steemitimages.com/DQmPgK575YnZP6uWG3iDMqPicEqrrwgVgSGTPmo1SqSpxS8/3402463-KNVHBTVS-7.jpg"))
        questions.append(Question("Лучший бомбардир в истории лиги чемпионов","Роналду","Месси","Руни","Бензема", .A,"https://cdn.steemitimages.com/DQmPgK575YnZP6uWG3iDMqPicEqrrwgVgSGTPmo1SqSpxS8/3402463-KNVHBTVS-7.jpg"))
        questions.append(Question("Лучший бомбардир в истории лиги чемпионов","Роналду","Месси","Руни","Бензема", .A,"https://cdn.steemitimages.com/DQmPgK575YnZP6uWG3iDMqPicEqrrwgVgSGTPmo1SqSpxS8/3402463-KNVHBTVS-7.jpg"))
        
        return questions
        
    }
}
