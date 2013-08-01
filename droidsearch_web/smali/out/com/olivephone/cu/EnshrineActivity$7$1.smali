.class Lcom/olivephone/cu/EnshrineActivity$7$1;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity$7;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/EnshrineActivity$7;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v0

    new-instance v1, Lcom/olivephone/sqlite/DBHelper;

    iget-object v2, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v2}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v2

    const-string v3, "zsxhdb"

    const/4 v4, 0x0

    sget v5, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, v0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 183
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v1}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/olivephone/sqlite/DBHelper;->delete(I)V

    .line 184
    const-string v0, "\u5220\u9664\u6210\u529f"

    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v1}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$7$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$7;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$7;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity$7;->access$0(Lcom/olivephone/cu/EnshrineActivity$7;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v0

    #calls: Lcom/olivephone/cu/EnshrineActivity;->showEnshrine()V
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity;->access$1(Lcom/olivephone/cu/EnshrineActivity;)V

    .line 186
    return-void
.end method
