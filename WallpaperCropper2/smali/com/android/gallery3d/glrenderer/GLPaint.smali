.class public Lcom/android/gallery3d/glrenderer/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/GLPaint$Style;
    }
.end annotation


# static fields
.field public static final FLAG_ANTI_ALIAS:I = 0x1


# instance fields
.field private mAlpha:F

.field private mColor:I

.field private mFlags:I

.field private mLineWidth:F

.field private mStyle:Lcom/android/gallery3d/glrenderer/GLPaint$Style;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mColor:I

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/android/gallery3d/glrenderer/GLPaint$Style;

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mStyle:Lcom/android/gallery3d/glrenderer/GLPaint$Style;

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mAlpha:F

    return v0
.end method

.method public getAntiAlias()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mColor:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    return v0
.end method

.method public getStyle()Lcom/android/gallery3d/glrenderer/GLPaint$Style;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mStyle:Lcom/android/gallery3d/glrenderer/GLPaint$Style;

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mAlpha:F

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setAntiAlias(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mColor:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mFlags:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lcom/android/gallery3d/glrenderer/GLPaint$Style;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLPaint;->mStyle:Lcom/android/gallery3d/glrenderer/GLPaint$Style;

    return-void
.end method
