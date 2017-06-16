.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;
.super Landroid/os/AsyncTask;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUThumbReloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 10

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x1402

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getViewIdFromState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    const/16 v7, 0x1017

    const/16 v6, 0x102a

    move v3, v7

    :goto_0
    if-gt v3, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_0

    const v0, 0x7f0e025e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    move-object v9, v0

    check-cast v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0e025f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e025d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    const/16 v5, 0x1402

    const/16 v4, 0x1401

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_DOWNLOAD_CPU:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v1

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_4
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 9

    const/16 v3, 0x1017

    const/16 v0, 0x102a

    const/16 v6, 0x13

    add-int/lit8 v2, v6, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit16 v4, v1, 0x1017

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030076

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setId(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
