.class public final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/y;


# instance fields
.field public final ew:Ljava/lang/String;

.field public final ex:Z

.field public final height:I

.field public final heightPixels:I

.field public final versionCode:I

.field public final width:I

.field public final widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/internal/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/x;->CREATOR:Lcom/google/android/gms/internal/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "interstitial_mb"

    move-object v0, p0

    move v4, v3

    move v5, v1

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/x;-><init>(ILjava/lang/String;IIZII)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/x;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->ew:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/x;->height:I

    iput p4, p0, Lcom/google/android/gms/internal/x;->heightPixels:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/x;->ex:Z

    iput p6, p0, Lcom/google/android/gms/internal/x;->width:I

    iput p7, p0, Lcom/google/android/gms/internal/x;->widthPixels:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/x;Landroid/os/Parcel;I)V

    return-void
.end method
