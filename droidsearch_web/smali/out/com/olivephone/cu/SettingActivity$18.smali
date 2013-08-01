.class Lcom/olivephone/cu/SettingActivity$18;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->getChannel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 886
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, -0x1

    .line 888
    iget-object v2, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    .line 890
    const-string v1, "checked_rss"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->checked_rss:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4e

    .line 892
    :cond_30
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 893
    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    .line 892
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 893
    const-string v2, "\u7f51\u7edc\u6062\u590d\u540e\u9875\u9762\u4f1a\u7ee7\u7eed\u8f7d\u5165"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 894
    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x0

    .line 893
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 906
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 914
    :goto_4d
    return-void

    .line 908
    :cond_4e
    new-instance v0, Lcom/olivephone/mywidget/ChannelListView;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v2, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->checked_rss:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/olivephone/mywidget/ChannelListView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 909
    .local v0, clv:Lcom/olivephone/mywidget/ChannelListView;
    invoke-virtual {v0, v5}, Lcom/olivephone/mywidget/ChannelListView;->setBackgroundColor(I)V

    .line 910
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x15e

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/olivephone/mywidget/ChannelListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$18;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    goto :goto_4d
.end method
