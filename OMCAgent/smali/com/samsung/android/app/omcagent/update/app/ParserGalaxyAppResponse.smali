.class public Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;
.super Ljava/lang/Object;
.source "ParserGalaxyAppResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse$RESULT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertAppCheckNode(Lorg/w3c/dom/Node;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    .locals 9

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "appId"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_0
    const-string v7, "statusCode"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    :cond_1
    :goto_1
    const-string v7, "appName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setTitle(Ljava/lang/String;)V

    :cond_2
    const-string v7, "description"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setDescription(Ljava/lang/String;)V

    :cond_3
    const-string v7, "versionCode"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Package name is empty"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5
    return-object v0

    :cond_6
    const/16 v7, 0x194

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/16 v7, 0x2711

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    const-string v7, "versionName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionName(Ljava/lang/String;)V

    :cond_9
    const-string v7, "iconImgURL"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setIconUrl(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getAppInfoAppDownloadResponse(Lorg/w3c/dom/Node;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    .locals 11

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "appId"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_0
    const-string v9, "statusCode"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x32

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    :cond_1
    :goto_1
    const-string v9, "versionCode"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Package name is empty"

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    const/16 v9, 0x194

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/16 v9, 0x4e21

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    const-string v9, "versionName"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionName(Ljava/lang/String;)V

    :cond_7
    const-string v9, "signature"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setSignature(Ljava/lang/String;)V

    :cond_8
    const-string v9, "contentSize"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setContentSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_3
    const-string v9, "downloadURI"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setContentUrl(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v9, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v9, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public readAppCheck(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v11, "body is empty"

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "appInfo"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found appInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_1

    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v11, "No child nodes..."

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;->convertAppCheckNode(Lorg/w3c/dom/Node;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v10, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v10, p1, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateOmcAppCheckResponse(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_2
    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v10, v5}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public readAppDownload(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "appInfo"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found appInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_0

    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v11, "No child nodes..."

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;->getAppInfoAppDownloadResponse(Lorg/w3c/dom/Node;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v10, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v10, p1, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateOmcAppDownloadResponse(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_2
    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v10, v5}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2
.end method
