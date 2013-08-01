.class public Lcom/olivephone/model/Advertise;
.super Ljava/lang/Object;
.source "Advertise.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bigTitle:Ljava/lang/String;

.field private faceImg:Ljava/lang/String;

.field private media:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private newsContent:Ljava/lang/String;

.field private newsDesc:Ljava/lang/String;

.field private newsUrl:Ljava/lang/String;

.field private newsUuid:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private pubTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceImg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->faceImg:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->media:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->newsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->newsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->newsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->newsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/olivephone/model/Advertise;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2
    .parameter "author"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->author:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->bigTitle:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFaceImg(Ljava/lang/String;)V
    .registers 2
    .parameter "faceImg"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->faceImg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .registers 2
    .parameter "media"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->media:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setNewsContent(Ljava/lang/String;)V
    .registers 2
    .parameter "newsContent"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->newsContent:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNewsDesc(Ljava/lang/String;)V
    .registers 2
    .parameter "newsDesc"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->newsDesc:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUrl"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->newsUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setNewsUuid(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUuid"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->newsUuid:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .registers 2
    .parameter "origin"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->origin:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .registers 2
    .parameter "pubTime"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->pubTime:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/olivephone/model/Advertise;->type:Ljava/lang/String;

    .line 35
    return-void
.end method
