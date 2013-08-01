.class public Lcom/olivephone/model/SearchedNews;
.super Ljava/lang/Object;
.source "SearchedNews.java"


# instance fields
.field private bigTitle:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private newsUrl:Ljava/lang/String;

.field private pubTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/olivephone/model/SearchedNews;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/olivephone/model/SearchedNews;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/olivephone/model/SearchedNews;->newsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/olivephone/model/SearchedNews;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/olivephone/model/SearchedNews;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/olivephone/model/SearchedNews;->bigTitle:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/model/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/olivephone/model/Image;>;"
    iput-object p1, p0, Lcom/olivephone/model/SearchedNews;->imageList:Ljava/util/List;

    .line 16
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUrl"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/olivephone/model/SearchedNews;->newsUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .registers 2
    .parameter "pubTime"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/olivephone/model/SearchedNews;->pubTime:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/olivephone/model/SearchedNews;->type:Ljava/lang/String;

    .line 28
    return-void
.end method
