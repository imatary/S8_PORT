.class Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;
.super Ljava/lang/Object;
.source "GlRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationManager"
.end annotation


# static fields
.field public static final ARRAY_SIZE:I = 0x64


# instance fields
.field public mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

.field public mMaxUsed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v3, v3, v1

    if-nez v3, :cond_3

    move v0, v1

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    array-length v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    new-array v2, v3, [Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    const-string/jumbo v3, "GlRootView"

    const-string/jumbo v4, "TABSWIPE_ Registered animation stack is full. streaching length."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    array-length v0, v3

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aput-object p1, v3, v0

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlAnimationBase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->add(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    return-void
.end method

.method public remove(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mAnimationSet:[Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$AnimationManager;->mMaxUsed:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
