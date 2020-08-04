//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Harry Nicholas on 03/12/2019.
//  Copyright © 2019 Harry Nicholas. All rights reserved.
//

//Socials image assets found at: www.thestudentsunion.co.uk/opportunities/societies/
//Personality type image assets used from: www.16personalities.com/free-personality-test



import Foundation
import UIKit

struct  Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
}


enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: PersonalityType
    
}

enum PersonalityType: String {
    case arch = "Architect", logic = "Logician", comm = "Commander", deb = "Debater", advoc = "Advocate", medi = "Mediator", prota = "Protagonist", camp = "Campaigner", logis = "Logistician", def = "Defender", exec = "Executive", cons = "Consul", virt = "Virtuoso", adven = "Adventurer", entre = "Entrepreneur", enter = "Entertainer" //personality type


var definition: String { //personality description
    switch self { //Checking what answer it matches to
    case.arch:
        return "Imaginative and strategic thinkers, with a plan for everything."
    case.logic:
        return "Innovative inventors with an unquenchable thirst for knowledge."
    case.comm:
        return "Bold, imaginative and strong-willed leaders, always finding a way – or making one."
    case.deb:
        return "Smart and curious thinkers who cannot resist an intellectual challenge."
    case.advoc:
            return "Quiet and mystical, yet very inspiring and tireless idealists."
    case.medi:
            return "Poetic, kind and altruistic people, always eager to help a good cause."
    case.prota:
            return "Charismatic and inspiring leaders, able to mesmerize their listeners."
    case.camp:
            return "Enthusiastic, creative and sociable free spirits, who can always find a reason to smile."
    case.logis:
             return "Practical and fact-minded individuals, whose reliability cannot be doubted."
     case.def:
             return "Very dedicated and warm protectors, always ready to defend their loved ones."
     case.exec:
             return "Excellent administrators, unsurpassed at managing things – or people."
     case.cons:
             return "Extraordinarily caring, social and popular people, always eager to help."
    case.virt:
                return "Bold and practical experimenters, masters of all kinds of tools."
    case.adven:
                return "Flexible and charming artists, always ready to explore and experience something new."
    case.entre:
                return "Smart, energetic and very perceptive people, who truly enjoy living on the edge."
    case.enter:
                return "Spontaneous, energetic and enthusiastic people – life is never boring around them."
    }

    
}
   var image: UIImage { //personality description
   switch self { //Checking what answer it matches to
   case.arch:
           return UIImage(named: ("architecture.jpg"))!
       case.logic:
           return UIImage(named: ("law.png"))!
       case.comm:
          return UIImage(named: ("law.png"))!
        case.deb:
           return UIImage(named: ("debating.png"))!
       case.advoc:
               return UIImage(named: ("psychology.jpg"))!
       case.medi:
             return UIImage(named: ("english.jpg"))!
       case.prota:
               return UIImage(named: ("marketing.jpg"))! //Marketing and Events Society
       case.camp:
               return UIImage(named: ("psychology.jpg"))!
       case.logis:
                return UIImage(named: ("police.jpg"))!
        case.def:
                 return UIImage(named: ("mentalhealth.png"))!
        case.exec:
                return UIImage(named: ("law.png"))!
        case.cons:
               return UIImage(named: ("mentalhealth.png"))!
       case.virt:
                   return UIImage(named: ("engineering.png"))!
       case.adven:
                   return UIImage(named: ("photography.jpg"))!
       case.entre:
                   return UIImage(named: ("marketing.jpg"))!
       case.enter:
                   return UIImage(named: ("drama.png"))!
    }

}
    var label1: String { //personality description
        switch self { //Checking what answer it matches to
        case.arch:
            return "Architecture"
        case.logic:
            return "Law"
        case.comm:
            return "Law"
        case.deb:
            return "Debating Society"
        case.advoc:
                return "Psychology"
        case.medi:
                return "English"
        case.prota:
                return "Marketing"
        case.camp:
                return "Psychology"
        case.logis:
                 return "Police"
         case.def:
                 return "Mental Health Awareness"
         case.exec:
                 return "Law"
         case.cons:
                 return "Mental Health Awareness"
        case.virt:
                    return "Engineering"
        case.adven:
                    return "Photography"
        case.entre:
                    return "Marketing"
        case.enter:
                    return "Drama"
        }

        
    }
    
