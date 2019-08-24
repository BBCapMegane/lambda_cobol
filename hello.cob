*> 見出し部
IDENTIFICATION DIVISION.
 *> プログラム名
 PROGRAM-ID. SAMPLE-01.

*> 環境部
ENVIRONMENT DIVISION.
*> 実行するコンピュータ名
*> コンパイルするコンピュータ名
*> 環境変数の受け渡し

*> データ部
DATA DIVISION.
*> 変数定義セクション
 WORKING-STORAGE SECTION.
  *> 文字列型の宣言
  01 HELLO PIC X(20).
  *> 数値型の宣言
  01 NUM PIC 9(3).
  *> 小数点型
  01 NUM-POINT PIC 9(3)V9(3).
  01 RESULT PIC 9(10)V9(10).
  *> 初期化
  01 NUM-2 PIC 9(4) VALUE 1024.

*> 手続き部
PROCEDURE DIVISION.
MAIN.
MOVE  "Hello world!" TO HELLO.
MOVE  256 TO  NUM.
MOVE  100.100 TO  NUM-POINT.
DISPLAY HELLO UPON CONSOLE.
DISPLAY  "NUM の内容は " NUM UPON 　CONSOLE.
DISPLAY  "NUM-POINT の内容は " NUM-POINT UPON  CONSOLE.
DISPLAY  "NUM-2 の内容は " NUM-2 UPON  CONSOLE.

COMPUTE RESULT = NUM-POINT + 1.1
DISPLAY  "加算 " RESULT UPON  CONSOLE.
COMPUTE RESULT = NUM-POINT - 99.99
DISPLAY  "減算 " RESULT UPON  CONSOLE.
COMPUTE RESULT = NUM-POINT * 2.5
DISPLAY  "乗算 " RESULT UPON  CONSOLE.
COMPUTE RESULT = NUM-POINT / 2.5
DISPLAY  "除算 " RESULT UPON  CONSOLE.
STOP RUN.