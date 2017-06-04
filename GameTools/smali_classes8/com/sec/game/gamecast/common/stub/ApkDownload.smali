.class public Lcom/sec/game/gamecast/common/stub/ApkDownload;
.super Landroid/os/AsyncTask;
.source "ApkDownload.java"


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


# instance fields
.field private listener:Lcom/sec/game/gamecast/common/stub/StubListener;

.field private signature:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownload;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    :try_start_0
    aget-object v16, p1, v20

    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ": "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :goto_1
    invoke-static {v7}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    if-eqz v13, :cond_2

    :try_start_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_3
    const/16 v20, 0x0

    :goto_4
    return-object v20

    :cond_3
    :try_start_3
    const-string/jumbo v20, "\n"

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_5

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string/jumbo v20, "\n"

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    const/16 v20, 0xc8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "status code "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " != "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xc8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_7
    sget-object v20, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_FILE_PREFIX:Ljava/lang/String;

    sget-object v21, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_FILE_SUFFIX:Ljava/lang/String;

    sget-object v22, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_CACHE_PATH:Ljava/io/File;

    invoke-static/range {v20 .. v22}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_8

    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v17, 0x0

    const/16 v20, 0x400

    :try_start_5
    move/from16 v0, v20

    new-array v3, v0, [B

    :goto_7
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_9

    add-int v17, v17, v5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    mul-int/lit8 v22, v17, 0x64

    div-int v22, v22, v12

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/ApkDownload;->publishProgress([Ljava/lang/Object;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    :catch_1
    move-exception v7

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->signature:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->validateApkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v20, "Validation failed !!"

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_b
    const/16 v20, 0x0

    move-object v13, v14

    move-object v9, v10

    goto/16 :goto_4

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v7

    move-object v9, v10

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0}, Lcom/sec/game/gamecast/common/stub/StubListener;->onDownloadApkFail()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onDownloadApkSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/game/gamecast/common/stub/ApkDownload;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/ApkDownload;->url:Ljava/lang/String;

    return-void
.end method
