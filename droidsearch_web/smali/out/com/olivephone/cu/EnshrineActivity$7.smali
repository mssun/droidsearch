.class Lcom/olivephone/cu/EnshrineActivity$7;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;
    .registers 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "id"
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
    .line 175
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    iget-object v0, v0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, v1, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65b0\u534e\u9891\u5a92\u63d0\u793a\u60a8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/olivephone/cu/EnshrineActivity$7$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineActivity$7$1;-><init>(Lcom/olivephone/cu/EnshrineActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/olivephone/cu/EnshrineActivity$7$2;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineActivity$7$2;-><init>(Lcom/olivephone/cu/EnshrineActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    const/4 v0, 0x0

    return v0
.end method
