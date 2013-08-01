.class Lcom/olivephone/cu/DownLoadActivity$10;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->loadFileFromSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const-string v5, "file_name"

    .line 278
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, file_name:Ljava/lang/String;
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 280
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    const-class v3, Lcom/olivephone/cu/ShowImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "file_name"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v2, v1, v4}, Lcom/olivephone/cu/DownLoadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2a
    :goto_2a
    return-void

    .line 283
    :cond_2b
    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 284
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    const-class v3, Lcom/olivephone/cu/ShowVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "file_name"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v2, v1, v4}, Lcom/olivephone/cu/DownLoadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2a

    .line 287
    .end local v1           #intent:Landroid/content/Intent;
    :cond_47
    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 289
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$10;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v2, v1}, Lcom/olivephone/cu/DownLoadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2a
.end method
