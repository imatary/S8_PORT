.class public Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# static fields
.field private static mInstance:Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->replaceContext(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mInstance:Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mInstance:Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    :goto_0
    sget-object v0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mInstance:Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mInstance:Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->replaceContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private replaceContext(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, ""

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getProperFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    const-string/jumbo v4, "(unknown)"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getUID(Ljava/lang/String;)I
    .locals 5

    iget-object v3, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isDefaultLauncher(Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "currentHomePackage"

    invoke-static {v4, v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
