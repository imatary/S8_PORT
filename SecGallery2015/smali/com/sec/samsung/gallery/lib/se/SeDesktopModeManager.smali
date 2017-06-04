.class public Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;
.super Ljava/lang/Object;
.source "SeDesktopModeManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SeDesktopModeManager"


# instance fields
.field private mDesktopModeManagerListener:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

.field private mIsDesktopMode:Z

.field private mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private final mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mDesktopModeManagerListener:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mIsDesktopMode:Z

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mIsDesktopMode:Z

    :cond_0
    const-string/jumbo v0, "SeDesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeX Manager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mDesktopModeManagerListener:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    return-object v0
.end method


# virtual methods
.method public isDesktopDockConnected()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopDockConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SeDesktopModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDesktopDockConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mIsDesktopMode:Z

    return v0
.end method

.method public registerListener()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;-><init>(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SeDesktopModeManager"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method public setDesktopModeManagerListener(Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mDesktopModeManagerListener:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SeDesktopModeManager"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method
