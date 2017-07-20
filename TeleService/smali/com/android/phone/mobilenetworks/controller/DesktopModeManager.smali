.class public Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;
.super Ljava/lang/Object;
.source "DesktopModeManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/controller/DesktopModeManager$1;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager$1;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager$1;-><init>(Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;)V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;
    .locals 2

    sget-object v0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static printListeners(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v2, "Phone.DesktopModeManager"

    const-string/jumbo v3, "============registeredContentOberservers=========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    const-string/jumbo v2, "Phone.DesktopModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "printListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "Phone.DesktopModeManager"

    const-string/jumbo v3, "==================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopDockConnectionChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 3

    const-string/jumbo v0, "Phone.DesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->mListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->printListeners(Ljava/util/ArrayList;)V

    return-void
.end method
