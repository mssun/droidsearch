.class Lcom/olivephone/cu/XHNewsActivity$3;
.super Ljava/lang/Object;
.source "XHNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XHNewsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/XHNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XHNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XHNewsActivity$3;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/olivephone/cu/XHNewsActivity$3;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/XHNewsActivity;->finish()V

    .line 258
    iget-object v1, p0, Lcom/olivephone/cu/XHNewsActivity$3;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/XHNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 259
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/olivephone/cu/XHNewsActivity$3;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/XHNewsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 260
    return-void
.end method
