.class public Lcom/android/phone/callsettings/BlockNumberProviderObserver;
.super Landroid/content/BroadcastReceiver;
.source "BlockNumberProviderObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;
    }
.end annotation


# static fields
.field private static final synthetic -android-database-CursorJoiner$ResultSwitchesValues:[I

.field private static final FROM:[Ljava/lang/String;


# instance fields
.field private final BLOCKED_NUMBER_PROVIDER:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method private static synthetic -getandroid-database-CursorJoiner$ResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/database/CursorJoiner$Result;->values()[Landroid/database/CursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-android-database-CursorJoiner$ResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/BlockNumberProviderObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->syncBlockNumberList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_checked"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_match"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContentURI:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;-><init>(Lcom/android/phone/callsettings/BlockNumberProviderObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContentObserver:Landroid/database/ContentObserver;

    const-string/jumbo v0, "com.android.providers.blockednumber"

    iput-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->BLOCKED_NUMBER_PROVIDER:Ljava/lang/String;

    return-void
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "reject_checked"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v3
.end method

.method private checkSyncBlockListBoot()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->isEnableBlockNumberPackage()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->getNativeBlockNumber()Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/database/CursorJoiner;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "original_number"

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "reject_number"

    aput-object v7, v6, v9

    invoke-direct {v1, v4, v5, v0, v6}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorJoiner$Result;

    invoke-static {}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-getandroid-database-CursorJoiner$ResultSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "BlockNumberProviderObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert auto reject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->addAutoRejectNumber(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "BlockNumberProviderObserver"

    const-string/jumbo v6, "This user cannot access Block provider"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string/jumbo v5, "BlockNumberProviderObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert native reject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->addNativeBlockNumber(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BlockNumberProviderObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    const-string/jumbo v0, "reject_number"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "reject_checked"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "reject_match"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v5, "reject_number asc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reject_match="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getNativeBlockNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "original_number"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v5, "original_number asc"

    iget-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private syncBlockNumberList()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->isEnableBlockNumberPackage()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->getNativeBlockNumber()Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/database/CursorJoiner;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "original_number"

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "reject_number"

    aput-object v7, v6, v9

    invoke-direct {v1, v4, v5, v0, v6}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorJoiner$Result;

    invoke-static {}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-getandroid-database-CursorJoiner$ResultSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "BlockNumberProviderObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert auto reject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->addAutoRejectNumber(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "BlockNumberProviderObserver"

    const-string/jumbo v6, "This user cannot access Block provider"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string/jumbo v5, "BlockNumberProviderObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete auto reject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->deleteAutoRejectNumber(I)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addNativeBlockNumber(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "original_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public isEnableBlockNumberPackage()Z
    .locals 6

    iget-object v4, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v4, "com.android.providers.blockednumber"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "BlockNumberProviderObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BlockNumberProviderObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BlockNumberProviderObserver"

    const-string/jumbo v3, "this is factory bianry"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BlockNumberProviderObserver"

    const-string/jumbo v3, "BlockNumberProviderObserver : FAILURE unable to get content resolver."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BlockNumberProviderObserver"

    const-string/jumbo v3, "ACTION_BOOT_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->checkSyncBlockListBoot()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BlockNumberProviderObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BlockNumberProviderObserver"

    const-string/jumbo v3, "CHANGE_TPHONE_MODE_SETTING"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->syncBlockNumberList()V

    goto :goto_1
.end method
