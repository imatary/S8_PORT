.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeRootObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;->mListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;

    return-void
.end method


# virtual methods
.method public setPos(FFF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;->mListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;->mListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;->onPosition(FFF)V

    :cond_0
    return-void
.end method
