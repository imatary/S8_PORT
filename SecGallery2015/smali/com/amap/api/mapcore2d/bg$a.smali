.class public Lcom/amap/api/mapcore2d/bg$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps2d/model/LatLng;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps2d/model/LatLng;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bg$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bg$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    iput v1, p0, Lcom/amap/api/mapcore2d/bg$a;->c:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bg$a;->d:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore2d/bg$a;->e:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bg$a;->a:I

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bg$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    iput p4, p0, Lcom/amap/api/mapcore2d/bg$a;->c:I

    iput p5, p0, Lcom/amap/api/mapcore2d/bg$a;->d:I

    iput p6, p0, Lcom/amap/api/mapcore2d/bg$a;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bg$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bg$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    iput v1, p0, Lcom/amap/api/mapcore2d/bg$a;->c:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bg$a;->d:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore2d/bg$a;->e:I

    return-void
.end method
