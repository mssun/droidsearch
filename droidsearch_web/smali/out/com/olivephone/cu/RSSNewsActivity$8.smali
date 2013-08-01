.class Lcom/olivephone/cu/RSSNewsActivity$8;
.super Ljava/lang/Thread;
.source "RSSNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->loadNewsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 374
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 377
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/RSSNewsActivity;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&pw=320"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/olivephone/parserxml/RssItemHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/RssItemHandler;-><init>()V

    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 378
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v3, "url"

    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/RSSNewsActivity;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->handlertextnews:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 380
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->handlertextnews:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$8;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_40
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_40} :catch_41
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_40} :catch_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_53

    .line 391
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_40
    return-void

    .line 382
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 383
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_40

    .line 384
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 385
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_40

    .line 386
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_4d
    move-exception v3

    move-object v0, v3

    .line 387
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .line 388
    .end local v0           #e:Ljava/io/IOException;
    :catch_53
    move-exception v3

    move-object v0, v3

    .line 389
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method
