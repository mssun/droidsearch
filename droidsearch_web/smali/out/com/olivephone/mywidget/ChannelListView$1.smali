.class Lcom/olivephone/mywidget/ChannelListView$1;
.super Ljava/lang/Object;
.source "ChannelListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/mywidget/ChannelListView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field str:Ljava/lang/String;

.field final synthetic this$0:Lcom/olivephone/mywidget/ChannelListView;

.field private final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/olivephone/mywidget/ChannelListView;Ljava/lang/String;Landroid/widget/CheckBox;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/mywidget/ChannelListView$1;->this$0:Lcom/olivephone/mywidget/ChannelListView;

    iput-object p3, p0, Lcom/olivephone/mywidget/ChannelListView$1;->val$cb:Landroid/widget/CheckBox;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/olivephone/mywidget/ChannelListView$1;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/olivephone/mywidget/ChannelListView$1;->this$0:Lcom/olivephone/mywidget/ChannelListView;

    iget-object v0, v1, Lcom/olivephone/mywidget/ChannelListView;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/olivephone/cu/SettingActivity;

    .line 81
    .local v0, sa:Lcom/olivephone/cu/SettingActivity;
    iget-object v1, p0, Lcom/olivephone/mywidget/ChannelListView$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 82
    iget-object v1, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    iget-object v2, p0, Lcom/olivephone/mywidget/ChannelListView$1;->str:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_15
    return-void

    .line 84
    :cond_16
    iget-object v1, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    iget-object v2, p0, Lcom/olivephone/mywidget/ChannelListView$1;->str:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15
.end method
