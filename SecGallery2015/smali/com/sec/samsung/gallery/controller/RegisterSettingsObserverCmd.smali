.class public Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "RegisterSettingsObserverCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegSettingsObserverCmd"

.field private static mIsObserversRegistered:Z

.field private static final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mIsObserversRegistered:Z

    new-instance v0, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private registerContentObserver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/content/Context;

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mIsObserversRegistered:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->mIsObserversRegistered:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;->registerContentObserver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
