.class Lcom/olivephone/cu/VideoNewsActivity$12;
.super Ljava/lang/Thread;
.source "VideoNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->updateNewsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 587
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    sget v5, Lcom/olivephone/constant/IntegerConstant;->VIDEO_NEWS_PAGE:I

    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->videoNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/olivephone/parserxml/VideoNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/VideoNewsHandler;-><init>()V

    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 591
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "videourl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v6, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    sget v7, Lcom/olivephone/constant/IntegerConstant;->VIDEO_NEWS_PAGE:I

    invoke-static {v5, v6, v7}, Lcom/olivephone/constant/URLConstant;->videoNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->handlernews:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 593
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->handlernews:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 594
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 595
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$12;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/VideoNewsActivity;->isClickable:Z
    :try_end_51
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_51} :catch_52
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_51} :catch_58
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_51} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_64

    .line 605
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_51
    return-void

    .line 596
    :catch_52
    move-exception v3

    move-object v0, v3

    .line 597
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_51

    .line 598
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_58
    move-exception v3

    move-object v0, v3

    .line 599
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_51

    .line 600
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_5e
    move-exception v3

    move-object v0, v3

    .line 601
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 602
    .end local v0           #e:Ljava/io/IOException;
    :catch_64
    move-exception v3

    move-object v0, v3

    .line 603
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method
