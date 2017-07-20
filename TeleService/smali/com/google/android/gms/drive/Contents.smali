.class public Lcom/google/android/gms/drive/Contents;
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
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzajL:Landroid/os/ParcelFileDescriptor;

.field final zzaoA:Z

.field final zzaox:I

.field final zzaoy:I

.field final zzaoz:Lcom/google/android/gms/drive/DriveId;

.field final zzsU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->zzajL:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->zzaox:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->zzaoy:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->zzaoz:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/Contents;->zzaoA:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/Contents;->zzsU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/Contents;->zzaox:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzb;->zza(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method
