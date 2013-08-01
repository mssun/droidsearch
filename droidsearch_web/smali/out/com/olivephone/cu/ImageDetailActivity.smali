.class public Lcom/olivephone/cu/ImageDetailActivity;
.super Landroid/app/Activity;
.source "ImageDetailActivity.java"


# instance fields
.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field img_title:Ljava/lang/String;

.field img_url:Ljava/lang/String;

.field is_touch:Z

.field iv_detail:Landroid/widget/ImageView;

.field pd_MMS:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/olivephone/cu/ImageDetailActivity;->is_touch:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    const/16 v3, 0x1e

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/ImageDetailActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/olivephone/cu/ImageDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 51
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/ImageDetailActivity;->setContentView(I)V

    .line 53
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/ImageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->iv_detail:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lcom/olivephone/cu/ImageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "img_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    .line 57
    const-string v1, "img_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_48

    .line 60
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    .line 63
    :cond_48
    sget-object v1, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_59

    .line 64
    invoke-virtual {p0}, Lcom/olivephone/cu/ImageDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    .line 66
    :cond_59
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->iv_detail:Landroid/widget/ImageView;

    sget-object v2, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v1, 0x0

    sput-object v1, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->iv_detail:Landroid/widget/ImageView;

    new-instance v2, Lcom/olivephone/cu/ImageDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/ImageDetailActivity$1;-><init>(Lcom/olivephone/cu/ImageDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity;->iv_detail:Landroid/widget/ImageView;

    new-instance v2, Lcom/olivephone/cu/ImageDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/ImageDetailActivity$2;-><init>(Lcom/olivephone/cu/ImageDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    return-void
.end method
