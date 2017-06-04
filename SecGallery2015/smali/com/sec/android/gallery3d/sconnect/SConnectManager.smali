.class public Lcom/sec/android/gallery3d/sconnect/SConnectManager;
.super Ljava/lang/Object;
.source "SConnectManager.java"


# static fields
.field private static final ACTION_SCONNECT_START:Ljava/lang/String; = "com.samsung.android.sconnect.START"

.field private static final TAG:Ljava/lang/String; = "SConnectManager"

.field private static sIsBezelSupported:Z


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsRegistered:Z

.field private mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/QuickConnectFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/QuickConnectFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/QuickConnectFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    iput-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    iget-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;->isBezelSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    new-instance v1, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/sconnect/SConnectManager$1;-><init>(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)V

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;->setQuickConnectDataListener(Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface$QuickConnectDataListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/sconnect/SConnectManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/sconnect/SConnectManager;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->startSConnect(Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method private isAfwForBYOD(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAfwForCL(Landroid/content/Context;)Z
    .locals 5

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAndroidForWorkMode(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->isAfwForCL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startSConnect(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sconnect.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a03a8

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    const-string/jumbo v2, "SConnectManager"

    const-string/jumbo v3, "S Connect is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v2, 0x7f0a019c

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SConnectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bezel error - supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", already registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    const-string/jumbo v0, "SConnectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register listener, class name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;->registerListener()V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SConnectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bezel error - supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->sIsBezelSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", already registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SConnectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregister listener, class name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mQuickConnectEx:Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;->unRegisterListener()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->mIsRegistered:Z

    goto :goto_0
.end method
