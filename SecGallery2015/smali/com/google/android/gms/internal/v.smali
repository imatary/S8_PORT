.class public final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/w;


# instance fields
.field public final es:J

.field public final et:I

.field public final eu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ev:Z

.field public final extras:Landroid/os/Bundle;

.field public final tagForChildDirectedTreatment:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/v;->CREATOR:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/v;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/v;->es:J

    iput-object p4, p0, Lcom/google/android/gms/internal/v;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/v;->et:I

    iput-object p6, p0, Lcom/google/android/gms/internal/v;->eu:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/v;->ev:Z

    iput p8, p0, Lcom/google/android/gms/internal/v;->tagForChildDirectedTreatment:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/v;Landroid/os/Parcel;I)V

    return-void
.end method
