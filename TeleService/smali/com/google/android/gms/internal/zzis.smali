.class public Lcom/google/android/gms/internal/zzis;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzis$1;,
        Lcom/google/android/gms/internal/zzis$zza;,
        Lcom/google/android/gms/internal/zzis$zzb;,
        Lcom/google/android/gms/internal/zzis$zzc;,
        Lcom/google/android/gms/internal/zzis$zzd;,
        Lcom/google/android/gms/internal/zzis$zze;,
        Lcom/google/android/gms/internal/zzis$zzf;,
        Lcom/google/android/gms/internal/zzis$zzg;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzis$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzis;-><init>()V

    return-void
.end method

.method public static zzP(I)Lcom/google/android/gms/internal/zzis;
    .locals 1

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    const/16 v0, 0x12

    if-ge p0, v0, :cond_1

    const/16 v0, 0x11

    if-ge p0, v0, :cond_2

    const/16 v0, 0x10

    if-ge p0, v0, :cond_3

    const/16 v0, 0xe

    if-ge p0, v0, :cond_4

    const/16 v0, 0xb

    if-ge p0, v0, :cond_5

    const/16 v0, 0x9

    if-ge p0, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzis$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zzg;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzis$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zze;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzis$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zzd;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzis$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zzf;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzis$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zzc;-><init>()V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzis$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zzb;-><init>()V

    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzis$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis$zza;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
