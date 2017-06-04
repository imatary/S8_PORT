.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;
.super Ljava/lang/Object;
.source "GlComposeBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterInterface"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBucketId:I

.field public mCropRect:Landroid/graphics/Rect;

.field public mDateTakenInMs:J

.field public mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mDisabled:Z

.field public mDispCheckBox:Z

.field public mDispExpansionIcon:Z

.field public mDispSelectCnt:Z

.field public mEventType:I

.field public mId:I

.field public mIsBroken:I

.field public mIsCheckMode:Z

.field public mIsDisableForDrm:Z

.field public mIsDynamicLayout:Z

.field public mIsListAlbumLayout:Z

.field public mIsSelectedAlbum:Z

.field public mObjHeight:F

.field public mObjHeightPixel:I

.field public mObjWidth:F

.field public mObjWidthPixel:I

.field public mReorderEnable:Z

.field public mRotation:I

.field public mSelectEnable:Z

.field public mSelected:Z

.field public mTitleHeightPixel:I

.field public mTitleLeftMargin:I

.field public mTitleObjWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsListAlbumLayout:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsCheckMode:Z

    return-void
.end method
