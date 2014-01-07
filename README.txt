#
# README
#
# original file coded by Takashi Unuma, Kyoto Univ.
# Last modified: 2014/01/07
#

使用方法: 
1. amedas10.csh を実行する。

   指定時刻毎にマニュアルで取得する場合：
   ex. 1) $ csh amedas10.csh 20120814
   データは、地点番号毎のディレクトリに格納される

   timeloop_for_amedas10.sh 内の時刻を修正し、時間方向にループして連続取得する場合：
   ex. 2) $ sh timeloop_for_amedas10.sh


2. makedata_for_gmt.sh 内の時刻を修正し、実行する。
   出力結果は標準出力に表示されるので、リダイレクトしてtest.dat 等の名前に保存する。

3. draw_amedas_data.sh 
   入力データの名前、描画したい変数(気温、雨量、風向風速など)をチェックし、実行する。


#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

ディレクトリツリー

./
|-- README.txt
|-- data
|   |-- amedas10.csh              # アメダスデータ取得スクリプト
|   |-- station_list_r.txt        # アメダス地点リスト(雨量計のみ)
|   |-- station_list_rtw.txt      # アメダス地点リスト(雨量、気温、風向・風速含む)
|   `-- timeloop_for_amedas10.sh  # amedas10.csh の時間ループ用スクリプト
|-- draw
|   |-- amedas_data
|   |   |-- amedas_data.eps       # サンプル画像データ(eps形式)
|   |   |-- amedas_data.pdf       # サンプル画像データ(PDF形式)
|   |   |-- amedas_data.png       # サンプル画像データ(PNG形式)
|   |   |-- amedas_data.ps        # サンプル画像データ(PostScript形式)
|   |   |-- draw_amedas_data.sh   # アメダスデータをGMTで描画するスクリプト
|   |   |-- makedata_for_gmt.sh   # amedas10.csh で取得したデータをGMT用に加工するスクリプト
|   |   `-- test.dat              # サンプルデータ
|   `-- amedas_points
|       |-- amedas_sites.eps      # サンプル画像データ(eps形式)
|       |-- amedas_sites.pdf      # サンプル画像データ(PDF形式)
|       |-- amedas_sites.png      # サンプル画像データ(PNG形式)
|       |-- amedas_sites.ps       # サンプル画像データ(PostScript形式)
|       |-- draw_amedas_points.sh # 全アメダス地点をGMTで描画するスクリプト
|       `-- station_list_with_location.txt # 全アメダス地点リスト
`-- original
    |-- ame_master.csv
    |-- ame_master.xlsx
    |-- amedas10.csh
    |-- datacut.sh
    |-- meloon.sh
    |-- station_list_r.txt
    |-- station_list_rtw.txt
    `-- station_list_with_location.txt

#
# end of file
#
