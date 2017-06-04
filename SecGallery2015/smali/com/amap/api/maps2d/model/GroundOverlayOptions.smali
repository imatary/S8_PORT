.class public final Lcom/amap/api/maps2d/model/GroundOverlayOptions;
.super Ljava/lang/Object;
.source "GroundOverlayOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/d;


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private c:Lcom/amap/api/maps2d/model/LatLng;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/d;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/d;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->CREATOR:Lcom/amap/api/maps2d/model/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    iput v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/amap/api/maps2d/model/LatLng;FFLcom/amap/api/maps2d/model/LatLngBounds;FFZFFF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    iput p4, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    iput p5, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    iput-object p6, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    iput p7, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    iput p8, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    iput-boolean p9, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    iput p10, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    iput p11, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    iput p12, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public image(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