    var image2: UIImage { //personality description
       switch self { //Checking what answer it matches to
       case.arch:
               return UIImage(named: ("chess.jpg"))!
           case.logic:
               return UIImage(named: ("forensics.jpg"))! //Forensic Science
           case.comm:
              return UIImage(named: ("marketing.jpg"))!
            case.deb:
               return UIImage(named: ("law.png"))!
           case.advoc:
                   return UIImage(named: ("mentalhealthnursing.jpg"))!
           case.medi:
                 return UIImage(named: ("film.jpg"))! //Filmmaking Society
           case.prota:
                   return UIImage(named: ("debating.jpg"))!
           case.camp:
                   return UIImage(named: ("mentalhealthnursing.jpg"))!
           case.logis:
                    return UIImage(named: ("law.png"))!
            case.def:
                     return UIImage(named: ("mentalhealthnursing.jpg"))!
            case.exec:
                    return UIImage(named: ("marketing.jpg"))!
            case.cons:
                   return UIImage(named: ("mentalhealthnursing.jpg"))!
           case.virt:
                       return UIImage(named: ("art.jpg"))!
           case.adven:
                       return UIImage(named: ("rock.jpg"))!
           case.entre:
                       return UIImage(named: ("football.jpg"))!
           case.enter:
                       return UIImage(named: ("rock.jpg"))!
        }

    }
    
    var label2: String { //personality description
           switch self { //Checking what answer it matches to
           case.arch:
               return "Chess"
           case.logic:
               return "Forensic Science"
           case.comm:
               return "Marketing"
           case.deb:
               return "Law"
           case.advoc:
                   return "Mental Health Nursing"
           case.medi:
                   return "Filmmaking"
           case.prota:
                   return "Debating"
           case.camp:
                   return "Mental Health Nursing"
           case.logis:
                    return "Law"
            case.def:
                    return "Mental Health Nursing"
            case.exec:
                    return "Marketing"
            case.cons:
                    return "Mental Health Nursing"
           case.virt:
                       return "Art"
           case.adven:
                       return "Rock & Metal Society"
           case.entre:
                       return "UWE Football"
           case.enter:
                       return "Rock & Metal Society"
           }

           
       }
    
    var image3: UIImage { //personality description
       switch self { //Checking what answer it matches to
       case.arch:
               return UIImage(named: ("engineering.png"))! //Engineering Without Borders
           case.logic:
               return UIImage(named: ("wise.jpg"))!
           case.comm:
              return UIImage(named: ("debating.png"))!
            case.deb:
               return UIImage(named: ("sociology.png"))!
           case.advoc:
                   return UIImage(named: ("doc.png"))!
           case.medi:
                 return UIImage(named: ("journalism.png"))!
           case.prota:
                   return UIImage(named: ("realestate.jpg"))!
           case.camp:
                   return UIImage(named: ("debating.png"))!
           case.logis:
                    return UIImage(named: ("economics.jpg"))!
            case.def:
                     return UIImage(named: ("occupational.jpg"))!
            case.exec:
                    return UIImage(named: ("doc.png"))!
            case.cons:
                   return UIImage(named: ("marketing.jpg"))!
           case.virt:
                       return UIImage(named: ("forensics.jpg"))!
           case.adven:
                       return UIImage(named: ("art.jpg"))!
           case.entre:
                       return UIImage(named: ("rugby.png"))!
           case.enter:
                       return UIImage(named: ("photography.png"))!
        }

    }
    
    var label3: String { //personality description
        switch self { //Checking what answer it matches to
        case.arch:
            return "Engineering"
        case.logic:
            return "Women In Science and Engineering Society (WISE)"
        case.comm:
            return "Debating Society"
        case.deb:
            return "Sociology"
        case.advoc:
                return "Doc Society"
        case.medi:
                return "Journalism"
        case.prota:
                return "Real Estate"
        case.camp:
                return "Debating"
        case.logis:
                 return "Economics"
         case.def:
                 return "Occupational Therapy"
         case.exec:
                 return "Doc Society"
         case.cons:
                 return "Marketing and Events Society"
        case.virt:
                    return "Forensics"
        case.adven:
                    return "Art"
        case.entre:
                    return "UWE Rugby"
        case.enter:
                    return "Photography"
        }

        
    }
    
