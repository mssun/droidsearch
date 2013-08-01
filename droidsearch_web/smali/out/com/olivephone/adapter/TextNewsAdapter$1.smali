.class Lcom/olivephone/adapter/TextNewsAdapter$1;
.super Ljava/lang/Object;
.source "TextNewsAdapter.java"

# interfaces
.implements Lcom/olivephone/util/AsyncTextLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/adapter/TextNewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/adapter/TextNewsAdapter;

.field private final synthetic val$tn:Lcom/olivephone/model/TextNews;


# direct methods
.method constructor <init>(Lcom/olivephone/adapter/TextNewsAdapter;Lcom/olivephone/model/TextNews;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/adapter/TextNewsAdapter$1;->this$0:Lcom/olivephone/adapter/TextNewsAdapter;

    iput-object p2, p0, Lcom/olivephone/adapter/TextNewsAdapter$1;->val$tn:Lcom/olivephone/model/TextNews;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5
    .parameter "imageDrawable"
    .parameter "imageUrl"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/olivephone/adapter/TextNewsAdapter$1;->val$tn:Lcom/olivephone/model/TextNews;

    invoke-virtual {v1, p1}, Lcom/olivephone/model/TextNews;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/olivephone/adapter/TextNewsAdapter$1;->this$0:Lcom/olivephone/adapter/TextNewsAdapter;

    iget-object v1, v1, Lcom/olivephone/adapter/TextNewsAdapter;->listView:Landroid/widget/ListView;

    .line 90
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_14

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_14
    return-void
.end method
