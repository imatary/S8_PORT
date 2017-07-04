.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbstractActionBarForSelection.java"


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a0422

    const/16 v5, 0x2c

    const/16 v4, 0x20

    const/16 v1, 0x40

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0424

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$400(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0407

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040e

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$400(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0414

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0409

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040f

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0424

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$400(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0409

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040f

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
