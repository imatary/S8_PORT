.class public Lcom/samsung/app/highlightplayer/VideoHighlightHelper;
.super Ljava/lang/Object;
.source "VideoHighlightHelper.java"


# static fields
.field private static final BGM_FILE_PATHS:[Ljava/lang/String;

.field private static final CARTOON_BGM_FILE_PATHS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INTRO_VIDEO_PATHS:[Ljava/lang/String;

.field private static final SERENE_BGM_FILE_PATHS:[Ljava/lang/String;

.field private static final TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;


# instance fields
.field private accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

.field private facesMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventId:I

.field private mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

.field private mStampClipartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "content://com.samsung.app.highlightvideo.eventsummary/EventSummaryINFOTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bgm/Clap.ogg"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bgm/Mild Nova.ogg"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bgm/Run.ogg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bgm/Table.ogg"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "bgm/Whistle Your Cares.ogg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->BGM_FILE_PATHS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bgm/[DREAM]Theme_01_Run.ogg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bgm/[DREAM]Theme_09_Mild Nova.ogg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->SERENE_BGM_FILE_PATHS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bgm/[DREAM]Theme_08_Loving.ogg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CARTOON_BGM_FILE_PATHS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "themedata/intro/intro_1.mp4"

    aput-object v1, v0, v3

    const-string/jumbo v1, "themedata/intro/intro_2.mp4"

    aput-object v1, v0, v4

    const-string/jumbo v1, "themedata/intro/intro_3.mp4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->INTRO_VIDEO_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->facesMediaMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    new-instance v0, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    invoke-direct {v0}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    return-void
.end method

.method private createTranscodeElement(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->facesMediaMap:Ljava/util/Map;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v5, v0, v9, v1, v6}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;->getMediafromEvent(Landroid/content/Context;Landroid/net/Uri;ILjava/util/Map;)Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v15, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-direct {v15}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>()V

    new-instance v11, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v5, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v11, v5, v6, v7, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v12}, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->getNoOfMedias()I

    move-result v5

    if-ge v13, v5, :cond_4

    new-instance v5, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;

    invoke-direct {v5}, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->getMediaId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->getMediaDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    if-lez v10, :cond_2

    sget-object v3, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    :cond_1
    :goto_2
    new-instance v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v12, v13}, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->getStartTime(I)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v12, v13}, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->getEndTime(I)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    new-instance v5, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-direct {v5, v11}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/EditWrapper;)V

    invoke-virtual {v2, v5}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(ILcom/samsung/app/video/editor/external/Element;)Z

    goto :goto_1

    :cond_2
    if-nez v10, :cond_1

    sget-object v3, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "There are no medias in this event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/app/highlightplayer/VEAppSpecific;->appDataMgr:Lcom/samsung/app/highlightplayer/AppDataManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v5, v6}, Lcom/samsung/app/highlightplayer/AppDataManager;->setCurrentTranscodeElement(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v5

    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "There are no medias in this event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private fetchBurstShotMedia(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v4, 0xc

    if-ge v3, v4, :cond_2

    if-le v3, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    move-object p1, v2

    goto :goto_0
.end method

.method private getThemeObject(I)Lcom/sec/android/app/ve/theme/Theme;
    .locals 1

    new-instance v0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;

    invoke-direct {v0, p1}, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;-><init>(I)V

    return-object v0
.end method

.method private initStamp(ZLandroid/content/Context;II)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lcom/samsung/app/highlightplayer/R$layout;->stamp:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v5, Lcom/samsung/app/highlightplayer/R$id;->day_text_view:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateStamp4Date(Landroid/content/Context;Landroid/widget/TextView;)V

    sget v5, Lcom/samsung/app/highlightplayer/R$id;->stamp_event_title:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v5, 0x3e

    if-ne p4, v5, :cond_3

    const-string/jumbo v5, "sans-serif-condensed"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/app/highlightplayer/util/Utils;->getEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isGraceProject()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    invoke-direct {p0, v3, p1}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->saveStampClipartParams(Landroid/widget/LinearLayout;Z)V

    :goto_2
    return-void

    :cond_3
    const/16 v5, 0x3f

    if-ne p4, v5, :cond_4

    const-string/jumbo v5, "sans-serif-light"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x40

    if-ne p4, v5, :cond_0

    const-string/jumbo v5, "Choco-cooky"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, v7}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->saveStampClipartParams(Landroid/widget/LinearLayout;Z)V

    goto :goto_2
.end method

