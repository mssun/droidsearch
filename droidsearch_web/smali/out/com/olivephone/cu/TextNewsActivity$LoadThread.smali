.class Lcom/olivephone/cu/TextNewsActivity$LoadThread;
.super Ljava/lang/Thread;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/TextNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 695
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v5, v5, Lcom/olivephone/cu/TextNewsActivity;->page:I

    .line 694
    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->textNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 696
    new-instance v4, Lcom/olivephone/parserxml/TextNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/TextNewsHandler;-><init>()V

    .line 694
    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 697
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_35

    .line 698
    :cond_1f
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/TextNewsActivity;->isLast:Z

    .line 702
    :goto_24
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->_handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 703
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->_handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 714
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2           #msg:Landroid/os/Message;
    :goto_34
    return-void

    .line 700
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_35
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/olivephone/cu/TextNewsActivity;->isLast:Z
    :try_end_3a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_3a} :catch_41
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_4d

    goto :goto_24

    .line 705
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catch_3b
    move-exception v3

    move-object v0, v3

    .line 706
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_34

    .line 707
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 708
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_34

    .line 709
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 710
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 711
    .end local v0           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v3

    move-object v0, v3

    .line 712
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method
