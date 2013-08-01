.class public Lcom/olivephone/cu/EnshrineVideoDetail;
.super Landroid/app/Activity;
.source "EnshrineVideoDetail.java"


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field url:Ljava/lang/String;

.field vv_show:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineVideoDetail;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineVideoDetail;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 25
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineVideoDetail;->setContentView(I)V

    .line 26
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineVideoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    .line 28
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->pd:Landroid/app/ProgressDialog;

    .line 29
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->pd:Landroid/app/ProgressDialog;

    const-string v3, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->pd:Landroid/app/ProgressDialog;

    const-string v3, "\u89c6\u9891\u6b63\u5728\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 33
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Lcom/olivephone/cu/EnshrineVideoDetail$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/EnshrineVideoDetail$1;-><init>(Lcom/olivephone/cu/EnshrineVideoDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Lcom/olivephone/cu/EnshrineVideoDetail$2;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/EnshrineVideoDetail$2;-><init>(Lcom/olivephone/cu/EnshrineVideoDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineVideoDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "videourl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, url:Ljava/lang/String;
    iput-object v1, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->url:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 50
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 51
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 52
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineVideoDetail;->vv_show:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 54
    return-void
.end method
