.class Lcom/olivephone/cu/ImageNewsActivity$14;
.super Landroid/os/Handler;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->LoadIcon()V
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
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 860
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 863
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    .line 864
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    .line 865
    :cond_18
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 866
    const-string v4, "\u7cfb\u7edf\u63d0\u793a"

    .line 865
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 866
    const-string v4, "\u7f51\u7edc\u6062\u590d\u540e\u9875\u9762\u4f1a\u7ee7\u7eed\u8f7d\u5165"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 867
    const-string v4, "\u786e\u5b9a"

    const/4 v5, 0x0

    .line 866
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 877
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 880
    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    .line 881
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v3, Lcom/olivephone/cu/ImageNewsActivity;->texts:[Ljava/lang/String;

    .line 882
    const/4 v1, 0x0

    .local v1, i:I
    :goto_52
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_85

    .line 888
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    new-instance v4, Lcom/olivephone/viewswitch/ImageAdapter;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/olivephone/viewswitch/ImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v4, v3, Lcom/olivephone/cu/ImageNewsActivity;->adapter:Lcom/olivephone/viewswitch/ImageAdapter;

    .line 889
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->g:Landroid/widget/Gallery;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->adapter:Lcom/olivephone/viewswitch/ImageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 890
    const/4 v3, 0x0

    sput-boolean v3, Lcom/olivephone/constant/MyThread;->isAlive:Z

    .line 891
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/olivephone/cu/ImageNewsActivity;->uuid:I

    .line 892
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const/4 v4, 0x0

    #calls: Lcom/olivephone/cu/ImageNewsActivity;->loadImageDetial(I)V
    invoke-static {v3, v4}, Lcom/olivephone/cu/ImageNewsActivity;->access$1(Lcom/olivephone/cu/ImageNewsActivity;I)V

    .line 898
    .end local v1           #i:I
    :goto_84
    return-void

    .line 883
    .restart local v1       #i:I
    :cond_85
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/olivephone/model/ImageNews;

    .line 884
    .local v2, imageNews:Lcom/olivephone/model/ImageNews;
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/olivephone/model/ImageNews;->getImg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 885
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$14;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->texts:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/olivephone/model/ImageNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a3} :catch_a6

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 894
    .end local v1           #i:I
    .end local v2           #imageNews:Lcom/olivephone/model/ImageNews;
    :catch_a6
    move-exception v3

    move-object v0, v3

    .line 895
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84
.end method
