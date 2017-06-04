.class public abstract Lcom/sec/android/app/ve/PreviewPlayerInterface;
.super Landroid/widget/RelativeLayout;
.source "PreviewPlayerInterface.java"

# interfaces
.implements Lcom/sec/android/app/ve/PlayerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;
    }
.end annotation


# instance fields
.field protected isSurfaceAvailable:Z

.field protected mFixedPreviewHeight:I

.field protected mFixedPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isSurfaceAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isSurfaceAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isSurfaceAvailable:Z

    return-void
.end method


# virtual methods
.method public getFixedPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewHeight:I

    return v0
.end method

.method public getFixedPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/ve/PreviewPlayerInterface;->mFixedPreviewWidth:I

    return v0
.end method

.method public abstract getSurfaceView()Landroid/view/SurfaceView;
.end method

.method public removePreviewCover()V
    .locals 0

    return-void
.end method

.method public abstract setAdapter(Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;)V
.end method

.method public setAudioFocusable(Z)V
    .locals 0

    return-void
.end method

.method public setAutoFocusable(Z)V
    .locals 0

    return-void
.end method

.method public setEngineSurface()V
    .locals 0

    return-void
.end method

.method public abstract setFixedSurfaceRect(Landroid/graphics/Rect;)V
.end method

.method public setUIThreadIsLoaded(Z)V
    .locals 0

    return-void
.end method

.method public abstract update(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;",
            "I",
            "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;)V"
        }
    .end annotation
.end method
