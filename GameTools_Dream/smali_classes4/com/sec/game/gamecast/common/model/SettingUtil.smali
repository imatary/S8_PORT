.class public Lcom/sec/game/gamecast/common/model/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static mInstance:Lcom/sec/game/gamecast/common/model/SettingUtil;


# instance fields
.field private final TIMEOUT:J

.field private final URI_GAME_HOME_HIDDEN_MODE:Ljava/lang/String;

.field private final mBitmapCache:Lcom/sec/game/gamecast/common/model/BitmapIconCache;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0xbb8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "game_home_hidden_mode"

    iput-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->URI_GAME_HOME_HIDDEN_MODE:Ljava/lang/String;

    iput-wide v2, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->TIMEOUT:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/game/gamecast/common/model/BitmapIconCache;

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/game/gamecast/common/model/BitmapIconCache;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mBitmapCache:Lcom/sec/game/gamecast/common/model/BitmapIconCache;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/model/SettingUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->askLauncherToMakeShortcutIcon()V

    return-void
.end method

.method private declared-synchronized askLauncherToMakeShortcutIcon()V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "askLauncherToMakeShortcutIcon()"

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v6, "com.samsung.android.game.gamehome"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v6, "pkgIntent is null, Main Activity is not exist."

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingUtil;->checkShortcutAlreadyExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v6, "Detected shortcut already exists, now skip..."

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_1
    :try_start_2
    const-string/jumbo v6, "now trying to make a shorcut..."

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v6, 0x10200000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getAppIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.shortcut.NAME"

    iget-object v7, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_HEADER_GAME_LAUNCHER_ABB:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "duplicate"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v6, ">>>>> Createde App Shortcut "

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v6, "askLauncherToMakeShortcutIcon()"

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static checkShortcutAlreadyExists(Landroid/content/Context;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "intent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v6, 0x0

    :goto_1
    return v1

    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v6, 0x0

    throw v1

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v6, 0x0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;
    .locals 2

    const-class v1, Lcom/sec/game/gamecast/common/model/SettingUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mInstance:Lcom/sec/game/gamecast/common/model/SettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/model/SettingUtil;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mInstance:Lcom/sec/game/gamecast/common/model/SettingUtil;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mInstance:Lcom/sec/game/gamecast/common/model/SettingUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAppIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mBitmapCache:Lcom/sec/game/gamecast/common/model/BitmapIconCache;

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/model/BitmapIconCache;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isApplicationEnabled()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isApplicationEnabledInt()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string/jumbo v2, "disabled"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingUtil;->printLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string/jumbo v2, "disabled"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingUtil;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    const-string/jumbo v1, "enabled"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    const-string/jumbo v1, "default"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.samsung.android.game.gamehomeis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private setApplicationEnabled(Z)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "setApplicationEnabled()"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>> Enable / Disable App : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    const-string/jumbo v3, "com.samsung.android.game.gamehome"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string/jumbo v1, "setApplicationEnabled()"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public checkValidResolution()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_0

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    iput v8, v1, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v8, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/graphics/Point;

    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    if-lt v8, v9, :cond_1

    iget v8, v1, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    if-lt v8, v9, :cond_1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public getDeviceBasedResolutionList(Z)[Ljava/lang/String;
    .locals 17

    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v13, v4, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Point;->y:I

    if-ge v13, v14, :cond_0

    iget v11, v4, Landroid/graphics/Point;->x:I

    iget v13, v4, Landroid/graphics/Point;->y:I

    iput v13, v4, Landroid/graphics/Point;->x:I

    iput v11, v4, Landroid/graphics/Point;->y:I

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "disp_size.x :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , disp_size.y :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , currentResolution :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    array-length v14, v2

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v1, v2, v13

    const-string/jumbo v15, "x"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    new-instance v9, Landroid/graphics/Point;

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/graphics/Point;-><init>(II)V

    iget v15, v4, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    iget v15, v4, Landroid/graphics/Point;->y:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    iget v15, v9, Landroid/graphics/Point;->x:I

    if-le v15, v6, :cond_1

    iget v6, v9, Landroid/graphics/Point;->x:I

    move-object v5, v1

    :cond_1
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p1, :cond_4

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/sec/game/gamecast/common/model/SettingData;->setResolution(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-object v7
.end method

.method public getResolutionPosBasedOnPresetList(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isApplicationEnabledInt()I
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.game.gamehome"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public isGameHomeEnableSync()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isSettingSecureEnabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isApplicationEnabled()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGameHomeEnableSync() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->setSettingSecureEnabled(Z)V

    :cond_0
    return v0
.end method

.method public isGameIconsHidden()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_home_hidden_games"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSettingSecureEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_home_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setGameHomeEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->updateGameHomeEnabled(Z)V

    return-void
.end method

.method public setGameIconsHidden(Z)V
    .locals 3

    const-string/jumbo v0, "setGameIconsHidden() start"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_home_hidden_games"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "setGameIconsHidden() end"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSettingSecureEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "setSettingSecureEnabled() start"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/SettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_home_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "setSettingSecureEnabled() end"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGameHomeEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGameHomeEnabled() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->setSettingSecureEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->setApplicationEnabled(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/game/gamecast/common/model/SettingUtil$1;

    invoke-direct {v1, p0}, Lcom/sec/game/gamecast/common/model/SettingUtil$1;-><init>(Lcom/sec/game/gamecast/common/model/SettingUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
