.class public Lcom/sec/android/app/ve/theme/ThemeDataManager;
.super Ljava/lang/Object;
.source "ThemeDataManager.java"


# static fields
.field private static final _instance:Lcom/sec/android/app/ve/theme/ThemeDataManager;


# instance fields
.field private themeSlotGlobalDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;

    invoke-direct {v0}, Lcom/sec/android/app/ve/theme/ThemeDataManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->_instance:Lcom/sec/android/app/ve/theme/ThemeDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->themeSlotGlobalDuration:I

    return-void
.end method

.method private applyThemeBGMMusic(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p2, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeBGM(Lcom/samsung/app/video/editor/external/Element;)Z

    :cond_0
    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardStartTime(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardEndTime(I)Z

    invoke-virtual {p2, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addBGM(Lcom/samsung/app/video/editor/external/Element;)Z

    return-void
.end method

.method private createBGMElement(Ljava/lang/String;Ljava/lang/String;JLandroid/content/res/AssetManager;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    long-to-int v4, p3

    long-to-int v6, p3

    move-object v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setType(Lcom/samsung/app/video/editor/external/ElementType;)Z

    invoke-virtual {v0, p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setFilePath(Ljava/lang/String;)Z

    long-to-int v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setDuration(I)Z

    new-instance v7, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v1, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-direct {v7, v1, v2, v3, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setAudioDisplayName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setAssetResource(Z)V

    return-object v0
.end method

.method private createBitmapAnimationData(Lorg/json/JSONObject;I)Lcom/samsung/app/video/editor/external/BitmapAnimationData;
    .locals 6

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;-><init>()V

    :try_start_0
    const-string/jumbo v4, "BLENDING_FILES_START_TIME"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "BLENDING_FILES_END_TIME"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setOriginalStartFrameWithinElement(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setOriginalEndFrameWithinElement(I)V

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setStartFrameWithinElement(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setEndFrameWithinElement(I)V

    const-string/jumbo v4, "BLENDING_FILES_START_INDEX"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setStartIndexInTemplate(I)V

    const-string/jumbo v4, "BLENDING_FILES_END_INDEX"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setEndIndexInTemplate(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    invoke-virtual {v5, p2}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "BLENDING_FILES_PNG_FILE_NAME"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setPNGTemplate(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->setAssetResource(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createDefaultCaption(Landroid/content/Context;Lorg/json/JSONObject;ILandroid/content/res/AssetManager;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createDefaultCaption(Landroid/content/Context;Lorg/json/JSONObject;ILandroid/content/res/AssetManager;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Z)Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultCaption(Landroid/content/Context;Lorg/json/JSONObject;ILandroid/content/res/AssetManager;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Z)Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;
    .locals 94

    new-instance v19, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v76

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v66

    const-string/jumbo v6, "CAPTION_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v39, ""

    const-string/jumbo v6, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "string"

    move-object/from16 v0, v76

    move-object/from16 v1, v40

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v83

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v63

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    move-object/from16 v0, v76

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    :cond_1
    :goto_0
    const-string/jumbo v6, "TOP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v89

    const-string/jumbo v6, "LEFT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v61

    const-string/jumbo v6, "BOTTOM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    const-string/jumbo v6, "RIGHT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v77

    const-string/jumbo v6, "FONT_FILE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "themedata"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_2

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_1
    const-string/jumbo v6, "IS_PLATFORM_FONT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v6, "FONT_TEXT_STYLE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    :goto_1
    const/16 v18, 0x1

    :try_start_2
    const-string/jumbo v6, "PAINT_FLAGS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v18

    :goto_2
    :try_start_3
    const-string/jumbo v6, "FONT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v6, "FONT_COLOR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v17, "color"

    move-object/from16 v0, v76

    move-object/from16 v1, v17

    move-object/from16 v2, v66

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v76

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const-string/jumbo v6, "SHADOW_COLOR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v17, "color"

    move-object/from16 v0, v76

    move-object/from16 v1, v17

    move-object/from16 v2, v66

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v76

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const-string/jumbo v6, "SHADOW_X"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v6, "SHADOW_Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v6, "SHADOW_R"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v6, "FONT_ALIGN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    const/16 v23, 0x3

    const-string/jumbo v6, "DEFAULT_TRANSLATEX"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v49, v0

    const-string/jumbo v6, "DEFAULT_TRANSLATEY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v50, v0

    const-string/jumbo v6, "DEFAULT_ALPHA"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v46, v0

    const-string/jumbo v6, "DEFAULT_SCALE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v48, v0

    const-string/jumbo v6, "DEFAULT_ROTATE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v47, v0

    const-string/jumbo v6, "PIVOT_X"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v45, v0

    const-string/jumbo v6, "PIVOT_Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v31, v0

    const/16 v72, 0x0

    :try_start_4
    const-string/jumbo v6, "CAPTION_RAW_FILE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v72

    :goto_3
    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v43

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v43

    :cond_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_4
    if-eqz v72, :cond_9

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v72

    invoke-virtual {v0, v1, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setRawFilePath(Ljava/lang/String;Z)V

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setAssetResource(Z)V

    :cond_5
    :goto_4
    const/4 v6, 0x1

    move/from16 v0, v32

    if-ne v0, v6, :cond_11

    const/16 v23, 0x11

    :cond_6
    :goto_5
    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v15

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v12

    move/from16 v30, v18

    invoke-virtual/range {v19 .. v30}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setFontParams(Ljava/lang/String;ZIIIIIIIII)V

    move-object/from16 v24, v19

    move/from16 v25, v46

    move/from16 v26, v48

    move/from16 v27, v49

    move/from16 v28, v50

    move/from16 v29, v47

    move/from16 v30, v45

    invoke-virtual/range {v24 .. v31}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setDefaultTransformations(FFFFFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setData(Ljava/lang/String;)V

    sub-int v6, v77, v61

    sub-int v17, v37, v89

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartSize(II)V

    move-object/from16 v0, v19

    move/from16 v1, v61

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartPosition(II)V

    if-eqz p6, :cond_12

    const-string/jumbo v6, "STORYBOARD_START_FRAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v75

    const-string/jumbo v6, "STORYBOARD_END_FRAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v74

    move-object/from16 v0, v19

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setRelativeStoryboardStartFrame(I)V

    move-object/from16 v0, v19

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setRelativeStoryboardEndFrame(I)V

    :goto_6
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setThemeDefaultText(Z)V

    const-string/jumbo v6, "CAPTION_EDITABLE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setEditable(Z)V

    const-string/jumbo v6, "ANIM_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v79

    const/16 v58, 0x0

    :goto_7
    move/from16 v0, v58

    move/from16 v1, v79

    if-ge v0, v1, :cond_8

    new-instance v24, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string/jumbo v6, "ANIM_TYPE"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    const/16 v82, 0x0

    const/16 v54, 0x0

    if-eqz p6, :cond_13

    const-string/jumbo v6, "ANIM_START"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v75

    const-string/jumbo v6, "ANIM_END"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_8
    const/16 v59, 0x0

    :try_start_6
    const-string/jumbo v6, "ANIM_INTERPOLATION"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v59

    :goto_9
    :try_start_7
    invoke-static/range {v35 .. v35}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToAnimationTypes(I)Lcom/samsung/app/video/editor/external/AnimationTypes;

    move-result-object v6

    invoke-static/range {v59 .. v59}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToAnimationInterpolations(I)Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    move-result-object v17

    move-object/from16 v0, v24

    move/from16 v1, v82

    move/from16 v2, v54

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAnimationType(IILcom/samsung/app/video/editor/external/AnimationTypes;Lcom/samsung/app/video/editor/external/AnimationInterpolations;)V

    packed-switch v35, :pswitch_data_0

    :goto_a
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    add-int/lit8 v58, v58, 0x1

    goto :goto_7

    :cond_7
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v83

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->translate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_0

    :catch_0
    move-exception v67

    const-string/jumbo v6, "This caption doesn\'t support platform fonts data"

    invoke-static {v6}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object v19

    :catch_2
    move-exception v65

    :try_start_8
    const-string/jumbo v6, "This caption does not support paintFlags"

    invoke-static {v6}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v73

    const-string/jumbo v6, "This Caption does not have precreated raw file"

    invoke-static {v6}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v72, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v55

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v17, "themedata"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v85

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v17, "raw_files"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v71

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    new-instance v69, Ljava/io/File;

    move-object/from16 v0, v69

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v69 .. v69}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    new-instance v86, Ljava/io/File;

    move-object/from16 v0, v86

    move-object/from16 v1, v85

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v86, :cond_a

    invoke-virtual/range {v86 .. v86}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual/range {v86 .. v86}, Ljava/io/File;->mkdir()Z

    :cond_a
    new-instance v44, Ljava/io/File;

    move-object/from16 v0, v44

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v44, :cond_b

    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->mkdir()Z

    :cond_b
    new-instance v68, Ljava/io/File;

    move-object/from16 v0, v68

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v68, :cond_c

    invoke-virtual/range {v68 .. v68}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual/range {v68 .. v68}, Ljava/io/File;->mkdir()Z

    :cond_c
    new-instance v42, Ljava/io/File;

    move-object/from16 v0, v42

    move-object/from16 v1, v70

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v42, :cond_d

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->mkdir()Z

    :cond_d
    new-instance v87, Ljava/io/File;

    invoke-direct/range {v87 .. v88}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v87, :cond_f

    invoke-virtual/range {v87 .. v87}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v16, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    const/16 v56, 0x0

    const/4 v6, 0x1

    move/from16 v0, v32

    if-ne v0, v6, :cond_10

    sget-object v16, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    sub-int v6, v77, v61

    int-to-float v6, v6

    const/high16 v17, 0x40000000    # 2.0f

    div-float v56, v6, v17

    :cond_e
    :goto_b
    sub-int v6, v77, v61

    sub-int v17, v37, v89

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v36

    new-instance v38, Landroid/graphics/Canvas;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v6, p1

    move-object/from16 v17, p4

    invoke-static/range {v6 .. v18}, Lcom/sec/android/app/ve/util/CommonUtils;->createTextPaint(Landroid/content/Context;Ljava/lang/String;ZIIIIIIILandroid/graphics/Paint$Align;Landroid/content/res/AssetManager;I)Landroid/graphics/Paint;

    move-result-object v64

    sub-int v6, v37, v89

    int-to-float v6, v6

    invoke-virtual/range {v64 .. v64}, Landroid/graphics/Paint;->ascent()F

    move-result v17

    invoke-virtual/range {v64 .. v64}, Landroid/graphics/Paint;->descent()F

    move-result v20

    add-float v17, v17, v20

    sub-float v6, v6, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v57, v6, v17

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v56

    move/from16 v3, v57

    move-object/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v88

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->dumpRAWFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v36, 0x0

    :cond_f
    invoke-virtual/range {v87 .. v87}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setRawFilePath(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setAssetResource(Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v6, 0x2

    move/from16 v0, v32

    if-ne v0, v6, :cond_e

    sget-object v16, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    sub-int v6, v77, v61

    int-to-float v0, v6

    move/from16 v56, v0

    goto :goto_b

    :cond_11
    const/4 v6, 0x2

    move/from16 v0, v32

    if-ne v0, v6, :cond_6

    const/16 v23, 0x5

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v6, "STORYBOARD_START_FRAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardStartFrame(I)V

    const-string/jumbo v6, "STORYBOARD_END_FRAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardEndFrame(I)V

    goto/16 :goto_6

    :cond_13
    const-string/jumbo v6, "ANIM_START"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v82

    const-string/jumbo v6, "ANIM_END"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v54

    goto/16 :goto_8

    :catch_4
    move-exception v60

    const-string/jumbo v6, "This theme does not support interpolation for animations, so linear by default"

    invoke-static {v6}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_0
    const-string/jumbo v6, "ALPHA_START"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v80, v0

    const-string/jumbo v6, "ALPHA_END"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v24

    move/from16 v1, v80

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAlphaRange(FF)V

    goto/16 :goto_a

    :pswitch_1
    const-string/jumbo v6, "ROTATION_START"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v81, v0

    const-string/jumbo v6, "ROTATION_END"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v53, v0

    const-string/jumbo v6, "PIVOT_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v29, v0

    const-string/jumbo v6, "PIVOT_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v81

    move/from16 v2, v53

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setRotationRange(FFFF)V

    goto/16 :goto_a

    :pswitch_2
    const-string/jumbo v6, "SCALE_START_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v25, v0

    const-string/jumbo v6, "SCALE_END_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v26, v0

    const-string/jumbo v6, "SCALE_START_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v27, v0

    const-string/jumbo v6, "SCALE_END_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v28, v0

    const-string/jumbo v6, "PIVOT_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v29, v0

    const-string/jumbo v6, "PIVOT_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v24 .. v30}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setScaleRange(FFFFFF)V

    goto/16 :goto_a

    :pswitch_3
    const-string/jumbo v6, "TRANSLATION_FROM_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v90, v0

    const-string/jumbo v6, "TRANSLATION_TO_X"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v92, v0

    const-string/jumbo v6, "TRANSLATION_FROM_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v91, v0

    const-string/jumbo v6, "TRANSLATION_TO_Y"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v93, v0

    move-object/from16 v0, v24

    move/from16 v1, v90

    move/from16 v2, v92

    move/from16 v3, v91

    move/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setTranslateRange(FFFF)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private createThemeDefaultElement(Landroid/content/res/AssetManager;Lorg/json/JSONObject;ILcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
    .locals 27

    new-instance v14, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-direct {v14}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>()V

    const/4 v4, 0x0

    const/16 v18, 0x0

    :try_start_0
    const-string/jumbo v23, "ELEMENT_FILE_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v23, "themedata"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :goto_0
    :try_start_1
    const-string/jumbo v23, "ELEMENT_TYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToElementType(I)Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v16

    const-string/jumbo v23, "ELEMENT_SUB_TYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v23, "ELEMENT_DURATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->themeSlotGlobalDuration:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->themeSlotGlobalDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v6, v0

    :cond_0
    if-nez v18, :cond_1

    const-string/jumbo v18, " "

    sget-object v16, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setFilePath(Ljava/lang/String;)Z

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setType(Lcom/samsung/app/video/editor/external/ElementType;)Z

    invoke-virtual {v14, v15}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setSubType(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStartTime(I)Z

    long-to-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setEndTime(I)Z

    long-to-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setDuration(I)Z

    if-eqz v18, :cond_6

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setAssetResource(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v23, "FADE_TRANS_TYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToEditSubType(I)Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v17

    sget-object v23, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2

    new-instance v9, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v23, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_FADING:Lcom/samsung/app/video/editor/external/EditType;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v14, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    const-string/jumbo v23, "EFFECTS_ARRAY"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v5, :cond_8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v9, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v23, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    const-string/jumbo v24, "EFFECT_TYPE"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToEditSubType(I)Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const-string/jumbo v23, "EFFECT_SUB_TYPE"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string/jumbo v23, "EFFECT_SUB_TYPE"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToEffectSubType(I)Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectSubType(Lcom/samsung/app/video/editor/external/EffectSubType;)Z

    :cond_3
    const-string/jumbo v23, "EFFECT_START_TIME"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->themeSlotGlobalDuration:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->themeSlotGlobalDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "EFFECT_RESOURCE_PATH"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    const-string/jumbo v23, "ALPHA_START"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    const-string/jumbo v24, "ALPHA_END"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setOpacity(FF)Z

    invoke-virtual {v14, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    :cond_4
    move-object/from16 v18, v4

    goto/16 :goto_0

    :catch_0
    move-exception v8

    :try_start_6
    const-string/jumbo v23, "This theme does not support ELEMENT_FILE_PATH"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_6
    return-object v14

    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v8

    :try_start_7
    const-string/jumbo v23, "This theme does not support FADE_TRANS_TYPE"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :cond_7
    :try_start_8
    const-string/jumbo v23, "EFFECT_END_TIME"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    :try_start_9
    const-string/jumbo v23, "This theme does not support EFFECTS_ARRAY"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    :try_start_a
    const-string/jumbo v23, "TRANSITION_TYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToEditSubType(I)Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v20

    sget-object v23, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_9

    new-instance v9, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v23, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const-string/jumbo v23, "TRANSITION_DURATION"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "EFFECT_RESOURCE_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5

    :goto_7
    :try_start_c
    invoke-virtual {v14, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_8
    :try_start_d
    sget-object v23, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_5

    new-instance v9, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v23, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v24

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v25

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v14, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_6

    :catch_4
    move-exception v13

    :try_start_e
    const-string/jumbo v23, "This effect does not support EFFECT_RESOURCE_PATH"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    :catch_5
    move-exception v22

    :try_start_f
    const-string/jumbo v23, "this transition doesnt support EFFECT_RESOURCE_PATH"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_7

    :catch_6
    move-exception v8

    :try_start_10
    const-string/jumbo v23, "This theme does not support TRANSITION_TYPE"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_8
.end method

.method private dumpRAWFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    new-array v0, v6, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v6

    :catch_3
    move-exception v7

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v4, v5

    goto :goto_1
.end method

.method public static getInstance()Lcom/sec/android/app/ve/theme/ThemeDataManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/theme/ThemeDataManager;->_instance:Lcom/sec/android/app/ve/theme/ThemeDataManager;

    return-object v0
.end method

.method private getThemeJSONObject(Landroid/content/res/AssetManager;I)Lorg/json/JSONObject;
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    invoke-virtual {v5, p2}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeJSONFilePath(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ThemeDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " JSONFilePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/CommonUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private translate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createThemeProject(Landroid/content/Context;I)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 36

    new-instance v9, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-direct {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setThemeName(I)V

    if-lez p2, :cond_1

    :try_start_0
    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->getThemeJSONObject(Landroid/content/res/AssetManager;I)Lorg/json/JSONObject;

    move-result-object v35

    if-eqz v35, :cond_1

    sget-object v34, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v4, "THEME_FILTER"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->mapIntToEditSubType(I)Lcom/samsung/app/video/editor/external/EditSubType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v34

    :goto_0
    :try_start_2
    const-string/jumbo v4, "ELEMENT_ARRAY"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    invoke-virtual {v9, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setAssetManager(Landroid/content/res/AssetManager;)Z

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v31, 0x0

    :goto_1
    move/from16 v0, v31

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v4, "ELEMENT_SUB_TYPE"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_0

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p2

    move-object/from16 v3, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createThemeDefaultElement(Landroid/content/res/AssetManager;Lorg/json/JSONObject;ILcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setGroupID(I)Z

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(ILcom/samsung/app/video/editor/external/Element;)Z

    :cond_0
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    :catch_0
    move-exception v25

    const-string/jumbo v4, "This theme does not support THEME_FILTER"

    invoke-static {v4}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    :try_start_3
    const-string/jumbo v4, "CAPTION_LIST"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v23

    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createDefaultCaption(Landroid/content/Context;Lorg/json/JSONObject;ILandroid/content/res/AssetManager;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    const-string/jumbo v4, "STORYBOARD_ELEMENT_INDEX"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v27

    if-eqz v27, :cond_3

    if-eqz v21, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getGroupID()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setElementID(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :catch_2
    move-exception v25

    :try_start_4
    const-string/jumbo v4, "This theme does not support CAPTION_LIST"

    invoke-static {v4}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :try_start_5
    const-string/jumbo v4, "BITMAP_ANIM_ARRAY"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v20

    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createBitmapAnimationData(Lorg/json/JSONObject;I)Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    move-result-object v18

    const-string/jumbo v4, "BLENDING_FILES_ELEMENT_INDEX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v27

    if-eqz v27, :cond_5

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addBitmapAnimations(Lcom/samsung/app/video/editor/external/BitmapAnimationData;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    :catch_3
    move-exception v25

    :try_start_6
    const-string/jumbo v4, "This theme does not support BITMAP_ANIM_ARRAYs"

    invoke-static {v4}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "THEME_BGM"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, "THEME_BGM_DISPLAY_NAME"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, "THEME_BGM_DURATION"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v11, p0

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createBGMElement(Ljava/lang/String;Ljava/lang/String;JLandroid/content/res/AssetManager;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->applyThemeBGMMusic(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_4
    move-exception v25

    :try_start_8
    const-string/jumbo v4, "This theme does not support THEME_BGM"

    invoke-static {v4}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2
.end method
