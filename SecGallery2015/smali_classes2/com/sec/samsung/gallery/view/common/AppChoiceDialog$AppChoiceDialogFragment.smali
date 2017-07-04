.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
.super Landroid/app/DialogFragment;
.source "AppChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppChoiceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;
    }
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mGridItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final mListClickListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;

.field private mTitleId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$3;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->onChoiceItemClick(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->resizeDialog(I)V

    return-void
.end method

.method private onChoiceItemClick(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemObject(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->notifyObservers(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1600(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppChoiceDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resizeDialog(I)V
    .locals 6

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0xc

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;->onOrientationChanged()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    new-instance v1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePopupMenuDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    new-instance v10, Landroid/app/Dialog;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$402(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v10, 0x7f0400f8

    const/4 v9, 0x0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f120240

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const v9, 0x800035

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0b0230

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f0e001d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v3, :cond_0

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const v10, 0x7f0b022e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/Window;->clearFlags(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x10100

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    return-object v9

    :cond_2
    const v9, 0x7f0e001c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const v10, 0x7f0b022d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$600(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v10, 0x7f040030

    const/4 v9, 0x0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    const v9, 0x7f120092

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    invoke-static {v10, v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$702(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/widget/GridView;)Landroid/widget/GridView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    const v10, 0x1020004

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mGridItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_6
    :goto_3
    iget v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mTitleId:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$402(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    const/16 v11, 0x400

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;

    move-result-object v9

    new-instance v10, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto/16 :goto_2

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mListClickListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;

    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePopupMenuDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHARE_DIALOG_HIDDEN"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1000(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1000(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;->onDialogDismiss()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1100(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1100(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;->onResumeCallback()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mTitleId:I

    return-void
.end method
