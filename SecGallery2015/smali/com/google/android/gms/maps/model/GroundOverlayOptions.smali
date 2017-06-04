.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;


# instance fields
.field private final iM:I

.field private qd:F

.field private qk:F

.field private ql:Z

.field private qn:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private qo:Lcom/google/android/gms/maps/model/LatLng;

.field private qp:F

.field private qq:F

.field private qr:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private qs:F

.field private qt:F

.field private qu:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ql:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qs:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qt:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qu:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->iM:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ql:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qs:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qt:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qu:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->iM:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/b;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qn:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qo:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qp:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qq:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qr:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qd:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qk:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ql:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qs:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qt:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qu:F

    return-void
.end method


# virtual methods
.method cM()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qn:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->cs()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qt:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qu:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qd:F

    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qr:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qq:F

    return v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qo:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qs:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->iM:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qp:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->qk:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ql:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
