.class public Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;
.super Ljava/lang/Object;
.source "ShareEventItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEventInfo"
.end annotation


# instance fields
.field public mDateInMs:J

.field public mHeight:I

.field public mLatitude:D

.field public mLongitude:D

.field public mMimeType:Ljava/lang/String;

.field public mOrientationDegree:I

.field public mOriginalFileId:I

.field public mOriginalfileSize:I

.field public mOwner:I

.field public mUGCI:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mWidth:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalfileSize:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLatitude:D

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLongitude:D

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOwner:I

    return-void
.end method
