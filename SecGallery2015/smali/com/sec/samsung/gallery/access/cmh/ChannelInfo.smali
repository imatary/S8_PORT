.class public Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;
    }
.end annotation


# static fields
.field public static final CONTACT_SMS_MEMBER:I = 0x3

.field public static final CONTACT_WATING:I = 0x1


# instance fields
.field private mChannelType:I

.field private mEndTime:J

.field private mFileIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIsShared:Z

.field private mIsSuggestion:Z

.field private mIsVisible:Z

.field private mItemCount:I

.field private mMasterInfo:Ljava/lang/String;

.field private mOwner:I

.field private mStartTime:J

.field private mSyncTime:J

.field private mTitle:Ljava/lang/String;

.field private mUGCI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mUGCI:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsSuggestion:Z

    iput v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mItemCount:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mFileIdList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mSyncTime:J

    return-void
.end method


# virtual methods
.method getChannelType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mChannelType:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mEndTime:J

    return-wide v0
.end method

.method getFileIdList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mFileIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mId:I

    return v0
.end method

.method getIsSuggestion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsSuggestion:Z

    return v0
.end method

.method public getIsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsVisible:Z

    return v0
.end method

.method getItemCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mItemCount:I

    return v0
.end method

.method public getMasterInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mMasterInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mOwner:I

    return v0
.end method

.method public getShared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsShared:Z

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mStartTime:J

    return-wide v0
.end method

.method public getSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mSyncTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUGCI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mUGCI:Ljava/lang/String;

    return-object v0
.end method

.method setChannelType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mChannelType:I

    return-void
.end method

.method setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mEndTime:J

    return-void
.end method

.method setFileIdList(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mFileIdList:Ljava/util/ArrayList;

    return-void
.end method

.method setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mId:I

    return-void
.end method

.method setIsSuggestion(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsSuggestion:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIsVisible(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsVisible:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mItemCount:I

    return-void
.end method

.method setMasterInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mMasterInfo:Ljava/lang/String;

    return-void
.end method

.method public setOwner(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mOwner:I

    return-void
.end method

.method setShared(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mIsShared:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mStartTime:J

    return-void
.end method

.method setSyncTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mSyncTime:J

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUGCI(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mUGCI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->mUGCI:Ljava/lang/String;

    goto :goto_0
.end method
