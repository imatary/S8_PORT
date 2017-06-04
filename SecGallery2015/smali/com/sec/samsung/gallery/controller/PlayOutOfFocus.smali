.class public Lcom/sec/samsung/gallery/controller/PlayOutOfFocus;
.super Ljava/lang/Object;
.source "PlayOutOfFocus.java"


# static fields
.field public static final COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.ofviewer.SEFViewerActivity"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.ofviewer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startOutOfFocusImage(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v3, "PlayOutOfFocus"

    const-string/jumbo v4, "play outoffocus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.ofviewer"

    const-string/jumbo v4, "com.sec.android.ofviewer.SEFViewerActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isCameraQuickViewOnLockscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "inputfile"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0077

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
