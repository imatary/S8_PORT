.class public final Lcom/amap/api/maps2d/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/u;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/mapcore2d/u;

    return-void
.end method


# virtual methods
.method a()Lcom/amap/api/mapcore2d/u;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/mapcore2d/u;

    return-object v0
.end method
