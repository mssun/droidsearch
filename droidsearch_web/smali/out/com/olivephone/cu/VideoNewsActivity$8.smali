.class Lcom/olivephone/cu/VideoNewsActivity$8;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v6, ""

    .line 400
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->isClickable:Z

    if-eqz v4, :cond_86

    .line 402
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->hiddenNewList()V
    invoke-static {v4}, Lcom/olivephone/cu/VideoNewsActivity;->access$1(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 403
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->showNewsVideo()V
    invoke-static {v4}, Lcom/olivephone/cu/VideoNewsActivity;->access$2(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 404
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p3}, Ljava/io/PrintStream;->println(I)V

    .line 405
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/VideoNews;

    .line 407
    .local v3, videoNews:Lcom/olivephone/model/VideoNews;
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getBigTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/olivephone/cu/VideoNewsActivity;->bigtitle:Ljava/lang/String;

    .line 408
    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, playtime:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getNewsDesc()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, newsdesc:Ljava/lang/String;
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/olivephone/cu/VideoNewsActivity;->videourl:Ljava/lang/String;

    .line 411
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getBigTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/olivephone/cu/VideoNewsActivity;->title:Ljava/lang/String;

    .line 412
    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getImg()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, img:Ljava/lang/String;
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->tv_title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/VideoNewsActivity;->bigtitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->tv_playtime:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const-string v4, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 418
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->tv_newsdesc:Landroid/widget/TextView;

    const-string v5, "\u6682\u65e0\u8be6\u7ec6\u65b0\u95fb\uff0c\u8bf7\u89c2\u770b\u89c6\u9891"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :goto_68
    const-string v4, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    if-nez v0, :cond_8f

    .line 423
    :cond_72
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->iv_detailimg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v5}, Lcom/olivephone/cu/VideoNewsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    .end local v0           #img:Ljava/lang/String;
    .end local v1           #newsdesc:Ljava/lang/String;
    .end local v2           #playtime:Ljava/lang/String;
    .end local v3           #videoNews:Lcom/olivephone/model/VideoNews;
    :cond_86
    :goto_86
    return-void

    .line 420
    .restart local v0       #img:Ljava/lang/String;
    .restart local v1       #newsdesc:Ljava/lang/String;
    .restart local v2       #playtime:Ljava/lang/String;
    .restart local v3       #videoNews:Lcom/olivephone/model/VideoNews;
    :cond_87
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->tv_newsdesc:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 425
    :cond_8f
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$8;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->iv_detailimg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_86
.end method
