.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Api$zzd;,
        Lcom/google/android/gms/common/api/Api$zzb;,
        Lcom/google/android/gms/common/api/Api$zzf;,
        Lcom/google/android/gms/common/api/Api$zzc;,
        Lcom/google/android/gms/common/api/Api$ApiOptions;,
        Lcom/google/android/gms/common/api/Api$zze;,
        Lcom/google/android/gms/common/api/Api$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzXW:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzYL:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final zzYM:Lcom/google/android/gms/common/api/Api$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zze",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final zzYN:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<TC;TO;>;",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->zzYL:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v1, p0, Lcom/google/android/gms/common/api/Api;->zzYM:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/common/api/Api;->zzXW:Lcom/google/android/gms/common/api/Api$zzc;

    iput-object v1, p0, Lcom/google/android/gms/common/api/Api;->zzYN:Lcom/google/android/gms/common/api/Api$zzf;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public zznb()Lcom/google/android/gms/common/api/Api$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzYL:Lcom/google/android/gms/common/api/Api$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzYL:Lcom/google/android/gms/common/api/Api$zza;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zznc()Lcom/google/android/gms/common/api/Api$zze;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zze",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzYM:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzYM:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zznd()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzXW:Lcom/google/android/gms/common/api/Api$zzc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzXW:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzne()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzYN:Lcom/google/android/gms/common/api/Api$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
