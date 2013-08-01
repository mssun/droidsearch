.class Lcom/olivephone/cu/SearchedNewsActivity$2;
.super Ljava/lang/Thread;
.source "SearchedNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchedNewsActivity;->searchnews(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SearchedNewsActivity;

.field private final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchedNewsActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iput-object p2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->val$keyword:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 132
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "keyword3="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->val$keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    const-string v2, "url"

    .line 134
    iget-object v3, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->val$keyword:Ljava/lang/String;

    .line 133
    invoke-static {v3, v4}, Lcom/olivephone/constant/URLConstant;->newssearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->val$keyword:Ljava/lang/String;

    .line 135
    invoke-static {v4, v5}, Lcom/olivephone/constant/URLConstant;->newssearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 139
    iget-object v3, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 140
    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->val$keyword:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v3, v4}, Lcom/olivephone/constant/URLConstant;->newssearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Lcom/olivephone/parserxml/SearchedNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/SearchedNewsHandler;-><init>()V

    .line 138
    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    .line 142
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_71

    .line 143
    :cond_6a
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_71
    const-string v2, "list.size()"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNewsHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNewsHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity$2;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_a6} :catch_a7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_a6} :catch_ad
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a6} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a6} :catch_b9

    .line 161
    .end local v1           #msg:Landroid/os/Message;
    :goto_a6
    return-void

    .line 149
    :catch_a7
    move-exception v2

    move-object v0, v2

    .line 151
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_a6

    .line 152
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_ad
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_a6

    .line 155
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_b3
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catch_b9
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a6
.end method
