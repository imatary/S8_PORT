.class public Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;
.super Lcom/samsung/app/video/editor/external/ClipartParams;
.source "ClipartParamsWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;
    }
.end annotation


# static fields
.field private static RAW_FILES_SD_PATH:Ljava/lang/String;


# instance fields
.field private data:Ljava/lang/String;

.field private elementID:I

.field private isThemeDefaultText:Z

.field public itext_end_time:I

.field public itext_start_time:I

.field private mAssetResource:Z

.field private mCaptionID:I

.field public mCaptionTextAlignment:I

.field public mFontparams:Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

.field public mIsEditable:Z

.field private mRelativeStoryboardEndFrame:I

.field private mRelativeStoryboardStartFrame:I

.field private storyboardEndTime:I

.field private storyboardStartTime:I

.field public themeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".vefullrawdir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->RAW_FILES_SD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mAssetResource:Z

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->elementID:I

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->isThemeDefaultText:Z

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionID:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionTextAlignment:I

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->checkRAWFilesDir()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>()V

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->checkRAWFilesDir()V

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->makeCopy(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Z)V

    return-void
.end method

.method private checkRAWFilesDir()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->RAW_FILES_SD_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private static makeCopy(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartXPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartYPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartPosition(II)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getClipartYPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setClipartSize(II)V

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->itext_end_time:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->itext_end_time:I

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->itext_start_time:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->itext_start_time:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->data:Ljava/lang/String;

    iput-object v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardStartTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardStartTime(I)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardEndTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryBoardEndTime(I)V

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->themeId:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->themeId:I

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->elementID:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->elementID:I

    iget-boolean v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->isThemeDefaultText:Z

    iput-boolean v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->isThemeDefaultText:Z

    new-instance v2, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    iget-object v3, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mFontparams:Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    invoke-direct {v2, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;-><init>(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;)V

    iput-object v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mFontparams:Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getDefaultTranslateX()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getDefaultTranslateY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setDefaultTranslate(FF)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getDefaultAlpha()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setDefaultAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getDefaultScale()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setDefaultScale(F)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getDefaultRotate()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setDefaultRotate(F)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setPivot(FF)V

    iget-boolean v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mIsEditable:Z

    iput-boolean v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mIsEditable:Z

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionID:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionID:I

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryboardStartFrame()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardStartFrame(I)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryboardEndFrame()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setStoryboardEndFrame(I)V

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardStartFrame:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardStartFrame:I

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardEndFrame:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardEndFrame:I

    iget-boolean v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mAssetResource:Z

    iput-boolean v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mAssetResource:Z

    iget v2, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionTextAlignment:I

    iput v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionTextAlignment:I

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getAnimationList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getAnimationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v3, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getAnimationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-direct {v3, v2}, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;-><init>(Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;)V

    invoke-virtual {p1, v3}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setFilepath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setRawDirPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->RAW_FILES_SD_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getElementID()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->elementID:I

    return v0
.end method

.method public getStoryBoardEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->storyboardEndTime:I

    return v0
.end method

.method public getStoryBoardStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->storyboardStartTime:I

    return v0
.end method

.method public remove(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".ves"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public saveDataInRAWFile([BLjava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->RAW_FILES_SD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/draw_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setAssetResource(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setFilepath(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->RAW_FILES_SD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/draw_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method public setAssetResource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mAssetResource:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->data:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mIsEditable:Z

    return-void
.end method

.method public setElementID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->elementID:I

    return-void
.end method

.method public setFontParams(Ljava/lang/String;ZIIIIIIIII)V
    .locals 12

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;-><init>(Ljava/lang/String;ZIIIIIIIII)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mFontparams:Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    return-void
.end method

.method public setRawFilePath(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->checkRAWFilesDir()V

    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->setFilepath(Ljava/lang/String;)V

    return-void
.end method

.method public setRelativeStoryboardEndFrame(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardEndFrame:I

    return-void
.end method

.method public setRelativeStoryboardStartFrame(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mRelativeStoryboardStartFrame:I

    return-void
.end method

.method public setStoryBoardEndTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->storyboardEndTime:I

    return-void
.end method

.method public setStoryBoardStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->storyboardStartTime:I

    return-void
.end method

.method public setThemeDefaultText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->isThemeDefaultText:Z

    return-void
.end method
