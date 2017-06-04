.class public Lcom/sec/android/gallery3d/glcore/GlState;
.super Ljava/lang/Object;
.source "GlState.java"


# instance fields
.field private mBlendType:I

.field private mBorderWidth:F

.field private mRectVertex:Z

.field private mUseBlend:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBlendType:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBorderWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mUseBlend:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mRectVertex:Z

    return-void
.end method


# virtual methods
.method public getBlendType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBlendType:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBorderWidth:F

    return v0
.end method

.method public isRectVertex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mRectVertex:Z

    return v0
.end method

.method public isUseBlend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mUseBlend:Z

    return v0
.end method

.method public reset3DAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mRectVertex:Z

    return-void
.end method

.method public resetCommonAttributes()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBlendType:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBorderWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mUseBlend:Z

    return-void
.end method

.method public setBlendType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBlendType:I

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mBorderWidth:F

    return-void
.end method

.method public setRectVertex(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mRectVertex:Z

    return-void
.end method

.method public setUseBlend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlState;->mUseBlend:Z

    return-void
.end method
