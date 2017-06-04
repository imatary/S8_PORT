.class public Lcom/google/android/gms/wallet/LineItem;
.super Ljava/lang/Object;

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

.field private final iM:I

.field tD:Ljava/lang/String;

.field tE:Ljava/lang/String;

.field tQ:Ljava/lang/String;

.field tR:Ljava/lang/String;

.field tS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/e;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->tS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->iM:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->tS:I

    iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->iM:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->tQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->tR:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->tD:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->tS:I

    iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->tE:Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->iM:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/e;->a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V

    return-void
.end method
