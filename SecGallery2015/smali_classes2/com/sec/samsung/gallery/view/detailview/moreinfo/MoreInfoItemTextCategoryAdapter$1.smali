.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;
.super Ljava/lang/Object;
.source "MoreInfoItemTextCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    div-int/lit8 v3, v0, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;)Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    add-int/lit16 v5, v0, 0xc8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :goto_1
    const-string/jumbo v1, "304"

    const-string/jumbo v3, "4526"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->notifyDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
