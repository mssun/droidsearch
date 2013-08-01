.class public Lcom/olivephone/cu/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field pd:Landroid/app/ProgressDialog;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field vv:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoActivity;->finish()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 37
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoActivity;->setContentView(I)V

    .line 39
    const v3, 0x7f070041

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    .line 41
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/olivephone/cu/VideoActivity;->pd:Landroid/app/ProgressDialog;

    .line 42
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->pd:Landroid/app/ProgressDialog;

    const-string v4, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->pd:Landroid/app/ProgressDialog;

    const-string v4, "\u89c6\u9891\u6b63\u5728\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 46
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    new-instance v4, Lcom/olivephone/cu/VideoActivity$1;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoActivity$1;-><init>(Lcom/olivephone/cu/VideoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 52
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    new-instance v4, Lcom/olivephone/cu/VideoActivity$2;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoActivity$2;-><init>(Lcom/olivephone/cu/VideoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "videourl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, url:Ljava/lang/String;
    const-string v3, "bigtitle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, title:Ljava/lang/String;
    iput-object v2, p0, Lcom/olivephone/cu/VideoActivity;->url:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/olivephone/cu/VideoActivity;->title:Ljava/lang/String;

    .line 64
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accept:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 66
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    new-instance v4, Landroid/widget/MediaController;

    invoke-direct {v4, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 67
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z

    .line 68
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 69
    iget-object v3, p0, Lcom/olivephone/cu/VideoActivity;->vv:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, "\u6536\u85cf"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 75
    const/4 v0, 0x1

    const-string v1, "\u4e0b\u8f7d"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    const/4 v0, 0x2

    const-string v1, "\u8fd4\u56de"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    .line 100
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 84
    :pswitch_c
    new-instance v0, Lcom/olivephone/sqlite/DBHelper;

    const-string v1, "zsxhdb"

    const/4 v2, 0x0

    sget v3, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/olivephone/cu/VideoActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 85
    iget-object v0, p0, Lcom/olivephone/cu/VideoActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/cu/VideoActivity;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\u89c6\u9891)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/olivephone/cu/VideoActivity;->url:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 86
    iget-object v0, p0, Lcom/olivephone/cu/VideoActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v0}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 87
    const-string v0, "\u8be5\u65b0\u95fb\u5df2\u88ab\u6536\u85cf"

    invoke-static {v0, p0}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_7

    .line 90
    :pswitch_48
    iget-object v0, p0, Lcom/olivephone/cu/VideoActivity;->url:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0, p0}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_7

    .line 94
    :pswitch_55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/olivephone/cu/VideoActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoActivity;->finish()V

    goto :goto_7

    .line 82
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_48
        :pswitch_55
    .end packed-switch
.end method
