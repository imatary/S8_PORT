.class public Lorg/puremvc/java/multicore/patterns/proxy/Proxy;
.super Lorg/puremvc/java/multicore/patterns/observer/Notifier;
.source "Proxy.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/IProxy;


# instance fields
.field protected data:Ljava/lang/Object;

.field protected proxyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    const-string/jumbo v0, "Proxy"

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    const-string/jumbo v0, "Proxy"

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    const-string/jumbo v0, "Proxy"

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->init(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getProxyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    return-object v0
.end method

.method protected init(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected init(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->proxyName:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/proxy/Proxy;->data:Ljava/lang/Object;

    return-void
.end method
