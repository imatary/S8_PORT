.class Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;
.super Ljava/lang/Object;
.source "TimeViewPeopleActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$202(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;I)I

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
