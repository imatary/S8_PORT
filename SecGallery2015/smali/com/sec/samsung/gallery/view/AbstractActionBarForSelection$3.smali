.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->initActionBarForSelectAllMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1030"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "1030"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method
