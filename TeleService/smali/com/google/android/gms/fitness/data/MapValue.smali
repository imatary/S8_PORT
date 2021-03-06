.class public Lcom/google/android/gms/fitness/data/MapValue;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzawZ:I

.field private final zzaxe:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/MapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/MapValue;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    iput p3, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/MapValue;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asFloat()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/MapValue;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/MapValue;->zza(Lcom/google/android/gms/fitness/data/MapValue;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzawZ:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzm;->zza(Lcom/google/android/gms/fitness/data/MapValue;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzuv()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaxe:F

    return v0
.end method
