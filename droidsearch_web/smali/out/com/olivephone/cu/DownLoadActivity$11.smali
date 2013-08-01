.class Lcom/olivephone/cu/DownLoadActivity$11;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field et_search:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;
    .registers 2
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 303
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/olivephone/cu/DownLoadActivity;->file_name:Ljava/lang/String;

    .line 305
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/CharSequence;

    const-string v1, "\u66f4\u540d"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v1

    .line 307
    .local v0, cs:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 309
    new-instance v2, Lcom/olivephone/cu/DownLoadActivity$11$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/DownLoadActivity$11$1;-><init>(Lcom/olivephone/cu/DownLoadActivity$11;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    return v3
.end method
