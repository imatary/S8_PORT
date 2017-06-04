.class public Lcom/samsung/app/highlightplayer/ThemeDataHelper;
.super Ljava/lang/Object;
.source "ThemeDataHelper.java"


# static fields
.field private static final CARTOON_THEME_PATHS:[Ljava/lang/String;

.field private static final SERENE_THEME_PATHS:[Ljava/lang/String;

.field private static final TRAVEL_THEME_PATHS:[Ljava/lang/String;


# instance fields
.field private final SereneEnding:Ljava/lang/String;

.field private final SereneIntro:Ljava/lang/String;

.field private final TravelEnding:Ljava/lang/String;

.field private final TravelIntro:Ljava/lang/String;

.field private final cartoonEnding:Ljava/lang/String;

.field private final cartoonIntro:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "travel_01.mp4"

    aput-object v1, v0, v2

    const-string/jumbo v1, "travel_02.mp4"

    aput-object v1, v0, v3

    const-string/jumbo v1, "travel_03.mp4"

    aput-object v1, v0, v4

    const-string/jumbo v1, "travel_04.mp4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->TRAVEL_THEME_PATHS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "serene_01.mp4"

    aput-object v1, v0, v2

    const-string/jumbo v1, "serene_02.mp4"

    aput-object v1, v0, v3

    const-string/jumbo v1, "serene_03.mp4"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->SERENE_THEME_PATHS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "cartoon_01.mp4"

    aput-object v1, v0, v2

    const-string/jumbo v1, "cartoon_02.mp4"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cartoon_03.mp4"

    aput-object v1, v0, v4

    const-string/jumbo v1, "cartoon_04.mp4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->CARTOON_THEME_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Travel_Intro.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->TravelIntro:Ljava/lang/String;

    const-string/jumbo v0, "travel_Ending.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->TravelEnding:Ljava/lang/String;

    const-string/jumbo v0, "serene_Intro.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->SereneIntro:Ljava/lang/String;

    const-string/jumbo v0, "serene_Ending.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->SereneEnding:Ljava/lang/String;

    const-string/jumbo v0, "cartoon_Intro.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->cartoonIntro:Ljava/lang/String;

    const-string/jumbo v0, "cartoon_Ending.mp4"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->cartoonEnding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateCartoonTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    move-object v7, p2

    const/4 v8, 0x0

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    new-instance v3, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v9, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PARTICLE_RESOURCE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8, v9}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setOpacity(FF)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "cartoon_Ending.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "cartoon_Intro.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/lit16 v8, v8, -0xfa0

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v8, v0, 0x3

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->CARTOON_THEME_PATHS:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    sget-object v10, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->CARTOON_THEME_PATHS:[Ljava/lang/String;

    array-length v10, v10

    rem-int v10, v1, v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeVideoBasedParticleEffects()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public updateSereneTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    move-object v7, p2

    const/4 v8, 0x0

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    new-instance v3, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v9, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PARTICLE_RESOURCE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8, v9}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setOpacity(FF)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "serene_Ending.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "serene_Intro.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/lit16 v8, v8, -0xfa0

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v8, v0, 0x3

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->SERENE_THEME_PATHS:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    sget-object v10, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->SERENE_THEME_PATHS:[Ljava/lang/String;

    array-length v10, v10

    rem-int v10, v1, v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeVideoBasedParticleEffects()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public updateTravelTheme(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    move-object v7, p2

    const/4 v8, 0x0

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    new-instance v3, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v8, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v9, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PARTICLE_RESOURCE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8, v9}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setOpacity(FF)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "travel_Ending.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Travel_Intro.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    add-int/lit16 v8, v8, -0xfa0

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v8, v0, 0x3

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->TRAVEL_THEME_PATHS:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    sget-object v10, Lcom/samsung/app/highlightplayer/ThemeDataHelper;->TRAVEL_THEME_PATHS:[Ljava/lang/String;

    array-length v10, v10

    rem-int v10, v1, v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v8

    const v9, 0x88b8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {v4, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeVideoBasedParticleEffects()V

    goto :goto_2

    :cond_3
    return-void
.end method
