.class Lcom/olivephone/cu/XHNewsActivity$1$1$1;
.super Ljava/lang/Object;
.source "XHNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XHNewsActivity$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XHNewsActivity$1$1;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    iput-object p2, p0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->val$alertDialog:Landroid/app/AlertDialog;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 18
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v11, v3

    .line 119
    .local v11, id:J
    const-wide/32 v3, 0x7f070002

    cmp-long v3, v11, v3

    if-nez v3, :cond_f6

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/XHNewsActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, phone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/olivephone/util/PhoneValidate;->validate(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 122
    const-string v9, "(\u6765\u81ea\uff1a\u65b0\u534e\u9891\u5a92)"

    .line 123
    .local v9, from:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/XHNewsActivity;->et_phone:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v4, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v4}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v4

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/olivephone/constant/URLConstant;->xhNews(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/olivephone/parserxml/TextNewsHandler;

    invoke-direct {v5}, Lcom/olivephone/parserxml/TextNewsHandler;-><init>()V

    invoke-static {v4, v5}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/olivephone/cu/XHNewsActivity;->list:Ljava/util/List;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_79} :catch_f0

    .line 130
    :goto_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/XHNewsActivity;->list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v4, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v4}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v4

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/XHNewsActivity;->selected:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/olivephone/model/TextNews;

    .line 131
    .local v14, tn:Lcom/olivephone/model/TextNews;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, context:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    .line 133
    .local v1, sms:Landroid/telephony/gsm/SmsManager;
    invoke-virtual {v1, v7}, Landroid/telephony/gsm/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 134
    .local v13, texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, v13

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/gsm/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u6210\u529f"

    .line 137
    const/4 v5, 0x0

    .line 135
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 138
    .local v15, toast:Landroid/widget/Toast;
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->val$alertDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    .end local v1           #sms:Landroid/telephony/gsm/SmsManager;
    .end local v2           #phone:Ljava/lang/String;
    .end local v7           #context:Ljava/lang/String;
    .end local v9           #from:Ljava/lang/String;
    .end local v13           #texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #tn:Lcom/olivephone/model/TextNews;
    .end local v15           #toast:Landroid/widget/Toast;
    :cond_ef
    :goto_ef
    return-void

    .line 126
    .restart local v2       #phone:Ljava/lang/String;
    .restart local v9       #from:Ljava/lang/String;
    :catch_f0
    move-exception v3

    move-object v8, v3

    .line 128
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    .line 141
    .end local v2           #phone:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #from:Ljava/lang/String;
    :cond_f6
    const-wide/32 v3, 0x7f070001

    cmp-long v3, v11, v3

    if-nez v3, :cond_123

    .line 142
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v10, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->this$2:Lcom/olivephone/cu/XHNewsActivity$1$1;

    move-object v3, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;

    move-result-object v3

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Lcom/olivephone/cu/XHNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_ef

    .line 147
    .end local v10           #i:Landroid/content/Intent;
    :cond_123
    const-wide/32 v3, 0x7f070003

    cmp-long v3, v11, v3

    if-nez v3, :cond_ef

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1$1;->val$alertDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_ef
.end method
