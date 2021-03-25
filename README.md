# <b>English App<b>


## 【 アプリケーション概要 】<br>

1. 英文で4択問題を自由に投稿し、他ユーザーが投稿した問題を自由に解く。
2. 英文で自分の思ったことなどを自由に投稿し、他ユーザーが投稿した文章に自由にコメントする。

<br>

________



### URL

- URL:(https://english-app-34395.herokuapp.com/)

<br>

### Basic認証

- ID: admin
- PASS: 2222

<br>

### テスト用アカウント

- Email: test@abc.com
- Password: 123456
________________

<br>

## 【 利用方法 】

1. 「新規登録」 or 「Sign In」
   - 新規ユーザー
     - HOME画面右上の「New Account」をクリックします。
     - 「Nickname」「Email」「Password(半角英数字6文字以上)」「Password confirmation」にそれぞれ入力します。
     - 「Sign Up」をクリックすると、HOME画面に遷移します。
   - 既にアカウントをお持ちの方
     - 「Sign In」ページにて、登録したemailアドレスとPasswordを入力し、「Sign In」をクリックすると、HOME画面に遷移します。
2. 「問題を作成する」
   - HOME画面にて、「POST QUESTIONS」と書かれた赤い円をクリックすると、問題作成のTOPページに遷移します。
   - 画面中央の「POST」と書かれた橙色の円をクリックすると、問題作成ページに遷移します。
   - 各入力欄を埋め、「GO」をクリックすると、問題投稿が完了します。
3. 「問題を解く」
   - 画面左の「Time Line」には、投稿日時が新しい順に問題が並んでいます。
   - 画面右の「Populars」には、「いいね」された数が多い順に問題が並んでいます。
   - 「Time Line」「Populars」の中から、任意の問題をクリックします。
   - 回答ページに遷移しますので、正解だと思った選択肢を選び、「GO」をクリックします。
   - 正解の場合、解説とTOPページへのリンクが表示されます。
   - 不正解の場合、回答ページへ遷移するリンクが表示されます。
4. 「問題を探す」
   - 問題作成のTOPページにて、画面中央にある検索欄に任意のワードを入力して、「GO」をクリックします。
   - titleに検索したワードが含まれる問題のみが表示されます。
5. 「文章を投稿する」
   - HOME画面にて、「CAST VOICES」と書かれた青い円をクリックすると、文章投稿のTOPページに遷移します。
   - 画面左に配置されている「subject」「cast voice」「Tags」の各入力欄を埋め、「GO」をクリックすると、投稿が完了します。
   - 「Tags」に複数のワードを入力したい場合は、カンマで区切って入力して下さい。
   - 画面右に配置されている「Tags List」において、任意のTagをクリックすると、そのTagが付与された投稿だけTime Lineに表示されます。
6. 「文章にコメントする」
   - 文章投稿のTOPページにて、Time Line上に表示された任意の投稿をクリックすると、詳細ページに遷移します。
   - 「New Comment」と書かれたフォームを埋めて「GO」をクリックすると、コメントを残すことができます。
   - 既にコメントが存在する場合、「Response to Comment」のフォームを埋めて「GO」をクリックすると、そのコメントに対しても返信できます。

<br>


_____________
<br>

## 【 課題解決の設定 】

<br>

英語学習者の中には、英文を読んだり、文法問題を解くのは得意だけれど、実際に英語を用いてアウトプットするのは苦手だ、という人も多いと思います。<br>
そのような悩みを抱えた人たち（自分を含めてですが）に向けて、「英語を使うことに怯えないようにしよう」ということを伝えたいと思いました。<br>
English Appでは、問題作成の解説フォームを除いて、「全角漢字ひらがなカタカナ」と「半角カタカナ」を使用することができない仕様にしてあります。<br>
英語しか使えない環境を作り出すことで、母国語を通さずに言葉を表現する能力を養うことができます。<br>
また、TOEICのような資格試験に対応した問題を作成できるだけでなく、文章投稿機能を用いて様々なユーザーと交流することで、<br>
口語的な表現も身に付けることができ、総合的な英語力の向上に繋がると信じています。<br>
何より、一人でも多くの人が「英語で文章を紡ぐのが楽しい」と思って下さることを願って、本アプリを開発しました。

<br>

---------------------------
<br>


## 【 要件定義 】
| 優先順位     | 機能    |  目的                      | 詳細            | ユースケース                |所要時間|
| -------------------| --------| ------------------------- | --------------- |------------------------- | ----|
|  高                  | 問題作成(POST)機能    | 英語で英語の問題を作成することで、アウトプットの質を高める。  | 問題作成ページにおいて、各入力欄を埋めてて「GO」をクリックすると作成完了。 |HOME画面で「POST QUESTIONS」をクリックすると、POST機能のTOPページに遷移する。画面中央の「POST」をクリックすると問題作成ページへ遷移し、「title」「Question」「NO.1~4」「Answer Number」をそれぞれ入力し、「GO」をクリックすると、作成した問題がタイムラインの一番上に表示される。                          | 10 |
|  高              | 文章投稿(CAST)機能       | 日常会話に近い形で英語のアウトプットを行えるようにする。色々な人と交流することで、自分の知らない表現などを知る貴重な機会にもなる。|subject・text・tagを入力し、内容を送信することで投稿完了。 | HOME画面で「CAST VOICES」をクリックすると、CAST機能のTOPページに遷移する。画面左に投稿欄があり、「subject」「cast voice」「Tags」にそれぞれ文字を入力し、「GO」をクリックすると、タイムラインにその投稿が反映される。 | 10 |
|  高                  | 問題回答機能        |POST機能を用いて投稿された様々な問題を解くことで、自身の知識を確認できる。| ラジオボタン形式の問題が出題され、選択肢の中から一つ選んで送信すると、回答が完了する。 |  TOPページのタイムラインやランキング欄、各ユーザーのマイページにおいて、問題タイトルをクリックすると回答ページに遷移。ラジオボタン形式になっており、正解を選んで回答をすると解説とTOPページへのリンクが現れ、誤答だと回答ページへのリンクである「Try again」の表示が出る。 | 10 |
|  高                  | いいね機能        | POST機能で作成した問題へのフィードバックの役割。自身の作問に対して反応があれば、問題文の推敲や選択肢の吟味など、細かい表現への配慮も求められるため、粒度の高い構成能力も養える。TOPページには「いいね数」のランキング欄も設けているため、モチベーションUPにも繋がる。 | 各問題の右横に配置されたハートアイコンをクリックすることで、「いいね」登録が完了する。|TOPページに表示されている各問題のタイトルの右横に、ハートマークのアイコンを配置。クリックすると、「いいね」をしたことになり、自身のマイページにて、「いいね」した問題を一覧できる。登録を外したい場合は、もう一度クリックする。| 10 |
|  中                  | Tag付け機能        |CAST機能において、自身の投稿した文章に「Tag」としてキーワードを付けることで、近しい分野に興味関心のある他ユーザーがTag検索した際に、交流を持つきっかけになる。| CAST機能を用いて文章を投稿する際、Tag欄に任意のワードを入力することで、Tag付けが完了する。   | CAST機能のTOPページ左画面に設置された入力欄のうち、３段目の「Tags」という欄にキーワードを入れることで、そのキーワードが紐づいた投稿が可能。複数のワードをTag付けしたい場合は、カンマで区切って入力する。  | 15 |
|  中                  | コメント機能        | CAST機能で投稿された他ユーザーのVoiceに対してコメントすることで、実際の会話形式に近い形で英語を使うことができる。 | 投稿の詳細ページにて、コメント欄に文字を入力して送信することで完了する。バリデーションはPOST・CAST機能同様。投稿本体へのコメントと、既存のコメントに対するコメントの2パターン可能。| CAST機能のTOPページにおいて、特定の投稿をクリックすると、詳細ページに遷移し、コメント欄が表示される。投稿にコメントを残したい場合は「New Comment」の欄に、既存のコメントに対して返信したい場合は「Response to comment」の欄にそれぞれ入力し、送信する。| 15 |
|  中                  | マイページ機能        | 自身が作成した問題や投稿した文章を確認可能。又、他ユーザーのマイページも閲覧可能であり、特定のユーザーが作成した問題を網羅的に回答することもできる。| 各ユーザーが作成した問題や投稿した文章を一覧できる。自身のマイページであれば、「いいね」登録した問題一覧のページへ飛ぶことができる。 | header右上のユーザーnicknameをクリックすると、そのユーザーが作成した問題や投稿した文章を閲覧することができる。各ユーザー、自身のマイページを持つが、他ユーザーのマイページも閲覧することができる。 | 15 |


-------------
<br>

## 【 機能紹介(抜粋) 】

_________________

<br>

### 問題作成機能
(https://i.gyazo.com/5ac325320320ea66339910268c745a40.mp4)

<br>

### 問題回答機能
(https://i.gyazo.com/33559c4b188a5d73d1e0d2360970f1ae.mp4)

<br>

### 文章投稿機能
(https://i.gyazo.com/ed5f55392e4091753a6e5bc5081bf6e6.mp4)

<br>

### コメント投稿
(https://i.gyazo.com/f5972b25a17ab89334797badd1bdb4d3.mp4)


<br>

---------------------
<br>

## 【 ローカルでの動作方法 】

_______________________

<br>

### 開発環境

- Ruby(ver: 2.6.5)
- Ruby on Rails(ver: 6.0.3.5)
- MySQL
- Github
- Visual Studio Code

<br>

<ターミナル>
1. `$ git clone https://github.com/houtaru95/english_app.git`<br>
2. `$ cd english_app`<br>
3. `$ yarn install`<br>
4. `$ rails db:create`<br>
5. `$ rails db:migrate`<br>
6. `$ rails s`<br>

その後、ブラウザ上で「localhost:3000」に接続。

<br>

-------------------

<br>

## ER図

---------------

<br>

(https://i.gyazo.com/cad56310bec1204304bc1a6d760fb723.png)

<br>


---------------

<br>

## 【 テーブル設計 】
---------------

<br>

 ## users table

| Column             | Type    | Options                   |
| -------------------| --------| ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |

<br>

### Association

- has_many :questions
- has_many :answers
- has_many :speaks
- has_many :comments
- has_many :favorites
- has_many :favorite_questions, through: :favorites, source: :question

<br>

## questions table

| Column            | Type       | Options                        |
| ----------------- | -----------| ------------------------------ |
| title             | string     | null: false                    |
| content           | text       | null: false                    |
| choice_1          | integer    | null: false                    |
| choice_2          | integer    | null: false                    |
| choice_3          | integer    | null: false                    |
| choice_4          | integer    | null: false                    |
| answer_num        | integer    | null: false                    |
| explanation       | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

<br>

### Association

- has_many :answers, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :favorited_users, through: :favorites, source: :user
- belongs_to :user

<br>

## answers table

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user_answer  | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |
| question     | references | null: false, foreign_key: true |

<br>

### Association

- belongs_to :user
- belongs_to :question

<br>

## favorites table

| Column            | Type       | Options                        |
| ----------------- | -----------| -------------------------------|
| user_id           | integer    | null: false, foreign_key: true |
| question_id       | integer    | null: false, foreign_key: true |

<br>

### Association

- belongs_to :user
- belongs_to :question

<br>

## speaks table

| Column            | Type       | Options                        |
| ----------------- | -----------| -------------------------------|
| subject           | string     | null: false                    |
| voice             | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

<br>

### Association

- belongs_to :user
- has_many :comments, dependent: :destroy
- has_many :taggings
- acts_as_taggable_on :tags

<br>

## comments table

| Column            | Type       | Options                        |
| ----------------- | -----------| -------------------------------|
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |
| speak             | references | null: false, foreign_key: true |
| response_comment  | integer    |                                |

<br>

### Association

- belongs_to :user
- belongs_to :speak
- has_many :responses, class_name: "Comment", foreign_key: :response_comment, dependent: :destroy

<br>

## tags table

| Column            | Type       | Options                        |
| ----------------- | -----------| -------------------------------|
| name              | string     | null: false, unique: true      |
| taggings_count    | integer    |                                |

<br>

### Association

- has_many :taggings

<br>

## taggings table

| Column            | Type       | Options                        |
| ----------------- | -----------| -------------------------------|
| taggable_id       | integer    | null: false                    |
| taggable_type     | string     | null: false                    |
| tagger_type       | string     |                                |
| tagger_id         | integer    |                                |
| context           | string     | null: false                    |
| tag               | references | null: false, foreign_key: true |
 
<br>

### Association

- belongs_to :tag
- belongs_to :speak


<br>

-----------------------