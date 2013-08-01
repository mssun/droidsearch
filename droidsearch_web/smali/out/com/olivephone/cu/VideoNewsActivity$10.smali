.class Lcom/olivephone/cu/VideoNewsActivity$10;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    new-instance v1, Lcom/olivephone/sqlite/DBHelper;

    .line 453
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const-string v3, "zsxhdb"

    .line 454
    const/4 v4, 0x0

    sget v5, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 452
    iput-object v1, v0, Lcom/olivephone/cu/VideoNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 456
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/VideoNewsActivity;->bigtitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v2, "(\u89c6\u9891)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/VideoNewsActivity;->videourl:Ljava/lang/String;

    .line 458
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {v0, v1, v2, v3}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 467
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v0}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 468
    const-string v0, "\u8be5\u65b0\u95fb\u5df2\u88ab\u6536\u85cf"

    .line 469
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$10;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 468
    invoke-static {v0, v1}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    .line 470
    return-void
.end method
