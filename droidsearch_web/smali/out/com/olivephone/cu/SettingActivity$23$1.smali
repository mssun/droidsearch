.class Lcom/olivephone/cu/SettingActivity$23$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity$23;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/SettingActivity$23;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity$23;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$23$1;->this$1:Lcom/olivephone/cu/SettingActivity$23;

    .line 1448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$23$1;->this$1:Lcom/olivephone/cu/SettingActivity$23;

    #getter for: Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;
    invoke-static {v1}, Lcom/olivephone/cu/SettingActivity$23;->access$0(Lcom/olivephone/cu/SettingActivity$23;)Lcom/olivephone/cu/SettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/SettingActivity;->finish()V

    .line 1461
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$23$1;->this$1:Lcom/olivephone/cu/SettingActivity$23;

    #getter for: Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;
    invoke-static {v1}, Lcom/olivephone/cu/SettingActivity$23;->access$0(Lcom/olivephone/cu/SettingActivity$23;)Lcom/olivephone/cu/SettingActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1462
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$23$1;->this$1:Lcom/olivephone/cu/SettingActivity$23;

    #getter for: Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;
    invoke-static {v1}, Lcom/olivephone/cu/SettingActivity$23;->access$0(Lcom/olivephone/cu/SettingActivity$23;)Lcom/olivephone/cu/SettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1463
    return-void
.end method
