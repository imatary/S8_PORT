.class public Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;
.super Landroid/os/AsyncTask;
.source "ApkDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field static mInterval:J


# instance fields
.field private listener:Lcom/sec/game/gamecast/common/stub/StubListener;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContext:Landroid/content/Context;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field mNow:J

.field mRecent:J

.field private signature:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ApkDownloadManager: "

    sput-object v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mInterval:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNotifyManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNotifyManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    :try_start_0
    aget-object v17, p1, v21

    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, ": "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_1
    invoke-static {v8}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz v10, :cond_1

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    if-eqz v14, :cond_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_3
    const/16 v21, 0x0

    :goto_4
    return-object v21

    :cond_3
    :try_start_3
    const-string/jumbo v21, "\n"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_5

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string/jumbo v21, "\n"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    const/16 v21, 0xc8

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "status code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " != "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xc8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_7
    new-instance v3, Ljava/io/File;

    sget-object v21, Lcom/sec/game/gamecast/common/stub/StubUtil;->DOWNLOAD_APK_PATH:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v3, :cond_8

    const/16 v21, 0x0

    move-object v2, v3

    goto/16 :goto_4

    :cond_8
    :try_start_4
    sget-object v21, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "doInBackground: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v18, 0x0

    const/16 v21, 0x400

    :try_start_6
    move/from16 v0, v21

    new-array v4, v0, [B

    :goto_7
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_9

    add-int v18, v18, v6

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->publishProgress([Ljava/lang/Object;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v4, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    :catch_1
    move-exception v8

    move-object v14, v15

    move-object v10, v11

    move-object v2, v3

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->signature:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/sec/game/gamecast/common/stub/StubUtil;->validateApkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object v14, v15

    move-object v10, v11

    move-object v2, v3

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v21, "Validation failed !!"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    sget-object v21, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "doInBackground: Validation failed !!"

    invoke-static/range {v21 .. v22}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->cancelNotification()V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_b
    const/16 v21, 0x0

    move-object v14, v15

    move-object v10, v11

    move-object v2, v3

    goto/16 :goto_4

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v8

    move-object v2, v3

    goto/16 :goto_1

    :catch_5
    move-exception v8

    move-object v10, v11

    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostExecute: apkFilePath == null !"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->cancelNotification()V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0}, Lcom/sec/game/gamecast/common/stub/StubListener;->onDownloadApkFail()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onDownloadApkSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreExecute: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/game/gamecast/common/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080081

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mRecent:J

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 10

    const/4 v9, 0x4

    const/high16 v8, 0x44800000    # 1024.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNow:J

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNow:J

    iget-wide v4, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mRecent:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onProgressUpdate: "

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    aget-object v3, p1, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_PS_MB:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_PS_MB:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aget-object v4, p1, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNotifyManager:Landroid/app/NotificationManager;

    const/16 v3, 0x3ea

    iget-object v4, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mNow:J

    iput-wide v2, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->mRecent:J

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public run()V
    .locals 4

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->url:Ljava/lang/String;

    return-void
.end method
