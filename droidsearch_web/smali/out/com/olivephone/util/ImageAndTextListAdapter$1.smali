.class Lcom/olivephone/util/ImageAndTextListAdapter$1;
.super Ljava/lang/Object;
.source "ImageAndTextListAdapter.java"

# interfaces
.implements Lcom/olivephone/util/AsyncTextLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/util/ImageAndTextListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/util/ImageAndTextListAdapter;

.field private final synthetic val$iat:Lcom/olivephone/util/ImageAndText;


# direct methods
.method constructor <init>(Lcom/olivephone/util/ImageAndTextListAdapter;Lcom/olivephone/util/ImageAndText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/util/ImageAndTextListAdapter$1;->this$0:Lcom/olivephone/util/ImageAndTextListAdapter;

    iput-object p2, p0, Lcom/olivephone/util/ImageAndTextListAdapter$1;->val$iat:Lcom/olivephone/util/ImageAndText;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5
    .parameter "imageDrawable"
    .parameter "imageUrl"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/olivephone/util/ImageAndTextListAdapter$1;->val$iat:Lcom/olivephone/util/ImageAndText;

    invoke-virtual {v1, p1}, Lcom/olivephone/util/ImageAndText;->setDrawabe(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/olivephone/util/ImageAndTextListAdapter$1;->this$0:Lcom/olivephone/util/ImageAndTextListAdapter;

    iget-object v1, v1, Lcom/olivephone/util/ImageAndTextListAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_14

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_14
    return-void
.end method
