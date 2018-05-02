# sql2csv
自動でデータベースの特定テーブルをテキスト変換するwindows用バッチファイルです
「｜」区切りでCRLF改行なやつが出力されます

準備(windowsだし大体必要)
Precompiled Binaries for Windowsのsqlite-tools-win32-x86をダウンロード
https://www.sqlite.org/download.html
解凍してsqlite3.exeをsql_to_csv.batと同じフォルダへ移動する

使い方
sql_to_csv.batにドラッグアンドドロップ
保存先フォルダ\ファイル名_テーブル名.csvへ出力される(上書き確認なし)


batファイル編集の参考
SET table=テーブル名　なのでここを変えれば色々使いまわせるはず
最後のpauseはログの確認用なのでわかってるなら消してもok
「sqlite3」の「".output"」内でディレクトリ指定する時は「\」じゃなくて「/」を使う必要がある
