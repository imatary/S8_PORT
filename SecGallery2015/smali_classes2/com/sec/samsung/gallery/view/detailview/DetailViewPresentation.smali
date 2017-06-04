.class Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;
.super Ljava/lang/Object;
.source "DetailViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailViewPresentation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;)Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x1

    const/16 v1, 0x7d2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x40120

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public dismissPresentation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DetailViewPresentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissPresentation. mDisplayId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    return-void
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    return v0
.end method

.method public isPresentationDisplayIdAvalable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const-string/jumbo v2, "DetailViewPresentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "curDisplayId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mDisplayId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onPause()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "DetailViewPresentation"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    if-eq v1, v2, :cond_3

    :cond_0
    const-string/jumbo v2, "DetailViewPresentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() : displayId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " current mPresentation displayId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "null !!"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->hide()V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPause()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    const-string/jumbo v1, "DetailViewPresentation"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_0
    const-string/jumbo v2, "DetailViewPresentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() : displayId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " current mPresentation displayId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "null !!"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->show()V

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "DetailViewPresentation"

    const-string/jumbo v2, "mPresentation is null or mPresentation is showing"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public showPresentation()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "DetailViewPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "display is null, displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "DetailViewPresentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPresentation : mDisplayId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;Landroid/content/Context;Landroid/view/Display;Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mPresentation:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->show()V

    goto :goto_0
.end method

.method public updatePresentation()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->showPresentation()V

    return-void
.end method
