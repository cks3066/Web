vnm -> node -> npm -> yarn -> CRA

-JSX

HTML in JS > JSX

함수형 컴포넌트들을 만들어서
빈 껍데기 html에 필요한 것만 올려서 구현함

이것을 SPA 라고 부른다


리액트에서는 딱 하나의 html 파일만 존재한다.


HTML을 품은 JS === JSX!

확장된 자바스크립트 문법

const start_half = <div>
<h1>안녕하세요!</h1>
<p>시작이 반이다!</p>
</div>;

마크업 태크, html 문법처럼 보이지만 리액트의 요소들이다.

import, export 가능

JSX 규칙
1. 태그는 꼭 닫아주기
2. 무조건 1개의 엘리먼트 반환하기
3. JSX에서 javascript 값을 가져오려면?
4. class 대신 classsName!
5. 인라인으로 style 주기

- 컴포넌트

리액트는 레고고 component는 레고의 한 블럭이다.

componet는 클래스형과 함수형이 있습니다.
생김새와 용도가 다른데 react가 발전을 거듭하면서 이젠 생김새만 다르다고 봐도 무방합니다.

우리는 이 강의에서 두가지를 다 써볼거에요.

클래스 vs 함수
함수형 컴포넌트를 더 권장하긴함

컴포넌트를 이해하고 잘 써먹으려면 웹 사이트를 잘 조각낼 줄 알아야 합니다.
가령 우리가 아래와 같은 웹 사이트를 만든다고 생각해봅시다!

너무 커다란 조각은 다른데 다시 쓰기 어려움 -> 재사용성이 떨어진다.

[웹사이트 만들 때 뷰 먼저 그린다.]
[HTML 먼저 본다.]

- State와 Props
컴포넌트의 데이터를 다룰때 쓰는거다.

state는 component가 가지고 있는 데이터
> 내꺼니깐 component에서 마음껏 가지고 놀아도 상관없다. 다른 곳에 영향을 주지 않는다.

props는 부모 component로부터 받아온 데이터이다.
> 맘대로 변경할 수 없고 주어진 대로만 사용해야 된다.

component에 두종류
함수형 vs 클래스형

함수형 Component
> 컴포넌트가 뭔지 이제 직접 만들어 봅시다.

리액트 코딩 룰1:
폴더는 소문자로 시작하는 카멜케이스 사용 [카멜케이스 띄어쓰기 들어가는 부분에 대문자사용]
JS파일, 컴포넌트 이름은 대문자로 시작하는 카멜케이스를 사용

클래형 component
render 함수로 구현한 것을 뿌려줌

- component에서 component로 데이터를 넘겨주자
클래스형과 함수형 컴포넌트의 모양을 보고 눈치채셨을 수도 있겠지만, 함수형 컴포넌트에는
state가 없습니다.

(나중에 배울 React hook을 사용하면 함수형 컴포넌트에서도 state를 사용할 수 있지만,
hook없이 함수형 컴포넌트에서는 state를 사용할 수 없다. [state > component가 가지고 있는 데이터]
> 가상돔이라는 리액트가 DOM을 다루는 방식 때문

01. 화면을 예쁘게! - SCSS

1) SASS, SCSS 개념
둘 다 CSS를 편하게 쓰도록 도와주는 친구입니다.
CSS는 SASS의 3번째 버전에서 추가된 친구인데, SASS의 모든 기능을 쓸 수 있고 CSS와 호환도 잘된다.

SCSS 주요문법
- 다 외울 필요없고 공식문서에서 사용하면 된다.
- 테스트 사이트에서 살펴볼수 있다
- Nesting 이 가능하다 [ 중첩이 가능하다 ]

04 라이프 사이클
08) 가상돔이란?
DOM을 아시나요?
DOM은 html 단위 하나하나를 객체로 생각하는 모델입니다.
예를 들면, 'div태그'라는 객체는 텍스트 노드, 자식 노드 등등, 하위의 어떤 값을 가지고 있겠죠?
이런 구조를 트리 구조하고 합니다.
네 맞습니다! DOM이 트리구조란 소리입니다.

- DOM 트리 중 하나가 수정될 때마다 모든 DOM을 뒤지고, 수정할 걸 찾고, 싹 수정을 한다면?
-> 필요없는 연산이 너무 많이 일어난다.
-> 그래서 등장한게 가상돔

- 가상돔은 메모리 상에서 돌아가는 가짜 DOM입니다.
- 가상돔의 동작 방식 : 기존 DOM과 어떤 행동 후 새로 그린 DOM(가상 돔에 올라갔다고 표현합니다.)
을 비교해서 정말 바뀐 부분만 갈아끼워줍니다! -> 돔 업데이트 처리가 정말 간결하죠!

- 언제 돔을 새로 그릴까? 어떻게하면 새로 그려질까?
> 처음 페이지를 진입했을때
> 데이터가 변했을 때

