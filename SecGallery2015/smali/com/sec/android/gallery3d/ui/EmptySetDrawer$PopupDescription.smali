.class Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;
.super Ljava/lang/Object;
.source "EmptySetDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/EmptySetDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDescription"
.end annotation


# instance fields
.field private mBottomText:Landroid/widget/TextView;

.field private final mGallery:Lcom/sec/android/gallery3d/app/GalleryActivity;

.field private final mMainLayout:Landroid/view/ViewGroup;

.field private mPopupLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mGallery:Lcom/sec/android/gallery3d/app/GalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {p2, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$102(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;I)I

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$202(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;I)I

    return-void
.end method

.method private setNoItemDescription()V
    .locals 13

    const v12, 0x800053

    const/16 v11, 0x51

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    const v9, 0x7f12017a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$400(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$500(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0154

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_e

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$600(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v8, v9, :cond_9

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "hy"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "bg"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "sv"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "my"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    int-to-float v9, v6

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01ce

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    :goto_2
    invoke-virtual {v3, v5, v10, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void

    :cond_5
    sget-object v8, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v8

    if-ne v8, v7, :cond_7

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0155

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v8, v9, :cond_1

    :cond_8
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a015a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_b

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    :goto_4
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03d6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    goto/16 :goto_2

    :cond_d
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b039f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    goto/16 :goto_2

    :cond_e
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mBottomText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private setNoItemText()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    const v3, 0x7f120179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setNoItemTextForChannel()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    const v3, 0x7f120179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public removeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    const v3, 0x7f120178

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mGallery:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040096

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$300(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->setNoItemTextForChannel()V

    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->setNoItemDescription()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->setNoItemText()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer$PopupDescription;->this$0:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->access$000(Lcom/sec/android/gallery3d/ui/EmptySetDrawer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v1

    goto :goto_0
.end method
