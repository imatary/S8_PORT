.class public Lcom/samsung/android/app/omcagent/update/app/PostPositioning$ParserDefaultWorkspace;
.super Ljava/lang/Object;
.source "PostPositioning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/PostPositioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserDefaultWorkspace"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParserDefaultWorkspace"

.field static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field static final TAG_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field static final TAG_ATTR_SCREEN:Ljava/lang/String; = "screen"

.field static final TAG_ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field static final TAG_ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field static final TAG_ATTR_X:Ljava/lang/String; = "x"

.field static final TAG_ATTR_Y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultWorkspacePath()Ljava/io/File;
    .locals 8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_workspace.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_workspace.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static parseDefaultWorkspace(Ljava/util/HashMap;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;",
            ">;)V"
        }
    .end annotation

    const/16 v16, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/omcagent/update/app/PostPositioning$ParserDefaultWorkspace;->getDefaultWorkspacePath()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_b

    const/4 v15, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/16 v20, 0x0

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v13, :cond_a

    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v23, "appwidget"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v21

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_3

    const-string v23, "packageName"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object v3, v11

    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    const-string v23, "className"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object v4, v11

    goto :goto_2

    :cond_4
    if-eqz v10, :cond_5

    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object v5, v11

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object v6, v11

    goto :goto_2

    :cond_6
    if-eqz v10, :cond_7

    const-string v23, "screen"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object v9, v11

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_8

    const-string v23, "spanX"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object v7, v11

    goto :goto_2

    :cond_8
    if-eqz v10, :cond_2

    const-string v23, "spanY"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object v8, v11

    goto :goto_2

    :cond_9
    new-instance v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v17

    :cond_b
    if-eqz v16, :cond_c

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    :goto_3
    return-void

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v14

    :goto_4
    :try_start_3
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v16, :cond_c

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v14

    :goto_5
    :try_start_5
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v16, :cond_c

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v23

    :goto_6
    if-eqz v16, :cond_d

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_d
    :goto_7
    throw v23

    :catch_5
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v23

    move-object/from16 v16, v17

    goto :goto_6

    :catch_6
    move-exception v14

    move-object/from16 v16, v17

    goto :goto_5

    :catch_7
    move-exception v14

    move-object/from16 v16, v17

    goto :goto_4
.end method
