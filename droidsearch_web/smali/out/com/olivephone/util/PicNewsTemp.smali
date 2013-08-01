.class public Lcom/olivephone/util/PicNewsTemp;
.super Ljava/lang/Object;
.source "PicNewsTemp.java"


# static fields
.field public static adapter:Landroid/widget/ArrayAdapter;

.field public static filename:Ljava/lang/String;

.field public static isCancel:Z

.field public static isGetData:Z

.field public static isInit:Z

.field public static isTrue:Z

.field public static list_importNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static menu_height:I

.field public static searchedNews:Lcom/olivephone/model/SearchedNews;

.field public static textNews:Lcom/olivephone/model/TextNews;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/olivephone/util/PicNewsTemp;->isInit:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