> 알면 덜 찜찜한 이야기 : DOM이 정말 그렇게 느려?
반은 맞고 반은 틀려요. DOM은 사이트 구조에 따라 가상돔을 쓰는 것보다 훨씬 성능이 좋을 수 있고.
속이 터지게 느릴 수 있습니다.

09) 라이프 사이클이란?
컴포넌트의 라이프 사이클(= 컴포넌트 생명주기)
컴포넌트가 렌더링을 준비하는 순간부터, 페이지에서 사라질 때까지가 라이프 사이클이다.

생설될때 - 업데이트 할때 - 제거할때

constructor	[New props, setState(), forceUpdate()]
render		render	render

commit
componendDid-Moundt	componentDidUpdate	componentWill-Unmount

컴포넌트 데이터 - state, props
state와 proprs가 변하면 업데이트 될 것이다.

자식 컴포넌트는 부모 컴포넌트한테 붙어있는 친구이다.

업데이트도 부모 컴포넌트가 업데이트되면 자식 컴포넌트도 업데이트 된다.

컴포넌트 - state 업데이트, proprs 업데이트, 부모 업데이트(=리렌더링)
또는, 강제로 업데이트 했을 경우! (forceUpdate()를 통해 강제로 컴포넌트를 업데이트 할 수 있습니다.)

제거는 페이지를 이동하거나, 사용자의 행동(삭제 버튼 클릭 등)으로 인해 컴포넌트가 화면에서 사라지는 단계입니다.

05) 알아두면 좋은 라이프 사이클 함수
라이프 사이클 함수는 클래스형 컴포넌트에서만 사용할 수 있습니다.
라이플 사이클을 아는 건 중요한데 왜 우리는 클래스형 컴포넌트보다 함수형 컴포넌트를 많이
쓰냐구요?
리액트 공식 매뉴얼에서 함수형 컴포넌트를 더 관장하기 때문입니다.
React Hooks으로 라이프 사이클 함수를 대체가능

constructor() 생성자 함수

render()
컴포넌트의 모양을 정의하는 친구
여기에서도 state,props에 접근해서 데이터를 보여줄 수 있다.
UI 요소들 반환 [redner는 UI 요소에 연관]
여기에서 state랑 props를 여기에서 서장할 수는 없다.
render할 때 당시에는 데이터를 수정하면 안된다.

componentDidMount()
컴포넌트가 화면에 나타나는 것을 마운트(Mount)한다고 표현
didMount()는 마운트가 완료되었다는 소리
이 함수는 첫번째 렌더링을 마친 후에만 딱 한번 실행된다. 컴포넌트가 리렌더링할 때는 실행되지 않는다.
보통은 이 안에서 ajax 요청, 이벤트 등록, 함수 호출 등 작업을 처리합니다.
또, 이미 가상돔이 실제돔으로 올라간 후니깐 DOM 관련 처리를 해도 된다.

componentDidUpdate(prevProps, prevState) 이전props 이전state
데이터 비교가 필요한 순간에 componentDidUpdate 에서 해주면된다.

componentWillUnmount()
컴포넌트가 DOM에서 제거 될 때 실행하는 함수입니다.
만약 우리가 스크롤 위치를 추적 중이거나, 어떤 이벤트 리스너를 등록했다면 여기에서
꼭꼭 해제를 해줘야 합니다.
컴포넌트 없이 이벤트만 남겨둘 순 없잖아요!
[클릭 이벤트 같은거 제거해줘야됨] - DOM이 없으니깐 이벤트가 일어날 수 없음

06. Ref! 리액트에서 돔요소를 가져오려면?
React.createRef()
이제 가상돔이 뭔지, 돔이 뭔지 알겠죠? 라이프 사이클도 알구요.
그런데 만약에, 내가 어떤 인풋박스에서 텍스트를 가져오고 싶으면 어떻게 접근해야할까요?
(render()가 끝나고 가져오면 될까요? 아니면 mount가 끝나고?
아니, 그 전에 가상돔에서 가져오나? 아니면 DOM에서?)
답은, 리액트 요소에서 가져온다!
[가상돔을 만들고 돔에 올라오는 친구들, 돔에 올라오기 전에는 실제 돔에 없으면 아무런것도 
가져 올수 없다.]

div 태그는 division의 약자로 웹사이트의 레이아웃(전체적인 틀)을 만들때 주로 사용합니다. div는
웹페이지에서 논리적 구분을 정의하는 태그입니다. div 태그를 사용하여 각각의 블록(공간)을 알맞게
배치하고 CSS를 활용하여 스타일을 적용할 수 있습니다. 특히 요즘에는 레이아웃 배치를 거의
div를 활용해 구성하는 추세이기 때문에 더 중요해졌다고 말할 수 있겠습니다.

<div> 태그
속성
style sidth height border background-color float margin

div 태그 CSS 적용하기
지금까지 기본적인 <div> 태그의 사용법에 대해 알아보았습니다. 하지만 웹사이트를 만들때 저런식으로
레이아웃을 짜지는 않겠죠? 대부분 css를 적용시켜서 레이아웃을 만듭니다.

