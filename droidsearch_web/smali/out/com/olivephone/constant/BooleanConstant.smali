.class public Lcom/olivephone/constant/BooleanConstant;
.super Ljava/lang/Object;
.source "BooleanConstant.java"


# static fields
.field public static IS_OVER:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/olivephone/constant/BooleanConstant;->IS_OVER:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
