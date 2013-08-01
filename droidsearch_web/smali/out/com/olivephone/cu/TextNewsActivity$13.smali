.class Lcom/olivephone/cu/TextNewsActivity$13;
.super Landroid/os/Handler;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->loadNews(I)V
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput p2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->val$id:I

    .line 824
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity$13;)Lcom/olivephone/cu/TextNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v1, ""

    .line 826
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "msg"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 827
    iget v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->val$id:I

    add-int/lit8 v7, v2, 0x5

    .line 828
    .local v7, preId:I
    iget v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->val$id:I

    const/4 v10, 0x5

    sub-int v8, v2, v10

    .line 829
    .local v8, sufId:I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v7, v2, :cond_a5

    .line 831
    iget v6, p0, Lcom/olivephone/cu/TextNewsActivity$13;->val$id:I

    .local v6, i:I
    :goto_47
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-lt v6, v2, :cond_58

    .line 891
    :cond_52
    if-gez v8, :cond_146

    .line 892
    const/4 v6, 0x0

    :goto_55
    if-lt v6, v8, :cond_f8

    .line 950
    .end local v6           #i:I
    .end local v7           #preId:I
    .end local v8           #sufId:I
    :cond_57
    return-void

    .line 832
    .restart local v6       #i:I
    .restart local v7       #preId:I
    .restart local v8       #sufId:I
    :cond_58
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/olivephone/model/TextNews;

    .line 833
    .local v9, tn:Lcom/olivephone/model/TextNews;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 834
    .local v0, wv:Landroid/webkit/WebView;
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$1;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 843
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$2;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$2;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 851
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V
    invoke-static {v2, v0}, Lcom/olivephone/cu/TextNewsActivity;->access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V

    .line 852
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->message:Ljava/lang/String;

    .line 853
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->title:Ljava/lang/String;

    .line 855
    const-string v2, ""

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsContent()Ljava/lang/String;

    move-result-object v2

    .line 856
    const-string v10, "text/html"

    const-string v10, "UTF-8"

    .line 855
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 831
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 861
    .end local v0           #wv:Landroid/webkit/WebView;
    .end local v6           #i:I
    .end local v9           #tn:Lcom/olivephone/model/TextNews;
    :cond_a5
    iget v6, p0, Lcom/olivephone/cu/TextNewsActivity$13;->val$id:I

    .restart local v6       #i:I
    :goto_a7
    sub-int v2, v7, v12

    if-ge v6, v2, :cond_52

    .line 862
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/olivephone/model/TextNews;

    .line 863
    .restart local v9       #tn:Lcom/olivephone/model/TextNews;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 864
    .restart local v0       #wv:Landroid/webkit/WebView;
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$3;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$3;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 873
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$4;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$4;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 881
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V
    invoke-static {v2, v0}, Lcom/olivephone/cu/TextNewsActivity;->access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V

    .line 882
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->message:Ljava/lang/String;

    .line 883
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->title:Ljava/lang/String;

    .line 885
    const-string v2, ""

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsContent()Ljava/lang/String;

    move-result-object v2

    .line 886
    const-string v10, "text/html"

    const-string v10, "UTF-8"

    .line 885
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 861
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 893
    .end local v0           #wv:Landroid/webkit/WebView;
    .end local v9           #tn:Lcom/olivephone/model/TextNews;
    :cond_f8
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/olivephone/model/TextNews;

    .line 894
    .restart local v9       #tn:Lcom/olivephone/model/TextNews;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 895
    .restart local v0       #wv:Landroid/webkit/WebView;
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$5;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$5;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 903
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$6;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$6;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 911
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V
    invoke-static {v2, v0}, Lcom/olivephone/cu/TextNewsActivity;->access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V

    .line 912
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->message:Ljava/lang/String;

    .line 913
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->title:Ljava/lang/String;

    .line 915
    const-string v2, ""

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsContent()Ljava/lang/String;

    move-result-object v2

    .line 916
    const-string v10, "text/html"

    const-string v10, "UTF-8"

    .line 915
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 892
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_55

    .line 920
    .end local v0           #wv:Landroid/webkit/WebView;
    .end local v9           #tn:Lcom/olivephone/model/TextNews;
    :cond_146
    move v6, v8

    :goto_147
    const/4 v2, 0x5

    if-ge v6, v2, :cond_57

    .line 921
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/olivephone/model/TextNews;

    .line 922
    .restart local v9       #tn:Lcom/olivephone/model/TextNews;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 923
    .restart local v0       #wv:Landroid/webkit/WebView;
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$7;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$7;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 931
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$13$8;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$13$8;-><init>(Lcom/olivephone/cu/TextNewsActivity$13;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 939
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V
    invoke-static {v2, v0}, Lcom/olivephone/cu/TextNewsActivity;->access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V

    .line 940
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->message:Ljava/lang/String;

    .line 941
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/olivephone/cu/TextNewsActivity;->title:Ljava/lang/String;

    .line 943
    const-string v2, ""

    invoke-virtual {v9}, Lcom/olivephone/model/TextNews;->getNewsContent()Ljava/lang/String;

    move-result-object v2

    .line 944
    const-string v10, "text/html"

    const-string v10, "UTF-8"

    .line 943
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 920
    add-int/lit8 v6, v6, 0x1

    goto :goto_147
.end method
