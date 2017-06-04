.class public Lcom/sec/android/app/ve/preview/ScaleableVideoView;
.super Landroid/widget/VideoView;
.source "ScaleableVideoView.java"


# instance fields
.field private mRespectLayoutSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/ve/preview/ScaleableVideoView;->mRespectLayoutSize:Z

    if-eqz v2, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/ve/preview/ScaleableVideoView;->getDefaultSize(II)I

    move-result v1

    invoke-static {v3, p2}, Lcom/sec/android/app/ve/preview/ScaleableVideoView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/ve/preview/ScaleableVideoView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setFixedSizeFromLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ScaleableVideoView;->mRespectLayoutSize:Z

    return-void
.end method
