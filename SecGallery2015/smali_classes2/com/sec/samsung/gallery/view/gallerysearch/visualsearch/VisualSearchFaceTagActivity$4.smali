.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;
.super Ljava/lang/Object;
.source "VisualSearchFaceTagActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initMyProfileListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onListClicked(Ljava/lang/String;JJZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_raw_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_person_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_my_profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "need_to_update_photo"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "314"

    const-string/jumbo v1, "4751"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->finish()V

    return-void
.end method

.method public onListTouched()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
