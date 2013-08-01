.class public Lcom/olivephone/model/ImageNews;
.super Ljava/lang/Object;
.source "ImageNews.java"


# instance fields
.field private author:Ljava/lang/String;

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

.field private img:Ljava/lang/String;

.field private newsUuid:Ljava/lang/String;

.field private origin:Ljava/lang/String;

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
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->bigTitle:Ljava/lang/String;

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
    .line 59
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->newsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/olivephone/model/ImageNews;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2
    .parameter "author"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->author:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->bigTitle:Ljava/lang/String;

    .line 33
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
    .line 62
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/olivephone/model/Image;>;"
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->imageList:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .registers 2
    .parameter "img"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->img:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNewsUuid(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUuid"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->newsUuid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .registers 2
    .parameter "origin"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->origin:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .registers 2
    .parameter "pubTime"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->pubTime:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/olivephone/model/ImageNews;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
