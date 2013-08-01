.class public Lcom/olivephone/util/AsyncTextLoader;
.super Ljava/lang/Object;
.source "AsyncTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/olivephone/util/AsyncTextLoader$ImageCallback;
    }
.end annotation


# instance fields
.field private textCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/olivephone/util/AsyncTextLoader;->textCache:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/util/AsyncTextLoader;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/olivephone/util/AsyncTextLoader;->textCache:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public loadDrawable(Ljava/lang/String;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "imageUrl"
    .parameter "imageCallback"

    .prologue
    .line 16
    iget-object v3, p0, Lcom/olivephone/util/AsyncTextLoader;->textCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 17
    iget-object v3, p0, Lcom/olivephone/util/AsyncTextLoader;->textCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 18
    .local v2, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 19
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    move-object v3, v0

    .line 45
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_19
    return-object v3

    .line 23
    :cond_1a
    new-instance v1, Lcom/olivephone/util/AsyncTextLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/olivephone/util/AsyncTextLoader$1;-><init>(Lcom/olivephone/util/AsyncTextLoader;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;Ljava/lang/String;)V

    .line 32
    .local v1, handler:Landroid/os/Handler;
    new-instance v3, Lcom/olivephone/util/AsyncTextLoader$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/olivephone/util/AsyncTextLoader$2;-><init>(Lcom/olivephone/util/AsyncTextLoader;Ljava/lang/String;Landroid/os/Handler;)V

    .line 44
    invoke-virtual {v3}, Lcom/olivephone/util/AsyncTextLoader$2;->start()V

    .line 45
    const/4 v3, 0x0

    goto :goto_19
.end method
