.class public Lcom/olivephone/mywidget/ChannelListView;
.super Landroid/widget/ScrollView;
.source "ChannelListView.java"


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field strs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter
    .parameter "checked_rss"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/olivephone/mywidget/ChannelListView;->list:Ljava/util/ArrayList;

    .line 30
    const-string v0, "ChannelListView.list.size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/olivephone/mywidget/ChannelListView;->context:Landroid/content/Context;

    .line 32
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    .line 33
    iput-object p3, p0, Lcom/olivephone/mywidget/ChannelListView;->strs:[Ljava/lang/String;

    .line 34
    const-string v0, "ChannelListView.strs.length"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/mywidget/ChannelListView;->strs:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0, v3}, Lcom/olivephone/mywidget/ChannelListView;->setVerticalScrollBarEnabled(Z)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/olivephone/mywidget/ChannelListView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    invoke-direct {p0}, Lcom/olivephone/mywidget/ChannelListView;->initView()V

    .line 39
    return-void
.end method

.method private initView()V
    .registers 14

    .prologue
    .line 42
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v5, llayout:Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v2, v11, :cond_18

    .line 105
    invoke-virtual {p0, v5}, Lcom/olivephone/mywidget/ChannelListView;->addView(Landroid/view/View;)V

    .line 106
    return-void

    .line 49
    :cond_18
    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->list:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/CateList;

    .line 51
    .local v0, cateList:Lcom/olivephone/model/CateList;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, item:Ljava/lang/String;
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v6, llayouth:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v10, textView:Landroid/widget/TextView;
    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    const/high16 v11, 0x4180

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setWidth(I)V

    .line 62
    new-instance v8, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->context:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v8, stance:Landroid/widget/TextView;
    const/16 v11, 0x32

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setWidth(I)V

    .line 65
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, cb:Landroid/widget/CheckBox;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7b
    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->strs:[Ljava/lang/String;

    array-length v11, v11

    if-lt v4, v11, :cond_98

    .line 76
    new-instance v11, Lcom/olivephone/mywidget/ChannelListView$1;

    invoke-direct {v11, p0, v3, v1}, Lcom/olivephone/mywidget/ChannelListView$1;-><init>(Lcom/olivephone/mywidget/ChannelListView;Ljava/lang/String;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 68
    :cond_98
    iget-object v11, p0, Lcom/olivephone/mywidget/ChannelListView;->strs:[Ljava/lang/String;

    aget-object v11, v11, v4

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, strsplit:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "strsplit["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 71
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v7, p0, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    check-cast v7, Lcom/olivephone/cu/SettingActivity;

    .line 73
    .local v7, sa:Lcom/olivephone/cu/SettingActivity;
    iget-object v11, v7, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    iget-object v12, p0, Lcom/olivephone/mywidget/ChannelListView;->strs:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v7           #sa:Lcom/olivephone/cu/SettingActivity;
    :cond_db
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b
.end method
