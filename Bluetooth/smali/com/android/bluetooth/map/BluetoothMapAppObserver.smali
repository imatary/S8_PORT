.class public Lcom/android/bluetooth/map/BluetoothMapAppObserver;
.super Ljava/lang/Object;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;,
        Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;
    }
.end annotation


# static fields
.field private static final BDUMP_TAG:Ljava/lang/String; = "MapObsv-"

.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppObserver"

.field private static final V:Z


# instance fields
.field app:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mContext:Landroid/content/Context;

.field private mDirectBootCompleteReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;

.field private mEmergencyModeChangedReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

.field mEnabledAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

.field mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field mNewAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/database/ContentObserver;

.field mOldAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->handleAccountChanges(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapAccountLoader;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/bluetooth/map/BluetoothMapService;",
            "Lcom/android/bluetooth/map/BluetoothMapAccountLoader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mDirectBootCompleteReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEmergencyModeChangedReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "SecEmail"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_AUTHORITY:Ljava/lang/String;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->app:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mDirectBootCompleteReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEmergencyModeChangedReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mDirectBootCompleteReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$DirectBootCompleteReceiver;->register()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEmergencyModeChangedReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->register()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->initObservers()V

    return-void
.end method

.method private deinitObservers()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v1, "deinitObservers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->unregisterObserver()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEmergencyModeChangedReceiver:Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$EmergencyModeChangedReceiver;->unregister()V

    return-void
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x84

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    const-string/jumbo v2, "Error getting package metadata"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private handleAccountChanges(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "policies/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "name = \'PasswordMode\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    const-string/jumbo v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v0, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ITPolicy : PassWordMode value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "ITPolicy : PassWordMode set"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    const-string/jumbo v0, "MapObsv-Email Account is Removed"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "UPDATE_MAS_INSTANCES_ACCOUNT_POLICY_SET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->app:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    const-string/jumbo v0, "MapObsv-Email Account is Added"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "UPDATE_MAS_INSTANCES_ACCOUNT_POLICY_UNSET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    const-string/jumbo v0, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->app:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->app:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    const-string/jumbo v0, "MapObsv-Email Account is Removed"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    const-string/jumbo v0, "MapObsv-Email Account is Added"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "UPDATE_MAS_INSTANCES_ACCOUNT_ADDED changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mOldAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mEnabledAccounts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    const-string/jumbo v0, "MapObsv-Email Account is Changed"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "UPDATE_MAS_INSTANCES_ACCOUNT_DEFAULT changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v2, "Received change notification on package not registered for notifications!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private initObservers()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v1, "initObservers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver()V

    return-void
.end method


# virtual methods
.method public getEnabledAccountItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEnabledAccountItems() :: mNewAccountList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mNewAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public registerObserver()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/insert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/update/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapAppObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerObserver for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->deinitObservers()V

    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapAppObserver"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
