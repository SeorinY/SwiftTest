import UIKit
import RxSwift

print("hello!")


let disposeBag = DisposeBag()

let subject = PublishSubject<String>()   //Obsearvabble
print("1")
subject.onNext("Hello")
let o1 = subject.subscribe{ print(">>1", $0)}
o1.disposed(by: disposeBag)

print("2")
subject.onNext("Hello")     //>>1   Hello

let o2 = subject.subscribe{ print(">>2", $0)}
o2.disposed(by: disposeBag)
print("3")
subject.onNext("Hello")       // >> 1  Subject
                                // >> 2 Subject
//disposeBag = nil
//subject.onNext("Hello")

/*
//MARK: Create Observable by just, of, from
Observable.just("hi i'm Avocado🥑")
    .subscribe { element in
        print(element)
    } onCompleted: {
        print("completed!")
    } onDisposed: {
        print("disposed!")
    }



//MARK: Create Observable    -> Stream 을 직접 만들어줌
let customObservable = Observable<String>.create { observer in
    observer.onNext("hi i'm Avocado🥑")
    observer.onCompleted()
    return Disposables.create()
}

/*
customObservable
    .subscribe { element in
        print(element)
    } onCompleted: {
        print("completed!")
    } onDisposed: {
        print("disposed!")
    }
*/


customObservable
    .subscribe { element in
        print(element)
    } onCompleted: {
        print("completed!")
    }

let a = Disposable.create(with: )
*/
