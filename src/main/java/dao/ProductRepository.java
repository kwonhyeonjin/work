package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "인터스텔라", 10000);
		phone.setDescription("세계 각국의 정부와 경제가 완전히 붕괴된 미래가 다가온다. 지난 20세기에 범한 잘못이 전 세계적인 식량 부족을 불러왔고, NASA도 해체되었다. 이때 시공간에 불가사의한 틈이 열리고, 남은 자들에게는 이 곳을 탐험해 인류를 구해야 하는 임무가 지워진다. 사랑하는 가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해, 그들은 이제 희망을 찾아 우주로 간다. 그리고 우린 답을 찾을 것이다.");
		phone.setCategory("SF");
		phone.setManufacturer("Warner Brothers Korea");
		phone.setCounTry("미국,영국");
		phone.setRaTe("12세 관람가");
		phone.setAcTor("매튜 맥커너히, 제시카 차스테인, 마이클 케인, 앤 해서웨이");
		phone.setSuperVisor("크리스토퍼 놀란");
		phone.setUnitsInStock(1);
		phone.setOpEn("2021.01.14");
		phone.setFilename("P1234.png");
		
		Product notebook = new Product("P1235", "레옹", 10000);
		notebook.setDescription("한 손엔 우유 2팩이 든 가방, 다른 한 손엔 화분을 들고 뿌리 없이 떠도는 킬러 레옹은 어느 날 옆집 소녀 마틸다의 일가족이 몰살 당하는 것을 목격한다. 그 사이 심부름을 갔다 돌아 온 마틸다는 가족들이 처참히 몰살 당하자 레옹에게 도움을 청한다. 가족의 원수를 갚기 위해 킬러가 되기로 결심한 12세 소녀 마틸다는 레옹에게 글을 알려주는 대신 복수하는 법을 배우게 된다. 드디어 그녀는 가족을 죽인 사람이 부패 마약 경찰 스탠스임을 알게 되고, 그의 숙소로 향하게 되는데…");
		notebook.setCategory("범죄, 액션, 드라마");
		notebook.setManufacturer("J&C");
		notebook.setCounTry("미국,프랑스");
		notebook.setRaTe("청소년 관람불가");
		notebook.setAcTor("장 르노, 나탈리 포트만");
		notebook.setSuperVisor("뤽 배송");
		notebook.setUnitsInStock(2);
		notebook.setOpEn("2021.07.01");
		notebook.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "어바웃 타임", 10000);
		tablet.setDescription("모태솔로 팀(돔놀 글리슨)은 성인이 된 날, 아버지(빌 나이)로부터 놀랄만한 가문의 비밀을 듣게 된다. 바로 시간을 되돌릴 수 있는 능력이 있다는 것! 그것이 비록 히틀러를 죽이거나 여신과 뜨거운 사랑을 할 수는 없지만, 여자친구는 만들어 줄 순 있으리.. 꿈을 위해 런던으로 간 팀은 우연히 만난 사랑스러운 여인 메리에게 첫눈에 반하게 된다. 그녀의 사랑을 얻기 위해 자신의 특별한 능력을 마음껏 발휘하는 팀. 어설픈 대시, 어색한 웃음은 리와인드! 뜨거웠던 밤은 더욱 뜨겁게 리플레이! 꿈에 그리던 그녀와 매일매일 최고의 순간을 보낸다. 하지만 그와 그녀의 사랑이 완벽해질수록 팀을 둘러싼 주변 상황들은 미묘하게 엇갈리고, 예상치 못한 사건들이 여기저기 나타나기 시작하는데… 어떠한 순간을 다시 살게 된다면, 과연 완벽한 사랑을 이룰 수 있을까?");
		tablet.setCategory("멜로/로맨스, 코미디");
		tablet.setManufacturer("Universal Pictures");
		tablet.setCounTry("영국");
		tablet.setRaTe("15세 관람가");
		tablet.setAcTor("도널 글리슨, 레이첼 맥아담스");
		tablet.setSuperVisor("리차드 커티스");
		tablet.setUnitsInStock(3);
		tablet.setOpEn("2021.12.05");
		tablet.setFilename("P1236.png");
		
		Product Phone = new Product("P1237", "이터널 선샤인", 10000);
		Phone.setDescription("조엘은 아픈 기억만을 지워준다는 라쿠나사를 찾아가 헤어진 연인 클레멘타인의 기억을 지우기로 결심한다. 기억이 사라져 갈수록 조엘은 사랑이 시작되던 순간, 행복한 기억들, 가슴 속에 각인된 추억들을 지우기 싫어지기만 하는데... 당신을 지우면 이 아픔도 사라질까요? 사랑은 그렇게 다시 기억된다.");
		Phone.setCategory("드라마, 멜로/로맨스, SF");
		Phone.setManufacturer("Korea Pictures, Novamedia");
		Phone.setCounTry("미국");
		Phone.setRaTe("15세 관람가");
		Phone.setFilename("짐 캐리, 케이트 윈슬렛, 커스틴 던스트");
		Phone.setSuperVisor("미셸 공드리");
		Phone.setUnitsInStock(4);
		Phone.setOpEn("2021.04.03");
		Phone.setFilename("P1237.png");		
		
		Product movie = new Product("P1238", "그래비터", 10000);
		movie.setDescription("허블 우주망원경을 수리하기 위해 우주를 탐사하던 라이언 스톤 박사는 폭파된 인공위성의 잔해와 부딪히면서 소리도 산소도 없는 우주 한 가운데에 홀로 남겨지는데…");
		movie.setCategory("SF, 드라마, 미스터리, 스릴러");
		movie.setManufacturer("Herry");
		movie.setCounTry("미국, 영국");
		movie.setRaTe("12세 관람가");
		movie.setAcTor("산드라 블록, 조지 클루니");
		movie.setSuperVisor("알폰소 쿠아론");
		movie.setUnitsInStock(5);
		movie.setOpEn("2021.08.29");
		movie.setFilename("P1238.png");
		
		Product movie2 = new Product("P1239", "미 비포 유", 10000);
		movie2.setDescription("이별을 준비하는 마지막에 나타난 짜증나는 여자 내 평생 최고의 6개월을 선물했다 6년 동안이나 일하던 카페가 문을 닫는 바람에 백수가 된 루이자(에밀리아 클라크)는 새 직장을 찾던 중 촉망 받던 젊은 사업가였던 전신마비 환자 윌(샘 클라플린)의 6개월 임시 간병인이 된다. 루이자의 우스꽝스러운 옷, 썰렁한 농담들, 속마음을 그대로 드러내는 얼굴 표정이 신경 쓰이는 윌. 말만 하면 멍청이 보듯 두 살짜리처럼 취급하고 개망나니처럼 구는 윌이 치사하기만 한 루이자. 그렇게 둘은 서로의 인생을 향해 차츰 걸어 들어가는데...");
		movie2.setCategory("멜로/로맨스");
		movie2.setManufacturer("Warner Bros. Korea");
		movie2.setCounTry("미국");
		movie2.setRaTe("12세 관람가");
		movie2.setAcTor("에밀리아 클라크, 샘 클라플린");
		movie2.setSuperVisor("테아 샤록");
		movie2.setUnitsInStock(6);
		movie2.setOpEn("2021.06.01");
		movie2.setFilename("P1239.png");
		
		Product movie3 = new Product("P1240", "기생충", 10000);
		movie3.setDescription("전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족. 장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는 모처럼 싹튼 고정수입의 희망이다. 온 가족의 도움과 기대 속에 박사장(이선균) 집으로 향하는 기우. 글로벌 IT기업 CEO인 박사장의 저택에 도착하자 젊고 아름다운 사모님 연교(조여정)가 기우를 맞이한다. 그러나 이렇게 시작된 두 가족의 만남 뒤로, 걷잡을 수 없는 사건이 기다리고 있었으니…");
		movie3.setCategory("드라마");
		movie3.setManufacturer("CJ ENM");
		movie3.setCounTry("한국");
		movie3.setRaTe("15세 관람가");
		movie3.setAcTor("송강호, 이선균, 조여정, 최우식, 박소담, 이정은, 장혜진");
		movie3.setSuperVisor("봉준호");
		movie3.setUnitsInStock(7);
		movie3.setOpEn("2021.06.23");
		movie3.setFilename("P1240.png");
		
		Product movie4 = new Product("P1241", "다크나이트", 10000);
		movie4.setDescription("정의로운 지방 검사 ‘하비 덴트’, ‘짐 고든’ 반장과 함께 범죄 소탕 작전을 펼치며 범죄와 부패로 들끓는 고담시를 지켜나가는 ‘배트맨’ 그러던 어느 날, 살아남기 위해 발버둥치던 범죄 조직은 배트맨을 제거하기 위해 광기어린 악당 ‘조커’를 끌어들이고 정체를 알 수 없는 조커의 등장에 고담시 전체가 깊은 혼돈 속으로 빠져든다. 급기야 배트맨을 향한 강한 집착을 드러낸 조커는 그가 시민들 앞에 정체를 밝힐 때까지 매일 새로운 사람들을 죽이겠다 선포하고 배트맨은 사상 최악의 악당 조커를 막기 위해 자신의 모든 것을 내던진 마지막 대결을 준비한다.");
		movie4.setCategory("액션, 범죄, 드라마, 미스터리");
		movie4.setManufacturer("Warner Bros. Korea");
		movie4.setCounTry("미국");
		movie4.setRaTe("15세 관람가");
		movie4.setAcTor("크리스찬 베일, 히스 레저, 아론 에크하트");
		movie4.setSuperVisor("크리스토퍼 놀란");
		movie4.setUnitsInStock(8);
		movie4.setOpEn("2021.07.01");
		movie4.setFilename("P1241.png");
		
		Product movie5 = new Product("P1242", "너의 이름은", 10000);
		movie5.setDescription("아직 만난 적 없는 너를, 찾고 있어 천년 만에 다가오는 혜성 기적이 시작된다 도쿄에 사는 소년 ‘타키’와 시골에 사는 소녀 ‘미츠하’는 서로의 몸이 뒤바뀌는 신기한 꿈을 꾼다 낯선 가족, 낯선 친구들, 낯선 풍경들... 반복되는 꿈과 흘러가는 시간 속, 마침내 깨닫는다 우리, 서로 뒤바뀐 거야? 절대 만날 리 없는 두 사람 반드시 만나야 하는 운명이 되다 서로에게 남긴 메모를 확인하며 점점 친구가 되어가는 ‘타키’와 ‘미츠하’ 언제부턴가 더 이상 몸이 바뀌지 않자 자신들이 특별하게 이어져있었음을 깨달은 ‘타키’는 ‘미츠하’를 만나러 가는데... 잊고 싶지 않은 사람 잊으면 안 되는 사람 너의 이름은?");
		movie5.setCategory("로맨스 드라마/애니메이션");
		movie5.setManufacturer("메가박스중앙(주)플러스엠");
		movie5.setCounTry("일본");
		movie5.setRaTe("12세 관람가");
		movie5.setAcTor("카미키 류노스케, 카미시라이시모네");
		movie5.setSuperVisor("신카이 마코토");
		movie5.setUnitsInStock(9);
		movie5.setOpEn("2021.01.04");
		movie5.setFilename("P1242.png");
		
		Product movie6 = new Product("P1243", "괴기 맨숀", 10000);
		movie6.setDescription("공포 웹툰 작가 지우는 아이디어를 찾아 괴기맨숀이라 불리는 허름한 아파트에 도착한다.표정을 알 수 없는 중년의 관리인은 이 아파트에서 일어났던 기묘한 사건들에 대해 이야기보따리를 풀어내고, 504호, 708호… 지우는 사연을 들을수록 홀리기라도 한 듯 괴기맨숀에 점점 집착하게 되는데...미스터리한 맨숀 5개의 에피소드 괴이하고 섬뜩한 현실 공포가 온다!");
		movie6.setCategory("호러");
		movie6.setManufacturer("콘텐츠판다");
		movie6.setCounTry("한국");
		movie6.setRaTe("15세 관람가");
		movie6.setAcTor("성준,김홍파,김보라");
		movie6.setSuperVisor("조바론");
		movie6.setUnitsInStock(10);
		movie6.setOpEn("2021.06.30");
		movie6.setFilename("P1243.png");
		
		Product movie7 = new Product("P1244", "블랙 위도우", 10000);
		movie7.setDescription("어벤져스의 히어로 블랙 위도우, ‘나타샤 로마노프’ (스칼렛 요한슨)는 자신의 과거와 연결된 레드룸의 거대한 음모와 실체를 깨닫게 된다. 상대의 능력을 복제하는 빌런 ‘태스크마스터’와 새로운 위도우들의 위협에 맞서 목숨을 건 반격을 시작하는 ‘나타샤’는 스파이로 활약했던 자신의 과거 뿐 아니라, 어벤져스가 되기 전 함께했던 동료들을 마주해야만 하는데… 폭발하는 리얼 액션 카타르시스! MCU의 새로운 시대를 시작할 첫 액션 블록버스터를 만끽하라!");
		movie7.setCategory("액션, 모험, SF");
		movie7.setManufacturer("콘텐츠판다");
		movie7.setCounTry("미국");
		movie7.setRaTe("12세 관람가");
		movie7.setAcTor("스칼릿 조핸슨, 플로렌스 퓨, 레이첼 와이즈, 데이빗 하버");
		movie7.setSuperVisor("케이트 쇼트랜드");
		movie7.setUnitsInStock(11);
		movie7.setOpEn("2021.07.07");
		movie7.setFilename("P1244.png");
		
		Product movie8 = new Product("P1245", "루카", 10000);
		movie8.setDescription("이탈리아 리비에라의 아름다운 해변 마을, 바다 밖 세상이 궁금하지만, 두렵기도 한 호기심 많은 소년 '루카' 자칭 인간세상 전문가 ‘알베르토’와 함께 모험을 감행하지만, 물만 닿으면 바다 괴물로 변신하는 비밀 때문에 아슬아슬하기만 하다. 새로운 친구 ‘줄리아’와 함께 젤라또와 파스타를 실컷 먹고 스쿠터 여행을 꿈꾸는 여름은 그저 즐겁기만 한데… 과연 이들은 언제까지 비밀을 감출 수 있을까? 함께라서 행복한 여름, 우리들의 잊지 못할 모험이 시작된다!");
		movie8.setCategory("애니메이션, 모험, 코미디");
		movie8.setManufacturer("콘텐츠판다");
		movie8.setCounTry("미국");
		movie8.setRaTe("전체 관람가");
		movie8.setAcTor("제이콥 트렘블레이, 잭 딜런 그레이저, 엠마 버만");
		movie8.setSuperVisor("앤리코 카사로사");
		movie8.setUnitsInStock(12);
		movie8.setOpEn("2021.06.17");
		movie8.setFilename("P1245.png");
		
		Product movie9 = new Product("P1246", "킬러의 보디가드2", 10000);
		movie9.setDescription("미치광이 킬러 ‘다리우스’의 경호를 맡은 후 매일 밤 그의 악몽을 꾸는 보디가드 ‘마이클’ 앞에 나타난 무대포 직진녀 ‘소니아’ 남편 ‘다리우스’가 납치되었다며 다짜고짜 그를 구하러 가야 한다고 하는데… 한 명도 버거운데 그의 와이프까지 플러스?! 설상가상으로 유럽 전역을 위기로 몰아넣는 사건들이 연속적으로 터지고 인터폴의 비밀스러운 의뢰까지 추가되는데.. 2배 더 강력한, 2배 더 골때리는, 2배 더 커진 모두가 기다린 1+1 트리플 환장 액션 블록버스터가 온다!");
		movie9.setManufacturer("TCO㈜더콘텐츠온, (주)제이앤씨미디어그룹");
		movie9.setCategory("드라마, 범죄, 코미디");
		movie9.setCounTry("미국,영국");
		movie9.setRaTe("청소년 관람불가");
		movie9.setAcTor("라이언 레이놀즈, 사무엘 L.잭슨, 셀마 헤이엑");
		movie9.setSuperVisor("패트릭 휴즈");
		movie9.setUnitsInStock(13);
		movie9.setOpEn("2021.06.17");
		movie9.setFilename("P1246.png");
		
		Product movie10 = new Product("P1247", "크루엘라", 10000);
		movie10.setDescription("처음부터 난 알았어. 내가 특별하단 걸 그게 불편한 인간들도 있겠지만 모두의 비위를 맞출 수는 없잖아? 그러다 보니 결국, 학교를 계속 다닐 수가 없었지 우여곡절 런던에 오게 된 나, 에스텔라는 재스퍼와 호레이스를 운명처럼 만났고 나의 뛰어난 패션 감각을 이용해 완벽한 변장과 빠른 손놀림으로 런던 거리를 싹쓸이 했어 도둑질이 지겹게 느껴질 때쯤, 꿈에 그리던 리버티 백화점에 낙하산(?)으로 들어가게 됐어 거리를 떠돌았지만 패션을 향한 나의 열정만큼은 언제나 진심이었거든 근데 이게 뭐야, 옷에는 손도 못 대보고 하루 종일 바닥 청소라니 인내심에 한계를 느끼고 있을 때, 런던 패션계를 꽉 쥐고 있는 남작 부인이 나타났어 천재는 천재를 알아보는 법! 난 남작 부인의 브랜드 디자이너로 들어가게 되었지 꿈을 이룰 것 같았던 순간도 잠시, 세상에 남작 부인이 ‘그런 사람’이었을 줄이야… 그래서 난 내가 누군지 보여주기로 했어 잘가, 에스텔라 난 이제 크루엘라야!");
		movie10.setCategory("드라마, 범죄, 코미디");
		movie10.setManufacturer("월트 디즈니 컴퍼니 코리아");
		movie10.setCounTry("미국");
		movie10.setRaTe("12세 관람가");
		movie10.setAcTor("엠마 스톤");
		movie10.setSuperVisor("크레이그 질레스피");
		movie10.setUnitsInStock(14);
		movie10.setOpEn("2021.06.17");
		movie10.setFilename("P1247.png");
		
		Product movie11 = new Product("P1248", "발신제한", 10000);
		movie11.setDescription("은행센터장 성규(조우진)는 아이들을 차에 태우고 출발한 평범한 출근길에 한 통의 발신번호 표시제한 전화를 받는다. 전화기 너머 의문의 목소리는 차에 폭탄이 설치되어 있고, 자리에서 일어날 경우 폭탄이 터진다고 경고하는데… 의문의 전화를 보이스피싱이라고 대수롭지 않게 여기던 성규는 곧 회사 동료의 차가 같은 방식으로 폭파되는 것을 바로 눈 앞에서 목격하고, 졸지에 부산 도심 테러의 용의자가 되어 경찰의 추격을 받게 된다. 내리면 폭탄이 터지는 절체절명의 순간, 경찰의 추격 속 의문의 발신자와의 전화마저 끊을 수 없는 상황에 놓이게 되는데…!");
		movie11.setCategory("드라마, 스릴러");
		movie11.setManufacturer("월트 디즈니 컴퍼니 코리아");
		movie11.setCounTry("한국");
		movie11.setRaTe("15세 관람가");
		movie11.setAcTor("김창주");
		movie11.setSuperVisor("조우진, 이재인, 진경");
		movie11.setUnitsInStock(15);
		movie11.setOpEn("2021.06.17");
		movie11.setFilename("P1248.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		listOfProducts.add(movie);
		listOfProducts.add(movie2);
		listOfProducts.add(movie3);
		listOfProducts.add(movie4);
		listOfProducts.add(movie5);
		listOfProducts.add(movie6);
		listOfProducts.add(movie7);
		listOfProducts.add(movie8);
		listOfProducts.add(movie9);
		listOfProducts.add(movie10);
		listOfProducts.add(movie11);
		
		
	}
	public ArrayList<Product>getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.
				getProductId().equals(productId)) {
					productById = product;
					break;
			}
		}
			return productById;
	}
}
