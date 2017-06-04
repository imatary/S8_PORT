.class public Lcom/sec/samsung/gallery/controller/DestroyCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "DestroyCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DestroyCmd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private getComponentName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "DestroyCmd"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "DestroyCmd"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAllCommands(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V
    .locals 6

    const-class v3, Lcom/sec/samsung/gallery/core/NotificationNames;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->getComponentName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeCommand(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAllMediators(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V
    .locals 6

    const-class v3, Lcom/sec/samsung/gallery/core/MediatorNames;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->getComponentName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasMediator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAllProxies(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V
    .locals 6

    const-class v3, Lcom/sec/samsung/gallery/core/ProxyNames;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->getComponentName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasProxy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeProxy(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IProxy;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->removeAllProxies(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->removeAllMediators(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/DestroyCmd;->removeAllCommands(Lorg/puremvc/java/multicore/patterns/facade/Facade;)V

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->removeCore(Landroid/content/Context;)V

    return-void
.end method
