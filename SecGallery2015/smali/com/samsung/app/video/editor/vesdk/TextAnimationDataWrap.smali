.class public Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;
.super Lcom/samsung/app/video/editor/external/TextAnimationData;
.source "TextAnimationDataWrap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mRelativeEndFrame:I

.field public mRelativeStartFrame:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TextAnimationData;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TextAnimationData;-><init>(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->mRelativeStartFrame:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->mRelativeStartFrame:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->mRelativeEndFrame:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;->mRelativeEndFrame:I

    return-void
.end method
