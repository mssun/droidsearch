.class Lcom/olivephone/cu/ImageNewsActivity$1;
.super Landroid/os/Handler;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/ImageNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 775
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 778
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 780
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 781
    .local v3, position:I
    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3f

    .line 783
    :cond_14
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    const-string v5, "\u7cfb\u7edf\u63d0\u793a"

    .line 783
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 784
    const-string v5, "\u7f51\u7edc\u6062\u590d\u540e\u9875\u9762\u4f1a\u7ee7\u7eed\u8f7d\u5165"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 785
    const-string v5, "\u786e\u5b9a"

    const/4 v6, 0x0

    .line 784
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 795
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 818
    :goto_31
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const v5, 0x7f07001d

    invoke-virtual {v4, v5}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 819
    return-void

    .line 798
    :cond_3f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_92

    .line 802
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    .line 803
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/olivephone/cu/ImageNewsActivity;->texts:[Ljava/lang/String;

    .line 805
    const/4 v0, 0x0

    :goto_63
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_a0

    .line 811
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    new-instance v5, Lcom/olivephone/viewswitch/ImageAdapter;

    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v7, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v7, v7, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/olivephone/viewswitch/ImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v5, v4, Lcom/olivephone/cu/ImageNewsActivity;->adapter:Lcom/olivephone/viewswitch/ImageAdapter;

    .line 812
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->g:Landroid/widget/Gallery;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->adapter:Lcom/olivephone/viewswitch/ImageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 815
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->g:Landroid/widget/Gallery;

    const/4 v5, 0x1

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setSelection(I)V

    goto :goto_31

    .line 799
    :cond_92
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 806
    :cond_a0
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/ImageNews;

    .line 807
    .local v1, imageNews:Lcom/olivephone/model/ImageNews;
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/olivephone/model/ImageNews;->getImg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 808
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$1;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->texts:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/olivephone/model/ImageNews;->getBigTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_63
.end method
