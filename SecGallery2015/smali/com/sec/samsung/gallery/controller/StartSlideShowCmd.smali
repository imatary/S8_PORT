.class public Lcom/sec/samsung/gallery/controller/StartSlideShowCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartSlideShowCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartSlideShowCmd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v7, v11

    check-cast v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v0, v7, v11

    check-cast v0, Landroid/app/Activity;

    const/4 v11, 0x1

    aget-object v9, v7, v11

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "path"

    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "index"

    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "clusterType"

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/sec/android/gallery3d/app/GalleryApp;->getCurrentClusterType()I

    move-result v11

    invoke-virtual {v1, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x3

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v11, 0x5

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    const-string/jumbo v11, "StartSlideShowCmd"

    const-string/jumbo v12, "SlideShowCMD Start"

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x4

    aget-object v6, v7, v11

    check-cast v6, Ljava/util/LinkedHashMap;

    const-string/jumbo v8, "/slideshow/media/item/selection"

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    :cond_1
    :goto_0
    const-string/jumbo v11, "selectionMode"

    invoke-virtual {v1, v11, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "smartViewMode"

    invoke-virtual {v1, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "totalCount"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "slideShowPath"

    invoke-virtual {v1, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "mediaItemOrderMap"

    invoke-virtual {v1, v11, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2
    move-object v11, v0

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v11, v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-nez v11, :cond_3

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v11

    const-class v12, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v11, v12, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    return-void

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "/slideshow/{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/noselection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method
