.class public final Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cp;


# instance fields
.field public hP:Ljava/lang/String;

.field public hQ:I

.field public hR:I

.field public hS:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/co;->CREATOR:Lcom/google/android/gms/internal/cp;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/co;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->hP:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/co;->hQ:I

    iput p4, p0, Lcom/google/android/gms/internal/co;->hR:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/co;->hS:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;Landroid/os/Parcel;I)V

    return-void
.end method
