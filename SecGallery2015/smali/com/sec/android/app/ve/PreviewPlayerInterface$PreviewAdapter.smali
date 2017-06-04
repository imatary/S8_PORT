.class public abstract Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;
.super Ljava/lang/Object;
.source "PreviewPlayerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/PreviewPlayerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PreviewAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStoryBoardBitmapFetcher()V
    .locals 0

    return-void
.end method

.method public abstract getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
.end method

.method public getThumbnailInitHeight()I
    .locals 1

    sget v0, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_HEIGHT:I

    return v0
.end method

.method public getThumbnailInitWidth()I
    .locals 1

    sget v0, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_WIDTH:I

    return v0
.end method

.method public hasDetailedMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAudioFocusLost()V
    .locals 0

    return-void
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onPauseKeyPressed()V
    .locals 0

    return-void
.end method

.method public onPlayKeyPressed()V
    .locals 0

    return-void
.end method

.method public onPlayed()V
    .locals 0

    return-void
.end method

.method public onStopKeyPressed()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 0

    return-void
.end method
