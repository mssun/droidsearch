.class Lcom/olivephone/cu/ImageNewsActivity$LoadThread;
.super Ljava/lang/Thread;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/ImageNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 759
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->cateID:Ljava/lang/String;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->imageNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/olivephone/parserxml/ImageNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/ImageNewsHandler;-><init>()V

    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 760
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->_handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 761
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->_handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_27} :catch_28
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_27} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_3a

    .line 772
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_27
    return-void

    .line 763
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 764
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_27

    .line 765
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2e
    move-exception v3

    move-object v0, v3

    .line 766
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_27

    .line 767
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_34
    move-exception v3

    move-object v0, v3

    .line 768
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 769
    .end local v0           #e:Ljava/io/IOException;
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 770
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
