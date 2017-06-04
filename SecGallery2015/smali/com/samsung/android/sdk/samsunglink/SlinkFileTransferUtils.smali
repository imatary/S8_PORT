.class public Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
.super Ljava/lang/Object;
.source "SlinkFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;,
        Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.Cancel"

.field public static final ACTION_CHOOSE_DEVICE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.ChooseDevice"

.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.Download"

.field public static final ACTION_DOWNLOAD_MODAL:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.DownloadModal"

.field public static final ACTION_FILE_TRANSFER_LIST:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.FileTransferList"

.field public static final ACTION_SEND_TO:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.SendTo"

.field public static final ACTION_TRANSFER:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.Transfer"

.field public static final ACTION_UPLOAD:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filetransfer.Upload"

.field public static final BROADCAST_AUTO_UPLOAD_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.AUTO_UPLOAD_STATE_CHANGED"

.field public static final DEVICE_CHOOSER_RESULT_BROADCAST_ACTION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.DEVICE_CHOOSER_RESULT_BROADCAST_ACTION"

.field public static final DOWNLOAD_RESULT_BROADCAST_ACTION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.DOWNLOAD_RESULT_BROADCAST_ACTION"

.field public static final EXTRA_BROADCAST_RESULTS:Ljava/lang/String; = "broadcastResults"

.field public static final EXTRA_CHOOSE_STORAGE:Ljava/lang/String; = "choose_storage"

.field public static final EXTRA_DEVICE_CHOOSER_MODE:Ljava/lang/String; = "deviceChooserMode"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final EXTRA_DOWNLOADING_TEXT:Ljava/lang/String; = "downloadingText"

.field public static final EXTRA_IS_CANCEL_FOR_AUTO_UPLOAD:Ljava/lang/String; = "isCancelForAutoUpload"

.field public static final EXTRA_IS_FILES_OR_DOCUMENTS_TAB_SOURCE:Ljava/lang/String; = "isFilesOrDocumentsTabSource"

.field public static final EXTRA_IS_SOURCE_SECURE:Ljava/lang/String; = "isSourceSecure"

.field public static final EXTRA_PATHS:Ljava/lang/String; = "paths"

.field public static final EXTRA_ROW_IDS:Ljava/lang/String; = "rowIds"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final EXTRA_TARGET_DEVICE_ID:Ljava/lang/String; = "targetDeviceId"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_TRANSFER_OPTIONS:Ljava/lang/String; = "transferOptions"

.field public static final EXTRA_URIS:Ljava/lang/String; = "uris"

.field public static final FILE_TRANSFER_SESSION_ID_BROADCAST_ACTION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.FILE_TRANSFER_SESSION_ID_BROADCAST_ACTION"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;


# instance fields
.field public final EXTRA_DOWNLOADING_TEXT_RES_ID:Ljava/lang/String;

