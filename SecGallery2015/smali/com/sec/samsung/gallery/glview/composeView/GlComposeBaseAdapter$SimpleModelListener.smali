.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.super Ljava/lang/Object;
.source "GlComposeBaseAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleModelListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAllContentReady()V
    .locals 0

    return-void
.end method

.method public onContentChanged(II)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 0

    return-void
.end method
