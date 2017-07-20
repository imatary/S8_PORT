.class public Lcom/google/android/gms/wearable/internal/AddListenerRequest;
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
            "Lcom/google/android/gms/wearable/internal/AddListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzbrB:Lcom/google/android/gms/wearable/internal/zzaw;

.field public final zzbrC:[Landroid/content/IntentFilter;

.field public final zzbrD:Ljava/lang/String;

.field public final zzbrE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->mVersionCode:I

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrB:Lcom/google/android/gms/wearable/internal/zzaw;

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrC:[Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrE:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/zzaw$zza;->zzet(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzaw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrB:Lcom/google/android/gms/wearable/internal/zzaw;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzc;->zza(Lcom/google/android/gms/wearable/internal/AddListenerRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzIy()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrB:Lcom/google/android/gms/wearable/internal/zzaw;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->zzbrB:Lcom/google/android/gms/wearable/internal/zzaw;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/zzaw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method
