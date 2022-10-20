import UIKit
import RxSwift


var disposeBag : DisposeBag? = DisposeBag()

/*
let subject = PublishSubject<String>()   //Obsearvabble
subject.onNext("Hello")
        
let o1 = subject.subscribe{ print(">>1", $0)}
o1.disposed(by: disposeBag ?? DisposeBag() )
        
subject.onNext("Hello")     //>>1   Hello
        
let o2 = subject.subscribe{ print(">>2", $0)}
o2.disposed(by: disposeBag ?? DisposeBag())

subject.onNext("Subject")       // >> 1  Subject
                                // >> 2 Subject

disposeBag = nil
subject.onNext("c")
*/



Observable.just(100)
    .subscribe(onNext: { element in
        print(element)
    })

let customObservable = Observable<String>.create { observer in
    observer.onNext("hi i'm Avocado🥑")
    observer.onCompleted()
    
    return Disposables.create()
}

customObservable.subscribe(onNext: { element in
    print(element)
}, onCompleted: {
    print("onCompleted")
}).disposed(by: disposeBag!)



