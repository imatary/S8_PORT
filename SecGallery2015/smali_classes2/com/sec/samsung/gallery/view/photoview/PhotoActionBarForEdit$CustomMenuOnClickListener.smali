.class Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;
.super Ljava/lang/Object;
.source "PhotoActionBarForEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMenuOnClickListener"
.end annotation


# instance fields
.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->mMenuId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->mMenuId:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->isValidSelection()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1300(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1400(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1500(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1600(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "CVS"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1700(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1800(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "CVRFC"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1900(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$2000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "CVRFC"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_2
        0x7f120290 -> :sswitch_0
        0x7f1202a3 -> :sswitch_1
        0x7f1202c2 -> :sswitch_0
    .end sparse-switch
.end method
