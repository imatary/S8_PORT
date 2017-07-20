.class public abstract Lcom/google/android/gms/internal/zzso;
.super Lcom/google/android/gms/internal/zzsu;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzso",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzsu;"
    }
.end annotation


# instance fields
.field protected zzbuj:Lcom/google/android/gms/internal/zzsq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzso;->zzJp()Lcom/google/android/gms/internal/zzso;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzso;->zzJp()Lcom/google/android/gms/internal/zzso;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsq;->zzmG(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsr;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public zzJp()Lcom/google/android/gms/internal/zzso;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzsu;->clone()Lcom/google/android/gms/internal/zzsu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzso;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzss;->zza(Lcom/google/android/gms/internal/zzso;Lcom/google/android/gms/internal/zzso;)V

    return-object v0
.end method

.method protected zzz()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzsq;->zzmG(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsr;->zzz()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
