.class Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;
.super Ljava/lang/Object;
.source "FilterActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    iget v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$302(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;I)I

    iget v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-nez v2, :cond_2

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    iget v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$500(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;->access$400(Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
