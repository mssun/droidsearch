.class public final Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
.super Ljava/lang/Object;
.source "ZipIntMultShortHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxx/yyy/ZipIntMultShortHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation


# instance fields
.field public final key:I

.field public next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

.field public size:S

.field public values:[S


# direct methods
.method public constructor <init>(I[S)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    .line 376
    iput-object p2, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    .line 377
    return-void
.end method
