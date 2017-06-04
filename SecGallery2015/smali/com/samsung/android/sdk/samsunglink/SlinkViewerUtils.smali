.class public Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;
.super Ljava/lang/Object;
.source "SlinkViewerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;
    }
.end annotation


# static fields
.field public static final ACTION_START_DOCUMENT_VIEWER:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.StartDocumentViewer"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.START_SLINK_PLAYBACK"

.field public static final ACTION_VIEW_MOS:Ljava/lang/String; = "com.samsung.intent.action.START_SLINK_PLAYBACK"

.field public static final CONNECT_ATTACH_ACTION_ID:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.attachment.Attach"

.field public static final EXTRA_ATTACHMENT_MODE:Ljava/lang/String; = "attachmentMode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final EXTRA_PLAY_OPTION_AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final EXTRA_ROW_ID:Ljava/lang/String; = "rowId"

.field public static final EXTRA_SELECTED_ID:Ljava/lang/String; = "selectedId"

.field public static final EXTRA_SELECTED_ID_COLUMN:Ljava/lang/String; = "selectedIdColumn"

.field public static final EXTRA_SELECTION:Ljava/lang/String; = "selection"

.field public static final EXTRA_SELECTION_ARGS:Ljava/lang/String; = "selectionArgs"

.field public static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final HELP_TO_REGISTER:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.register.HowToUse"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createConnectAttachViewIntent(J)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.attachment.Attach"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.pcw"

    const-string/jumbo v3, "com.mfluent.asp.ui.ContentsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "deviceId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public createCursorLoaderFromViewIntent(Landroid/content/Intent;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method public createHowToUseViewIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.register.HowToUse"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.common.GuideAddOthersActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createStartDocumentViewerIntent(J)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.StartDocumentViewer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.StartDocumentViewerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "rowId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createStartFileViewerIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.StartDocumentViewer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.StartDocumentViewerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getCursorFromViewIntent(Landroid/content/Intent;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getCursorFromViewIntent(Landroid/content/Intent;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorFromViewIntent(Landroid/content/Intent;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "selection"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "selectionArgs"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sortOrder"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, "selectedId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string/jumbo v0, "selectedIdColumn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, v7

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v2, v7

    goto :goto_0
.end method

.method public getSourceDeviceIdFromViewIntent(Landroid/content/Intent;)J
    .locals 4

    const-string/jumbo v0, "deviceId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSlinkViewIntent(Landroid/content/Intent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.START_SLINK_PLAYBACK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "android.intent.action.START_SLINK_PLAYBACK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUIAppAvailableInSamsungAppStore()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.sec.samsunglink.api.SamsungLinkMediaStore.CallMethods.GetUIAppAvailabilityInSamsungAppStore.NAME"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::isUIAppAvailableInSamsungAppStore maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method
