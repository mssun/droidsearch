.class Lcom/olivephone/cu/ImageDetailActivity$2$1;
.super Ljava/lang/Object;
.source "ImageDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageDetailActivity$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/ImageDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageDetailActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/ImageDetailActivity$2$1;)Lcom/olivephone/cu/ImageDetailActivity$2;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v6, "0"

    .line 91
    packed-switch p2, :pswitch_data_116

    .line 153
    :goto_5
    :pswitch_5
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/ImageDetailActivity;->is_touch:Z

    .line 154
    return-void

    .line 93
    :pswitch_f
    const-string v3, "url"

    iget-object v4, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v4}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v4}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v3, v4, v6}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d!"

    iget-object v4, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v4}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_5

    .line 98
    :pswitch_3b
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/olivephone/cu/ImageDetailActivity;->pd_MMS:Landroid/app/ProgressDialog;

    .line 99
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/ImageDetailActivity;->pd_MMS:Landroid/app/ProgressDialog;

    const-string v4, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/ImageDetailActivity;->pd_MMS:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 101
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v4}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v3, v4, v6}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v3, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;-><init>(Lcom/olivephone/cu/ImageDetailActivity$2$1;)V

    .line 125
    invoke-virtual {v3}, Lcom/olivephone/cu/ImageDetailActivity$2$1$1;->start()V

    goto :goto_5

    .line 131
    :pswitch_82
    :try_start_82
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, u:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 133
    .local v1, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/olivephone/cu/ImageDetailActivity;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_9e
    .catch Ljava/net/MalformedURLException; {:try_start_82 .. :try_end_9e} :catch_a0
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_9e} :catch_a7

    goto/16 :goto_5

    .line 134
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #u:Ljava/net/URL;
    :catch_a0
    move-exception v3

    move-object v0, v3

    .line 135
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_5

    .line 136
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_a7
    move-exception v3

    move-object v0, v3

    .line 137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_ae
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    new-instance v4, Lcom/olivephone/sqlite/DBHelper;

    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    const-string v6, "zsxhdb"

    const/4 v7, 0x0

    sget v8, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, v3, Lcom/olivephone/cu/ImageDetailActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 143
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/ImageDetailActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/ImageDetailActivity;->img_title:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "(\u56fe\u7247)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v5}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/ImageDetailActivity;->img_url:Ljava/lang/String;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 144
    iget-object v3, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v3}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/ImageDetailActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v3}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 145
    const-string v3, "\u6536\u85cf\u6210\u529f!"

    iget-object v4, p0, Lcom/olivephone/cu/ImageDetailActivity$2$1;->this$1:Lcom/olivephone/cu/ImageDetailActivity$2;

    #getter for: Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;
    invoke-static {v4}, Lcom/olivephone/cu/ImageDetailActivity$2;->access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 91
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3b
        :pswitch_82
        :pswitch_ae
        :pswitch_5
    .end packed-switch
.end method