.field public final EXTRA_TITLE_RES_ID:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "titleResId"

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->EXTRA_TITLE_RES_ID:Ljava/lang/String;

    const-string/jumbo v0, "downloadingTextResId"

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->EXTRA_DOWNLOADING_TEXT_RES_ID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
    .locals 4

    const-class v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    monitor-enter v2

    if-nez p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "context is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->isPlatformEnabled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public cancelFileTransferBySessionId(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Enter ::cancelFileTransferBySessionId() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "sessionId is null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.Cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.filetransfer.FileTransferStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "isCancelForAutoUpload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public cancelFilesForAutoUpload()V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter ::cancleFilesForAutoUpload()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.Cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.filetransfer.FileTransferStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "isCancelForAutoUpload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public createDeviceChooserActivityIntent(JLcom/samsung/android/sdk/samsunglink/SlinkMediaSet;ZZ)Landroid/content/Intent;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Enter ::createDeviceChooserActivityIntent(sourceDeviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mediaSet, broadcastResults:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", chooseStorage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.ChooseDevice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.SendToActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "deviceId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v1, "broadcastResults"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    if-eqz p5, :cond_2

    const-string/jumbo v1, "choose_storage"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createDeviceChooserActivityIntent(JZ)Landroid/content/Intent;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Enter ::createDeviceChooserActivityIntent(sourceDeviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", broadcastResults:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->createDeviceChooserActivityIntent(JLcom/samsung/android/sdk/samsunglink/SlinkMediaSet;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createDeviceChooserActivityIntent(J[JZ)Landroid/content/Intent;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Enter ::createDeviceChooserActivityIntent(sourceDeviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", samsungLinkMediaStoreRowIds, broadcastResults:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->createDeviceChooserActivityIntent(JLcom/samsung/android/sdk/samsunglink/SlinkMediaSet;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createFileTransferListActivityIntent()Landroid/content/Intent;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter ::createFileTransferListActivityIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.FileTransferList"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.FileTransferListActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createModalDownloadActivityIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Enter ::createModalDownloadActivityIntent( mediaSet, title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", downloadingText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", broadcastResults:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", TransferOptions)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->isPlatformEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.filetransfer.DownloadModal"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v4, "com.mfluent.asp.ui.DownloadActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "downloadingText"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v2, "broadcastResults"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    if-eqz p5, :cond_3

    const-string/jumbo v2, "transferOptions"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createModalDownloadActivityIntent([JLjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enter ::createModalDownloadActivityIntent( samsungLinkMediaStoreRowIds, title, downloadingText, broadcastResults, TransferOptions)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->createModalDownloadActivityIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createSendToActivityIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)Landroid/content/Intent;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter ::createSendToActivityIntent(mediaSet, TransferOptions)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "mediaSet is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.SendTo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.SendToActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    const-string/jumbo v1, "transferOptions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public downloadFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter ::downloadFiles(mediaSet, TransferOptions)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.Download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.filetransfer.FileTransferStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "transferOptions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public downloadFiles([JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enter ::downloadFiles(samsungLinkMediaStoreRowIds, TransferOptions)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->downloadFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    return-void
.end method

.method public getLocalPathsFromSuccessfulModalDownloadResult(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Enter ::getLocalPathsFromSuccessfulModalDownloadResult(Intent)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "paths"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocalUrisFromSuccessfulModalDownloadResult(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Enter ::getLocalUrisFromSuccessfulModalDownloadResult(Intent)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "uris"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getSessionInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;
    .locals 11

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Enter ::getSessionInfo(sessionId)"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "sessionId is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.FileTransferSessionInfo.NAME"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;

    const-string/jumbo v6, "method_result"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method

.method public getTargetDeviceIdFromSuccessfulDeviceChooserResult(Landroid/content/Intent;)J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enter ::getTargetDeviceIdFromSuccessfulDeviceChooserResult(Intent)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "deviceId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public is3boxSupported(JJ)Z
    .locals 7

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Enter ::is3boxSupported( sourceDeviceId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", targetDeviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SamsungLinkMediaStore.CallMethods.Is3boxSupported.EXTRA_SOURCE_DEVICE_ID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SamsungLinkMediaStore.CallMethods.Is3boxSupported.EXTRA_TARGET_DEVICE_ID"

    invoke-virtual {v1, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.sec.samsunglink.api.SamsungLinkMediaStore.CallMethods.Is3boxSupported.NAME"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "slinklib"

    const-string/jumbo v4, "IllegalArgumentException ::maybe platform disabled is3boxSupported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "method_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method

.method public isAutoUploadInProgress()Z
    .locals 7

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Enter ::isAutoUploadInProgress()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.IsAutoUploadInProgress.NAME"

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

    const-string/jumbo v2, "slinklib"

    const-string/jumbo v3, "IllegalArgumentException ::maybe platform disabled isAutoUploadInProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public isTransferInProgressForDevice(J)Z
    .locals 9

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Enter ::isTransferInProgressForDevice(deviceId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.IsFileTransferInProgress.NAME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "method_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "slinklib"

    const-string/jumbo v5, "IllegalArgumentException ::maybe platform disabled iTPFD"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public transferFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Enter ::transferFiles(mediaSet, remoteDeviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", TransferOptions)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.Transfer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.filetransfer.FileTransferStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    const-string/jumbo v1, "deviceId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string/jumbo v1, "transferOptions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public transferFiles([JJLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Enter ::transferFiles(samsungLinkMediaStoreRowIds, remoteDeviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TransferOptions)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromSlinkMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->transferFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    return-void
.end method

.method public uploadMediaStoreFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Enter ::uploadMediaStoreFiles(mediaSet, remoteDeviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", TransferOptions)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filetransfer.Upload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.filetransfer.FileTransferStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    const-string/jumbo v1, "deviceId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string/jumbo v1, "transferOptions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public uploadMediaStoreFiles([JJLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Enter ::uploadMediaStoreFiles(mediaStoreRowIds, remoteDeviceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TransferOptions)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->createFromMediaStoreIds([J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->uploadMediaStoreFiles(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;JLcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$TransferOptions;)V

    return-void
.end method
