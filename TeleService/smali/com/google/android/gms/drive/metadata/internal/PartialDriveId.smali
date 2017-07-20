.class public Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;
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
            "Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaoL:Ljava/lang/String;

.field final zzaoM:J

.field final zzaoN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzaoL:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzaoM:J

    iput p5, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzaoN:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzn;->zza(Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;Landroid/os/Parcel;I)V

    return-void
.end method
