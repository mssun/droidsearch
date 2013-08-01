.class public Lcom/olivephone/cu/EnshrineDetailActivity;
.super Landroid/app/Activity;
.source "EnshrineDetailActivity.java"


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field myll:Landroid/widget/LinearLayout;

.field mywv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/EnshrineDetailActivity;->setContentView(I)V

    .line 25
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/EnshrineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->myll:Landroid/widget/LinearLayout;

    .line 26
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/olivephone/cu/EnshrineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->mywv:Landroid/webkit/WebView;

    .line 28
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, uri:Ljava/lang/String;
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->mywv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->mywv:Landroid/webkit/WebView;

    new-instance v2, Lcom/olivephone/cu/EnshrineDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineDetailActivity$1;-><init>(Lcom/olivephone/cu/EnshrineDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/olivephone/cu/EnshrineDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineDetailActivity$2;-><init>(Lcom/olivephone/cu/EnshrineDetailActivity;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 71
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineDetailActivity;->mywv:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method
