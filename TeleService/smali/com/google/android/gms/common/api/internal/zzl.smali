.class public Lcom/google/android/gms/common/api/internal/zzl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zzl$zza;,
        Lcom/google/android/gms/common/api/internal/zzl$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzXG:Ljava/util/concurrent/locks/Lock;

.field final zzagW:Lcom/google/android/gms/common/api/internal/zzj;

.field private final zzags:Lcom/google/android/gms/common/zzc;

.field final zzagt:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzrn;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;"
        }
    .end annotation
.end field

.field final zzahA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzahT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field final zzahz:Lcom/google/android/gms/common/internal/zzf;

.field private final zzaim:Ljava/util/concurrent/locks/Condition;

.field private final zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

.field final zzaio:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaip:Lcom/google/android/gms/common/api/internal/zzk;

.field private zzaiq:Lcom/google/android/gms/common/ConnectionResult;

.field zzair:I

.field final zzais:Lcom/google/android/gms/common/api/internal/zzp$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzj;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zzp$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zzj;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzrn;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzc;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/zzp$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaio:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaiq:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzags:Lcom/google/android/gms/common/zzc;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahT:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahA:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzagt:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzais:Lcom/google/android/gms/common/api/internal/zzp$zza;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzl$zzb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/common/api/internal/zzl$zzb;-><init>(Lcom/google/android/gms/common/api/internal/zzl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaim:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzi;-><init>(Lcom/google/android/gms/common/api/internal/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zzc;->zza(Lcom/google/android/gms/common/api/internal/zzl;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzl;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzl;)Lcom/google/android/gms/common/api/internal/zzk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzk;->connect()V

    return-void
.end method

.method public disconnect()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzk;->disconnect()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaio:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahT:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zzb;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zzg;

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzk;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzk;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/common/api/internal/zzl$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zzl$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzl$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zzl$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzain:Lcom/google/android/gms/common/api/internal/zzl$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzl$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zza$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzk;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method

.method zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaiq:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzi;-><init>(Lcom/google/android/gms/common/api/internal/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaim:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzpK()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahz:Lcom/google/android/gms/common/internal/zzf;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahA:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzags:Lcom/google/android/gms/common/zzc;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzagt:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzl;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/internal/zzh;-><init>(Lcom/google/android/gms/common/api/internal/zzl;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaim:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzpL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzj;->zzpF()Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzg;-><init>(Lcom/google/android/gms/common/api/internal/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zzk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaim:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzXG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzpM()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzahT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->disconnect()V

    goto :goto_0
.end method

.method public zzpj()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzl;->zzaip:Lcom/google/android/gms/common/api/internal/zzk;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzg;->zzps()V

    goto :goto_0
.end method
