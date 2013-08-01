.class Lcom/olivephone/cu/ImageNewsActivity$20;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->updateChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1055
    sput-boolean v2, Lcom/olivephone/constant/MyThread;->isAlive:Z

    .line 1056
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    if-eqz v0, :cond_1d

    .line 1057
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    .line 1059
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/ImageNewsActivity;->isClickable:Z

    .line 1065
    :goto_1c
    return v2

    .line 1061
    :cond_1d
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    .line 1063
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$20;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/ImageNewsActivity;->isClickable:Z

    goto :goto_1c
.end method
