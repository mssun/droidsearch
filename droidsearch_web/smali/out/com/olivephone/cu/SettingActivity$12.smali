.class Lcom/olivephone/cu/SettingActivity$12;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_news_tips_ext:Z

    if-eqz v0, :cond_d

    .line 537
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 545
    :goto_c
    return v2

    .line 539
    :cond_d
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 540
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/SettingActivity;->iv_news_tips_ext:Z

    .line 543
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$12;->this$0:Lcom/olivephone/cu/SettingActivity;

    #calls: Lcom/olivephone/cu/SettingActivity;->onShowNewsTipsOtherDown()V
    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$6(Lcom/olivephone/cu/SettingActivity;)V

    goto :goto_c
.end method
