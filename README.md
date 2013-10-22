# Redmine Parent Due Prefer Nil Plugin #

## 概要 ##

Redmine の親子関係のチケットで子チケットの期日が未設定のものと設定済のものが混在している場合、
標準の動作だと設定済の期日の中で最後の期日が親チケットの期日として設定されます。

このプラグインはその動作を変更し、子チケットに１つでも期日が未設定のものがあれば、親チケットの期日も未設定にします。

## インストール ##

Redmine のプラグインディレクトリに移動します。

```console
$ cd /path/to/redmine/plugins/
```

プラグインを clone します。

```console
$ git clone https://github.com/ngyuki/redmine_parent_due_prefer_nil.git
```

Redmine を再起動します。
