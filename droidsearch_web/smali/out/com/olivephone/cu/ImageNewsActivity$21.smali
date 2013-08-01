.class Lcom/olivephone/cu/ImageNewsActivity$21;
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
.field j:I

.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iget v0, p1, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->j:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1078
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->checked_rss:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->j:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/olivephone/cu/ImageNewsActivity;->cateID:Ljava/lang/String;

    .line 1079
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    #calls: Lcom/olivephone/cu/ImageNewsActivity;->LoadIcon()V
    invoke-static {v0}, Lcom/olivephone/cu/ImageNewsActivity;->access$2(Lcom/olivephone/cu/ImageNewsActivity;)V

    .line 1081
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput v4, v0, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    .line 1085
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    if-eqz v0, :cond_3d

    .line 1086
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    .line 1092
    :goto_3c
    return v3

    .line 1089
    :cond_3d
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$21;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-boolean v4, v0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    goto :goto_3c
.end method
