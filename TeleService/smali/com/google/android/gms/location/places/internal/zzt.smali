.class public abstract Lcom/google/android/gms/location/places/internal/zzt;
.super Lcom/google/android/gms/common/data/zzc;
.source "Unknown"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string/jumbo v0, "SafeDataBufferRef"

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzt;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->zzcz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->zzcB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected zzz(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->zzcz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->zzcB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzt;->getInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method
