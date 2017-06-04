.class public Lcom/amap/api/maps2d/AMapOptions;
.super Ljava/lang/Object;
.source "AMapOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/a;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/maps2d/model/CameraPosition;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/a;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/AMapOptions;->CREATOR:Lcom/amap/api/maps2d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    iput v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return-void
.end method


# virtual methods
.method public camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLogoPosition()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    return v0
.end method

.method public getScaleControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public mapType(I)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    return-object p0
.end method

.method public scaleControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    return-object p0
.end method
