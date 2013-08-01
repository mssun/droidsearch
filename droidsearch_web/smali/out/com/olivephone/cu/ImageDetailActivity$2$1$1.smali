.class Lcom/olivephone/cu/ImageDetailActivity$2$1$1;
.super Ljava/lang/Thread;
.source "ImageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageDetailActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageDetailActivity$2$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;

    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 106
    const-wide/16 v5, 0x7d0

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2$1;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2$1;)Lcom/olivephone/cu/ImageDetailActivity$2;

    move-result-object v5

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/ImageDetailActivity;->pd_MMS:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v2, "(\u6765\u81ea:\u65b0\u534e\u9891\u5a92)"

    .line 111
    .local v2, from:Ljava/lang/String;
    const-string v5, "sms_body"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;
    invoke-static {v7}, Lcom/olivephone/cu/ImageDetailActivity$2$1;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2$1;)Lcom/olivephone/cu/ImageDetailActivity$2;

    move-result-object v7

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v7}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;
    invoke-static {v7}, Lcom/olivephone/cu/ImageDetailActivity$2$1;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2$1;)Lcom/olivephone/cu/ImageDetailActivity$2;

    move-result-object v7

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v7}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/olivephone/util/PicNewsTemp;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, filename:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, path:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "path2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const-string v5, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    const-string v5, "image/png"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->this$2:Lcom/olivephone/cu/ImageDetailActivity$2$1;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2$1;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2$1;)Lcom/olivephone/cu/ImageDetailActivity$2;

    move-result-object v5

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/olivephone/cu/ImageDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b4} :catch_b5

    .line 123
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #sendIntent:Landroid/content/Intent;
    :goto_b4
    return-void

    .line 120
    :catch_b5
    move-exception v5

    move-object v0, v5

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b4
.end method
