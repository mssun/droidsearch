.class public Lcom/olivephone/model/DownLoadFile;
.super Ljava/lang/Object;
.source "DownLoadFile.java"


# instance fields
.field private dla:Lcom/olivephone/cu/DownLoadActivity;

.field private isAlive:Z

.field private isDelete:Z

.field private isPause:Z

.field private name:Ljava/lang/String;

.field private size:I

.field private tempSize:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    .line 14
    iput-boolean v1, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    .line 15
    iput-boolean v1, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getDla()Lcom/olivephone/cu/DownLoadActivity;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->dla:Lcom/olivephone/cu/DownLoadActivity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/olivephone/model/DownLoadFile;->size:I

    return v0
.end method

.method public getTempSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    return v0
.end method

.method public isDelete()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    return v0
.end method

.method public isPause()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    return v0
.end method

.method public setAlive(Z)V
    .registers 2
    .parameter "isAlive"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    .line 56
    return-void
.end method

.method public setDelete(Z)V
    .registers 2
    .parameter "isDelete"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    .line 68
    return-void
.end method

.method public setDla(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter "dla"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->dla:Lcom/olivephone/cu/DownLoadActivity;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPause(Z)V
    .registers 2
    .parameter "isPause"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    .line 62
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 37
    iput p1, p0, Lcom/olivephone/model/DownLoadFile;->size:I

    .line 38
    return-void
.end method

.method public setTempSize(Ljava/lang/String;)V
    .registers 2
    .parameter "tempSize"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->thread:Ljava/lang/Thread;

    .line 44
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->url:Ljava/lang/String;

    .line 28
    return-void
.end method
