.class Lcom/amap/api/mapcore2d/g;
.super Ljava/lang/Object;
.source "AMapOnLocationChangedListener.java"

# interfaces
.implements Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;


# instance fields
.field a:Landroid/location/Location;

.field private b:Lcom/amap/api/mapcore2d/ag;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/g;->b:Lcom/amap/api/mapcore2d/ag;

    return-void
.end method
