.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
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
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field zzboi:Ljava/lang/String;

.field zzbop:Ljava/lang/String;

.field zzboz:Lcom/google/android/gms/wallet/Cart;

.field zzbpl:Z

.field zzbpm:Z

.field zzbpn:Z

.field zzbpo:Ljava/lang/String;

.field zzbpp:Ljava/lang/String;

.field zzbpq:Z

.field zzbpr:Z

.field zzbps:[Lcom/google/android/gms/wallet/CountrySpecification;

.field zzbpt:Z

.field zzbpu:Z

.field zzbpv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field zzbpw:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

.field zzbpx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->mVersionCode:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpt:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpu:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;",
            "Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbop:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpl:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpm:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpn:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpo:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzboi:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpp:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzboz:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpq:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpr:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbps:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpt:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpu:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpv:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpw:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzbpx:Ljava/util/ArrayList;

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

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzm;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