.method private isClapTheme(I)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRunTheme(I)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordThisEventThemeBGMVal(Landroid/content/Context;III)V
    .locals 5

    const-string/jumbo v1, "event_theme_bgm_file"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveStampClipartParams(Landroid/widget/LinearLayout;Z)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    if-eqz p2, :cond_4

    new-instance v2, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-direct {v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>()V

    new-instance v1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>()V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/16 v3, 0xbb8

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardStartTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardEndTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardStartFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v3

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardEndFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v5, v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartSize(II)V

    rsub-int v9, v5, 0x500

    div-int/lit8 v7, v9, 0x2

    rsub-int v9, v4, 0x2d0

    div-int/lit8 v8, v9, 0x2

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v7, v8}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartPosition(II)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "Intro"

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setData(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v10, v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    :cond_0
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v9}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateTextSizes(Landroid/widget/LinearLayout;Z)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "stamp_intro"

    invoke-virtual {p0, p1, v9, v10}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->createStampRawBuffer(Landroid/view/View;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateFadeAnimationsToCaptions(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v9

    add-int/lit16 v6, v9, -0xbb8

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v3

    :cond_1
    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardStartTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardEndTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardStartFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v3

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardEndFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v5, v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartSize(II)V

    rsub-int v9, v5, 0x500

    div-int/lit8 v7, v9, 0x2

    rsub-int v9, v4, 0x2d0

    div-int/lit8 v8, v9, 0x2

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v7, v8}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartPosition(II)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "Stamp_Video Highlight"

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setData(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v10, v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateTextSizes(Landroid/widget/LinearLayout;Z)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "stamp_end"

    invoke-virtual {p0, p1, v9, v10}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->createStampRawBuffer(Landroid/view/View;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateFadeAnimationsToCaptions(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>()V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v9

    add-int/lit16 v6, v9, -0xbb8

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v3

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardStartTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardEndTime(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardStartFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    int-to-double v10, v3

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardEndFrame(I)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v5, v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartSize(II)V

    rsub-int v9, v5, 0x500

    div-int/lit8 v7, v9, 0x2

    rsub-int v9, v4, 0x2d0

    div-int/lit8 v8, v9, 0x2

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v9, v7, v8}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartPosition(II)V

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "Stamp_Video Highlight"

    invoke-virtual {v9, v10}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setData(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v10, v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    iget-object v9, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mStampClipartList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    const-string/jumbo v10, "stamp"

    invoke-virtual {p0, p1, v9, v10}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->createStampRawBuffer(Landroid/view/View;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->updateFadeAnimationsToCaptions(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V

    goto/16 :goto_0
.end method

.method private updateStamp4Date(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;->getEventCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applySuitableTheme(ZLandroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Event is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_7

    move v4, v5

    :goto_0
    if-eqz p1, :cond_8

    :goto_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    iget v1, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    invoke-virtual {v0, p2, v1}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;->getNextBGMIndexFromSets(Landroid/content/Context;I)I

    move-result v4

    :cond_2
    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isGraceProject()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    iget v1, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    invoke-virtual {v0, p2, v1}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;->getNextIntroIndexFromSets(Landroid/content/Context;I)I

    move-result v5

    :cond_3
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->accessor:Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;

    const/16 v1, 0x7530

    iget v2, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/samsung/app/highlightplayer/externalinteractor/HighlightAccessor;->getNextThemeIdFromSets(Landroid/content/Context;II)I

    move-result v3

    invoke-static {p2}, Lcom/samsung/app/highlightplayer/util/Utils;->isEditableProject(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x3f

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->isRunTheme(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    :cond_5
    invoke-direct {p0, v3}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->isClapTheme(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    :cond_6
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->applyTheme(ZLandroid/content/Context;III)V

    return-void

    :cond_7
    move v4, v0

    goto :goto_0

    :cond_8
    move v5, v0

    goto :goto_1
.end method

.method public declared-synchronized applyTheme(ZLandroid/content/Context;III)V
    .locals 81
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "Context is null"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Event is not initialized."

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    :cond_2
    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->isThemeAdded(I)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->getThemeObject(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v77

    if-nez v77, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid theme "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->addTheme(Lcom/sec/android/app/ve/theme/Theme;)V

    :cond_4
    const-string/jumbo v4, "HighLightVideoAnalyser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "themeID before creating theme project = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->getInstance()Lcom/sec/android/app/ve/theme/ThemeDataManager;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/ve/theme/ThemeDataManager;->createThemeProject(Landroid/content/Context;I)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/app/highlightplayer/VEAppSpecific;->appDataMgr:Lcom/samsung/app/highlightplayer/AppDataManager;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/AppDataManager;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    add-int/lit8 v8, v31, -0x1

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getFilesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "caption_background.jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v4, v8, :cond_5

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    add-int/lit8 v8, v31, -0x1

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v69

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v79

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    if-gtz v69, :cond_7

    const-string/jumbo v4, "HighlightPlayer"

    const-string/jumbo v8, "Media count is zero"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v68

    :goto_0
    move/from16 v0, v79

    move/from16 v1, v69

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    add-int/lit8 v69, v69, -0x1

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(I)V

    goto :goto_0

    :cond_8
    move/from16 v0, v79

    move/from16 v1, v69

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v64

    const/16 v48, 0x0

    move/from16 v49, v48

    move/from16 v80, v79

    :goto_1
    add-int/lit8 v79, v80, 0x1

    move/from16 v0, v80

    move/from16 v1, v69

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    new-instance v13, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    add-int/lit8 v48, v49, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-direct {v13, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    invoke-virtual {v8, v13}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z

    move/from16 v49, v48

    move/from16 v80, v79

    goto :goto_1

    :cond_9
    move/from16 v0, v79

    move/from16 v1, v69

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v64

    move/from16 v80, v79

    :goto_2
    add-int/lit8 v79, v80, -0x1

    move/from16 v0, v80

    move/from16 v1, v69

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v80, v79

    goto :goto_2

    :cond_a
    const-wide/16 v32, 0x0

    const/16 v67, 0x0

    const/16 v63, 0x0

    const/16 v48, 0x0

    :goto_3
    move/from16 v0, v48

    move/from16 v1, v69

    if-ge v0, v1, :cond_f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v63

    invoke-virtual/range {v67 .. v67}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setFilePath(Ljava/lang/String;)Z

    invoke-virtual/range {v67 .. v67}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setType(Lcom/samsung/app/video/editor/external/ElementType;)Z

    invoke-virtual/range {v67 .. v67}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v4

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setEndTime(I)Z

    invoke-virtual/range {v67 .. v67}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStartTime(I)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v32, v32, v16

    const/4 v4, 0x1

    move/from16 v0, v48

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->isRunTheme(I)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getFilesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "caption_background.jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setFilePath(Ljava/lang/String;)Z

    sget-object v4, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setType(Lcom/samsung/app/video/editor/external/ElementType;)Z

    :cond_b
    move/from16 v0, p3

    move/from16 v1, v48

    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/util/Utils;->isBurstShotApplicable(II)I

    move-result v65

    const/4 v4, -0x1

    move/from16 v0, v65

    if-eq v0, v4, :cond_1b

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v4, v8, :cond_1b

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/samsung/app/highlightplayer/util/Utils;->isBurstShotImage(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v30

    if-eqz v30, :cond_1b

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b

    const-string/jumbo v4, "HighLightVideoAnalyser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "burstShotMediaList size is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->fetchBurstShotMedia(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-object/from16 v28, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v73

    const/16 v60, 0x0

    :goto_4
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v60

    if-ge v0, v4, :cond_1a

    new-instance v4, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-object/from16 v0, v63

    invoke-direct {v4, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    aput-object v4, v28, v60

    aget-object v8, v28, v60

    move-object/from16 v0, v30

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setFilePath(Ljava/lang/String;)Z

    aget-object v4, v28, v60

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v13

    div-int v13, v13, v73

    mul-int v13, v13, v60

    add-int/2addr v8, v13

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStartTime(I)Z

    aget-object v4, v28, v60

    aget-object v8, v28, v60

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v13

    div-int v13, v13, v73

    add-int/2addr v8, v13

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setEndTime(I)Z

    aget-object v4, v28, v60

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    div-int v8, v8, v73

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setDuration(I)Z

    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v4, v8, v13}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    if-nez v60, :cond_e

    aget-object v4, v28, v60

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v60

    if-ge v0, v4, :cond_19

    aget-object v4, v28, v60

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    :goto_6
    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v4, v8, v13}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    if-eqz v4, :cond_c

    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v4, v8, v13}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    :cond_c
    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v4, v8, v13}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    if-eqz v4, :cond_d

    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v4, v8, v13}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    :cond_d
    add-int/lit8 v60, v60, 0x1

    goto/16 :goto_4

    :cond_e
    aget-object v4, v28, v60

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v36

    :try_start_4
    invoke-virtual/range {v36 .. v36}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_f
    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isGraceProject()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "HLV-DEE"

    const-string/jumbo v8, "isGraceProject "

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v63, :cond_10

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeVideoBasedParticleEffects()V

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PARTICLE_RESOURCE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    sget-object v4, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->INTRO_VIDEO_PATHS:[Ljava/lang/String;

    aget-object v4, v4, p5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " Intro file path applied in player is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v13, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->INTRO_VIDEO_PATHS:[Ljava/lang/String;

    aget-object v13, v13, p5

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setOpacity(FF)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v8, v69, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v63, :cond_11

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    add-int/lit16 v4, v4, -0x5dc

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    const/16 v4, 0x5dc

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeVideoBasedParticleEffects()V

    new-instance v47, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-direct/range {v47 .. v47}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>()V

    new-instance v47, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_GRADUAL_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeTransitionEdit()V

    :cond_11
    new-instance v12, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    sget-object v13, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getFilesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "caption_background.jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0xdac

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->NONE:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    new-instance v4, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/EditWrapper;)V

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardStartTime(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    invoke-virtual {v12}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardEndTime(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    const/4 v8, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v12, v8, v13, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ZIZ)V

    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    new-instance v78, Lcom/samsung/app/highlightplayer/ThemeDataHelper;

    invoke-direct/range {v78 .. v78}, Lcom/samsung/app/highlightplayer/ThemeDataHelper;-><init>()V

    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeJSONFilePath(I)Ljava/lang/String;

    move-result-object v70

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4, v12}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    const/16 v4, 0x3e

    move/from16 v0, p3

    if-ne v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-object/from16 v0, v78

    move-object/from16 v1, v70

    invoke-virtual {v0, v4, v1}, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->updateTravelTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V

    :cond_13
    :goto_8
    const/4 v4, -0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_18

    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isDreamProject()Z

    move-result v4

    if-eqz v4, :cond_49

    const/16 v4, 0x3e

    move/from16 v0, p3

    if-ne v0, v4, :cond_43

    sget-object v4, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, p4

    if-lt v0, v4, :cond_14

    const/16 p4, 0x0

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v26

    :goto_9
    const/16 v22, 0x0

    const/16 v61, 0x0

    const/4 v4, 0x4

    move/from16 v0, p4

    if-le v0, v4, :cond_4a

    const/16 p4, 0x4

    :cond_15
    :goto_a
    :try_start_5
    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v22

    new-instance v14, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v14}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v16

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v18

    invoke-virtual/range {v14 .. v19}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/16 v4, 0x9

    invoke-virtual {v14, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    new-instance v15, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    sget-object v16, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    const/16 v18, 0x0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v17, v26

    invoke-direct/range {v15 .. v21}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setAssetResource(Z)V

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_AUDIO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->AUDIO_TRANSITION_FADE_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const/16 v4, 0xbb8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const/16 v4, 0x64

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4, v15}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addBGM(Lcom/samsung/app/video/editor/external/Element;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_16
    if-eqz v14, :cond_17

    :try_start_7
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_17
    if-eqz v22, :cond_18

    :try_start_8
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_18
    :goto_b
    :try_start_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->initStamp(ZLandroid/content/Context;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->recordThisEventThemeBGMVal(Landroid/content/Context;III)V

    const/16 v62, 0x0

    :goto_c
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v62

    if-ge v0, v4, :cond_6

    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v74

    move-object/from16 v0, v27

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    check-cast v4, [Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    array-length v0, v4

    move/from16 v57, v0

    add-int/lit8 v4, v57, -0x1

    mul-int v4, v4, v62

    add-int v74, v74, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move/from16 v0, v74

    invoke-virtual {v4, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(I)V

    move/from16 v25, v74

    :goto_d
    add-int v4, v74, v57

    move/from16 v0, v25

    if-ge v0, v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-object/from16 v0, v27

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    check-cast v4, [Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    aget-object v4, v4, v46

    move/from16 v0, v25

    invoke-virtual {v8, v0, v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(ILcom/samsung/app/video/editor/external/Element;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    :cond_19
    :try_start_a
    aget-object v4, v28, v60

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionTime()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    aget-object v4, v28, v60

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    move-object/from16 v0, v63

    invoke-virtual {v0, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    goto/16 :goto_6

    :cond_1a
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    const-string/jumbo v4, "HLV_DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filepath = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newEle.getStartTime() i = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newEle.setEndTime() = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setType = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v4, v8, :cond_30

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v38

    new-instance v5, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v4, v8, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v75, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v75

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v40, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v71, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v71

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v56, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v59, Ljava/util/Vector;

    invoke-direct/range {v59 .. v59}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->facesMediaMap:Ljava/util/Map;

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/List;

    const/16 v50, 0x0

    :goto_e
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v50

    if-ge v0, v4, :cond_2a

    move-object/from16 v0, v38

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v4, v8, :cond_25

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_HORIZONTAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_1c

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVIDE_SLIDE_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne v4, v8, :cond_21

    :cond_1c
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v4

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v8

    move-object/from16 v0, v63

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->getZoomArrayForMultipleDivisionKenburns(Lcom/samsung/app/video/editor/external/EditSubType;)[F

    move-result-object v4

    array-length v9, v4

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->getZoomArrayForMultipleDivisionKenburns(Lcom/samsung/app/video/editor/external/EditSubType;)[F

    move-result-object v10

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->getDivisionDirectionForMultipleDivisionKenburns(Lcom/samsung/app/video/editor/external/EditSubType;)I

    move-result v11

    if-nez v11, :cond_1f

    new-instance v56, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    div-int/2addr v13, v9

    add-int/lit8 v13, v13, 0x1

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_1d
    :goto_f
    new-instance v71, Landroid/graphics/RectF;

    move-object/from16 v0, v71

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    array-length v4, v10

    new-array v6, v4, [Landroid/graphics/RectF;

    array-length v4, v10

    new-array v7, v4, [Landroid/graphics/RectF;

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/samsung/app/highlightplayer/util/Utils;->addMultiLayerPanEffect(Ljava/lang/String;Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;Landroid/graphics/RectF;I[FI)V

    const/16 v55, 0x0

    :goto_10
    move/from16 v0, v55

    if-ge v0, v9, :cond_25

    if-nez v11, :cond_20

    sget v4, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    mul-int v4, v4, v55

    div-int/2addr v4, v9

    int-to-float v4, v4

    move-object/from16 v0, v71

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_1e
    :goto_11
    new-instance v52, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    aget-object v4, v6, v55

    aget-object v8, v7, v55

    move-object/from16 v0, v52

    move-object/from16 v1, v71

    invoke-virtual {v0, v5, v4, v8, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v59

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v55, v55, 0x1

    goto :goto_10

    :cond_1f
    const/4 v4, 0x1

    if-ne v11, v4, :cond_1d

    new-instance v56, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    div-int v16, v16, v9

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v56

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_f

    :cond_20
    const/4 v4, 0x1

    if-ne v11, v4, :cond_1e

    sget v4, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    mul-int v4, v4, v55

    div-int/2addr v4, v9

    int-to-float v4, v4

    move-object/from16 v0, v71

    iput v4, v0, Landroid/graphics/RectF;->top:F

    goto :goto_11

    :cond_21
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectSubType()Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EffectSubType;->SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    if-ne v4, v8, :cond_23

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v4

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v8

    move-object/from16 v0, v63

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    if-eqz v58, :cond_25

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/graphics/RectF;

    move-object/from16 v43, v0

    const/16 v42, 0x0

    :goto_12
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v42

    if-ge v0, v4, :cond_22

    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, v58

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getX()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v13, v0

    move-object/from16 v0, v58

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getY()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v58

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getWidth()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v58

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getHeight()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v4, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v13, v0, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v43, v42

    add-int/lit8 v42, v42, 0x1

    goto :goto_12

    :cond_22
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_25

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/util/Utils;->getImageAR(Ljava/lang/String;)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffc7ae147ae147bL    # 1.78

    cmpg-double v4, v16, v18

    if-gez v4, :cond_25

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    new-array v6, v4, [Landroid/graphics/RectF;

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [Landroid/graphics/RectF;

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-static {v4, v5, v6, v7, v0}, Lcom/samsung/app/highlightplayer/util/Utils;->fillSequentialZoomKenburns2(Ljava/lang/String;Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)V

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v8

    div-int v34, v4, v8

    const/16 v44, 0x0

    :goto_13
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_25

    mul-int v76, v44, v34

    add-int v41, v76, v34

    new-instance v52, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    sget-object v4, Lcom/samsung/app/video/editor/external/EffectSubType;->SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectSubType(Lcom/samsung/app/video/editor/external/EffectSubType;)Z

    aget-object v4, v6, v44

    aget-object v8, v7, v44

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v4, v8, v5}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v52

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    move-object/from16 v0, v52

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    move-object/from16 v0, v52

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    move-object/from16 v0, v59

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v44, v44, 0x1

    goto :goto_13

    :cond_23
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne v4, v8, :cond_27

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectSubType()Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EffectSubType;->SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    if-eq v4, v8, :cond_27

    const/16 v43, 0x0

    if-eqz v58, :cond_24

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_24

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    new-instance v43, Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getX()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v8, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getY()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v13, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getWidth()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getHeight()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v4, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-direct {v0, v8, v13, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_24
    if-eqz v43, :cond_26

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-static {v4, v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillFaceBasedKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_14
    move-object/from16 v0, v37

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    move-object/from16 v3, v71

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_25
    :goto_15
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_e

    :cond_26
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    invoke-static {v4, v5, v0, v1, v8}, Lcom/samsung/app/highlightplayer/util/Utils;->fillDefaultZoomKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_14

    :cond_27
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_DIAGONAL_VIEW_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_3_DIRECTIONAL_TRANSLATION_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_SLIDE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVISION_DOUBLE_STRIP:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_3_DIVISION_CENTREZOOM_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_SLIDE_VERTICAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_28

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_LAYER_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne v4, v8, :cond_25

    :cond_28
    const/16 v43, 0x0

    if-eqz v58, :cond_29

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_29

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_29

    new-instance v43, Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getX()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v8, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getY()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v13, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getWidth()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getHeight()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v4, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-direct {v0, v8, v13, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_29
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-static {v4, v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillImageSameStartEndZoomKenburn(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v51, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v51

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    move-object/from16 v3, v71

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    goto/16 :goto_15

    :cond_2a
    const/16 v39, 0x0

    :goto_16
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_2b

    move-object/from16 v0, v59

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    add-int/lit8 v39, v39, 0x1

    goto :goto_16

    :cond_2b
    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    if-nez v4, :cond_2d

    const/16 v43, 0x0

    if-eqz v58, :cond_2c

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2c

    new-instance v43, Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getX()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v8, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getY()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v13, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getWidth()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-virtual {v4}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->getHeight()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v4, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-direct {v0, v8, v13, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_2c
    if-eqz v43, :cond_2f

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-static {v4, v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillFaceBasedKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_17
    new-instance v51, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v51

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    move-object/from16 v3, v71

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :cond_2d
    :goto_18
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getVolumeEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-result-object v24

    if-nez v24, :cond_2e

    new-instance v24, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v63

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v4, :cond_6

    if-lez v48, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    add-int/lit8 v8, v48, -0x1

    invoke-virtual {v4, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionTime()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    :goto_19
    add-int/lit8 v4, v69, -0x1

    move/from16 v0, v48

    if-ge v0, v4, :cond_3e

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionTime()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    :goto_1a
    const-string/jumbo v4, "HLV-DEE"

    const-string/jumbo v8, "<<<<<<<<<<<<< AFTER SETTING OVERLAP VALUES >>>>>>>>>>>>>>>"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newEle.getOverLapAtStart = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HLV-DEE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newEle.getOverLapAtEnd = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_3

    :cond_2f
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    invoke-static {v4, v5, v0, v1, v8}, Lcom/samsung/app/highlightplayer/util/Utils;->fillDefaultZoomKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_17

    :cond_30
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v4, v8, :cond_2d

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v4

    if-eqz v4, :cond_31

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4, v8}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeEdit(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;)Lcom/samsung/app/video/editor/external/Edit;

    :cond_31
    invoke-static {}, Lcom/samsung/app/highlightplayer/util/Utils;->isGraceProject()Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v66, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v38

    const/16 v50, 0x0

    :goto_1b
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v50

    if-ge v0, v4, :cond_34

    move-object/from16 v0, v38

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v4, v8, :cond_33

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_DIAGONAL_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_3_DIRECTIONAL_TRANSLATION_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_SLIDE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVISION_DOUBLE_STRIP:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_3_DIVISION_CENTREZOOM_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_SLIDE_VERTICAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_32

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_LAYER_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne v4, v8, :cond_33

    :cond_32
    const/16 v23, 0x0

    :cond_33
    add-int/lit8 v50, v50, 0x1

    goto :goto_1b

    :cond_34
    if-eqz v23, :cond_37

    new-instance v5, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v4, v8, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v75, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v75

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v40, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getAppAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v4, v8, v13}, Lcom/sec/android/app/ve/util/CommonUtils;->getRetrieverForSource(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/media/MediaMetadataRetriever;

    move-result-object v72

    if-eqz v72, :cond_35

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v72

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillBlurRectForVideo(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/media/MediaMetadataRetriever;)I

    move-result v66

    invoke-virtual/range {v72 .. v72}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_35
    const/16 v4, 0x5a

    move/from16 v0, v66

    if-eq v0, v4, :cond_36

    const/16 v4, 0x10e

    move/from16 v0, v66

    if-ne v0, v4, :cond_2d

    :cond_36
    new-instance v51, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v51

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2, v5}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    goto/16 :goto_18

    :cond_37
    new-instance v5, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v4, v8, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v75, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v75

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v40, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getAppAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v4, v8, v13}, Lcom/sec/android/app/ve/util/CommonUtils;->getRetrieverForSource(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/media/MediaMetadataRetriever;

    move-result-object v72

    if-eqz v72, :cond_38

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v72

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillVideoSameStartEndZoomKenburn(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/media/MediaMetadataRetriever;)V

    invoke-virtual/range {v72 .. v72}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_38
    new-instance v51, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v51

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2, v5}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    goto/16 :goto_18

    :cond_39
    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v38

    const/16 v50, 0x0

    :goto_1c
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v50

    if-ge v0, v4, :cond_2d

    move-object/from16 v0, v38

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v4, v8, :cond_3c

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_DIAGONAL_VIEW_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_3_DIRECTIONAL_TRANSLATION_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_SLIDE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVISION_DOUBLE_STRIP:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_3_DIVISION_CENTREZOOM_SLOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_SLIDE_VERTICAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v4, v8, :cond_3a

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_LAYER_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne v4, v8, :cond_3c

    :cond_3a
    new-instance v5, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v4, v8, v13, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v75, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v75

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v40, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v71, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v13, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    int-to-float v13, v13

    sget v16, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v71

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getAppAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v4, v8, v13}, Lcom/sec/android/app/ve/util/CommonUtils;->getRetrieverForSource(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/media/MediaMetadataRetriever;

    move-result-object v72

    if-eqz v72, :cond_3b

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    move-object/from16 v2, v72

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/app/highlightplayer/util/Utils;->fillVideoSameStartEndZoomKenburn(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/media/MediaMetadataRetriever;)V

    invoke-virtual/range {v72 .. v72}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_3b
    const-string/jumbo v4, "HighLightVideoAnalyser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Default Video Crop : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v75

    iget v13, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v75

    iget v13, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v75

    iget v13, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v75

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v51, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    move-object/from16 v0, v51

    move-object/from16 v1, v75

    move-object/from16 v2, v40

    move-object/from16 v3, v71

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :cond_3c
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_1c

    :cond_3d
    const/4 v4, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    goto/16 :goto_19

    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1a

    :cond_3f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "HLV-DEE"

    const-string/jumbo v8, "NOT isGraceProject "

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v63, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v8, v69, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    :cond_40
    new-instance v45, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    const/16 v4, 0x3e8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    move-object/from16 v0, v63

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    invoke-virtual/range {v63 .. v63}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeTransitionEdit()V

    new-instance v12, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    sget-object v13, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->getFilesDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "caption_background.jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0xdac

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    new-instance v37, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v4, Lcom/samsung/app/video/editor/external/EditType;->NONE:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    new-instance v4, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/EditWrapper;)V

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardStartTime(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    invoke-virtual {v12}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setStoryBoardEndTime(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    const/4 v8, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v12, v8, v13, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ZIZ)V

    goto/16 :goto_7

    :cond_41
    const/16 v4, 0x3f

    move/from16 v0, p3

    if-ne v0, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-object/from16 v0, v78

    move-object/from16 v1, v70

    invoke-virtual {v0, v4, v1}, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->updateSereneTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_42
    const/16 v4, 0x40

    move/from16 v0, p3

    if-ne v0, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-object/from16 v0, v78

    move-object/from16 v1, v70

    invoke-virtual {v0, v4, v1}, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->updateCartoonTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_43
    const/16 v4, 0x3f

    move/from16 v0, p3

    if-ne v0, v4, :cond_45

    sget-object v4, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->SERENE_BGM_FILE_PATHS:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, p4

    if-lt v0, v4, :cond_44

    const/16 p4, 0x0

    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->SERENE_BGM_FILE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_9

    :cond_45
    const/16 v4, 0x40

    move/from16 v0, p3

    if-ne v0, v4, :cond_47

    sget-object v4, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CARTOON_BGM_FILE_PATHS:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, p4

    if-lt v0, v4, :cond_46

    const/16 p4, 0x0

    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CARTOON_BGM_FILE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_9

    :cond_47
    sget-object v4, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, p4

    if-lt v0, v4, :cond_48

    const/16 p4, 0x0

    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->TRAVEL_BGM_FILE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_9

    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDataPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->BGM_FILE_PATHS:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_9

    :cond_4a
    const/4 v4, -0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_15

    const/16 p4, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_b

    :catch_2
    move-exception v36

    move-object/from16 v14, v61

    :goto_1d
    :try_start_c
    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v14, :cond_4b

    :try_start_d
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_4b
    if-eqz v22, :cond_18

    :try_start_e
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_b

    :catch_3
    move-exception v36

    :try_start_f
    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catchall_1
    move-exception v4

    move-object/from16 v14, v61

    :goto_1e
    if-eqz v14, :cond_4c

    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_4c
    if-eqz v22, :cond_4d

    :try_start_10
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_4d
    :goto_1f
    :try_start_11
    throw v4

    :catch_4
    move-exception v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1f

    :cond_4e
    add-int/lit8 v62, v62, 0x1

    goto/16 :goto_c

    :catchall_2
    move-exception v4

    goto :goto_1e

    :catch_5
    move-exception v36

    goto :goto_1d
.end method

.method public createStampRawBuffer(Landroid/view/View;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1, v7}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartHeight()I

    move-result v0

    mul-int v4, v1, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFullySpecifiedExternalFilesPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setRawDirPath(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p2, v4, p3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->saveDataInRAWFile([BLjava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public getDivisionDirectionForMultipleDivisionKenburns(Lcom/samsung/app/video/editor/external/EditSubType;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_HORIZONTAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVIDE_SLIDE_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v0
.end method

.method public getZoomArrayForMultipleDivisionKenburns(Lcom/samsung/app/video/editor/external/EditSubType;)[F
    .locals 1

    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_2_DIVISION_VIEW_HORIZONTAL:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_4_DIVIDE_SLIDE_VIEW:Lcom/samsung/app/video/editor/external/EditSubType;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public initializatEvent(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->release()V

    sget-object v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->createTranscodeElement(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts(Z)V

    iput-object v2, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mOriginalTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts(Z)V

    iput-object v2, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mThemeTranscodeElement:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->mEventId:I

    return-void
.end method

.method public updateFadeAnimationsToCaptions(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V
    .locals 13

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardStartTime()I

    move-result v10

    int-to-long v8, v10

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardEndTime()I

    move-result v10

    int-to-long v2, v10

    long-to-float v10, v8

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    const-wide/16 v10, 0x708

    add-long/2addr v10, v8

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    const-wide/16 v10, 0x320

    sub-long v10, v2, v10

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    long-to-float v10, v2

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    const-string/jumbo v10, "HLV-DEE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fade startTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " endTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "HLV-DEE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fade firstAnimationStartFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " firstAnimationEndFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "HLV-DEE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fade secondAnimationStartFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " secondAnimationEndFrame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;-><init>()V

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;-><init>()V

    sget-object v10, Lcom/samsung/app/video/editor/external/AnimationTypes;->FADE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    sget-object v11, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-virtual {v1, v5, v4, v10, v11}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAnimationType(IILcom/samsung/app/video/editor/external/AnimationTypes;Lcom/samsung/app/video/editor/external/AnimationInterpolations;)V

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v11}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAlphaRange(FF)V

    sget-object v10, Lcom/samsung/app/video/editor/external/AnimationTypes;->FADE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    sget-object v11, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-virtual {v0, v7, v6, v10, v11}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAnimationType(IILcom/samsung/app/video/editor/external/AnimationTypes;Lcom/samsung/app/video/editor/external/AnimationInterpolations;)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->setAlphaRange(FF)V

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getAnimationList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-virtual {p1, v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    return-void
.end method

.method public updateTextSizes(Landroid/widget/LinearLayout;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    sget v4, Lcom/samsung/app/highlightplayer/R$dimen;->stamp_intro_title_text_size:I

    invoke-static {v4}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v4

    int-to-float v3, v4

    sget v4, Lcom/samsung/app/highlightplayer/R$dimen;->stamp_intro_day_text_size:I

    invoke-static {v4}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v4

    int-to-float v0, v4

    :goto_0
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget v4, Lcom/samsung/app/highlightplayer/R$dimen;->stamp_ending_title_text_size:I

    invoke-static {v4}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v4

    int-to-float v3, v4

    sget v4, Lcom/samsung/app/highlightplayer/R$dimen;->stamp_ending_day_text_size:I

    invoke-static {v4}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v4

    int-to-float v0, v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    return-void

    :catch_1
    move-exception v1

    goto :goto_3
.end method
