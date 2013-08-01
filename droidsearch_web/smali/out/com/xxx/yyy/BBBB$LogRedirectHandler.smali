.class public Lcom/xxx/yyy/BBBB$LogRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "BBBB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxx/yyy/BBBB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogRedirectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/BBBB;


# direct methods
.method public constructor <init>(Lcom/xxx/yyy/BBBB;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/xxx/yyy/BBBB$LogRedirectHandler;->this$0:Lcom/xxx/yyy/BBBB;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 6
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 548
    .local v0, uri:Ljava/net/URI;
    iget-object v1, p0, Lcom/xxx/yyy/BBBB$LogRedirectHandler;->this$0:Lcom/xxx/yyy/BBBB;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xxx/yyy/BBBB;->access$0(Lcom/xxx/yyy/BBBB;Ljava/lang/String;)V

    .line 549
    return-object v0
.end method
