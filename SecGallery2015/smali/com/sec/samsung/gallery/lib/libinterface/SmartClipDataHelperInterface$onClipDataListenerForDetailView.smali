.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
.super Ljava/lang/Object;
.source "SmartClipDataHelperInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onClipDataListenerForDetailView"
.end annotation


# virtual methods
.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getMetaAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAvailableExtract()Z
.end method

.method public abstract isImage()Z
.end method
