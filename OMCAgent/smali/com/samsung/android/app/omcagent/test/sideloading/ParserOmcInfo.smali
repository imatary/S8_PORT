.class public Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;
.super Ljava/lang/Object;
.source "ParserOmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo$OMC_INFO;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertXmlNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;
    .locals 7

    new-instance v3, Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setModel(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mcc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setMcc(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "mnc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setMnc(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "spn"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "gid"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Model is not matched"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5
    return-object v3
.end method

.method public read(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;
    .locals 26

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "body is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v12, Lorg/xml/sax/InputSource;

    invoke-direct {v12}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v23, Ljava/io/StringReader;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v3, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    const-string v23, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    :cond_1
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "version is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v21

    const-string v23, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    :cond_3
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "model is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    const-string v23, "charging"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    :cond_5
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "charging info is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_1
    const-string v23, "networkBearer"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    :cond_6
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "network info is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_2
    const-string v23, "optionalApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    :cond_7
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "optional app info is empty"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_3
    const-string v23, "carrier"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Found carrir count: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_a

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v23

    if-nez v23, :cond_10

    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v24, "No child nodes..."

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/omcagent/db/OmcPref$CHARGE_TYPE;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setChargeType(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v9

    :goto_5
    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_1
    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setChargeType(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catch_1
    move-exception v9

    goto :goto_5

    :cond_c
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/omcagent/db/OmcPref$NETWORK_TYPE;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setNetworkType(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v9

    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    :try_start_2
    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setNetworkType(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    sget-object v23, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "optional app :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/omcagent/db/OmcPref$OPTIONAL_APP;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setOptionalApp(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_f
    sget-object v23, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setOptionalApp(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1, v13}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;->convertXmlNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    if-eqz v17, :cond_8

    goto/16 :goto_0
.end method
