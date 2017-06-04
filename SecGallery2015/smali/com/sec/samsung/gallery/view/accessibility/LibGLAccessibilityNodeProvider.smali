.class public Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "LibGLAccessibilityNodeProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibGLAccssbltyNodPrvder"


# instance fields
.field final mContext:Landroid/content/Context;

.field mFocused:I

.field private final mTTSHandler:Landroid/os/Handler;

.field private final mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mFocused:I

    new-instance v0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider$1;-><init>(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mTTSHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;)Lcom/sec/android/gallery3d/glcore/LibGLRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    return-object v0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->lockRenderThread()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/gallery3d/ui/GLView;->createAccessibilityNodeInfo(ILcom/sec/android/gallery3d/glcore/LibGLRootView;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "LibGLAccessNodeProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createAccessibilityNodeInfo() : virtualDescendantId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unlockRenderThread()V

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "LibGLAccssbltyNodPrvder"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unlockRenderThread()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unlockRenderThread()V

    throw v2
.end method

.method public getFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mFocused:I

    return v0
.end method

.method public sendAccessibilityEventForVirtualView(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mFocused:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)Z

    move-result v0

    return v0
.end method

.method sendAccessibilityEventForVirtualView(II)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExploreByTouchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v1, v4, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mTTSHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "event"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mTTSHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->mFocused:I

    return-void
.end method
