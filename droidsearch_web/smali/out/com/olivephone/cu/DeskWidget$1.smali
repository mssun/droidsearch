.class Lcom/olivephone/cu/DeskWidget$1;
.super Ljava/lang/Thread;
.source "DeskWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DeskWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/DeskWidget;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DeskWidget;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DeskWidget$1;->this$0:Lcom/olivephone/cu/DeskWidget;

    iput-object p2, p0, Lcom/olivephone/cu/DeskWidget$1;->val$context:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 37
    :goto_0
    const-wide/32 v1, 0x1b7740

    :try_start_3
    invoke-static {v1, v2}, Lcom/olivephone/cu/DeskWidget$1;->sleep(J)V

    .line 38
    iget-object v1, p0, Lcom/olivephone/cu/DeskWidget$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/olivephone/cu/DeskWidget$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/olivephone/cu/DeskWidget$UpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_0

    .line 39
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
