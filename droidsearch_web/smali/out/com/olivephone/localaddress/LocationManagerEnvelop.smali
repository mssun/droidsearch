.class public Lcom/olivephone/localaddress/LocationManagerEnvelop;
.super Ljava/lang/Object;
.source "LocationManagerEnvelop.java"


# static fields
.field static Lat:F

.field static Lon:F

.field static c:Landroid/content/Context;

.field static city:Ljava/lang/String;

.field private static final locationListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/olivephone/localaddress/LocationManagerEnvelop;->city:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/olivephone/localaddress/LocationManagerEnvelop$1;

    invoke-direct {v0}, Lcom/olivephone/localaddress/LocationManagerEnvelop$1;-><init>()V

    sput-object v0, Lcom/olivephone/localaddress/LocationManagerEnvelop;->locationListener:Landroid/location/LocationListener;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/location/Location;)V
    .registers 1
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lcom/olivephone/localaddress/LocationManagerEnvelop;->updateWithNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 24
    sput-object p0, Lcom/olivephone/localaddress/LocationManagerEnvelop;->c:Landroid/content/Context;

    .line 27
    const-string v8, "location"

    .line 28
    .local v8, serviceName:Ljava/lang/String;
    sget-object v2, Lcom/olivephone/localaddress/LocationManagerEnvelop;->c:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 31
    .local v0, locationManager:Landroid/location/LocationManager;
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 32
    .local v6, criteria:Landroid/location/Criteria;
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 33
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 34
    invoke-virtual {v6, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 35
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 36
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 38
    invoke-virtual {v0, v6, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, provider:Ljava/lang/String;
    const-string v2, "provider:"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 44
    .local v7, location:Landroid/location/Location;
    invoke-static {v7}, Lcom/olivephone/localaddress/LocationManagerEnvelop;->updateWithNewLocation(Landroid/location/Location;)V

    .line 46
    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    .line 47
    sget-object v5, Lcom/olivephone/localaddress/LocationManagerEnvelop;->locationListener:Landroid/location/LocationListener;

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 50
    sget-object v2, Lcom/olivephone/localaddress/LocationManagerEnvelop;->city:Ljava/lang/String;

    return-object v2
.end method

.method private static updateWithNewLocation(Landroid/location/Location;)V
    .registers 13
    .parameter "location"

    .prologue
    const-string v11, "\u65e0\u6cd5\u83b7\u53d6\u7ecf\u7eac\u5ea6"

    const-string v10, "location is null"

    const-string v9, "location is not null"

    const-string v5, "list size is 0"

    const-string v5, "list is null"

    .line 67
    new-instance v0, Landroid/location/Geocoder;

    sget-object v5, Lcom/olivephone/localaddress/LocationManagerEnvelop;->c:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 69
    .local v0, geocoder:Landroid/location/Geocoder;
    if-nez p0, :cond_5b

    .line 70
    const-string v5, "location is null"

    const-string v5, "location is null"

    invoke-static {v10, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_1e
    if-eqz p0, :cond_a9

    .line 78
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 79
    .local v1, lat:D
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 82
    .local v3, lng:D
    const/4 v5, 0x5

    :try_start_29
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 83
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-nez v7, :cond_63

    .line 84
    const-string v5, "list is null"

    const-string v8, "list is null"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_36} :catch_a3

    .line 97
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local p0
    :cond_36
    :goto_36
    const-string v5, "\u7ecf\u5ea6:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "\u7eac\u5ea6:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1           #lat:D
    .end local v3           #lng:D
    :goto_5a
    return-void

    .line 72
    .restart local p0
    :cond_5b
    const-string v5, "location is not null"

    const-string v5, "location is not null"

    invoke-static {v9, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 86
    .restart local v1       #lat:D
    .restart local v3       #lng:D
    .restart local v7       #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_63
    :try_start_63
    const-string v5, "list size is 0"

    const-string v8, "list size is 0"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_36

    .line 88
    const-string v5, "list size is :"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/Address;

    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u5e02"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/olivephone/localaddress/LocationManagerEnvelop;->city:Ljava/lang/String;

    .line 90
    const-string v5, "city is:"

    sget-object v8, Lcom/olivephone/localaddress/LocationManagerEnvelop;->city:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_a2} :catch_a3

    goto :goto_36

    .line 94
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_a3
    move-exception v5

    move-object v6, v5

    .line 95
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 100
    .end local v1           #lat:D
    .end local v3           #lng:D
    .end local v6           #e:Ljava/io/IOException;
    .restart local p0
    :cond_a9
    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u7ecf\u7eac\u5ea6"

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u7ecf\u7eac\u5ea6"

    invoke-static {v11, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method
