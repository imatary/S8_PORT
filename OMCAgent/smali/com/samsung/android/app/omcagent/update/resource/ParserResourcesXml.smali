.class public Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;
.super Ljava/lang/Object;
.source "ParserResourcesXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml$RES_XML;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertXmlNode(Lorg/w3c/dom/Node;II)Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xa

    new-instance v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;-><init>()V

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setNetworkCharge(I)V

    invoke-virtual {v3, p3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setNetworkPrefe(I)V

    invoke-virtual {v3, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    invoke-virtual {v3, v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setMode(I)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v9, :cond_3

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    const-string v6, "id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResourceId(Ljava/lang/String;)V

    :cond_0
    const-string v6, "size"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setContentSize(J)V

    :cond_1
    const-string v6, "mode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "security"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setMode(I)V

    :cond_2
    :goto_1
    const-string v6, "downloadType"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "samsungapps"

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setType(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v6, "mandatory"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setMode(I)V

    goto :goto_1

    :cond_5
    const-string v6, "resource"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setMode(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setMode(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Resource ID is empty"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    move-object v3, v5

    :cond_8
    :goto_2
    return-object v3

    :cond_9
    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getType()I

    move-result v6

    if-eq v8, v6, :cond_8

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not implemented type ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_2
.end method

.method public read(Landroid/content/Context;)Z
    .locals 21

    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "resources.xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Can not find file:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TARGET_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "resources.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    :goto_1
    if-nez v9, :cond_1

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "InputStream is null"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    const-string v18, "charging"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_2

    const-string v18, "free"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "Common network charge: FREE"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v3, 0x2

    :cond_2
    const-string v18, "networkBearer"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v11, 0x1

    if-eqz v12, :cond_3

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_3

    const-string v18, "wifi"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "Common network limit: WIFI ONLY"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v11, 0x2

    :cond_3
    const-string v18, "resourceInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found resInfo count: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    invoke-interface {v15, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-nez v18, :cond_5

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "No child nodes..."

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/16 v18, 0x1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v11}, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;->convertXmlNode(Lorg/w3c/dom/Node;II)Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    move-result-object v13

    if-eqz v13, :cond_6

    sget-object v18, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->create(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_2
    move-exception v18

    move-object/from16 v6, v18

    :goto_3
    :try_start_4
    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v6

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v6

    :try_start_6
    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v6

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v18

    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_5
    throw v18

    :catch_6
    move-exception v6

    sget-object v19, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception v18

    move-object/from16 v6, v18

    goto :goto_3
.end method

.method public read(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v16, "body is empty"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v15, Ljava/io/StringReader;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v1, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    const-string v15, "charging"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v2, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_1

    const-string v15, "free"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v16, "Common network charge: FREE"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v2, 0x2

    :cond_1
    const-string v15, "networkBearer"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v9, 0x1

    if-eqz v10, :cond_2

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_2

    const-string v15, "wifi"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v16, "Common network limit: WIFI ONLY"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v9, 0x2

    :cond_2
    const-string v15, "resourceInfo"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found resInfo count: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v7, v15, :cond_3

    invoke-interface {v13, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v15

    if-nez v15, :cond_4

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v16, "No child nodes..."

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_3
    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v9}, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;->convertXmlNode(Lorg/w3c/dom/Node;II)Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    sget-object v15, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v11}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->create(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_2
    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v15, v5}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    sget-object v15, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v15, v5}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public readResourceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "body is empty"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v18, Ljava/io/StringReader;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    const-string v18, "charging"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_2

    const-string v18, "free"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "Common network charge: FREE"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v3, 0x2

    :cond_2
    const-string v18, "networkBearer"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v10, 0x1

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_3

    const-string v18, "wifi"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "Common network limit: WIFI ONLY"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v10, 0x2

    :cond_3
    const-string v18, "resourceInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found resInfo count: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    invoke-interface {v15, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-nez v18, :cond_4

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v19, "No child nodes..."

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :goto_2
    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v10}, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;->convertXmlNode(Lorg/w3c/dom/Node;II)Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    move-result-object v12

    if-eqz v12, :cond_7

    const-string v17, ""

    const/16 v18, 0x4

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    sget-object v18, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getResourceVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    :cond_5
    :goto_4
    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resource version : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0xc8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    :cond_6
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    const/16 v18, 0x3

    invoke-virtual {v12}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    sget-object v18, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getCIQVersion(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    goto :goto_4

    :catch_1
    move-exception v6

    sget-object v18, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v6

    goto/16 :goto_2
.end method
