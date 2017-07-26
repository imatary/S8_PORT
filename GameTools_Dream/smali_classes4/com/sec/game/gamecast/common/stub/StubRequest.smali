.class public Lcom/sec/game/gamecast/common/stub/StubRequest;
.super Landroid/os/AsyncTask;
.source "StubRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/sec/game/gamecast/common/stub/StubData;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isChina:Z

.field private listener:Lcom/sec/game/gamecast/common/stub/StubListener;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/sec/game/gamecast/common/stub/StubData;
    .locals 25

    new-instance v17, Lcom/sec/game/gamecast/common/stub/StubData;

    invoke-direct/range {v17 .. v17}, Lcom/sec/game/gamecast/common/stub/StubData;-><init>()V

    const/4 v13, 0x0

    const/16 v21, 0x0

    :try_start_0
    aget-object v15, p1, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/game/gamecast/common/stub/StubRequest;->isChina:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getChinaURL()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "vas.samsungapps.com"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string/jumbo v21, "https"

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v21, v0

    new-instance v22, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual/range {v21 .. v22}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, ": "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-exception v6

    :goto_1
    invoke-static {v6}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    if-eqz v13, :cond_2

    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    const/16 v17, 0x0

    :cond_3
    return-object v17

    :cond_4
    :try_start_2
    const-string/jumbo v21, "\n"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_6

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto :goto_4

    :cond_7
    const-string/jumbo v21, "\n"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    const/16 v21, 0xc8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "status code "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

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

    :cond_8
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    if-eqz v14, :cond_9

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :catch_1
    move-exception v6

    move-object v13, v14

    goto/16 :goto_1

    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    const/4 v13, 0x0

    :try_start_4
    const-string/jumbo v21, "\n"

    invoke-static/range {v21 .. v21}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    new-instance v21, Ljava/io/StringReader;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_6
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_3

    packed-switch v5, :pswitch_data_0

    :cond_b
    :goto_7
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_6

    :pswitch_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "appId"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setAppId(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string/jumbo v21, "resultCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setResultCode(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string/jumbo v21, "resultMsg"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setResultMsg(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string/jumbo v21, "versionCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setVersionCode(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const-string/jumbo v21, "versionName"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setVersionName(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v21, "contentSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setContentSize(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    const-string/jumbo v21, "downloadURI"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    const-string/jumbo v21, "deltaDownloadURI"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setDeltaDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const-string/jumbo v21, "deltaContentSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setDeltaContentSize(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    const-string/jumbo v21, "signature"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v21, "gSignatureDownloadURL"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setgSignatureDownloadURL(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    const-string/jumbo v21, "productId"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setProductId(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v21, "productName"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/stub/StubData;->setProductName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/game/gamecast/common/stub/StubRequest;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->doInBackground([Ljava/lang/String;)Lcom/sec/game/gamecast/common/stub/StubData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    iget v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isError(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onUpdateCheckFail(Lcom/sec/game/gamecast/common/stub/StubData;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isNoMatchingApplication(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onNoMatchingApplication(Lcom/sec/game/gamecast/common/stub/StubData;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isUpdateNotNecessary(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onUpdateNotNecessary(Lcom/sec/game/gamecast/common/stub/StubData;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isUpdateAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onUpdateAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isDownloadNotAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onGetDownloadUrlFail(Lcom/sec/game/gamecast/common/stub/StubData;)V

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isDownloadAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/sec/game/gamecast/common/stub/StubListener;->onGetDownloadUrlSuccess(Lcom/sec/game/gamecast/common/stub/StubData;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/game/gamecast/common/stub/StubData;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->onPostExecute(Lcom/sec/game/gamecast/common/stub/StubData;)V

    return-void
.end method

.method public run()V
    .locals 4

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setIsChina(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->isChina:Z

    return-void
.end method

.method public setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->listener:Lcom/sec/game/gamecast/common/stub/StubListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/StubRequest;->url:Ljava/lang/String;

    return-void
.end method
