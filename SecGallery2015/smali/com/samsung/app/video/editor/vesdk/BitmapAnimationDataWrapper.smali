.class public Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;
.super Lcom/samsung/app/video/editor/external/BitmapAnimationData;
.source "BitmapAnimationDataWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAssetResource:Z

.field private mOriginalEndFrameWithinElement:I

.field private mOriginalStartFrameWithinElement:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/BitmapAnimationData;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->mAssetResource:Z

    return-void
.end method


# virtual methods
.method public setAssetResource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->mAssetResource:Z

    return-void
.end method

.method public setOriginalEndFrameWithinElement(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->mOriginalEndFrameWithinElement:I

    return-void
.end method

.method public setOriginalStartFrameWithinElement(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;->mOriginalStartFrameWithinElement:I

    return-void
.end method
