.class public interface abstract Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;
.super Ljava/lang/Object;
.source "GlAbsMultiSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiSeletorModel"
.end annotation


# virtual methods
.method public abstract getAlbumCount(I)I
.end method

.method public abstract getColumn()I
.end method

.method public abstract getFirstItem()I
.end method

.method public abstract getItemIndex(II)I
.end method

.method public abstract getItemRealRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getItemRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getLastItem()I
.end method

.method public abstract selectComplete(Z)V
.end method

.method public abstract selectItem(IZ)V
.end method
