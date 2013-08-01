.class Lcom/olivephone/cu/TextNewsActivity$21;
.super Ljava/lang/Thread;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->updateNewList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-string v3, "beforeMsg"

    const-string v3, "afterMsg"

    .line 1389
    :try_start_4
    const-string v3, "textNewsURL"

    .line 1390
    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    iget-object v6, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v6, v6, Lcom/olivephone/cu/TextNewsActivity;->page:I

    .line 1389
    invoke-static {v4, v5, v6}, Lcom/olivephone/constant/URLConstant;->textNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v5, v5, Lcom/olivephone/cu/TextNewsActivity;->page:I

    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->textNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1394
    new-instance v4, Lcom/olivephone/parserxml/TextNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/TextNewsHandler;-><init>()V

    .line 1392
    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 1395
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kao="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1396
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v6, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    iget-object v7, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v7, v7, Lcom/olivephone/cu/TextNewsActivity;->page:I

    invoke-static {v5, v6, v7}, Lcom/olivephone/constant/URLConstant;->textNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1395
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1397
    const-string v3, "beforeMsg"

    const-string v4, "beforeMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->handlertextnews:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1399
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->handlertextnews:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1400
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1401
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$21;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/TextNewsActivity;->isClickable:Z

    .line 1402
    const-string v3, "afterMsg"

    const-string v4, "afterMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_7a} :catch_7b
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_7a} :catch_81
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7a} :catch_87
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7a} :catch_8d

    .line 1412
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_7a
    return-void

    .line 1403
    :catch_7b
    move-exception v3

    move-object v0, v3

    .line 1404
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_7a

    .line 1405
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_81
    move-exception v3

    move-object v0, v3

    .line 1406
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_7a

    .line 1407
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_87
    move-exception v3

    move-object v0, v3

    .line 1408
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 1409
    .end local v0           #e:Ljava/io/IOException;
    :catch_8d
    move-exception v3

    move-object v0, v3

    .line 1410
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a
.end method
