.class public abstract Lcom/sec/android/gallery3d/eventshare/SharedEvent;
.super Ljava/lang/Object;
.source "SharedEvent.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/EventState$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final WAIT:I = 0x1


# instance fields
.field private mCacheTask:Landroid/os/AsyncTask;

.field protected mContant:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDownloadCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventId:I

.field protected mEventName:Ljava/lang/String;

.field protected mEventType:I

.field private mExpiredTime:J

.field protected mHandler:Landroid/os/Handler;

.field private mIsGifDownload:Z

.field protected mLocalPathFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

.field private mRemoveOriginalFileIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mShareID:J

.field private mThumbnailItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I

.field protected mUgci:Ljava/lang/String;

.field private mUpdatedTime:J

.field private mUploadedFileCount:I

.field protected mUriContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mUriFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mShareID:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mIsGifDownload:Z

    return-void
.end method


# virtual methods
.method protected abstract addIntent(Landroid/content/Intent;)V
.end method

.method protected clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriContactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public abstract destroy()V
.end method

.method public getCacheTask()Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mCacheTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public getContactList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentRequest()I
.end method

.method public getDownloadCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mDownloadCandidates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mEventId:I

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mEventType:I

    return v0
.end method

.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mExpiredTime:J

    return-wide v0
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUriFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsGifDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mIsGifDownload:Z

    return v0
.end method

.method public getLocalPathFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMemento()Lcom/sec/android/gallery3d/eventshare/Memorable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    return-object v0
.end method

.method public getRemoveOriginalFileIdArray()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;
.end method

.method public getShareID()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mShareID:J

    return-wide v0
.end method

.method public getThumbnailItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mThumbnailItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUgci()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUgci:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUpdatedTime:J

    return-wide v0
.end method

.method public getUploadTotalCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mTotalCount:I

    return v0
.end method

.method public getUploadedFileCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUploadedFileCount:I

    return v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handle(Landroid/content/Intent;)V
.end method

.method protected abstract isValid()Z
.end method

.method public abstract pause(I)V
.end method

.method public abstract restore(Lcom/sec/android/gallery3d/eventshare/EventShareData;)V
.end method

.method public abstract resume(I)V
.end method

.method public setCacheTask(Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mCacheTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public setDownloadCandidates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mDownloadCandidates:Ljava/util/ArrayList;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mEventType:I

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mExpiredTime:J

    return-void
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method

.method public setIsGifDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mIsGifDownload:Z

    return-void
.end method

.method public abstract setListener(Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;)V
.end method

.method public setMemento(Lcom/sec/android/gallery3d/eventshare/Memorable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    return-void
.end method

.method public setRemoveOriginalFileIdArray(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareID(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mShareID:J

    return-void
.end method

.method public setThumbnailItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mThumbnailItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public setUgci(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUgci:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUpdatedTime:J

    return-void
.end method

.method public setUploadTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mTotalCount:I

    return-void
.end method

.method public setUploadedFileCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mUploadedFileCount:I

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->mWebUrl:Ljava/lang/String;

    return-void
.end method

.method protected abstract start()V
.end method

.method protected abstract stop()V
.end method
