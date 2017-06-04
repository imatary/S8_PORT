.class public final Lcom/google/android/gms/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bv;


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final ed:Lcom/google/android/gms/internal/x;

.field public final eg:Lcom/google/android/gms/internal/co;

.field public final gA:Landroid/os/Bundle;

.field public final gB:Lcom/google/android/gms/internal/v;

.field public final gC:Landroid/content/pm/PackageInfo;

.field public final gD:Ljava/lang/String;

.field public final gE:Ljava/lang/String;

.field public final gF:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bu;->CREATOR:Lcom/google/android/gms/internal/bv;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/co;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bu;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bu;->gA:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/bu;->gB:Lcom/google/android/gms/internal/v;

    iput-object p4, p0, Lcom/google/android/gms/internal/bu;->ed:Lcom/google/android/gms/internal/x;

    iput-object p5, p0, Lcom/google/android/gms/internal/bu;->adUnitId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bu;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/bu;->gC:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/bu;->gD:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bu;->gE:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bu;->gF:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/bu;->eg:Lcom/google/android/gms/internal/co;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bu;Landroid/os/Parcel;I)V

    return-void
.end method
