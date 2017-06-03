.class public Llibcore/net/event/NetworkEventDispatcher;
.super Ljava/lang/Object;
.source "NetworkEventDispatcher.java"


# static fields
.field private static final instance:Llibcore/net/event/NetworkEventDispatcher;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibcore/net/event/NetworkEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/net/event/NetworkEventDispatcher;

    invoke-direct {v0}, Llibcore/net/event/NetworkEventDispatcher;-><init>()V

    sput-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Llibcore/net/event/NetworkEventDispatcher;
    .locals 1

    sget-object v0, Llibcore/net/event/NetworkEventDispatcher;->instance:Llibcore/net/event/NetworkEventDispatcher;

    return-object v0
.end method


# virtual methods
.method public addListener(Llibcore/net/event/NetworkEventListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "toAdd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNetworkConfigurationChanged()V
    .locals 4

    iget-object v3, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/net/event/NetworkEventListener;

    :try_start_0
    invoke-virtual {v1}, Llibcore/net/event/NetworkEventListener;->onNetworkConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Exception thrown during network event propagation"

    invoke-static {v3, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Llibcore/net/event/NetworkEventListener;)V
    .locals 3

    iget-object v2, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/net/event/NetworkEventListener;

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Llibcore/net/event/NetworkEventDispatcher;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void
.end method
