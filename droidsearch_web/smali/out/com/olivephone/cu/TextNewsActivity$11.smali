.class Lcom/olivephone/cu/TextNewsActivity$11;
.super Landroid/os/Handler;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->loadFirstNews(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput p2, p0, Lcom/olivephone/cu/TextNewsActivity$11;->val$id:I

    .line 772
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity$11;)Lcom/olivephone/cu/TextNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 774
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 775
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    iget v2, p0, Lcom/olivephone/cu/TextNewsActivity$11;->val$id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/olivephone/model/TextNews;

    .line 776
    .local v6, tn:Lcom/olivephone/model/TextNews;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, wv:Landroid/webkit/WebView;
    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$11$1;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/TextNewsActivity$11$1;-><init>(Lcom/olivephone/cu/TextNewsActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$11$2;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/TextNewsActivity$11$2;-><init>(Lcom/olivephone/cu/TextNewsActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 794
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V
    invoke-static {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V

    .line 795
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v6}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/olivephone/cu/TextNewsActivity;->message:Ljava/lang/String;

    .line 796
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v6}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/olivephone/cu/TextNewsActivity;->title:Ljava/lang/String;

    .line 798
    const-string v1, ""

    invoke-virtual {v6}, Lcom/olivephone/model/TextNews;->getNewsContent()Ljava/lang/String;

    move-result-object v2

    .line 799
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    .line 798
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 804
    .end local v0           #wv:Landroid/webkit/WebView;
    .end local v6           #tn:Lcom/olivephone/model/TextNews;
    :cond_5b
    return-void
.end method
