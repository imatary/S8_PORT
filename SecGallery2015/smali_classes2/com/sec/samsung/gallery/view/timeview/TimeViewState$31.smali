.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;
.super Ljava/lang/Object;
.source "TimeViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->runGroupSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput p3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$17000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;->val$position:I

    new-instance v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31$1;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;)V

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/android/gallery3d/data/OnProgressListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
