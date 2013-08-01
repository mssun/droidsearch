.class public Lcom/olivephone/mywidget/SelectView;
.super Landroid/widget/LinearLayout;
.source "SelectView.java"


# instance fields
.field public llay:Landroid/widget/LinearLayout;

.field public textView:Landroid/widget/TextView;

.field public tv:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "strs"

    .prologue
    const/16 v8, 0x86

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x4198

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, v4}, Lcom/olivephone/mywidget/SelectView;->setOrientation(I)V

    .line 23
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    .line 24
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x29

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 29
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/olivephone/mywidget/SelectView;->addView(Landroid/view/View;)V

    .line 32
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    .line 33
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    array-length v1, p2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_62
    array-length v1, p2

    if-lt v0, v1, :cond_71

    .line 49
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/olivephone/mywidget/SelectView;->addView(Landroid/view/View;)V

    .line 51
    return-void

    .line 40
    :cond_71
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 41
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x88

    const/16 v4, 0x25

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_62
.end method
