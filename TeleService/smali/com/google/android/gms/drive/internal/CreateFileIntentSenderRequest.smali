.class public Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
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
            "Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaox:I

.field final zzapg:Ljava/lang/String;

.field final zzapj:Lcom/google/android/gms/drive/DriveId;

.field final zzaqw:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaqx:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->zzaqw:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput p3, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->zzaox:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->zzapg:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->zzapj:Lcom/google/android/gms/drive/DriveId;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->zzaqx:Ljava/lang/Integer;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzm;->zza(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V

    return-void
.end method
