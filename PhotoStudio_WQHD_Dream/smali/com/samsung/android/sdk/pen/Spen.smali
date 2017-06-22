.class public Lcom/samsung/android/sdk/pen/Spen;
.super Ljava/lang/Object;
.source "Spen.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field private static final DEFAULT_MAX_CACHE_SIZE:I = 0x5

.field public static final DEVICE_PEN:I = 0x0

.field public static IS_SPEN_PRELOAD_MODE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SpenSdk"

.field public static final POINTER_ICON:I = 0x1

.field private static final SPEN_APP_LIB_MODE:I = 0x2

.field public static final SPEN_NATIVE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.spen30"

.field private static final SPEN_NATIVE_PACKAGE_NAME_64BIT:Ljava/lang/String; = "com.samsung.android.sdk.spen30_64"

.field private static final SPEN_NATIVE_PACKAGE_NAME_PRELOAD:Ljava/lang/String; = "com.samsung.android.sdk.spenv10"

.field public static final SPEN_STATIC_LIB_MODE:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "4.2.56"

.field private static final VERSION_LEVEL:I = 0x42

.field private static mIsInitialized:Z

.field private static mLoadedSpenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpenPackageName:Ljava/lang/String;

.field private static os:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreateMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/sdk/pen/Spen;->IS_SPEN_PRELOAD_MODE:Z

    sput-boolean v1, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    const-string v0, "com.samsung.android.sdk.spen30"

    sput-object v0, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    sput v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/Spen;->mLoadedSpenList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native SPenSdk_OSType()I
.end method

.method private static native SPenSdk_init(Ljava/lang/String;II)Z
.end method

.method private static native SPenSdk_init2(Ljava/lang/String;III)Z
.end method

.method private static native SPenSdk_removeUnusedCache(Ljava/lang/String;I)Z
.end method

.method public static getSpenPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 10

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.providers.context"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v6, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v7, "SpenSdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "versionCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    const-string v7, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7}, Ljava/lang/SecurityException;-><init>()V

    throw v7

    :catch_0
    move-exception v3

    const-string v7, "SpenSdk"

    const-string v8, "Could not find ContextProvider"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v7, "SpenSdk"

    const-string v8, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "app_id"

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "feature"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "extra"

    const-string v8, "initialize"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "data"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "com.samsung.android.providers.context"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static isLoadedSpen(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/Spen;->mLoadedSpenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointerIconEnabled()Z
    .locals 5

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->isPointerIconSupported()Z
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static osType()I
    .locals 3

    sget v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_OSType()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    sget v1, Lcom/samsung/android/sdk/pen/Spen;->os:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpenSdk"

    const-string v2, "osType - old so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x20

    sput v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    sget v1, Lcom/samsung/android/sdk/pen/Spen;->os:I

    goto :goto_0
.end method


# virtual methods
.method SPEN_SDK_4_0_0(I)I
    .locals 1

    mul-int v0, p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "4.2.56"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;II)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;IIZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;IIZLjava/lang/String;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const-string v15, "SpenSdk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SpenSdk version level = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "SpenSdk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SpenSdk jar version = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "context is invalid."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    const-string v15, "SpenSdk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Client package name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/Spen;->mCreateMode:I

    packed-switch p3, :pswitch_data_0

    const-string v15, "SpenSdk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SpenSdk use mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Skip!!!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v15, "SpenSdk"

    const-string v16, "SpenSdk use static library"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v15, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    :cond_1
    const-string v15, "SpenSdk"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mSpenPackageName : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/Spen;->insertLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v15, "SpenSdk"

    const-string v16, "Cannot get the path of the directory holding application files."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Cannot get the path of the directory holding application files."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_0
    move-exception v4

    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "SpenSdk"

    const-string v16, "Cannot create application files directory"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Cannot create application directory."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_3
    const-string v15, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    :try_start_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v9, v10, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-boolean v15, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-eqz v15, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-static {v15, v13, v9, v0}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_init2(Ljava/lang/String;III)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "SDK Cache directory is not initialized."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_1
    move-exception v4

    :try_start_2
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    const-class v15, Landroid/view/Display;

    const-string v16, "getRawWidth"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-class v15, Landroid/view/Display;

    const-string v16, "getRawHeight"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    goto :goto_1

    :catch_2
    move-exception v5

    :try_start_3
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v9, v10, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v9

    goto :goto_1

    :cond_4
    const-string v15, "SpenSdk"

    const-string v16, "initialize complete"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v11, :cond_6

    if-nez v12, :cond_7

    :cond_6
    new-instance v15, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v16, "Vendor is not supported"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v15

    :cond_7
    const-string v15, "Samsung"

    invoke-virtual {v11, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "Samsung"

    invoke-virtual {v12, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_8

    new-instance v15, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v16, "Vendor is not supported"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v15

    :cond_8
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    new-instance v15, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Device SDK version codes is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v15

    :cond_9
    const-string v15, "gnustl_shared"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "gnustl_shared is not loaded!!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_a
    const-string v15, "SPenBase"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "SPenPluginFW"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "SPenModel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "SPenSkia"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "SPenEngine"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "SPenInit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    :cond_b
    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15}, Ljava/lang/IllegalStateException;-><init>()V

    throw v15

    :cond_c
    const-string v15, "SPenBrush"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenChineseBrush"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenInkPen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenMarker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenPencil"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenPencil2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenMontblancFountainPen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenMontblancCalligraphyPen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenMagicPen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenObliquePen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SPenFountainPen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v15, "SpenSdk"

    const-string v16, "SpenSdk Libraries are loaded."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-static {v15, v13, v9, v0}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_init2(Ljava/lang/String;III)Z

    move-result v15

    if-nez v15, :cond_d

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "SDK Cache directory is not initialized."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_d
    const/4 v15, 0x1

    sput-boolean v15, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    const-string v15, "SpenSdk"

    const-string v16, "initialize complete"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sec_epen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/Spen;->isPointerIconEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method loadLibrary(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v6, p0, Lcom/samsung/android/sdk/pen/Spen;->mCreateMode:I

    if-ne v6, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/sdk/pen/Spen;->mLoadedSpenList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-ne v6, v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_0
.end method
