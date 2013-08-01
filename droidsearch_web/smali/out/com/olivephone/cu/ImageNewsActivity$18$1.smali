.class Lcom/olivephone/cu/ImageNewsActivity$18$1;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity$18;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/ImageNewsActivity$18;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity$18;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$18$1;->this$1:Lcom/olivephone/cu/ImageNewsActivity$18;

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 962
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$18$1;->this$1:Lcom/olivephone/cu/ImageNewsActivity$18;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$18;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$18;->access$0(Lcom/olivephone/cu/ImageNewsActivity$18;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/ImageNewsActivity;->finish()V

    .line 963
    new-instance v0, Landroid/content/Intent;

    .line 964
    const-string v1, "android.intent.action.MAIN"

    .line 963
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 968
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$18$1;->this$1:Lcom/olivephone/cu/ImageNewsActivity$18;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$18;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$18;->access$0(Lcom/olivephone/cu/ImageNewsActivity$18;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/ImageNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 970
    return-void
.end method
