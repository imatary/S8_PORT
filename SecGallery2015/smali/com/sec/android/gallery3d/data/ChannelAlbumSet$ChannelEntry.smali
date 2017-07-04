.class public Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;
.super Ljava/lang/Object;
.source "ChannelAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelEntry"
.end annotation


# instance fields
.field private count:I

.field private coverItemId:I

.field private creationTime:J

.field private endTime:J

.field private expirationTime:J

.field private fileIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasHighLightVideo:Z

.field private final id:I

.field private isNewChannel:Z

.field private isShared:Z

.field private isSuggestion:Z

.field private isVisible:Z

.field private mHiddenCoverFilePath:Ljava/lang/String;

.field private masterInfo:Ljava/lang/String;

.field private owner:I

.field private startTime:J

.field private title:Ljava/lang/String;

.field private type:I

.field private ugci:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->mHiddenCoverFilePath:Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->coverItemId:I

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->hasHighLightVideo:Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->fileIdList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->updateEntry(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;

    iget v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    iget v3, v0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->count:I

    return v0
.end method

.method public getCoverItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->coverItemId:I

    return v0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->mHiddenCoverFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->endTime:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->expirationTime:J

    return-wide v0
.end method

.method public getFileIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->fileIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->fileIdList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    return v0
.end method

.method public getMasterInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->masterInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->owner:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    return v0
.end method

.method public getUgci()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    return-object v0
.end method

.method public hasHighLightVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->hasHighLightVideo:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    return v0
.end method

.method public isNewChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared:Z

    return v0
.end method

.method public isSuggestion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isSuggestion:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible:Z

    return v0
.end method

.method public setChannelType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    return-void
.end method

.method public setCoverItemId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "dummy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->coverItemId:I

    :cond_0
    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->endTime:J

    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->expirationTime:J

    return-void
.end method

.method public setFileIdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->fileIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public setHasHightLightVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->hasHighLightVideo:Z

    return-void
.end method

.method public setNewChannel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel:Z

    return-void
.end method

.method public setOwner(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->owner:I

    return-void
.end method

.method public setShared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->startTime:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setUgci(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Channel Entry Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n, isShared = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->owner:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ugci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", masterInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->masterInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n, isVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNewChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->creationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n, isSuggestion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isSuggestion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVidieoHighlight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVidieoHighlight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry(Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->title:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isShared:Z

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->owner:I

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->ugci:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->masterInfo:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel:Z

    :goto_3
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->endTime:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->startTime:J

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->creationTime:J

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isSuggestion:Z

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->count:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->VIDEO_COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->mHiddenCoverFilePath:Ljava/lang/String;

    :cond_1
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->expirationTime:J

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "dummy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->coverItemId:I

    :cond_2
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_5
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->hasHighLightVideo:Z

    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto/16 :goto_2

    :cond_6
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    iget v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->type:I

    if-eq v1, v4, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isVisible:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumSet$ChannelEntry;->isNewChannel:Z

    goto/16 :goto_3

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v3

    goto/16 :goto_4

    :cond_9
    move v2, v3

    goto :goto_5
.end method
