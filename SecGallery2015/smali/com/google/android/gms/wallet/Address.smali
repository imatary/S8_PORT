.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hl:Ljava/lang/String;

.field private final iM:I

.field name:Ljava/lang/String;

.field tA:Ljava/lang/String;

.field tB:Z

.field tC:Ljava/lang/String;

.field tu:Ljava/lang/String;

.field tv:Ljava/lang/String;

.field tw:Ljava/lang/String;

.field tx:Ljava/lang/String;

.field ty:Ljava/lang/String;

.field tz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->iM:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->iM:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->tu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->tv:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->tw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->hl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->tx:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->ty:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->tz:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->tA:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->tB:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->tC:Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->iM:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
