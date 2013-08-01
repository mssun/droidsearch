.class Lcom/olivephone/cu/EnshrineActivity$8$1;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity$8;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/EnshrineActivity$8;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity$8;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$8$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$8;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    sget v0, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    .line 208
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$8$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$8;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity$8;->access$0(Lcom/olivephone/cu/EnshrineActivity$8;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v0

    new-instance v1, Lcom/olivephone/sqlite/DBHelper;

    iget-object v2, p0, Lcom/olivephone/cu/EnshrineActivity$8$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$8;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v2}, Lcom/olivephone/cu/EnshrineActivity$8;->access$0(Lcom/olivephone/cu/EnshrineActivity$8;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v2

    const-string v3, "zsxhdb"

    const/4 v4, 0x0

    sget v5, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, v0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 209
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$8$1;->this$1:Lcom/olivephone/cu/EnshrineActivity$8;

    #getter for: Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity$8;->access$0(Lcom/olivephone/cu/EnshrineActivity$8;)Lcom/olivephone/cu/EnshrineActivity;

    move-result-object v0

    #calls: Lcom/olivephone/cu/EnshrineActivity;->showEnshrine()V
    invoke-static {v0}, Lcom/olivephone/cu/EnshrineActivity;->access$1(Lcom/olivephone/cu/EnshrineActivity;)V

    .line 210
    return-void
.end method
