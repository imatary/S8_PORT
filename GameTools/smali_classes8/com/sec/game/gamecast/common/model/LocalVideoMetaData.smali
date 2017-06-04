.class public Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;
.super Ljava/lang/Object;
.source "LocalVideoMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final transient HIGH_QUALITY:Ljava/lang/String; = "H"

.field public static final transient IS_NEW_FALSE:I = 0x0

.field public static final transient IS_NEW_TRUE:I = 0x1

.field public static final transient LOW_QUALITY:Ljava/lang/String; = "L"

.field private static final serialVersionUID:J = 0x781b132dL


# instance fields
.field private isChecked:I

.field private mAbsolutePath:Ljava/lang/String;

.field private mDevice_id:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mGameIconFileName:Ljava/lang/String;

.field private mGameIconUrl:Ljava/lang/String;

.field private mGameTitle:Ljava/lang/String;

.field private mIsFavorite:I

.field private mIsNew:I

.field private mIsShare:I

.field private mOrientation:I

.field private mPkgName:Ljava/lang/String;

.field private mRecordDate:Ljava/lang/String;

.field private mRunningTime:I

.field private mVideoHash:Ljava/lang/String;

.field private mVideoThumbFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mOrientation:I

    iput v1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsFavorite:I

    iput v1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsShare:I

    iput v1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsNew:I

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mDevice_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilelength()J
    .locals 3

    iget-object v2, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mAbsolutePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getFilelength(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFrameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFrameWidth:I

    return v0
.end method

.method public getGameIconFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameIconFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGameTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChecked()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->isChecked:I

    return v0
.end method

.method public getIsFavorite()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsFavorite:I

    return v0
.end method

.method public getIsNew()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsNew:I

    return v0
.end method

.method public getIsShare()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsShare:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mOrientation:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mRecordDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mRunningTime:I

    return v0
.end method

.method public getVideoHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mVideoHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mVideoThumbFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmAbsoluteThumbFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/chche/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->getVideoThumbFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mDevice_id:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFrameHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFrameHeight:I

    return-void
.end method

.method public setFrameWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mFrameWidth:I

    return-void
.end method

.method public setGameIconFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameIconFileName:Ljava/lang/String;

    return-void
.end method

.method public setGameIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setGameTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mGameTitle:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->isChecked:I

    return-void
.end method

.method public setIsFavorite(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsFavorite:I

    return-void
.end method

.method public setIsNew(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsNew:I

    return-void
.end method

.method public setIsShare(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mIsShare:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mOrientation:I

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setRecordDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mRecordDate:Ljava/lang/String;

    return-void
.end method

.method public setRunningTime(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mRunningTime:I

    return-void
.end method

.method public setVideoHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mVideoHash:Ljava/lang/String;

    return-void
.end method

.method public setVideoThumbFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/model/LocalVideoMetaData;->mVideoThumbFileName:Ljava/lang/String;

    return-void
.end method
