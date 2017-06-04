.class public Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;
.super Ljava/lang/Object;
.source "PositionController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/PositionController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleAnimationListener"
.end annotation


# instance fields
.field public isRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;->isRunning:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onAnimationStop()V
    .locals 0

    return-void
.end method
