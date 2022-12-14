//
//  ContentView.swift
//  1-tests calculator
//
//  10/22(토) 스위프트 기초 보충스터디.특강
//

import SwiftUI
//1)
//view 프로토콜을 따르는 contentView 구조체를 선언한다
struct ContentView: View {
    
    /// /2)
    // body라는 연산 프로퍼티 변수는 'View 프로토콜'. .. 을 따른다
    // some은 당장 생각하지 말자. 그냥 그런거다
    
    ////  6)
    //바인딩될 데이터는 무조건 'State'라는 프로퍼티래퍼를 쓰고
    //내부에서만 호출되도록 'private'라고 걸어준다
    //내용이 바뀌니 당연히 let아닌 'var'
    //그리고
    //초기값("")정해주기
    @State private var myText: String = ""
    
    
    var body: some View {
        //// 3)
        // body의 get 연산값은 지금은 VStack을 만들어
                // 반환하는 것이다.
                // set이 없이때문에 get 키워드는 생략 가능하다
        //get {             <---생략됨
        // return에 앞서 다른 수행될 코드가 없기때문에
                    // return도 생략가능하다
        //return VStack~.         <--생략
        //이런이유들로 vstack 2개가 즉, stack2개가 못들어가는이유에대한 답변
        
        VStack {
            Image(systemName: "globe")
            Text("Hello, world!")
                .font(.headline)
                .fontWeight(.heavy)
            //// 4)
            //print("hello,world")---> 왜안됨? 위에서부터 쭈루룩 내려오면서
            //코드를 일지만 이부분은 하나의 덩어리로 그냥 보여주는역할
            //일종의 하나의 그림으로 인식하지 하나하나실행할 명령어로 인식(X)
            
           ////  7)
            //여기 아래의 '텍스트 필드'에서 입력되는 내용은
            //고스란히~ 실시간으로~ myText에 반영이된다
            //이것을 우리는.       -------> '바인딩' 이라한다.
            TextField("아무거나입력.placeholder기본색은 회색", text: $myText)
           ////  5)
            //참고로 이런거끌어올때 '+'누르는 방식으로 하는걸 부끄러워말길...
            //("아무거나입력")이부분이 기본값이거나 그런건 (x)--->  그저 placeholder로 아무것도 입력안되어있을떄 상시 보여주는값
            //텍스 필드를 집어넣고 help quick누르니깐 이 내용이나옴 아래쪽에
            //Topics
            //            Creating a text field with a string
            //            init(LocalizedStringKey, text: Binding<String>)
            //            Creates a text field with a text label generated from a localized title string.
            //            Available when Label is Text.
            //주목할건 'Binding'이부분.. 아예 대놓고 바인딩써야된다..라함.. ----? $ 표시 그리고 맨위로올라가서 @state로 선언해줌
            
            
            //// 8)
            //이제 $myText라고 바인딩한 곳에서 변경을 가하면
           Text(myText)
            //body가 전체적으로 새로 그려질 것이다.
            //그떄그떄 myText를 반영하게 된다.
            //즉....지금까지의 과정은--------> TextField의 text부분이----> @state의 myText와 일치되어가는 과정이다.
            //(추가실험... 만약 요기 바로위의 Text(myText)이부분을 없애면 스크린샷확인((궁금하지?@@ㅋㅋ 확인하게 될걸??))
            //즉...다시 요약한다면.... <<body안에서 변수의 값을 변경해주어야한다 했을때 @State를 붙여줘야 한다고 이해>>

        }
            
            
            
            
                .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
        }
    }
    




//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//'아이폰용'은 딱하나의 콘텐트뷰만가능. 시작은..
//사실은 이런형태이다


//struct ContentView: View {
//    var body: some View {
//        get {
//            return VStack {
//                VStack {
//                    Text("Hello, world!")
//                        .font(.headline)
//                        .fontWeight(.heavy)
//            }
//                .padding()
//        }
//
//    }
//
