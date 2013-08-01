.class public Lcom/olivephone/cu/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"


# instance fields
.field aa_cate:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field aa_channel:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field al_autostart:Landroid/widget/AbsoluteLayout;

.field al_news_set:Landroid/widget/AbsoluteLayout;

.field al_news_tips:Landroid/widget/AbsoluteLayout;

.field al_personmsg:Landroid/widget/AbsoluteLayout;

.field al_save:Landroid/widget/AbsoluteLayout;

.field al_set:Landroid/widget/AbsoluteLayout;

.field al_typefacecontent:Landroid/widget/AbsoluteLayout;

.field al_update:Landroid/widget/AbsoluteLayout;

.field checked_rss:[Ljava/lang/String;

.field et_address:Landroid/widget/EditText;

.field et_key:Landroid/widget/EditText;

.field et_searchnews:Landroid/widget/EditText;

.field et_tel:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field help_height:I

.field inflater1:Landroid/view/LayoutInflater;

.field inflater2:Landroid/view/LayoutInflater;

.field istivTag:Ljava/lang/String;

.field iv_auto_start:Landroid/widget/ImageView;

.field iv_autostart_ext:Z

.field iv_bolan:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_file_save:Landroid/widget/ImageView;

.field iv_help:Landroid/widget/ImageView;

.field iv_help_ext:Z

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_new_tips:Landroid/widget/ImageView;

.field iv_news:Landroid/widget/ImageView;

.field iv_news_set_ext:Z

.field iv_news_tips_ext:Z

.field iv_personmsg:Landroid/widget/ImageView;

.field iv_personmsg_ext:Z

.field iv_save_ext:Z

.field iv_typeface:Landroid/widget/ImageView;

.field iv_typeface_ext:Z

.field iv_update:Landroid/widget/ImageView;

.field iv_update_ext:Z

.field iv_zhongxin:Landroid/widget/ImageView;

.field public list_rss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_rss_rs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ll_menu:Landroid/widget/LinearLayout;

.field lv_channel:Landroid/widget/ListView;

.field public myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pd_rss:Landroid/app/ProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field rb_auto_start:Landroid/widget/RadioButton;

.field rb_auto_update:Landroid/widget/RadioButton;

.field rb_big:Landroid/widget/RadioButton;

.field rb_nor:Landroid/widget/RadioButton;

.field rb_notips:Landroid/widget/RadioButton;

.field rb_sdcard:Landroid/widget/RadioButton;

.field rb_shoudong_start:Landroid/widget/RadioButton;

.field rb_shoudong_update:Landroid/widget/RadioButton;

.field rb_small:Landroid/widget/RadioButton;

.field rb_tel:Landroid/widget/RadioButton;

.field rb_xianglin:Landroid/widget/RadioButton;

.field rb_xianglinorzhendong:Landroid/widget/RadioButton;

.field rb_zhendong:Landroid/widget/RadioButton;

.field rg_news_tips:Landroid/widget/RadioGroup;

.field rg_save:Landroid/widget/RadioGroup;

.field rg_start:Landroid/widget/RadioGroup;

.field rg_typeface:Landroid/widget/RadioGroup;

.field rg_update:Landroid/widget/RadioGroup;

.field sv_help:Landroid/widget/ScrollView;

.field tv_address:Landroid/widget/TextView;

.field tv_auto_start:Landroid/widget/TextView;

.field tv_cate:Landroid/widget/TextView;

.field tv_channel:Landroid/widget/TextView;

.field tv_file_save:Landroid/widget/TextView;

.field tv_help:Landroid/widget/TextView;

.field tv_help_content:Landroid/widget/TextView;

.field tv_key:Landroid/widget/TextView;

.field tv_new_tips:Landroid/widget/TextView;

.field tv_news:Landroid/widget/TextView;

.field tv_personmsg:Landroid/widget/TextView;

.field tv_tel:Landroid/widget/TextView;

.field tv_typeface:Landroid/widget/TextView;

.field tv_update:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg_ext:Z

    .line 79
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update_ext:Z

    .line 89
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help_ext:Z

    .line 103
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_autostart_ext:Z

    .line 108
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_save_ext:Z

    .line 123
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news_tips_ext:Z

    .line 124
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news_set_ext:Z

    .line 125
    iput-boolean v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface_ext:Z

    .line 150
    const-string v0, "text"

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1469
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->saveData()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->popMore()V

    return-void
.end method

.method static synthetic access$10(Lcom/olivephone/cu/SettingActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/olivephone/cu/SettingActivity;->getChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowPersonMsgOtherDown()V

    return-void
.end method

.method static synthetic access$3(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowUpdateOtherDown()V

    return-void
.end method

.method static synthetic access$4(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowAutoStartOtherDown()V

    return-void
.end method

.method static synthetic access$5(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowFileSaveOtherDown()V

    return-void
.end method

.method static synthetic access$6(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowNewsTipsOtherDown()V

    return-void
.end method

.method static synthetic access$7(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowTypeFaceOtherDown()V

    return-void
.end method

.method static synthetic access$8(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->onShowNewsSetOtherDown()V

    return-void
.end method

.method static synthetic access$9(Lcom/olivephone/cu/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->initConfigData()V

    return-void
.end method

.method private getChannel(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 886
    new-instance v0, Lcom/olivephone/cu/SettingActivity$18;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/SettingActivity$18;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    .line 917
    .local v0, handler1:Landroid/os/Handler;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/cu/SettingActivity;->pd_rss:Landroid/app/ProgressDialog;

    .line 918
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->pd_rss:Landroid/app/ProgressDialog;

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->pd_rss:Landroid/app/ProgressDialog;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->pd_rss:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 922
    new-instance v1, Lcom/olivephone/cu/SettingActivity$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/olivephone/cu/SettingActivity$19;-><init>(Lcom/olivephone/cu/SettingActivity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 937
    invoke-virtual {v1}, Lcom/olivephone/cu/SettingActivity$19;->start()V

    .line 938
    return-void
.end method

.method private initConfigData()V
    .registers 13

    .prologue
    .line 599
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 600
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 601
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    const-string v10, "\u5168\u56fd"

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 604
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 606
    const-string v9, "USERINFO"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/olivephone/cu/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 611
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    const-string v10, "phoneNumber"

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const-string v9, "update"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, update:Ljava/lang/String;
    const-string v9, "auto_update"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14c

    .line 617
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 624
    :cond_49
    :goto_49
    const-string v9, "start"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, start:Ljava/lang/String;
    const-string v9, "auto_start"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 626
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 633
    :cond_5f
    :goto_5f
    const-string v9, "address"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_76

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 635
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_76
    const-string v9, "typeface"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, typeface:Ljava/lang/String;
    const-string v9, "bigtypeface"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16c

    .line 642
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 651
    :cond_8c
    :goto_8c
    const-string v9, "tips_type"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, tips_type:Ljava/lang/String;
    const-string v9, "xianglin"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18c

    .line 653
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 660
    :cond_a2
    :goto_a2
    const-string v9, "keyword"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, keyword:Ljava/lang/String;
    if-eqz v2, :cond_1ac

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1ac

    .line 662
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const/4 v9, 0x1

    sput-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    .line 675
    :cond_bc
    :goto_bc
    const/4 v3, 0x0

    .line 677
    .local v3, rss_list_size:I
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "rss_list_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11c

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "rss_list_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11c

    .line 678
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "rss_list_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 681
    :cond_11c
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "rss_list_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-array v9, v3, [Ljava/lang/String;

    iput-object v9, p0, Lcom/olivephone/cu/SettingActivity;->checked_rss:[Ljava/lang/String;

    .line 685
    const/4 v1, 0x0

    .local v1, i:I
    :goto_146
    if-lt v1, v3, :cond_1bb

    .line 689
    const/4 v9, 0x1

    sput-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isInit:Z

    .line 690
    return-void

    .line 618
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #keyword:Ljava/lang/String;
    .end local v3           #rss_list_size:I
    .end local v5           #start:Ljava/lang/String;
    .end local v6           #tips_type:Ljava/lang/String;
    .end local v7           #typeface:Ljava/lang/String;
    :cond_14c
    const-string v9, "shoudong_update"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 619
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_49

    .line 627
    .restart local v5       #start:Ljava/lang/String;
    :cond_15c
    const-string v9, "shoudong_start"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 628
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_5f

    .line 643
    .restart local v0       #address:Ljava/lang/String;
    .restart local v7       #typeface:Ljava/lang/String;
    :cond_16c
    const-string v9, "nortypeface"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17c

    .line 644
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_8c

    .line 645
    :cond_17c
    const-string v9, "smalltypeface"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 646
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_8c

    .line 654
    .restart local v6       #tips_type:Ljava/lang/String;
    :cond_18c
    const-string v9, "zhendong"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19c

    .line 655
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_a2

    .line 656
    :cond_19c
    const-string v9, "xianglinorzhendong"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 657
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_a2

    .line 665
    .restart local v2       #keyword:Ljava/lang/String;
    :cond_1ac
    sget-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isInit:Z

    if-eqz v9, :cond_bc

    .line 666
    const/4 v9, 0x0

    sput-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    .line 667
    const/4 v9, 0x1

    sput-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isCancel:Z

    .line 668
    const/4 v9, 0x0

    sput-boolean v9, Lcom/olivephone/util/PicNewsTemp;->isTrue:Z

    goto/16 :goto_bc

    .line 686
    .restart local v1       #i:I
    .restart local v3       #rss_list_size:I
    :cond_1bb
    iget-object v9, p0, Lcom/olivephone/cu/SettingActivity;->checked_rss:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 687
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checked_rss["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/olivephone/cu/SettingActivity;->checked_rss:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_146
.end method

.method private initSetChannel()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/high16 v10, -0x100

    const v9, 0x7f020029

    .line 751
    new-instance v6, Landroid/widget/AbsoluteLayout;

    invoke-direct {v6, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    .line 752
    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v8, 0x69

    invoke-direct {v7, v12, v11, v13, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, v12}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 758
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 759
    .local v2, llayout:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v13, v13}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 761
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 763
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 764
    .local v4, tvText:Landroid/widget/TextView;
    const-string v6, " \u65b0\u95fb\u4e2d\u5fc3"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    invoke-virtual {p0}, Lcom/olivephone/cu/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    const-string v6, "black"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 770
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 771
    .local v0, iv_blank1:Landroid/widget/ImageView;
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 773
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 774
    .local v3, tvImage:Landroid/widget/TextView;
    const-string v6, " \u65b0\u534e\u56fe\u7247"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    invoke-virtual {p0}, Lcom/olivephone/cu/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    const-string v6, "white"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 780
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 781
    .local v1, iv_blank2:Landroid/widget/ImageView;
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 783
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 784
    .local v5, tvVideo:Landroid/widget/TextView;
    const-string v6, " \u65b0\u534e\u89c6\u9891"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    invoke-virtual {p0}, Lcom/olivephone/cu/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    const-string v6, "white"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 789
    new-instance v6, Lcom/olivephone/cu/SettingActivity$15;

    invoke-direct {v6, p0, v4, v3, v5}, Lcom/olivephone/cu/SettingActivity$15;-><init>(Lcom/olivephone/cu/SettingActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 826
    new-instance v6, Lcom/olivephone/cu/SettingActivity$16;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/olivephone/cu/SettingActivity$16;-><init>(Lcom/olivephone/cu/SettingActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 848
    new-instance v6, Lcom/olivephone/cu/SettingActivity$17;

    invoke-direct {v6, p0, v5, v4, v3}, Lcom/olivephone/cu/SettingActivity$17;-><init>(Lcom/olivephone/cu/SettingActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 872
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 873
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 876
    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 878
    iget-object v6, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v7, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 879
    return-void
.end method

.method private onShowAutoStartOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0x21

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1029
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xd2

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xd5

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xf0

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xf3

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x10e

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x111

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x12f

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    return-void
.end method

.method private onShowFileSaveOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0x21

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 995
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 997
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfd

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x118

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x11b

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x136

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x139

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    return-void
.end method

.method private onShowNewsSetOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/16 v4, 0x320

    const/4 v3, -0x2

    .line 693
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {v1, v2, v7, v5, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {v1, v2, v7, v5, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {v1, v2, v7, v5, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {v1, v2, v7, v5, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {v1, v2, v7, v5, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v6, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    return-void
.end method

.method private onShowNewsTipsOtherDown()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    const-string v1, "onShowNewsTipsOtherDown()"

    .line 942
    const-string v0, "onShowNewsTipsOtherDown()"

    const-string v0, "onShowNewsTipsOtherDown()"

    invoke-static {v1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x15e

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x161

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    return-void
.end method

.method private onShowPersonMsgOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0x21

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1174
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x82

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x85

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xa0

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xa3

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1180
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xbe

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xc1

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xdc

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xdf

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1188
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfd

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x118

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1191
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x11b

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x136

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x139

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    return-void
.end method

.method private onShowTypeFaceOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0x21

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 588
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x118

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x11b

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x136

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x139

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    return-void
.end method

.method private onShowUpdateOtherDown()V
    .registers 9

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0x21

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1072
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xb4

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xb7

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xd2

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xd5

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xf0

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1080
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xf3

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x10e

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x111

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-direct {v1, v7, v6, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x12f

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    return-void
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1397
    .line 1398
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1397
    iput-object v5, p0, Lcom/olivephone/cu/SettingActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 1399
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1400
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 1401
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1400
    iput-object v5, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    .line 1404
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1405
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1407
    iget-object v5, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1408
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1409
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1410
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1411
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1412
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/SettingActivity$20;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$20;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1421
    new-instance v5, Lcom/olivephone/cu/SettingActivity$21;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$21;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1431
    new-instance v5, Lcom/olivephone/cu/SettingActivity$22;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$22;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1441
    new-instance v5, Lcom/olivephone/cu/SettingActivity$23;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$23;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1467
    return-void
.end method

.method private saveData()V
    .registers 25

    .prologue
    .line 1470
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-lt v0, v1, :cond_1f5

    .line 1475
    const/4 v8, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-lt v0, v1, :cond_210

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 1485
    const/4 v8, 0x0

    :goto_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-lt v0, v1, :cond_264

    .line 1497
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "listrss="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v20, Lcom/olivephone/model/UserSetting;

    invoke-direct/range {v20 .. v20}, Lcom/olivephone/model/UserSetting;-><init>()V

    .line 1500
    .local v20, userSetting:Lcom/olivephone/model/UserSetting;
    const-string v21, "USERINFO"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/olivephone/cu/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1501
    .local v13, sp:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1503
    .local v7, ed:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1504
    .local v11, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/olivephone/model/UserSetting;->setTel(Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_f4

    .line 1511
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "rss_list_size"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    .line 1510
    move-object v0, v13

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1512
    .local v12, rss_list_size:I
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "rss_list_size"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "0"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1513
    const/4 v8, 0x0

    :goto_e2
    if-lt v8, v12, :cond_2e0

    .line 1516
    const/4 v8, 0x0

    :goto_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-lt v0, v1, :cond_304

    .line 1522
    .end local v12           #rss_list_size:I
    :cond_f4
    const-string v18, ""

    .line 1523
    .local v18, update:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_373

    .line 1524
    const-string v18, "auto_update"

    .line 1525
    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setUpdate(Ljava/lang/String;)V

    .line 1531
    :cond_109
    :goto_109
    const-string v14, ""

    .line 1532
    .local v14, start:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_388

    .line 1533
    const-string v14, "auto_start"

    .line 1534
    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setAutostart(Ljava/lang/String;)V

    .line 1540
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1541
    .local v3, address:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/olivephone/model/UserSetting;->setAddress(Ljava/lang/String;)V

    .line 1544
    const-string v17, ""

    .line 1546
    .local v17, typeface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_39d

    .line 1547
    const-string v17, "bigtypeface"

    .line 1554
    :cond_142
    :goto_142
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/olivephone/model/UserSetting;->setTypeface(Ljava/lang/String;)V

    .line 1557
    const-string v16, ""

    .line 1558
    .local v16, tips_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_3bd

    .line 1559
    const-string v16, "xianglin"

    .line 1560
    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setTishi(Ljava/lang/String;)V

    .line 1569
    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1570
    .local v10, keyword:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/olivephone/model/UserSetting;->setKey(Ljava/lang/String;)V

    .line 1571
    const-string v21, "phoneNumber"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1572
    const-string v21, "update"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1573
    const-string v21, "start"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1574
    const-string v21, "address"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1575
    const-string v21, "tips_type"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1576
    const-string v21, "keyword"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1577
    const-string v21, "typeface"

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1578
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1585
    const-string v21, "URLConstant.setting(userSetting)"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/olivephone/constant/URLConstant;->setting(Lcom/olivephone/model/UserSetting;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :try_start_1c4
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/olivephone/constant/URLConstant;->setting(Lcom/olivephone/model/UserSetting;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v19, url:Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1590
    .local v5, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1591
    const-string v21, "conn.getResponseCode()"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/net/MalformedURLException; {:try_start_1c4 .. :try_end_1f4} :catch_3e7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1f4} :catch_3ef

    .line 1599
    .end local v5           #conn:Ljava/net/HttpURLConnection;
    .end local v19           #url:Ljava/net/URL;
    :goto_1f4
    return-void

    .line 1471
    .end local v3           #address:Ljava/lang/String;
    .end local v7           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v10           #keyword:Ljava/lang/String;
    .end local v11           #phoneNumber:Ljava/lang/String;
    .end local v13           #sp:Landroid/content/SharedPreferences;
    .end local v14           #start:Ljava/lang/String;
    .end local v16           #tips_type:Ljava/lang/String;
    .end local v17           #typeface:Ljava/lang/String;
    .end local v18           #update:Ljava/lang/String;
    .end local v20           #userSetting:Lcom/olivephone/model/UserSetting;
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/olivephone/model/CateList;

    .line 1472
    .local v4, cl:Lcom/olivephone/model/CateList;
    const/16 v21, 0x0

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/olivephone/model/CateList;->setChecked(Z)V

    .line 1470
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1476
    .end local v4           #cl:Lcom/olivephone/model/CateList;
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v21, "-"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1477
    .local v15, strsplit:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-lt v0, v1, :cond_23c

    .line 1475
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    .line 1478
    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/olivephone/model/CateList;

    .line 1479
    .restart local v4       #cl:Lcom/olivephone/model/CateList;
    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_261

    .line 1480
    const/16 v21, 0x1

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/olivephone/model/CateList;->setChecked(Z)V

    .line 1477
    :cond_261
    add-int/lit8 v9, v9, 0x1

    goto :goto_229

    .line 1486
    .end local v4           #cl:Lcom/olivephone/model/CateList;
    .end local v9           #j:I
    .end local v15           #strsplit:[Ljava/lang/String;
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->myList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/olivephone/model/CateList;

    .line 1487
    .restart local v4       #cl:Lcom/olivephone/model/CateList;
    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_2ae

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->isChecked()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Z)V

    .line 1485
    :goto_2aa
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2a

    .line 1493
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1494
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/olivephone/model/CateList;->isChecked()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Z)V

    goto :goto_2aa

    .line 1514
    .end local v4           #cl:Lcom/olivephone/model/CateList;
    .restart local v7       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #phoneNumber:Ljava/lang/String;
    .restart local v12       #rss_list_size:I
    .restart local v13       #sp:Landroid/content/SharedPreferences;
    .restart local v20       #userSetting:Lcom/olivephone/model/UserSetting;
    :cond_2e0
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1513
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e2

    .line 1517
    :cond_304
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "rss_list_size"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1518
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e5

    .line 1526
    .end local v12           #rss_list_size:I
    .restart local v18       #update:Ljava/lang/String;
    :cond_373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_109

    .line 1527
    const-string v18, "shoudong_update"

    .line 1528
    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setUpdate(Ljava/lang/String;)V

    goto/16 :goto_109

    .line 1535
    .restart local v14       #start:Ljava/lang/String;
    :cond_388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_11e

    .line 1536
    const-string v14, "shoudong_start"

    .line 1537
    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setAutostart(Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 1548
    .restart local v3       #address:Ljava/lang/String;
    .restart local v17       #typeface:Ljava/lang/String;
    :cond_39d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_3ad

    .line 1549
    const-string v17, "nortypeface"

    goto/16 :goto_142

    .line 1550
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_142

    .line 1551
    const-string v17, "smalltypeface"

    goto/16 :goto_142

    .line 1561
    .restart local v16       #tips_type:Ljava/lang/String;
    :cond_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_3d2

    .line 1562
    const-string v16, "zhendong"

    .line 1563
    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setTishi(Ljava/lang/String;)V

    goto/16 :goto_15e

    .line 1564
    :cond_3d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_15e

    .line 1565
    const-string v16, "xianglinorzhendong"

    .line 1566
    const-string v21, "2"

    invoke-virtual/range {v20 .. v21}, Lcom/olivephone/model/UserSetting;->setTishi(Ljava/lang/String;)V

    goto/16 :goto_15e

    .line 1592
    .restart local v10       #keyword:Ljava/lang/String;
    :catch_3e7
    move-exception v21

    move-object/from16 v6, v21

    .line 1593
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_1f4

    .line 1594
    .end local v6           #e:Ljava/net/MalformedURLException;
    :catch_3ef
    move-exception v21

    move-object/from16 v6, v21

    .line 1595
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f4
.end method

.method private setAutoStart()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1320
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    .line 1321
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1322
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x82

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    .line 1325
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    const-string v1, "\u5f00\u673a\u8fd0\u884c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1327
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1328
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x85

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1331
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1332
    return-void
.end method

.method private setFileSave()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1335
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    .line 1336
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1337
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    .line 1340
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    const-string v1, "\u5730\u57df\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1342
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0xa3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1346
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1347
    return-void
.end method

.method private setHelp()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1382
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    .line 1383
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1384
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    .line 1387
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    const-string v1, "\u5e2e\u52a9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1389
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1390
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0xfd

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1393
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1394
    return-void
.end method

.method private setHelpContent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1262
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    .line 1263
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/olivephone/cu/SettingActivity;->help_height:I

    const/16 v3, 0x127

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 1265
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1266
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help_content:Landroid/widget/TextView;

    .line 1267
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help_content:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help_content:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1269
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_help_content:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1271
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1272
    return-void
.end method

.method private setNews()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1290
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    .line 1291
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1292
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x46

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    .line 1295
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    const-string v1, "\u9891\u9053\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1297
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1298
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x49

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1300
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1301
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1302
    return-void
.end method

.method private setNewsTip()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1367
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    .line 1368
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1369
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0xdc

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    .line 1372
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    const-string v1, "\u91cd\u5927\u65b0\u95fb\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1374
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1375
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0xdf

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1378
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1379
    return-void
.end method

.method private setPersonMsg()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1275
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    .line 1276
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1277
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x28

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    .line 1280
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    const-string v1, "\u7528\u6237\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1282
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x2b

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1286
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1287
    return-void
.end method

.method private setSaveContent()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 1007
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    .line 1008
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x0

    const/16 v3, 0xc3

    invoke-direct {v1, v5, v4, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v5}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 1011
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    .line 1012
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1014
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1015
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    const-string v1, "\u6240\u5728\u5730:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    .line 1018
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x5a

    const/16 v3, 0xa

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 1020
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1023
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1024
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_address:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1025
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1027
    return-void
.end method

.method private setStartContent()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1044
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    .line 1045
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xa5

    invoke-direct {v1, v6, v3, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 1048
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    .line 1049
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1052
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    .line 1053
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1055
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    const-string v1, "\u5f00\u542f"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    .line 1058
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v3, v2, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1060
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_start:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_start:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rg_start:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1069
    return-void
.end method

.method private setUpdate()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1305
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    .line 1306
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1307
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    .line 1310
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1312
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1313
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0x67

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1315
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1316
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1317
    return-void
.end method

.method private setUpdateContent()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1090
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    .line 1091
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x87

    invoke-direct {v1, v6, v3, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 1094
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    .line 1095
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1098
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    .line 1099
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1101
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    const-string v1, "\u81ea\u52a8\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    .line 1104
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v3, v2, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1106
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    const-string v1, "\u624b\u52a8\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_auto_update:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1109
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_shoudong_update:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1111
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rg_update:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1112
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1114
    return-void
.end method

.method private settypefaceContent()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x5

    const/high16 v5, -0x100

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1228
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    .line 1229
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xe1

    invoke-direct {v1, v7, v3, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v7}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 1232
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    .line 1233
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1236
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    .line 1237
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1239
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    const-string v1, "\u5c0f"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    .line 1242
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v3, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1244
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    const-string v1, "\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    .line 1247
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xc8

    invoke-direct {v1, v3, v3, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1249
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    const-string v1, "\u5927"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_small:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1252
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_nor:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1253
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_big:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1255
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rg_typeface:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1257
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1259
    return-void
.end method

.method private showNewsTipsContent()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x5

    const/high16 v5, -0x100

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 949
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    .line 950
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xff

    invoke-direct {v1, v7, v4, v3, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v7}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 953
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    .line 954
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 957
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    .line 958
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v3, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 960
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    const-string v1, "\u54cd\u94c3"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 962
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    .line 963
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v1, v4, v4, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 965
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    const-string v1, "\u9707\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 967
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    .line 968
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xc8

    invoke-direct {v1, v4, v4, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 970
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    const-string v1, "\u54cd\u94c3+\u9707\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglin:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 973
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_zhendong:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 974
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rb_xianglinorzhendong:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 976
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    .line 977
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xa

    const/16 v3, 0x3c

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 980
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    const-string v1, "\u5173\u952e\u5b57\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    .line 983
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x5a

    const/16 v3, 0x32

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 986
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->rg_news_tips:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 987
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_key:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 988
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_key:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 989
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 992
    return-void
.end method

.method private typeface()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 1352
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    .line 1353
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1354
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0xbe

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    .line 1357
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    const-string v1, "\u5b57\u4f53\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1359
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1360
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x5

    const/16 v3, 0xc1

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1363
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1364
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "menu_height"

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0, v9}, Lcom/olivephone/cu/SettingActivity;->requestWindowFeature(I)Z

    .line 268
    const v4, 0x7f030018

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->setContentView(I)V

    .line 270
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/SettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x127

    sub-int/2addr v4, v5

    const/16 v5, 0x50

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/olivephone/cu/SettingActivity;->help_height:I

    .line 274
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 275
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 276
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 277
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_config:Landroid/widget/ImageView;

    .line 278
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_more:Landroid/widget/ImageView;

    .line 279
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$1;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$1;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$2;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$2;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$3;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$3;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$4;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$4;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$5;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$5;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    .line 330
    const-string v4, "menu_height"

    invoke-virtual {p0, v6, v8}, Lcom/olivephone/cu/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 331
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "menu_height"

    const/16 v4, 0x1ea

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 332
    .local v2, menu_height:I
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 333
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 334
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 335
    const/4 v6, -0x1

    .line 336
    const/16 v7, 0x3c

    .line 334
    invoke-direct {v5, v6, v7, v8, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    .line 341
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 340
    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 342
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->inflater1:Landroid/view/LayoutInflater;

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, layout:Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    const/16 v5, 0x1e0

    const/16 v6, 0x2d

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    .line 346
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 348
    const v4, 0x7f070024

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/olivephone/cu/SettingActivity;->et_searchnews:Landroid/widget/EditText;

    .line 349
    const v4, 0x7f070025

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 350
    new-instance v5, Lcom/olivephone/cu/SettingActivity$6;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$6;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    .line 349
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setPersonMsg()V

    .line 375
    invoke-virtual {p0}, Lcom/olivephone/cu/SettingActivity;->setPersonMsgs()V

    .line 377
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setNews()V

    .line 379
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setUpdate()V

    .line 381
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setAutoStart()V

    .line 383
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setFileSave()V

    .line 387
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->typeface()V

    .line 389
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setNewsTip()V

    .line 391
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setHelp()V

    .line 393
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setHelpContent()V

    .line 395
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setUpdateContent()V

    .line 397
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setStartContent()V

    .line 399
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->setSaveContent()V

    .line 401
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->showNewsTipsContent()V

    .line 405
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->settypefaceContent()V

    .line 407
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->initConfigData()V

    .line 413
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->initSetChannel()V

    .line 452
    const-string v4, "1"

    invoke-direct {p0, v4}, Lcom/olivephone/cu/SettingActivity;->getChannel(Ljava/lang/String;)V

    .line 455
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$7;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$7;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$8;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$8;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$9;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$9;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$10;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$10;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$11;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$11;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$12;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$12;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 549
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$13;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$13;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    iget-object v4, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/SettingActivity$14;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SettingActivity$14;-><init>(Lcom/olivephone/cu/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    return-void
.end method

.method public resetAll()V
    .registers 10

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1120
    invoke-direct {p0}, Lcom/olivephone/cu/SettingActivity;->saveData()V

    .line 1122
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x28

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1124
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_personmsg:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x2b

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x46

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_news:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1128
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_news:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x49

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x64

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_update:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1132
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_update:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x67

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x82

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_auto_start:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1136
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_auto_start:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x85

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0xa0

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1140
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_file_save:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xa3

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0xbe

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1144
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_typeface:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xc1

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0xdc

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_new_tips:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1148
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_new_tips:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xdf

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0xfa

    invoke-direct {v1, v2, v8, v5, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1152
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->tv_help:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfd

    invoke-direct {v1, v4, v4, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_update:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_autostart:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_tips:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_news_set:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity;->al_typefacecontent:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1163
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_personmsg_ext:Z

    .line 1164
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_update_ext:Z

    .line 1165
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_help_ext:Z

    .line 1166
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_autostart_ext:Z

    .line 1167
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_save_ext:Z

    .line 1168
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_news_tips_ext:Z

    .line 1169
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_news_set_ext:Z

    .line 1170
    iput-boolean v5, p0, Lcom/olivephone/cu/SettingActivity;->iv_typeface_ext:Z

    .line 1171
    return-void
.end method

.method public setPersonMsgs()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 1198
    new-instance v1, Landroid/widget/AbsoluteLayout;

    invoke-direct {v1, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    .line 1199
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v3, 0x4b

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v5}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 1201
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1202
    .local v0, ll_phonenumber:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1204
    const/16 v2, 0x8

    invoke-direct {v1, v5, v4, v6, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1202
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1206
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    .line 1207
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1209
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1210
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    const-string v2, "\u624b\u673a\u53f7\u7801:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    .line 1213
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 1215
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1216
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->tv_tel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1217
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->et_tel:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1218
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1222
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 1224
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity;->al_set:Landroid/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/olivephone/cu/SettingActivity;->al_personmsg:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1225
    return-void
.end method
