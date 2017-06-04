.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f100191

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f100190

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
