.class public Lcom/olivephone/constant/IntegerConstant;
.super Ljava/lang/Object;
.source "IntegerConstant.java"


# static fields
.field public static DB_VERSION:I = 0x0

.field public static final POST_TIME:I = 0xbb8

.field public static RANGE:I = 0x0

.field public static SEEK:I = 0x0

.field public static TEXT_NEWS_PAGE:I = 0x0

.field public static final TIME_OUT:I = 0x4e20

.field public static VIDEO_NEWS_PAGE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7
    sput v0, Lcom/olivephone/constant/IntegerConstant;->TEXT_NEWS_PAGE:I

    .line 8
    sput v0, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    .line 9
    sput v1, Lcom/olivephone/constant/IntegerConstant;->RANGE:I

    .line 10
    sput v1, Lcom/olivephone/constant/IntegerConstant;->SEEK:I

    .line 11
    sput v0, Lcom/olivephone/constant/IntegerConstant;->VIDEO_NEWS_PAGE:I

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
