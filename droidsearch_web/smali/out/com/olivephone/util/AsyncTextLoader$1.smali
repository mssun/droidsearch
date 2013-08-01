.class Lcom/olivephone/util/AsyncTextLoader$1;
.super Landroid/os/Handler;
.source "AsyncTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/util/AsyncTextLoader;->loadDrawable(Ljava/lang/String;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/util/AsyncTextLoader;

.field private final synthetic val$imageCallback:Lcom/olivephone/util/AsyncTextLoader$ImageCallback;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/olivephone/util/AsyncTextLoader;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/util/AsyncTextLoader$1;->this$0:Lcom/olivephone/util/AsyncTextLoader;

    iput-object p2, p0, Lcom/olivephone/util/AsyncTextLoader$1;->val$imageCallback:Lcom/olivephone/util/AsyncTextLoader$ImageCallback;

    iput-object p3, p0, Lcom/olivephone/util/AsyncTextLoader$1;->val$imageUrl:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/olivephone/util/AsyncTextLoader$1;->val$imageCallback:Lcom/olivephone/util/AsyncTextLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/olivephone/util/AsyncTextLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/olivephone/util/AsyncTextLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 29
    return-void
.end method
