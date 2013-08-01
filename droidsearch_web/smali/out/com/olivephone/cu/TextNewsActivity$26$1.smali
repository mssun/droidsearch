.class Lcom/olivephone/cu/TextNewsActivity$26$1;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$26;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$26;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$26;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$26$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$26;

    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$26$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$26;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$26;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/TextNewsActivity$26;->access$0(Lcom/olivephone/cu/TextNewsActivity$26;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/TextNewsActivity;->finish()V

    .line 1514
    new-instance v0, Landroid/content/Intent;

    .line 1515
    const-string v1, "android.intent.action.MAIN"

    .line 1514
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1519
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$26$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$26;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$26;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/TextNewsActivity$26;->access$0(Lcom/olivephone/cu/TextNewsActivity$26;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1521
    return-void
.end method
