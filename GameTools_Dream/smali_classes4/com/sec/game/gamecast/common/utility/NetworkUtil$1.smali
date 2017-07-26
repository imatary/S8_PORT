.class final Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;
.super Landroid/os/AsyncTask;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/NetworkUtil;->requestCafeId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$callback:Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;

    iput-object p3, p0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$context:Landroid/content/Context;

    const-string/jumbo v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$callback:Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;

    const/16 v16, -0x1

    invoke-interface/range {v15 .. v16}, Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;->onResponseFailed(I)V

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "https://service-hero.game-mode.net/icaros/gametools/navercafe?pkg_name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v15, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "requestCafeId called with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$pkgName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v15, 0xbb8

    invoke-virtual {v3, v15}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const-string/jumbo v15, "UI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$uuid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "TZ"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "DM"

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getModelName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "OV"

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "AV"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getNowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "AN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "DL"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "MC"

    invoke-virtual {v3, v15, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "MN"

    invoke-virtual {v3, v15, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "Cache-Control"

    const-string/jumbo v16, "no-cache"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "Accept"

    const-string/jumbo v16, "application/json"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v12

    const/16 v15, 0xc8

    if-ne v12, v15, :cond_3

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v15, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$callback:Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;

    invoke-interface {v15, v5}, Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;->onResponseSucceed(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil$1;->val$callback:Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;

    invoke-interface {v15, v12}, Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;->onResponseFailed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
