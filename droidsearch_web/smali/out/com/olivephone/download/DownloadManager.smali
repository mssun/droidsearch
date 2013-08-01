.class public Lcom/olivephone/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field static c:Landroid/content/Context;

.field public static downloadOver:Z

.field static range:Ljava/lang/String;

.field static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/olivephone/download/DownloadManager;->downloadOver:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "strurl"
    .parameter "strrange"

    .prologue
    .line 34
    sput-object p1, Lcom/olivephone/download/DownloadManager;->url:Ljava/lang/String;

    .line 35
    sput-object p0, Lcom/olivephone/download/DownloadManager;->c:Landroid/content/Context;

    .line 36
    sput-object p2, Lcom/olivephone/download/DownloadManager;->range:Ljava/lang/String;

    .line 37
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, urls:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    sput-object v1, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    sput-object v1, Lcom/olivephone/util/PicNewsTemp;->filename:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/olivephone/download/DownloadManager$1;

    invoke-direct {v1}, Lcom/olivephone/download/DownloadManager$1;-><init>()V

    .line 159
    invoke-virtual {v1}, Lcom/olivephone/download/DownloadManager$1;->start()V

    .line 161
    return-void
.end method
