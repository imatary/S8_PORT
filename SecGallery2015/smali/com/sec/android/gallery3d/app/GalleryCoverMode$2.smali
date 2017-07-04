.class Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "GalleryCoverMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryCoverMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "GalleryCoverMode"

    const-string/jumbo v2, "SCover : State Open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    const/4 v2, 0x3

    invoke-static {v1, v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$200(Lcom/sec/android/gallery3d/app/GalleryCoverMode;IZ)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$300(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$400(Lcom/sec/android/gallery3d/app/GalleryCoverMode;JZ)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHierarchicalUpButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$500(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$600(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$700(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$700(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const-string/jumbo v1, "GalleryCoverMode"

    const-string/jumbo v2, "SCover : State Close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$100(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