React 요소를 가지고 오는 방법  > React.createRef()
    // ref는 이렇게 선언합니다! 
    this.text = React.createRef();
  }

  componentDidMount(){
		// 콘솔에서 확인해보자!
    console.log(this.text);
		console.log(this.text.current);
  }

  // 랜더 함수 안에 리액트 엘리먼트를 넣어줍니다!
  render() {
    
    return (
      <div className="App">
        <Container>
          <Title>내 버킷리스트</Title>
          <Line />
          {/* 컴포넌트를 넣어줍니다. */}
          {/* <컴포넌트 명 [props 명]={넘겨줄 것(리스트, 문자열, 숫자, ...)}/> */}
          <BucketList list={this.state.list} />
        </Container>

        <div>
          <input type="text" ref={this.text}/>
        </div>
      </div>
    );
  }
}

07. State 관리(1) 
단방향 데이터 흐름이란?
데이터는 위에서 아래로, 부모에서 자식으로 넘겨줘야 한다는 소리

왜 단방향으로 써야하지?
라이프 사이클과 함께 생각해보기
부모 컴포넌트의 state가 업데이트 되면 자식 컴포넌트도 리렌더링이 일어납니다.
만약 자식 컴포넌트의 state가 바뀐걸 부모 컴포넌그가 propts로 받는다고 생각해봅시다.
그러면 자식 컴포넌트가 업데이트 될 때 부모 컴포넌트도 업데이트 되곘죠?
앗.. 그러면 또 자식 컴포넌트가 리렌더링 될거구요 (무한루프에 빠진다)

17) 클래스형 컴포넌트에서 state 관리 - setState()
라이프 사이클을 볼 때 잠깐 봤던 setState()!
클래스형 컴포넌트의 state를 업데이트할 때 사용하는 함수입니다.

새 프로젝트를 만들고 state를 가지고 놀아볼까요?

[새 프로젝트 만들 때마다 할 부분]
1) 새 CRA 만들기
2) index.js 에서 <React.StrictMode> 부분 지우기
3) App.js 를 class형 컴포넌트로 바꾸고 시작!

함수형 컴포넌트에서 state 관리 - useState()
- 이번에는 함수형 컴포넌트에서 어떻게 state를 쓸 수 있는 지 봅시다.
1주차 강의에서 함수형 컴포넌트는 state가 없다고 말씀드렸죠?
맞아요. 함수형 컴포넌트는 satte가 없지만 react hooks를 사용하면 state를 가질 수 있습니다.


//state 먼저 등록하거나 view를 만들거나

Event Listener
이벤트 리스너란?
이벤트 리스너는 사용자가 어떤 행동(=이벤트)을 하는 지 아닌 지 지켜보다가 알려주는 것입니다.
대표적으로는 마우스 클릭, 터치, 마우스 오버, 키보드 누름 등이 자주 쓰여요!
 
이벤트 리스너는 <dic onClick={}> 에서처럼 엘리먼트에 직접 넣어줄 수도 있지만, 이번 강의에서는
addEventListener를 통해 추가해볼거에요.

눈으로만 보고 어떻게 쓰는 구나 감만 잡아봅시다.

클래스형 컴포넌트 event listener 구독하기
이벤트 리스터는 어디에 위치해야할까요?
클릭을 하건, 마우스를 올리건, 



라우팅과 리덕션

라우팅이란?
1) SPA
Single Page Application!
말 그대로 서버에서 주는 html이 1개 뿐인 어플리케이션
전통적인 웹사이트는 페이지를 이동할 떄 마다 서버에서 html, css, js(=정적자원들)을 내려준다면,
SPA는 딱 한번만 정적자원을 받아옵니다.

왜 굳이 html을 하나만 줄까?
-> 많은 이유가 있지만, 그 중 제일 중요한 건 사용서 때문이다.

페이지를 이동할 때마다 서버에서 주는 html로 화면을 바꾸다보면 상태 유지가 어렵고, 바뀌지 않은 
부분까지 새로 불러오니깐 비효율적이다.
(사용자가 회원가입하다가 적었던 내용이 날아갈 수 있고,
블로그 같은 경우, 페이지마다 새로 html을 받아오면 바뀐 건 글뿐인데 헤더와 카테고리까지 전부 
다시 불러와야 합니다.)

스크롤을 내려서 모든 정보를 찾아볼 수 있는 페이스북을 계속 생각하면 리액트에 대해 이해가 가능하다.

단점은 없나?
-> 단점도 있다. SPA는 딱 한 번 정적자원을 내려받다보니, 처음에 모든 컴포넌트를 받아온다.
즉, 사용자가 안들어가 볼 페이지까지 전부 가지고 온다. 게다가 한번에 불러오다 보니 많은
컴포넌트가 있다면 첫 로딩 속도가 느려진다.

2) 라우팅이란?
SPA는 주소를 어떻게 옮길 수 있을까?
html은 딱 하나를 가지고있지만, SPA도 브라우저

