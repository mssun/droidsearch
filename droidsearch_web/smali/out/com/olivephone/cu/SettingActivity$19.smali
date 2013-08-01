.class Lcom/olivephone/cu/SettingActivity$19;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler1:Landroid/os/Handler;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$19;->this$0:Lcom/olivephone/cu/SettingActivity;

    iput-object p2, p0, Lcom/olivephone/cu/SettingActivity$19;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/olivephone/cu/SettingActivity$19;->val$handler1:Landroid/os/Handler;

    .line 922
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 926
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$19;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity$19;->val$id:Ljava/lang/String;

    .line 925
    invoke-static {v3, v4}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    new-instance v4, Lcom/olivephone/parserxml/CateListHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/CateListHandler;-><init>()V

    .line 925
    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 927
    .local v1, list_channel:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "channel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 928
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity$19;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity$19;->val$id:Ljava/lang/String;

    .line 927
    invoke-static {v5, v6}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 929
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$19;->val$handler1:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 930
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$19;->val$handler1:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 931
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$19;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->pd_rss:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 936
    .end local v1           #list_channel:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_40
    return-void

    .line 933
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 934
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method
