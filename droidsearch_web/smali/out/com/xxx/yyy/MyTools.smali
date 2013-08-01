.class public Lcom/xxx/yyy/MyTools;
.super Ljava/lang/Object;
.source "MyTools.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowToast(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .parameter "str"
    .parameter "c"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void
.end method

.method public static WriteLog(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 27
    const-string v0, "Demo"

    invoke-static {v0, p0}, Lcom/xxx/yyy/MyTools;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method private static getNowDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 42
    .local v0, currentTime:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, dateString:Ljava/lang/String;
    return-object v1
.end method

.method private static writefile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "str"
    .parameter "path"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 57
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    .local v0, bw:Ljava/io/BufferedWriter;
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xxx/yyy/MyTools;->getNowDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 70
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v1           #file:Ljava/io/File;
    :goto_3e
    return-void

    .line 60
    .restart local v1       #file:Ljava/io/File;
    :cond_3f
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4a} :catch_4b

    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_18

    .line 66
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v1           #file:Ljava/io/File;
    :catch_4b
    move-exception v2

    goto :goto_3e
.end method
