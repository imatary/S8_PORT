.class public Lcom/google/android/gms/appdatasearch/DocumentContents;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zzb;


# instance fields
.field public final account:Landroid/accounts/Account;

.field final mVersionCode:I

.field final zzTC:[Lcom/google/android/gms/appdatasearch/DocumentSection;

.field public final zzTD:Ljava/lang/String;

.field public final zzTE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzTC:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzTD:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzTE:Z

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->account:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zzb;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;Landroid/os/Parcel;I)V

    return-void
.end method
