[vultr](https://www.vultr.com/)でmindustryサーバを秒で建てる

## インスタンス作成

vultrのapiトークンを環境変数`VULTR_API_KEY`に設定

```sh
vultr-cli instance create --region=nrt --plan=vc2-1c-1gb --os=535 --tag=mindustry --ssh-keys=c72976a3-81dc-4a19-b831-3937672d0fdd --notify=true --auto-backup=false --ddos=false
```

ipアドレスを確認

```sh
vultr-cli instance list
```

## サーバセットアップ

```sh
ssh -t root@xxx.xxx.xxx.xxx sh -c "$(cat mindustry.sh)"
```
