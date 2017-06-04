.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAFWMode;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsAFWMode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method

.method private static isAfwForBYOD(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v5

    if-le v5, v4, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private static isAfwForCL(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAFWMode;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAFWMode;->isAfwForCL(Landroid/content/Context;)Z

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
