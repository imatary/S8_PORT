.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;
.super Landroid/app/Activity;
.source "AbsVisualSearchFaceTagActivity.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;
.implements Ljava/util/Observer;


# static fields
.field private static final FEATURE_SHOW_STATUS_BAR:Z

.field protected static final KEY_SELECTED_FACE_NAME:Ljava/lang/String; = "selected_face_name"

.field protected static final KEY_SELECTED_FACE_PERSON_ID:Ljava/lang/String; = "selected_face_person_id"


# instance fields
.field protected mFaceName:Ljava/lang/String;

.field protected mFacePath:Ljava/lang/String;

.field protected mFaceRect:Landroid/graphics/RectF;

.field protected mFaceRotation:I

.field protected mIntent:Landroid/content/Intent;

.field protected mRegisteredNameListView:Landroid/view/View;

.field protected mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

.field protected mRegisteredNameSection:Ljava/lang/String;

.field protected mRootView:Landroid/widget/AbsListView;

.field protected mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->FEATURE_SHOW_STATUS_BAR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    return-void
.end method

.method private setFaceValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "FACE_ITEM_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFaceName:Ljava/lang/String;

    const-string/jumbo v1, "FACE_ITEM_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFacePath:Ljava/lang/String;

    const-string/jumbo v1, "FACE_ITEM_RECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFaceRect:Landroid/graphics/RectF;

    const-string/jumbo v1, "FACE_ITEM_ROTATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFaceRotation:I

    return-void
.end method


# virtual methods
.method abstract getLayoutId()I
.end method

.method abstract getListId()I
.end method

.method protected initFaceImageView()V
    .locals 6

    const v1, 0x7f12012c

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFacePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFaceRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mFaceRotation:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/RectF;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected initRegisteredNameListView()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListView:Landroid/view/View;

    const v2, 0x7f12013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->registerTaggedNameListObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;)V

    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->setFaceValue()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getListId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onListClicked(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_person_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "314"

    const-string/jumbo v1, "4751"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->finish()V

    return-void
.end method

.method public onListTouched()V
    .locals 0

    return-void
.end method
