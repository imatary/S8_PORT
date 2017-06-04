.class public interface abstract Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;
.super Ljava/lang/Object;
.source "IGlViewSwitchAnimation.java"


# static fields
.field public static final TYPE_ALBUM_COVER:I = 0x1

.field public static final TYPE_DEFUALT:I


# virtual methods
.method public abstract addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
.end method

.method public abstract addFadeOutObjs(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract getObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isAnimForword()Z
.end method

.method public abstract isAutoAnimation()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract isStartAnimationNow()Z
.end method

.method public abstract prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z
.end method

.method public abstract requestComplete()V
.end method

.method public abstract setScale(F)I
.end method

.method public abstract setStartAnimationNow(Z)V
.end method

.method public abstract startAnimation()Z
.end method
