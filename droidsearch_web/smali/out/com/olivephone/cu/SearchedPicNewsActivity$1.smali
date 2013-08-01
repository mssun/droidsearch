.class Lcom/olivephone/cu/SearchedPicNewsActivity$1;
.super Ljava/lang/Object;
.source "SearchedPicNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchedPicNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchedPicNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 54
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 55
    invoke-virtual {v1}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/Image;

    .line 54
    iput-object v1, v2, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    .line 58
    iget-object v1, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    .line 59
    invoke-virtual {v1}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedPicNewsActivity;->iv_picnews:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedPicNewsActivity;->tv_picnews:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/olivephone/cu/SearchedPicNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedPicNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    .line 63
    invoke-virtual {v2}, Lcom/olivephone/model/Image;->getPicDesc()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
