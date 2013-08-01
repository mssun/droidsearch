.class public Lcom/olivephone/cu/ShowVideoActivity;
.super Landroid/app/Activity;
.source "ShowVideoActivity.java"


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field vv_show:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/ShowVideoActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/olivephone/cu/ShowVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 37
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/ShowVideoActivity;->setContentView(I)V

    .line 38
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/ShowVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    .line 40
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->pd:Landroid/app/ProgressDialog;

    .line 41
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->pd:Landroid/app/ProgressDialog;

    const-string v3, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->pd:Landroid/app/ProgressDialog;

    const-string v3, "\u89c6\u9891\u6b63\u5728\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 45
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Lcom/olivephone/cu/ShowVideoActivity$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/ShowVideoActivity$1;-><init>(Lcom/olivephone/cu/ShowVideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 51
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Lcom/olivephone/cu/ShowVideoActivity$2;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/ShowVideoActivity$2;-><init>(Lcom/olivephone/cu/ShowVideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/olivephone/cu/ShowVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "file_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, str:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, filepath:Ljava/lang/String;
    const-string v2, "filepath"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 64
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 65
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 66
    iget-object v2, p0, Lcom/olivephone/cu/ShowVideoActivity;->vv_show:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 67
    return-void
.end method
