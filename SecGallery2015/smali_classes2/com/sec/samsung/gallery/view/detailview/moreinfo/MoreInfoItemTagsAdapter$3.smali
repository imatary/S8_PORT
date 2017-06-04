.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$3;
.super Ljava/lang/Object;
.source "MoreInfoItemTagsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->editDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a02cf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
