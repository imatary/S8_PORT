.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;->this$1:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$600(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
