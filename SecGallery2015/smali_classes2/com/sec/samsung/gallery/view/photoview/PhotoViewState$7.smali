.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->val$style:I

    if-ne v8, v6, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCoverScrollUp()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v5

    :goto_1
    if-eqz v1, :cond_5

    const/4 v4, 0x0

    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v8, v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionbarStyle(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const v8, 0x7f12007c

    invoke-static {v5, v4, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const v8, 0x7f120290

    invoke-static {v5, v4, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const v8, 0x7f1202c2

    invoke-static {v5, v4, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const v8, 0x7f1202a3

    invoke-static {v5, v4, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const v8, 0x7f120275

    invoke-static {v5, v4, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCoverScrollUp()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    const v8, 0x7f0a0263

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    const v6, 0x7f100260

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$2900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$3100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V

    goto/16 :goto_0

    :cond_4
    move v1, v7

    goto/16 :goto_1

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_2
.end method