    var image4: UIImage { //personality description
       switch self { //Checking what answer it matches to
       case.arch:
               return UIImage(named: ("civil.png"))! //Civil Engineering Society
           case.logic:
               return UIImage(named: ("biomedical.png"))!
           case.comm:
              return UIImage(named: ("PAIRS.png"))! //Politics and International Relations
            case.deb:
               return UIImage(named: ("psychology.jpg"))!
           case.advoc:
                   return UIImage(named: ("yoga.jpg"))!
           case.medi:
                 return UIImage(named: ("psychology.jpg"))!
           case.prota:
                   return UIImage(named: ("TED.jpg"))!
           case.camp:
                   return UIImage(named: ("PAIRS.png"))!
           case.logis:
                    return UIImage(named: ("maths.jpg"))!
            case.def:
                     return UIImage(named: ("physio.jpg"))!
            case.exec:
                    return UIImage(named: ("economics.jpg"))!
            case.cons:
                   return UIImage(named: ("prehosp.jpg"))! //Pre Hospital Simulation
           case.virt:
                       return UIImage(named: ("police.jpg"))!
           case.adven:
                       return UIImage(named: ("videogames.png"))!
           case.entre:
                       return UIImage(named: ("cheerleading.png"))!
           case.enter:
                       return UIImage(named: ("football.jpg"))!
        }

    }
    
    var label4: String { //personality description
        switch self { //Checking what answer it matches to
        case.arch:
            return "Civil Engineering"
        case.logic:
            return "Biomedical Science"
        case.comm:
            return "PAIRS (Politics and International Relations)"
        case.deb:
            return "Psychology"
        case.advoc:
                return "Yoga"
        case.medi:
                return "Psychology"
        case.prota:
                return "TED x UWE"
        case.camp:
                return "PAIRS (Politics and International Relations)"
        case.logis:
                 return "Mathematics"
         case.def:
                 return "Physiotherapy"
         case.exec:
                 return "Economics"
         case.cons:
                 return "Pre Hospital Simulation"
        case.virt:
                    return "Police"
        case.adven:
                    return "Video Games"
        case.entre:
                    return "UWE Cheerleading"
        case.enter:
                    return "UWE Football"
        }

        
    }
    
    var image5: UIImage { //personality description
          switch self { //Checking what answer it matches to
          case.arch:
                  return UIImage(named: ("poker.png"))!
              case.logic:
                  return UIImage(named: ("robotics.png"))!
              case.comm:
                 return UIImage(named: ("trading.jpg"))! //Trading and Investment Society (UWETIS)
               case.deb:
                  return UIImage(named: ("PAIRS.png"))!
              case.advoc:
                      return UIImage(named: ("prehosp.jpg"))! //Pre Hospital Simulation
              case.medi:
                    return UIImage(named: ("mentalhealthnursing.jpg"))!
              case.prota:
                      return UIImage(named: ("womenstalk.jpg"))!
              case.camp:
                      return UIImage(named: ("police.jpg"))!
              case.logis:
                       return UIImage(named: ("cyber.png"))! //Cybersecurity Society
               case.def:
                        return UIImage(named: ("physician.jpg"))! // UWE Physician Associate Society
               case.exec:
                       return UIImage(named: ("medical.png"))!
               case.cons:
                      return UIImage(named: ("medical.png"))!
              case.virt:
                          return UIImage(named: ("prehosp.png"))!
              case.adven:
                          return UIImage(named: ("drama.png"))!
              case.entre:
                          return UIImage(named: ("americanfootball.png"))!
              case.enter:
                          return UIImage(named: ("pole.png"))!
           }

       }
    
