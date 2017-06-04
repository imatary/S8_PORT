.class public Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;
.super Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;
.source "GlAccessibilityNodeProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlAccssbltyNodPrvder"


# instance fields
.field private currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private final mView:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$3;-><init>(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v3, "GlAccessNodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAccessibilityNodeInfo() : topState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", virtualDescendantId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    :goto_1
    return-object v1

    :cond_2
    :try_start_1
    instance-of v3, v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/gallery3d/ui/GLView;->createAccessibilityNodeInfo(ILcom/sec/android/gallery3d/glcore/LibGLRootView;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "GlAccssbltyNodPrvder"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    const-string/jumbo v3, "GlAccessNodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAccessibilityNodeInfo() : topState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", virtualDescendantId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "GlAccessNodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAccessibilityNodeInfo() : topState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", virtualDescendantId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_4

    const-string/jumbo v3, "GlAccessNodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAccessibilityNodeInfo() : topState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", virtualDescendantId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    if-nez v1, :cond_5

    const-string/jumbo v4, "GlAccessNodeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createAccessibilityNodeInfo() : topState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", virtualDescendantId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v3
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSelectedItem()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    if-ne p1, v5, :cond_1

    const/16 v4, 0x40

    if-ne p2, v4, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    :goto_1
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->performAction(II)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v2, v1

    goto :goto_1

    :cond_2
    sparse-switch p2, :sswitch_data_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v2, v3

    goto :goto_1

    :sswitch_0
    :try_start_1
    iget v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    if-eq v4, p1, :cond_4

    iput p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->performAction(II)Z

    const v4, 0x8000

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)Z

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto :goto_1

    :cond_4
    :try_start_2
    iget v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    const v4, 0x8000

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "GlAccssbltyNodPrvder"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    move v2, v3

    goto :goto_1

    :sswitch_1
    :try_start_4
    iget v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    if-ne v4, p1, :cond_5

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->performAction(II)Z

    iget v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mFocused:I

    const/high16 v5, 0x10000

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public refreshAccessibilityFocus()V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$2;-><init>(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExploreByTouchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object v1, p1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    :goto_0
    const v1, 0x8000

    if-ne p2, v1, :cond_1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider$1;-><init>(Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mAccessibilityIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setCurrentSelectedItem(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->currentSelectedItem:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-void
.end method
