.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupSelectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/android/gallery3d/data/OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/android/gallery3d/data/OnProgressListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->mPosition:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$17300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;ILcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;->setFinishingState()V

    const/4 v0, 0x0

    return-object v0
.end method
