import Foundation

final class HomeDataSource {
  
  // MARK: - Public properties
  
  let speakers: [Speaker] = [
    Speaker(name: "Санатжан", icon: Images.Common.clock.image, time: "10:10 - 10:40", image: Images.Home.sanatzhan.image),
    Speaker(name: "Дмитрий", icon: Images.Common.clock.image, time: "10:40 - 11:10", image: Images.Home.dmitryi.image),
    Speaker(name: "Ильяс", icon: Images.Common.clock.image, time: "11:10 - 11:40", image: Images.Home.ilyas.image),
    Speaker(name: "Асхат", icon: Images.Common.clock.image, time: "11:45 - 12:15", image: Images.Home.askhat.image),
    Speaker(name: "Адина", icon: Images.Common.clock.image, time: "12:15 - 12:45", image: Images.Home.madina.image),
    Speaker(name: "Ерден", icon: Images.Common.clock.image, time: "13:05 - 13:35", image: Images.Home.erden.image),
    Speaker(name: "Рустем", icon: Images.Common.clock.image, time: "13:35 - 14:05", image: Images.Home.rustem.image),
    Speaker(name: "Анатолий", icon: Images.Common.clock.image, time: "13:35 - 14:05", image: Images.Home.anatolyi.image),
    Speaker(name: "Темирлан", icon: Images.Common.clock.image, time: "14:05 - 14:35", image: Images.Home.temirlan.image),
    Speaker(name: "Аманжол", icon: Images.Common.clock.image, time: "14:45 - 15:15", image: Images.Home.amanzhol.image),
    Speaker(name: "Артем", icon: Images.Common.clock.image, time: "15:15 - 15:45", image: Images.Home.artem.image)
  ]
}
