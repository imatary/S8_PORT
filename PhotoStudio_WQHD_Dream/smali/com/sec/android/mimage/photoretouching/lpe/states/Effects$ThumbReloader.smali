.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
.super Landroid/os/AsyncTask;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbReloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field TotalGpuFiltersCount:I

.field justInflate:Z

.field preLoadedGPUCount:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isInitGPUFilter:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    if-eqz v2, :cond_a

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUDownloadedPackageExisted(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    const/16 v3, 0x1001

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v19, 0x1026

    :goto_0
    const/16 v17, 0x1012

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v19, 0x1016

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    if-eqz v2, :cond_8

    const/16 v17, 0x0

    :goto_3
    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_DOWNLOAD_CPU:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    if-eq v2, v3, :cond_a

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v2, v3

    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x102b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x102b

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_a
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v2, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x1002

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v17

    add-int/lit16 v4, v0, 0x1002

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    const v2, 0x7f0e025d

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v17

    add-int/lit16 v4, v0, 0x1002

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    add-int/lit16 v3, v3, -0x1000

    add-int/lit8 v3, v3, -0x2

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getIconForGpuEffects(I)I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    add-int/lit16 v3, v0, 0x1002

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    if-eqz v18, :cond_d

    const v2, 0x7f0e0260

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v17

    add-int/lit16 v4, v0, 0x1002

    add-int/lit16 v4, v4, -0x1000

    add-int/lit8 v4, v4, -0x2

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getIconForGpuEffects(I)I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    if-eqz v2, :cond_11

    const/16 v17, 0x0

    :goto_6
    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_DOWNLOAD_CPU:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v2, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    const v2, 0x7f0e025e

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->preLoadedGPUCount:I

    if-eq v2, v3, :cond_15

    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->TotalGpuFiltersCount:I

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v2, v3

    move/from16 v0, v17

    if-ge v0, v2, :cond_14

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x102b

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsChange:Z

    if-eqz v2, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v27

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const v2, 0x7f0e025f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    const v2, 0x7f0e025d

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    move/from16 v0, v27

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v3, v3, v17

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getIconForGpuEffects(I)I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    const v2, 0x7f0e0260

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v4, v4, v17

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getIconForGpuEffects(I)I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsChange:Z

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->justInflate:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_8
    return-object v2

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    const/16 v5, 0x1001

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    if-eqz v28, :cond_17

    const v2, 0x7f0e0064

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object v8, v2

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_17
    const/16 v24, 0x1002

    sget v23, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->SUB_STATE_EFFECT_GPU_EFFECT_16:I

    const/16 v22, 0x1012

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v21, 0x1026

    :goto_9
    const/16 v13, 0x1017

    const/16 v12, 0x102a

    const/16 v15, 0x102b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, 0x102a

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v2, v3

    add-int/lit8 v14, v2, 0x1

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/16 v2, 0x1000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v17, 0x0

    :goto_a
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_19
    const/16 v21, 0x1016

    goto :goto_9

    :cond_1a
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v25

    move/from16 v0, v25

    add-int/lit16 v2, v0, 0x102a

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v2, v3

    add-int/lit8 v20, v2, 0x1

    move/from16 v9, v20

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    if-eqz v29, :cond_1d

    move/from16 v0, v24

    if-lt v9, v0, :cond_1e

    move/from16 v0, v23

    if-gt v9, v0, :cond_1e

    const v2, 0x7f0e025e

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1d
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    :cond_1e
    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    move/from16 v0, v21

    if-gt v9, v0, :cond_1f

    const v2, 0x7f0e0064

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :cond_1f
    if-lt v9, v15, :cond_20

    if-gt v9, v14, :cond_20

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    if-eq v2, v3, :cond_20

    const v2, 0x7f0e025e

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    :cond_20
    if-lt v9, v13, :cond_1d

    if-gt v9, v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    if-eqz v2, :cond_1d

    const v2, 0x7f0e025e

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTaskRunning:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->dissmissProgressDialog()V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTaskRunning:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->rearrangeThumbs()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->dissmissProgressDialog()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 11

    const/16 v10, 0x1000

    const/4 v9, 0x4

    const v8, 0x7f08058c

    const/4 v7, 0x1

    const v6, 0x7f0e0252

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f0e0432

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0e025b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/view/View;)Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f0e0250

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f0e042e

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v3

    if-ne v3, v10, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x1001

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    const/16 v4, 0x1001

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f070184

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v1, 0x1026

    :goto_0
    const/16 v0, 0x1012

    :goto_1
    if-gt v0, v1, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x1016

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v3

    if-eq v3, v10, :cond_a

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x1402

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    const/16 v4, 0x1402

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f07015e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x1401

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    const/16 v4, 0x1401

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v3, :cond_9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    :cond_a
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
