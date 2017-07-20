.class public Lcom/google/android/gms/nearby/messages/Strategy$Builder;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbbR:I

.field private zzbbS:I

.field private zzbbT:I

.field private zzbbU:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbR:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbU:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbU:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy;

    iget v3, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbS:I

    iget v4, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbT:I

    iget v6, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbU:I

    iget v7, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbR:I

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/Strategy;-><init>(IIIIZII)V

    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbT:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set EARSHOT with BLE only mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTtlSeconds(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 7

    const v6, 0x15180

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "mTtlSeconds(%d) must either be TTL_SECONDS_INFINITE, or it must be between 1 and TTL_SECONDS_MAX(%d) inclusive"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbS:I

    return-object p0

    :cond_1
    if-gtz p1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-le p1, v6, :cond_0

    goto :goto_1
.end method

.method public zzjg(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzbbU:I

    return-object p0
.end method
