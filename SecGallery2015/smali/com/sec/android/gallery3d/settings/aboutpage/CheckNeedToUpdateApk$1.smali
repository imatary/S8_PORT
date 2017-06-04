.class Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;
.super Ljava/lang/Object;
.source "CheckNeedToUpdateApk.java"

# interfaces
.implements Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->addUiUpdateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshBadge(I)V
    .locals 3

    const-string/jumbo v0, "CheckNeedToUpdateApk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAppUpdateIfNeed : refreshBadge result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->access$000(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->access$100(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UPDATE_MORE_MENU_BADGE"

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->access$100(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->needToShowBadge(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
