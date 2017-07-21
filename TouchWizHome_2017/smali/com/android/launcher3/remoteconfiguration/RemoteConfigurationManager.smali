.class public Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# static fields
.field private static final GRANT_PERMISSION:Ljava/lang/String; = "com.samsung.android.launcher.permission.WRITE_SETTINGS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppstate:Lcom/android/launcher3/LauncherAppState;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method private addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_2

    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem - param is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    new-instance v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v7, "add_hotseat_item"

    const-wide/16 v8, -0x1

    invoke-direct {v2, v7, p1, v8, v9}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v6}, Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByComponentName(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    const-string v7, "invocation_result"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_2
    const-string v7, "component"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v7, "index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v3

    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    if-lt v1, v3, :cond_0

    :cond_3
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addHotseatItem - componentName is null, index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    goto :goto_0
.end method

.method private addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 22

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem"

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/16 v9, -0x3e7

    move v8, v9

    move v7, v9

    move v6, v9

    move v5, v9

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v12

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : param is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v14, :cond_e

    const/16 v17, -0x4

    :goto_1
    const-string v4, "invocation_result"

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v16

    :cond_0
    const-string v4, "component"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    if-nez v10, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : componentName is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "page"

    const/16 v11, -0x3e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_2

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : page index is INVALID"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    if-nez v15, :cond_3

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : position is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v6, v15, Landroid/graphics/Point;->x:I

    iget v7, v15, Landroid/graphics/Point;->y:I

    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_4

    if-gez v6, :cond_5

    :cond_4
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_6

    if-gez v7, :cond_7

    :cond_6
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_d

    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    if-nez v18, :cond_8

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : size is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-gt v8, v4, :cond_9

    const/4 v4, 0x1

    if-ge v8, v4, :cond_a

    :cond_9
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : spanX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-gt v9, v4, :cond_b

    const/4 v4, 0x1

    if-ge v9, v4, :cond_c

    :cond_b
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : spanY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_e
    new-instance v13, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_10

    const-string v4, "add_widget"

    :goto_2
    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-direct {v13, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v13, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_10
    const-string v4, "add_shortcut"

    goto :goto_2
.end method

.method private checkPermission()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.launcher.permission.WRITE_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private getAppsButtonState()Landroid/os/Bundle;
    .locals 3

    sget-object v1, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v2, "getAppsButtonState"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "state"

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getAppsCellDimension()Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getAppsCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeCellDimension()Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getHomeCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const-string v2, "DexHomeConverter"

    const-string v3, "get_home_mode Called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    const-string v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.service.dex.homesync"

    invoke-static {v2, v5}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dex_need_to_sync"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "easy_mode"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "home_only_mode"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "home_apps_mode"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/16 v18, 0x0

    const/4 v11, -0x1

    if-nez p1, :cond_3

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem - param is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x4

    :cond_0
    :goto_0
    if-nez v18, :cond_2

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const-string v5, "screen=? AND container=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const/16 v3, -0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_7

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v8, 0x0

    if-eqz v13, :cond_1

    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    :cond_1
    const-string v2, "component"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "user_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    const-string v2, "invocation_result"

    move/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v15

    :cond_3
    const-string v2, "index"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v14

    if-ltz v11, :cond_4

    if-lt v11, v14, :cond_0

    :cond_4
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHotseatItem - index is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x4

    goto/16 :goto_0

    :cond_5
    const/16 v18, -0x3

    goto :goto_1

    :catch_0
    move-exception v10

    const/16 v18, -0x3

    :try_start_1
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    const/16 v18, -0x3

    goto :goto_2
.end method

.method private getHotseatItemCount()Landroid/os/Bundle;
    .locals 4

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getHotseatItemCount()I

    move-result v0

    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getHotseatMaxItemCount()Landroid/os/Bundle;
    .locals 4

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatMaxItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v0

    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "getSupplementServicePageVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "is_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "get_home_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "get_apps_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "get_hotseat_item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "get_hotseat_item_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, " get_hotseat_maxitem_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "get_supplement_service_page_visibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "get_apps_button_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isSupported(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatMaxItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsButtonState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x736ea507 -> :sswitch_4
        -0x51d6cac5 -> :sswitch_6
        -0x4f541027 -> :sswitch_0
        -0x21d4b657 -> :sswitch_3
        -0x9458c40 -> :sswitch_1
        0xf712b51 -> :sswitch_5
        0x639b65cd -> :sswitch_2
        0x6e30d948 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v3, "switch_home_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "add_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "remove_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "add_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "remove_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "add_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "make_empty_position"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "remove_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "remove_page_from_home"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "set_supplement_service_page_visibility"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "enable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v3, "disable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f03e85e -> :sswitch_3
        -0x89a965f -> :sswitch_7
        0x47563bf -> :sswitch_8
        0x1d08123e -> :sswitch_1
        0x220ebb3b -> :sswitch_2
        0x3e088caf -> :sswitch_9
        0x431cfa4c -> :sswitch_6
        0x5680825f -> :sswitch_4
        0x6cf671b8 -> :sswitch_0
        0x7150ba24 -> :sswitch_5
        0x71587ac8 -> :sswitch_b
        0x75316ce3 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private isSupported(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "isSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v17, "makeEmptyPosition"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const/16 v9, -0x3e7

    move v8, v9

    move v7, v9

    move v6, v9

    move v5, v9

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v10

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v17, "makeEmptyPosition : param is null"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v12, :cond_c

    const/4 v15, -0x4

    :goto_1
    const-string v4, "invocation_result"

    invoke-virtual {v14, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v14

    :cond_0
    const-string v4, "page"

    const/16 v17, -0x3e7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v17, "makeEmptyPosition : page index is INVALID"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    if-nez v13, :cond_2

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v17, "makeEmptyPosition : position is null"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v6, v13, Landroid/graphics/Point;->x:I

    iget v7, v13, Landroid/graphics/Point;->y:I

    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_3

    if-gez v6, :cond_4

    :cond_3
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "makeEmptyPosition : cellX is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_5

    if-gez v7, :cond_6

    :cond_5
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "makeEmptyPosition : cellY is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/graphics/Point;

    if-nez v16, :cond_7

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v17, "makeEmptyPosition : size is null"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-gt v8, v4, :cond_8

    const/4 v4, 0x1

    if-ge v8, v4, :cond_9

    :cond_8
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "makeEmptyPosition : spanX is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-gt v9, v4, :cond_a

    const/4 v4, 0x1

    if-ge v9, v4, :cond_b

    :cond_a
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "makeEmptyPosition : spanY is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v11, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v4, "make_empty_position"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-direct {v11, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->removeItemsByPosition(IIIII)V

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method private removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_2

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem - param is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x4

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    new-instance v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v5, "remove_hotseat_item"

    const-wide/16 v6, -0x1

    invoke-direct {v1, v5, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByIndex(I)V

    :cond_1
    const-string v5, "invocation_result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_2
    const-string v5, "index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v2

    if-ltz v0, :cond_3

    if-lt v0, v2, :cond_0

    :cond_3
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeHotseatItem - index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x4

    goto :goto_0
.end method

.method private removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/16 v6, -0x3e7

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removePageFromHome"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, -0x4

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_0
    const-string v4, "page"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param value is a negative num"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v4, "remove_page_from_home"

    const-wide/16 v6, -0x1

    invoke-direct {v0, v4, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/home/HomeLoader;->removeScreen(I)V

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWorkspaceItem : isWidget ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v3, -0x4

    :goto_1
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_1
    const-string v4, "component"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : componentName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : HomeOnlyMode do not support to remove shortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_5

    const-string v4, "remove_widget"

    :goto_2
    const-wide/16 v6, -0x1

    invoke-direct {v1, v4, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/android/launcher3/home/HomeLoader;->removeItem(Landroid/content/ComponentName;Z)V

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const-string v4, "remove_shortcut"

    goto :goto_2
.end method

.method private setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-wide/16 v4, -0x1

    invoke-direct {v0, p2, v2, v4, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v4, p1, v2}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_1
    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "setSupplementServicePageVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "switchHomeMode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x4

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "switchHomeMode : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "invocation_result"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v5, "home_mode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "home_only_mode"

    if-ne v0, v5, :cond_3

    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v3}, Lcom/android/launcher3/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_0
    const-string v6, "home_only_mode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "home_apps_mode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x15809d0a -> :sswitch_0
        0x67df83f0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleRemoteConfigurationCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "invocation_result"

    const/16 v3, -0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_2
    return-object v1

    :sswitch_0
    const-string v4, "get_home_mode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "get_support_feature"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    const-string v0, "find_app_position"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_2
    move v2, v3

    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    const-string v2, "find_app_position"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_3
    const-string v4, "find_app_position"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "invocation_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6311f8a6 -> :sswitch_0
        -0x48bf2463 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22836e4d
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-void
.end method
