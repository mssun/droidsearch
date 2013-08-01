.class Lcom/olivephone/localaddress/LocationManagerEnvelop$1;
.super Ljava/lang/Object;
.source "LocationManagerEnvelop.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/localaddress/LocationManagerEnvelop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 55
    #calls: Lcom/olivephone/localaddress/LocationManagerEnvelop;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {p1}, Lcom/olivephone/localaddress/LocationManagerEnvelop;->access$0(Landroid/location/Location;)V

    .line 56
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 58
    const/4 v0, 0x0

    #calls: Lcom/olivephone/localaddress/LocationManagerEnvelop;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0}, Lcom/olivephone/localaddress/LocationManagerEnvelop;->access$0(Landroid/location/Location;)V

    .line 59
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 60
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 62
    return-void
.end method
