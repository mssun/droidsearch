.class Lcom/olivephone/util/AsyncTextLoader$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/olivephone/util/AsyncTextLoader;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/util/AsyncTextLoader$2;->this$0:Lcom/olivephone/util/AsyncTextLoader;

    iput-object p2, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$handler:Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 37
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    iget-object v2, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/olivephone/util/AsyncTextLoader$2;->this$0:Lcom/olivephone/util/AsyncTextLoader;

    #getter for: Lcom/olivephone/util/AsyncTextLoader;->textCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/olivephone/util/AsyncTextLoader;->access$0(Lcom/olivephone/util/AsyncTextLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$imageUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v2, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 41
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/olivephone/util/AsyncTextLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    return-void
.end method
