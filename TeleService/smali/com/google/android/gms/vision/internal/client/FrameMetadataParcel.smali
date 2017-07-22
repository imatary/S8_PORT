.class public Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/internal/client/zza;


# instance fields
.field public height:I

.field public id:I

.field public rotation:I

.field final versionCode:I

.field public width:I

.field public zzboe:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/internal/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/vision/internal/client/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->width:I

    iput p3, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->height:I

    iput p4, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->id:I

    iput-wide p5, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->zzboe:J

    iput p7, p0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->rotation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;->CREATOR:Lcom/google/android/gms/vision/internal/client/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/internal/client/zza;->zza(Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;Landroid/os/Parcel;I)V

    return-void
.end method
