.class public final Lcom/google/android/gms/wallet/LineItem;
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
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field description:Ljava/lang/String;

.field private final mVersionCode:I

.field zzboL:Ljava/lang/String;

.field zzboM:Ljava/lang/String;

.field zzboN:I

.field zzboh:Ljava/lang/String;

.field zzboi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->mVersionCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->zzboN:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->zzboL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->zzboM:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->zzboh:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->zzboN:I

    iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->zzboi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzj;->zza(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V

    return-void
.end method
