.class public Lcom/olivephone/cu/DeskWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "DeskWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/olivephone/cu/DeskWidget$UpdateService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/olivephone/cu/DeskWidget$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    new-instance v0, Lcom/olivephone/cu/DeskWidget$1;

    invoke-direct {v0, p0, p1}, Lcom/olivephone/cu/DeskWidget$1;-><init>(Lcom/olivephone/cu/DeskWidget;Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0}, Lcom/olivephone/cu/DeskWidget$1;->start()V

    .line 48
    return-void
.end method
