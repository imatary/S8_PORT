.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
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
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTheme:I

.field final mVersionCode:I

.field private zzaoy:I

.field private zzbpM:I

.field private zzbqs:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/fragment/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mVersionCode:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbpM:I

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbqs:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbpM:I

    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    iput-object p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbqs:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    iput p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzaoy:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnvironment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbpM:I

    return v0
.end method

.method public getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzbqs:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->zzaoy:I

    return v0
.end method

.method public getTheme()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Parcel;I)V

    return-void
.end method
