.class public final Lcom/google/android/gms/wallet/FullWallet;
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
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field zzboo:Ljava/lang/String;

.field zzbop:Ljava/lang/String;

.field zzboq:Lcom/google/android/gms/wallet/ProxyCard;

.field zzbor:Ljava/lang/String;

.field zzbos:Lcom/google/android/gms/wallet/Address;

.field zzbot:Lcom/google/android/gms/wallet/Address;

.field zzbou:[Ljava/lang/String;

.field zzbov:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzbow:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field zzbox:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field zzboy:Lcom/google/android/gms/wallet/PaymentMethodToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;Lcom/google/android/gms/wallet/PaymentMethodToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->zzboo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbop:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->zzboq:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbor:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbos:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbot:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbou:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbov:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbow:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->zzbox:[Lcom/google/android/gms/wallet/InstrumentInfo;

    iput-object p12, p0, Lcom/google/android/gms/wallet/FullWallet;->zzboy:Lcom/google/android/gms/wallet/PaymentMethodToken;

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

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zze;->zza(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
