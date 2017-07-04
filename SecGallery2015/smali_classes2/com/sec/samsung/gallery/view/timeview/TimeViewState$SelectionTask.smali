.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field private final mIsLimited:Z

.field private final mMaxCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V

    iput p5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->mMaxCount:I

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->mIsLimited:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 4

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->mMaxCount:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;->mIsLimited:Z

    invoke-static {v1, v0, v2, v3, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$17200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    const/4 v1, 0x0

    return-object v1
.end method
