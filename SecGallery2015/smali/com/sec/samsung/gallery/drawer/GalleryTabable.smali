.class public interface abstract Lcom/sec/samsung/gallery/drawer/GalleryTabable;
.super Ljava/lang/Object;
.source "GalleryTabable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;
    }
.end annotation


# virtual methods
.method public abstract checkAllToUpdateDynamicTabs()V
.end method

.method public abstract getNextStateInfo(II)Lcom/sec/samsung/gallery/drawer/StateInfo;
.end method

.method public abstract getTabCount()I
.end method

.method public abstract hasFocus()Z
.end method

.method public abstract hideTab()V
.end method

.method public abstract hideTabNow()V
.end method

.method public abstract isLastTabFocused()Z
.end method

.method public abstract moveTab(I)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract refreshTab()V
.end method

.method public abstract removeAllMessage()V
.end method

.method public abstract requestFocus()V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setEnableTab(Z)V
.end method

.method public abstract showTab()V
.end method

.method public abstract updateBottomIndicator(F)V
.end method
