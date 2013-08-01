.class Lcom/olivephone/cu/VideoNewsActivity$LoadThread;
.super Ljava/lang/Thread;
.source "VideoNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/VideoNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget v5, v5, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->videoNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/olivephone/parserxml/VideoNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/VideoNewsHandler;-><init>()V

    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kankan="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v6, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    iget-object v7, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget v7, v7, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    invoke-static {v5, v6, v7}, Lcom/olivephone/constant/URLConstant;->videoNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_57

    .line 539
    :cond_41
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/VideoNewsActivity;->isLast:Z

    .line 543
    :goto_46
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->_handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 544
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->_handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_56
    return-void

    .line 541
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_57
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/olivephone/cu/VideoNewsActivity;->isLast:Z
    :try_end_5c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_5c} :catch_5d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_5c} :catch_63
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_6f

    goto :goto_46

    .line 546
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catch_5d
    move-exception v3

    move-object v0, v3

    .line 547
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_56

    .line 548
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_63
    move-exception v3

    move-object v0, v3

    .line 549
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_56

    .line 550
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_69
    move-exception v3

    move-object v0, v3

    .line 551
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 552
    .end local v0           #e:Ljava/io/IOException;
    :catch_6f
    move-exception v3

    move-object v0, v3

    .line 553
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method
