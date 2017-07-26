.class public Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;
.super Ljava/lang/Object;
.source "MobileNetworkComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static volatile sInstance:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mComponents:[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->updateComponentHasType(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;-><init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->createComponentList()[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mComponents:[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->registerObserversToContext()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->registerIntentReceiver()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->updateComponentHasType(I)V

    return-void
.end method

.method private createComponentList()[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;

    new-instance v1, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;-><init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private enableComponent(Landroid/content/ComponentName;Z)V
    .locals 7

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v4, "MobileNetworkCompMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableComponent : componentName > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " enable > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MobileNetworkCompMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Component class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not exist in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;
    .locals 2

    sget-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasIType(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    and-int v2, p1, p2

    if-ne v2, p2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isSimLoaded()Z
    .locals 2

    sget-object v1, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerIntentReceiver()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v1, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerObserversToContext()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mComponents:[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;->registerObserver()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateComponent(Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;)V
    .locals 6

    const-string/jumbo v3, "MobileNetworkCompMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateComponent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {p1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;->canDisplay()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->enableComponent(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateComponentHasType(I)V
    .locals 8

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->mComponents:[Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->hasIType(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "MobileNetworkCompMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateComponentHasType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->updateComponent(Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public registerContentObserver(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$2;-><init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;Landroid/os/Handler;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