    var label5: String { //personality description
           switch self { //Checking what answer it matches to
           case.arch:
               return "Poker"
           case.logic:
               return "Robotics"
           case.comm:
               return "Trading and Investment Society (UWETIS)"
           case.deb:
               return "PAIRS (Politics and International Relations)"
           case.advoc:
                   return "Pre Hospital Simulation"
           case.medi:
                   return "Mental Health Nursing"
           case.prota:
                   return "Women's Talk"
           case.camp:
                   return "Police"
           case.logis:
                    return "Cyber Security"
            case.def:
                    return "UWE Physician Associate Society"
            case.exec:
                    return "Medical Science"
            case.cons:
                    return "Medical Science"
           case.virt:
                       return "Pre Hospitalisation Simulation"
           case.adven:
                       return "Drama"
           case.entre:
                       return "UWE American Football"
           case.enter:
                       return "Pole Fitness"
           }

           
       }
    
    var image6: UIImage { //personality description
          switch self { //Checking what answer it matches to
          case.arch:
                  return UIImage(named: ("wise.jpg"))! //Women In Science and Engineering
              case.logic:
                  return UIImage(named: ("space.jpg"))!
              case.comm:
                 return UIImage(named: ("PR.jpg"))! //Public Relations
               case.deb:
                  return UIImage(named: ("philosophy.jpg"))!
              case.advoc:
                      return UIImage(named: ("photography.jpg"))!
              case.medi:
                    return UIImage(named: ("physio.jpg"))!
              case.prota:
                      return UIImage(named: ("barschool.png"))!
              case.camp:
                      return UIImage(named: ("forensics.jpg"))!
              case.logis:
                       return UIImage(named: ("trading.jpg"))!//Trading and Investment Society (UWETIS)
               case.def:
                        return UIImage(named: ("psychology.jpg"))!
               case.exec:
                       return UIImage(named: ("trading.jpg"))!
               case.cons:
                      return UIImage(named: ("trading.jpg"))! //Trading and Investment Society (UWETIS)
              case.virt:
                          return UIImage(named: ("wise.jpg"))!
              case.adven:
                          return UIImage(named: ("esports.png"))!
              case.entre:
                          return UIImage(named: ("rugby.png"))!
              case.enter:
                          return UIImage(named: ("quidditch.png"))!
           }

       }
    
    var label6: String { //personality description
        switch self { //Checking what answer it matches to
        case.arch:
            return "Women in Science and Engineering (WISE)"
        case.logic:
            return "Space"
        case.comm:
            return "Public Relations (PR)"
        case.deb:
            return "Philosophy"
        case.advoc:
                return "Photography"
        case.medi:
                return "Physiotherapy"
        case.prota:
                return "Bar School"
        case.camp:
                return "Forensics"
        case.logis:
                 return "Trading and Investment Society (UWETIS)"
         case.def:
                 return "Psychology"
         case.exec:
                 return "Trading and Investment Society (UWETIS)"
         case.cons:
                 return "Trading and Investment Society (UWETIS)"
        case.virt:
                    return "Women in Science and Engineering (WISE)"
        case.adven:
                    return "Esports"
        case.entre:
                    return "UWE Rugby"
        case.enter:
                    return "Quidditch"
        }

        
    }
    
    var PersonalityImage: UIImage { //personality description
       switch self { //Checking what answer it matches to
       case.arch:
               return UIImage(named: ("architect.png"))! //Engineering Without Borders
           case.logic:
               return UIImage(named: ("logic.png"))!
           case.comm:
              return UIImage(named: ("commander.png"))!
            case.deb:
               return UIImage(named: ("debater.png"))!
           case.advoc:
                   return UIImage(named: ("advocate.png"))!
           case.medi:
                 return UIImage(named: ("medi.png"))!
           case.prota:
                   return UIImage(named: ("protag.png"))!
           case.camp:
                   return UIImage(named: ("campaigner.png"))!
           case.logis:
                    return UIImage(named: ("logist.png"))!
            case.def:
                     return UIImage(named: ("defender.png"))!
            case.exec:
                    return UIImage(named: ("exec.png"))!
            case.cons:
                   return UIImage(named: ("consul.png"))!
           case.virt:
                       return UIImage(named: ("virtuoso.png"))!
           case.adven:
                       return UIImage(named: ("adventurer.png"))!
           case.entre:
                       return UIImage(named: ("entrepreneur.png"))!
           case.enter:
                       return UIImage(named: ("entertainer.png"))!
        }

    }
    
    
}
