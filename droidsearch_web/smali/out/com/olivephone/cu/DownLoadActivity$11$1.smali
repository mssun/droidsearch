.class Lcom/olivephone/cu/DownLoadActivity$11$1;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity$11;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/DownLoadActivity$11;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/DownLoadActivity$11$1;)Lcom/olivephone/cu/DownLoadActivity$11;
    .registers 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v6}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/olivephone/cu/DownLoadActivity;->file_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, file:Ljava/io/File;
    packed-switch p2, :pswitch_data_9a

    .line 356
    :goto_29
    return-void

    .line 316
    :pswitch_2a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v5}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, dialogs:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v5}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/olivephone/cu/DownLoadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 318
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 319
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 320
    iget-object v6, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v6, Lcom/olivephone/cu/DownLoadActivity$11;->et_search:Landroid/widget/EditText;

    .line 321
    const-string v5, "\u66f4\u6539"

    new-instance v6, Lcom/olivephone/cu/DownLoadActivity$11$1$1;

    invoke-direct {v6, p0, v2}, Lcom/olivephone/cu/DownLoadActivity$11$1$1;-><init>(Lcom/olivephone/cu/DownLoadActivity$11$1;Ljava/io/File;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/olivephone/cu/DownLoadActivity$11$1$2;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/DownLoadActivity$11$1$2;-><init>(Lcom/olivephone/cu/DownLoadActivity$11$1;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_29

    .line 347
    .end local v1           #dialogs:Landroid/app/AlertDialog$Builder;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/widget/LinearLayout;
    :pswitch_75
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 348
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v5}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/olivephone/cu/DownLoadActivity;->loadFile()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 349
    .local v0, aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v5}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 350
    const-string v5, "\u5220\u9664\u6210\u529f"

    iget-object v6, p0, Lcom/olivephone/cu/DownLoadActivity$11$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$11;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$11;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v6}, Lcom/olivephone/cu/DownLoadActivity$11;->access$0(Lcom/olivephone/cu/DownLoadActivity$11;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_29

    .line 313
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_75
    .end packed-switch
.end method
