.class Lcom/olivephone/cu/DownLoadActivity$11$1$1;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity$11$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity$11$1;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    iput-object p2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->val$file:Ljava/io/File;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v5, ".mp4"

    const-string v4, ".jpg"

    .line 324
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity$11;->et_search:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, searchC:Ljava/lang/String;
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v2

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->file_name:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->val$file:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 333
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v2

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/olivephone/cu/DownLoadActivity;->loadFile()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 334
    .local v0, aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v2

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    const-string v2, "\u66f4\u540d\u6210\u529f"

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v3}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v3}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    .line 337
    return-void

    .line 328
    .end local v0           #aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_8b
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11$1$1;->this$2:Lcom/olivephone/cu/DownLoadActivity$11$1;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11$1;->access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;

    move-result-object v2

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v2}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->file_name:Ljava/lang/String;

    const-string v3, ".mp4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".mp4"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b
.end method
