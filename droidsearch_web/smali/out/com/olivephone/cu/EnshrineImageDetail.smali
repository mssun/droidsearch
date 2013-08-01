.class public Lcom/olivephone/cu/EnshrineImageDetail;
.super Landroid/app/Activity;
.source "EnshrineImageDetail.java"


# instance fields
.field img_url:Ljava/lang/String;

.field iv_detail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    const-string v4, "img_url"

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineImageDetail;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineImageDetail;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 28
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineImageDetail;->setContentView(I)V

    .line 30
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/EnshrineImageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->iv_detail:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineImageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "img_url"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->img_url:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->img_url:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->img_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 36
    const-string v2, "img_url"

    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->img_url:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->img_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_72

    .line 39
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v3, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 41
    const-string v3, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25,\u8bf7\u91cd\u8bd5!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    const-string v3, "\u786e\u5b9a"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_67
    :goto_67
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->iv_detail:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/EnshrineImageDetail$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/EnshrineImageDetail$1;-><init>(Lcom/olivephone/cu/EnshrineImageDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 45
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_72
    iget-object v2, p0, Lcom/olivephone/cu/EnshrineImageDetail;->iv_detail:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67
.end method
